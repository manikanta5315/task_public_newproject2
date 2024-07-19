import unittest
from app import add, subtract

class TestApp(unittest.TestCase):

  def test_add(self):
    """Tests the add function."""
    self.assertEqual(add(2, 3), 5)
    self.assertEqual(add(-1, 1), 0)

  def test_subtract(self):
    """Tests the subtract function."""
    self.assertEqual(subtract(5, 2), 3)
    self.assertEqual(subtract(10, -2), 12)

if __name__ == '__main__':
  unittest.main()