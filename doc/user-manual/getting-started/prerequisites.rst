.. _prerequisites:

********
前提需求
********

.. *************
.. Prerequisites
.. *************

.. You need recent versions of the following programs to compile Agda:

.. * GHC:           https://www.haskell.org/ghc/

..   + Agda have been tested with GHC 8.0.2, 8.2.2, 8.4.4 and 8.6.5.

.. * cabal-install: https://www.haskell.org/cabal/
.. * Alex:          https://www.haskell.org/alex/
.. * Happy:         https://www.haskell.org/happy/
.. * GNU Emacs:     http://www.gnu.org/software/emacs/

你需要以下程序的最近版本来编译 Agda

* GHC:           https://www.haskell.org/ghc/

  + Agda 已在 GHC 8.0.2、8.2.2、8.4.4 和 8.6.5 下通过测试。

* cabal-install: https://www.haskell.org/cabal/
* Alex:          https://www.haskell.org/alex/
* Happy:         https://www.haskell.org/happy/
* GNU Emacs:     http://www.gnu.org/software/emacs/

.. You should also make sure that programs installed by *cabal-install*
.. are on your shell's search path.

你还需要确保 *cabal-install* 安装的程序在 Shell 的搜索路径（即 PATH 环境变量）中。

.. For instructions on installing a suitable version of Emacs under
.. Windows, see :ref:`emacs-under-windows`.

要在 Windows 下安装合适版本的 Emacs，请参阅:ref:`emacs-under-windows`。

.. Non-Windows users need to ensure that the development files for the C
.. libraries *zlib** and *ncurses** are installed (see http://zlib.net
.. and http://www.gnu.org/software/ncurses/). Your package manager may be
.. able to install these files for you. For instance, on Debian or Ubuntu
.. it should suffice to run

非 Windows 用户需要确保 C 库 *zlib** 和 *ncurses** 的开发文件已经安装（见
http://zlib.net 和 http://www.gnu.org/software/ncurses/）。
你可以用包管理工具来安装这些文件。例如，在 Debian 或 Ubuntu 上以 root
权限执行以下命令就能正确地安装这些文件：

.. code-block:: bash

  apt-get install zlib1g-dev libncurses5-dev

.. as root to get the correct files installed.

.. Optionally one can also install the `ICU
.. <http://site.icu-project.org>`_ library, which is used to implement
.. the ``--count-clusters`` flag. Under Debian or Ubuntu it may suffice
.. to install *libicu-dev*. Once the ICU library is installed one can
.. hopefully enable the ``--count-clusters`` flag by giving the
.. ``-fenable-cluster-counting`` flag to *cabal install*.

此外你也可以安装可选的 `ICU <http://site.icu-project.org>`_ 库，它用于实现
``--count-clusters`` 选项。在 Debian 或 Ubuntu 上只需安装 *libicu-dev* 即可。
一旦安装了 ICU 库，你就可以通过为 *cabal install* 添加 ``-fenable-cluster-counting``
来开启 ``--count-clusters`` 选项了。

.. _emacs-under-windows:

在 Windows 上安装 Emacs
=======================

.. Installing Emacs under Windows
.. ==============================

.. A precompiled version of Emacs 24.3, with the necessary mathematical
.. fonts, is available at http://homepage.cs.uiowa.edu/~astump/agda/ .

带有必要数学字体的 Emacs 24.3 版本，可访问 http://homepage.cs.uiowa.edu/~astump/agda/
获取。
