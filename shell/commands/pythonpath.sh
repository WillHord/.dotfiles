# #!/bin/bash
function pythonpath {
  python -c "import os; print(os.environ['_'])"
}
pythonpath();

