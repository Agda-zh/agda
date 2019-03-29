
..
  ::
  module getting-started.hello-world where

.. *********************
.. 'Hello world' in Agda
.. *********************

**********************
Agda 的「Hello world」
**********************

.. Below is a complete 'hello world' program in Agda (defined in a file ``hello-world.agda``)

下面是一个用 Agda 编写的完整的「hello world」程序（在文件 ``hello-world.agda`` 中定义。)

.. code-block:: agda

  module hello-world where

  open import IO

  main = run (putStrLn "Hello, World!")

.. To compile the Agda file, either open it in Emacs and press ``C-c C-x
.. C-c`` or run ``agda --compile hello-world.agda`` from the command
.. line.

要编译此 Agda 文件，请在 Emacs 中打开它并按下 ``C-c C-x C-c``，或在命令行中运行
``agda --compile hello-world.agda``。

.. A quick line-by-line explanation:

.. * Agda programs are structured in :ref:`modules <module-system>`. The
..   first module in each file is the *top-level* module whose name
..   matches the filename. The contents of a module are declaration such
..   as :ref:`data types <data-types>` and :ref:`function definitions
..   <function-definitions>`.

.. * Other modules can be imported using an ``import`` statement, for
..   example ``open import IO``. This imports the `IO` module from the
..   `standard library <std-lib_>`_ and brings its contents into scope.

.. * A module exporting a function ``main : IO a`` can be :ref:`compiled
..   <compiling-agda-programs>` to a standalone executable.  For example:
..   ``main = run (putStrLn "Hello, World!")`` runs the ``IO`` command
..   ``putStrLn "Hello, World!"`` and then quits the program.

本程序逐行的简单解释：

* Agda 程序以 :ref:`模块 <module-system>` 来构造。每个文件中的第一个模块为
  \ **顶层**\ 模块，其名字与文件名相同。模块的内容为 :ref:`data types <data-types>`
  和 :ref:`function definitions <function-definitions>` 之类的声明。

* 其它模块可使用 ``import`` 语句导入，例如 ``open import IO``。这会从
  `标准库 <std-lib_>`_ 中导入 `IO` 模块，并将其内容引入作用域中。

* 导出了 ``main : IO a`` 函数的模块可被 :ref:`编译 <compiling-agda-programs>`
  为可执行文件。例如： ``main = run (putStrLn "Hello, World!")`` 会运行 ``IO``
  命令 ``putStrLn "Hello, World!"`` 并退出程序。

.. _std-lib: https://github.com/agda/agda-stdlib
