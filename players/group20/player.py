import sys
from pathlib import Path

# Add the 2nd player directory to path
sys.path.insert(
    0,
    str(
        Path(__file__).parent.parent
        / "group10"
        / "2nd-Independent Player 1117"
    ),
)
from player import IndependentPlayer

# Player20 references the 2nd IndependentPlayer implementation
Player20 = IndependentPlayer

