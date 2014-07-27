 #!/bin/sh

rm -rf dist
mkdir dist

export version=`date +%Y%m%d%H%M%S`

sed "s/%DATE%/$version/g" supervisord/CONTROL/control.template > supervisord/CONTROL/control

pushd dist
../ipkg-build ../supervisord .
popd 


