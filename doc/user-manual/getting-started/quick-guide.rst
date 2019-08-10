.. _quick-guide:

*****************************************
快速指南：Agda 代码的编辑、类型检查与编译
*****************************************

.. *************************************************************
.. Quick Guide to Editing, Type Checking and Compiling Agda Code
.. *************************************************************

.. _quick-guide-introduction:

简介
====

.. Introduction
.. ============

.. Agda programs are commonly edited using `Emacs
.. <http://www.gnu.org/software/emacs/>`_ or `Atom
.. <https://atom.io/packages/agda-mode>`_. To edit a module (assuming you
.. have :ref:`installed <installation>` Agda and its Emacs mode (or
.. Atom's) properly), start the editor and open a file ending in
.. ``.agda``. Programs are developed *interactively*, which means that
.. one can type check code which is not yet complete: if a question mark
.. (``?``) is used as a placeholder for an expression, and the buffer is
.. then checked, Agda will replace the question mark with a "hole" which
.. can be filled in later. One can also do various other things in the
.. context of a hole: listing the context, inferring the type of an
.. expression, and even evaluating an open term which mentions variables
.. bound in the surrounding context.

Agda 程序通常使用 `Emacs <http://www.gnu.org/software/emacs/>`_ 或 `Atom
<https://atom.io/packages/agda-mode>`_ 来编辑。要编辑一个模块（假设你已经正确
:ref:`安装了 <installation>` Agda 及其 Emacs 模式或 Atom插件），请启动编辑器并\
打开一个扩展名为 ``.agda`` 的文件。程序可以\ **交互式地**\ 开发，这表示你可以对\
尚未完成的代码进行类型检查：如果用一个问号（``?``）作为表达式的占位符，然后检查缓冲区，\
那么 Agda 会将问号替换为一个「洞（hole）」，之后可以填充它。你还可以在洞的上下文中\
做一些其它的事情：列出上下文，推导表达式的类型，甚至可以对所涉及的变量在周围的上下文中\
被绑定的开项（open term）进行求值。

.. The following commands are the most common (see
.. :ref:`notation-for-key-combinations`):

.. :kbd:`C-c C-l`
..      Load. Type-checks the contents of the file.

.. :kbd:`C-c C-,`
..      Shows the goal type, i.e. the type expected in the
..      current hole, along with the types of locally defined
..      identifiers.

.. :kbd:`C-c C-.`
..      A variant of ``C-c C-,`` that also tries to infer the
..      type of the current hole's contents.

.. :kbd:`C-c C-SPC`
..      Give. Checks whether the term written in the current
..      hole has the right type and, if it does, replaces the hole with
..      that term.

.. :kbd:`C-c C-r`
..      Refine. Checks whether the return type of the
..      expression ``e`` in the hole matches the expected type. If so,
..      the hole is replaced by ``e { }1 ... { }n``, where a sufficient
..      number of new holes have been inserted. If the hole is empty,
..      then the refine command instead inserts a lambda or constructor
..      (if there is a unique type-correct choice).

.. :kbd:`C-c C-c`
..      Case split. If the cursor is positioned in a hole which
..      denotes the right hand side of a definition, then this command
..      automatically performs pattern matching on variables of your
..      choice.

.. :kbd:`C-c C-n`
..      Normalise. The system asks for a term which is then evaluated.

.. :kbd:`M-.`
..      Go to definition. Goes to the definition site of the
..      identifier under the cursor (if known).

.. :kbd:`M-*`
..      Go back (Emacs < 25.1)

.. :kbd:`M-,`
..      Go back (Emacs ≥ 25.1)

以下为最常用的命令（见 :ref:`notation-for-key-combinations`）：

:kbd:`C-c C-l`
     加载。检查文件内容的类型。

:kbd:`C-c C-,`
     显示目标的类型，即当前洞所预期的类型，以及局部定义的标识符类型。

:kbd:`C-c C-.`
     ``C-c C-,`` 的变体，它也会尝试推导当前洞的内容的类型。

:kbd:`C-c C-SPC`
     给出。检查当前洞中项的类型是否正确，若正确，则用该项替换此洞。

:kbd:`C-c C-r`
     精化。检查洞中表达式 ``e`` 的类型是否与期望的类型匹配。若匹配，
     则该洞会被替换为 ``e { }1 ... { }n``，这里会插入足够数量的新洞。
     若洞为空，那么精化命令则会插入一个 lambda 或构造子（如果有唯一\
     类型正确的选择）。

:kbd:`C-c C-c`
     分类讨论。若光标在一个表示定义右式的洞里，那么此命令会自动对你选择的变量\
     执行模式匹配。

:kbd:`C-c C-n`
     规范化。系统会请求一个接下来要求值的项。

:kbd:`M-.`
     跳转到定义。跳转到光标下标识符的定义处（如果已知的话）。

:kbd:`M-*`
     返回（Emacs < 25.1）

:kbd:`M-,`
     返回（Emacs ≥ 25.1）

.. For information related to the Emacs mode (configuration, keybindings,
.. Unicode input, etc.) see :ref:`emacs-mode`.

更多关于 Emacs 模式的信息（配置、键位绑定、Unicode 输入等）见 :ref:`emacs-mode`。

.. Menus
.. =====

菜单
====

.. There are two main menus in the system:

.. * A main menu called **Agda2** which is used for global commands.

.. * A context sensitive menu which appears if you right-click in a hole.

系统中有两个主要的菜单：

* 主菜单叫做 **Agda2**，用于全局命令

* 上下文相关的菜单会在你在洞中点击右键时出现。

.. The menus contain more commands than the ones listed above. See
.. :ref:`global <emacs-global-commands>` and :ref:`context sensitive
.. <emacs-context-sensitive-commands>` commands.

菜单包含了比前面所列更多的命令。见 :ref:`全局 <emacs-global-commands>` 和
:ref:`上下文相关 <emacs-context-sensitive-commands>` 命令。

.. Writing mathematical symbols in source code
.. ===========================================

在源码中输入数学符号
====================

.. Agda uses `Unicode <https://en.wikipedia.org/wiki/Unicode>`_
.. characters in source files (more specifically: the `UTF-8
.. <https://en.wikipedia.org/wiki/UTF-8>`_ character encoding). Almost
.. any character can be used in an identifier (like ``∀``, ``α``, ``∧``,
.. or ``♠``, for example). It is therefore necessary to have spaces
.. between most lexical units.

Agda 在源码文件中使用 `Unicode <https://en.wikipedia.org/wiki/Unicode>`_ 字符
（确切来说是 `UTF-8 <https://en.wikipedia.org/wiki/UTF-8>`_ 字符编码）。
几乎任何字符都可以用作标识符（如 ``∀``、``α``、``∧`` 或 ``♠`` 等），\
因此大部分词法单元之间都需要空格。

.. Many mathematical symbols can be typed using the corresponding `LaTeX
.. <https://en.wikipedia.org/wiki/LaTeX>`_ command names. For instance,
.. you type ``\forall`` to input ``∀``. A more detailed description of
.. how to write various characters is :ref:`available <unicode-input>`.

很多数学符号都可以使用对应的 `LaTeX <https://en.wikipedia.org/wiki/LaTeX>`_
命令输入。例如，你可以按下 ``\forall`` 来输入 ``∀``。关于如何输入多种字符的\
详细描述可参见\ :ref:`此处 <unicode-input>`。

.. (Note that if you try to read Agda code using another program, then
.. you have to make sure that it uses the right character encoding when
.. decoding the source files.)

（注意，若你使用其他程序阅读 Agda 代码，请确保它在解码源文件时使用了正确的字符集编码。）

.. Errors
.. =======

错误
====

.. If a file does not type check Agda will complain. Often the cursor
.. will jump to the position of the error, and the error will (by
.. default) be underlined. Some errors are treated a bit differently,
.. though. If Agda cannot see that a definition is terminating/productive
.. it will highlight it in *light salmon*, and if some meta-variable
.. other than the goals cannot be solved the code will be highlighted in
.. *yellow* (the highlighting may not appear until after you have
.. reloaded the file). In case of the latter kinds of errors you can
.. still work with the file, but Agda will (by default) refuse to import
.. it into another module, and if your functions are not terminating Agda
.. may hang.

若某个文件无法通过类型检查，Agda 会给出解释。通常光标会跳转到错误的位置，\
默认情况下该错误会由下划线标出。然而有些错误的标记方式稍微有些不同。如果
Agda 无法确定某个定义是否停机/可归约，那么它会以\ **浅肉色**\ 高亮，若除了\
目标之外的元变量无法得出，那么该处代码会以\ **黄色**\ 高亮（在你重新加载该文件\
之前，高亮可能不会显示）。在出现后面这种错误时，你仍然可以在该文件中工作，但
Agda 默认会拒绝将它导入其它模块中，若你的函数不会停机，那么 Agda 可能会卡住。

.. If you do not like the way errors are highlighted (if you are
.. colour-blind, for instance), then you can tweak the settings by typing
.. ``M-x customize-group RET agda2-highlight RET`` in Emacs (after
.. loading an Agda file) and following the instructions.

如果你不喜欢错误高亮的方式（例如色盲），那么可以在 Emacs 中加载了 Agda
文件后，输入 ``M-x customize-group RET agda2-highlight RET`` 并遵从指示来调整设置。

.. _compiling-agda-programs:

编译 Agda 程序
==============

.. Compiling Agda programs
.. =======================

.. To compile a module containing a function ``main :: IO A`` for some
.. ``A`` (where ``IO`` can be found in the `Primitive.agda
.. <https://github.com/agda/agda-stdlib/blob/master/src/IO/Primitive.agda>`_),
.. use ``C-c C-x C-c``. If the module is named ``A.B.C`` the resulting
.. binary will be called ``C`` (located in the project's top-level
.. directory, the one containing the ``A`` directory).

要编译针对某个 ``A`` 的函数 ``main :: IO A`` （其中的 ``IO`` 可在
`Primitive.agda <https://github.com/agda/agda-stdlib/blob/master/src/IO/Primitive.agda>`_
中找到）所在的模块，请使用 ``C-c C-x C-c``。若该模块名为 ``A.B.C``，那么编译出的二进制文件\
会命名为 ``C`` （位于项目顶级目录的 ``A`` 目录下）。

.. Batch-mode command
.. ==================

批处理模式命令
==============

.. There is also a batch-mode command line tool: ``agda``. To find out
.. more about this command, use ``agda --help``.

还有一个批处理模式的命令行工具 ``agda``。要查看更多关于此命令的信息，请使用
``agda --help``。
