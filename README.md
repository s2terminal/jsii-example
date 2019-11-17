## Usage
### Build
```bash
$ mkdir dist
$ docker build --tag jsii-example .
$ docker run --rm --volume $(pwd)/dist:/app/dist jsii-example /bin/bash -c 'npx jsii && npx jsii-pacmak'
```

### Run
```bash
$ pip install dist/python/your_name.jsii_example-1.0.0.tar.gz
$ python python.py
```
