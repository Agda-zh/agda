.. _installation:

****
安装
****

.. ************
.. Installation
.. ************

.. There are several ways to install Agda:

.. * Using a :ref:`released source <installation-from-hackage>` package
..   from `Hackage <https://hackage.haskell.org/package/Agda>`_

.. * Using a :ref:`binary package <prebuilt-packages>` prepared for your
..   platform

.. * Using the :ref:`development version
..   <installation-development-version>` from the Git `repository
..   <https://github.com/agda/agda>`_

有多种可以安装 Agda 的方式：

* 使用 `Hackage <https://hackage.haskell.org/package/Agda>`_ 上的
  :ref:`发行版源码包 <installation-from-hackage>`

* 使用适合你的平台的 :ref:`预编译二进制包 <prebuilt-packages>`

* 使用 Git `源码库 <https://github.com/agda/agda>`_ 上的 :ref:`开发版
  <installation-development-version>`

.. Agda can be installed using different flags (see :ref:`installation-flags`).

Agda 可使用不同的选项安装（见 :ref:`installation-flags`）。

.. _installation-from-hackage:

从 Hackage 安装
===============

.. Installation from Hackage
.. =========================

.. You can install the latest released version of Agda from `Hackage
.. <https://hackage.haskell.org/package/Agda>`_. Install the
.. :ref:`prerequisites <prerequisites>` and then run the following
.. commands:

你可以从 `Hackage <https://hackage.haskell.org/package/Agda>`_ 安装 Agda 的最新发行版。
请先安装 :ref:`前提需求 <prerequisites>` 所述软件，然后运行以下命令：

.. code-block:: bash

  cabal update
  cabal install Agda
  agda-mode setup

.. The last command tries to set up Emacs for use with Agda via the
.. :ref:`Emacs mode <emacs-mode>`. As an alternative you can copy the
.. following text to your *.emacs* file:

最后一条命令会尝试设置 Emacs，使其可以通过 :ref:`Emacs 模式 <emacs-mode>`
使用 Agda。还有一种方法，即将以下文本复制到你的 *.emacs* 文件中：

.. code-block:: emacs

  (load-file (let ((coding-system-for-read 'utf-8))
                  (shell-command-to-string "agda-mode locate")))

.. It is also possible (but not necessary) to compile the Emacs mode's
.. files:

你还可以编译 Emacs 模式的文件（非必须）：

.. code-block:: bash

  agda-mode compile

.. This can, in some cases, give a noticeable speedup.

有时这样可以显著提高速度。

.. **Warning**: If you reinstall the Agda mode without recompiling the
.. Emacs Lisp files, then Emacs may continue using the old, compiled
.. files.

**警告**：如果你重新安装了 Agda 模式但没有重新编译 Emacs Lisp
文件，那么 Emacs 可能会继续使用原来编译的文件。

.. _prebuilt-packages:

预构建包与特定系统的指南
========================

.. Prebuilt Packages and System-Specific Instructions
.. ==================================================

.. Arch Linux
.. ----------

Arch Linux
----------

.. The following prebuilt packages are available:

.. * `Agda <https://www.archlinux.org/packages/community/x86_64/agda/>`_

.. * `Agda standard library <https://www.archlinux.org/packages/community/x86_64/agda-stdlib/>`_

以下预构建包可直接获取：

* `Agda <https://www.archlinux.org/packages/community/x86_64/agda/>`_

* `Agda 标准库 <https://www.archlinux.org/packages/community/x86_64/agda-stdlib/>`_

.. Debian / Ubuntu
.. ---------------

However, due to significant packaging bugs [such as this](https://bugs.archlinux.org/task/61904?project=5&string=agda), you might want to use alternative installation methods.

Debian / Ubuntu
---------------

.. Prebuilt packages are available for Debian testing/unstable and Ubuntu from Karmic onwards. To install:

预构建包可在 Debian 和 Ubuntu Karmic 之后的版本上使用。请执行以下命令：

.. code-block:: bash

  apt-get install agda-mode

.. This should install Agda and the Emacs mode.

这样会安装 Agda 及其 Emacs 模式。

.. The standard library is available in Debian testing/unstable and Ubuntu from Lucid onwards. To install:

标准库可在 Debian 和 Ubuntu Lucid 之后的版本上使用。请执行以下命令安装：

.. code-block:: bash

  apt-get install agda-stdlib

.. More information:

.. * `Agda (Debian) <https://tracker.debian.org/pkg/agda>`_

.. * `Agda standard library (Debian) <https://tracker.debian.org/pkg/agda-stdlib>`_

.. * `Agda (Ubuntu) <https://launchpad.net/ubuntu/+source/agda>`_

.. * `Agda standard library (Ubuntu) <https://launchpad.net/ubuntu/+source/agda-stdlib>`_

更多信息：

* `Agda (Debian) <https://tracker.debian.org/pkg/agda>`_

* `Agda 标准库 (Debian) <https://tracker.debian.org/pkg/agda-stdlib>`_

* `Agda (Ubuntu) <https://launchpad.net/ubuntu/+source/agda>`_

* `Agda 标准库 (Ubuntu) <https://launchpad.net/ubuntu/+source/agda-stdlib>`_

.. Reporting bugs:

问题报告：

.. Please report any bugs to Debian, using:

请报告任何在 Debian 上出现的问题，可使用以下命令：

.. code-block:: bash

  reportbug -B debian agda
  reportbug -B debian agda-stdlib

.. Fedora
.. ------

Fedora
------

.. Agda is packaged in Fedora (since before Fedora 18).

Agda 已在 Fedora 上打包（从 Fedora 18 开始）。执行

.. code-block:: bash

  yum install Agda

.. will pull in emacs-agda-mode and ghc-Agda-devel.

会安装 emacs-agda-mode 和 ghc-Agda-devel。

.. FreeBSD
.. -------

FreeBSD
-------

.. Packages are available from `FreshPorts
.. <https://www.freebsd.org/cgi/ports.cgi?query=agda&stype=all>`_ for
.. Agda and Agda standard library.

Agda 及其标准库可从 `FreshPorts
<https://www.freebsd.org/cgi/ports.cgi?query=agda&stype=all>`_ 获取。


.. NixOS
.. -----

NixOS
-----

.. Agda is part of the Nixpkgs collection that is used by
.. https://nixos.org/nixos. To install Agda and agda-mode for Emacs,
.. type:

Agda 为 https://nixos.org/nixos 使用的 Nixpkgs 合集的一部分，要为 Emacs 安装
Agda 和 agda-mode，请执行：

.. code-block:: bash

  nix-env -f "<nixpkgs>" -iA haskellPackages.Agda

.. If you’re just interested in the library, you can also install the
.. library without the executable. The Agda standard library is currently
.. not installed automatically.

如果你只关心标准库，那么也可以只安装不带可执行程序的库。Agda 标准库当前不会自动安装。

.. OS X
.. ----

OS X
----

.. `Homebrew <https://brew.sh>`_ provides prebuilt packages for OS X.  To install:

`Homebrew <https://brew.sh>`_ 为 OS X 提供了预构建的包。请执行以下命令安装：

.. code-block:: bash

  brew install agda

.. This should take less than a minute, and install Agda together with
.. the Emacs mode and the standard library.

应该不到一分钟就能安装好 Agda 以及 Emacs 模式和标准库。

.. By default, the standard library is installed in
.. ``/usr/local/lib/agda/``.  To use the standard library, it is
.. convenient to add ``/usr/local/lib/agda/standard-library.agda-lib`` to
.. ``~/.agda/libraries``, and specify ``standard-library`` in
.. ``~/.agda/defaults``.  Note this is not performed automatically.

默认情况下，标准库会被安装到 ``/usr/local/lib/agda/``。要使用标准库，
将 ``/usr/local/lib/agda/standard-library.agda-lib`` 添加到
``~/.agda/libraries``，并在 ``~/.agda/defaults`` 中指定 ``standard-library``
会十分方便。注意这些并不会继续执行。

.. It is also possible to install ``--without-stdlib``,
.. ``--without-ghc``, or from ``--HEAD``.  Note this will require
.. building Agda from source.

当然，也可以指定 ``--without-stdlib``、``--without-ghc`` 或 ``--HEAD`` 选项来安装。
注意，这需要从源码构建 Agda。

.. For more information, refer to the `Homebrew documentation
.. <https://docs.brew.sh/>`_.

更多信息请参阅 `Homebrew 文档 <https://docs.brew.sh/>`_。

.. .. NOTE::

..    If Emacs cannot find the ``agda-mode`` executable, it might help to
..    install the exec-path-from-shell_ package by doing ``M-x
..    package-install RET exec-path-from-shell RET``, and adding

..    .. code-block:: elisp

..      (exec-path-from-shell-initialize)

..    to your ``.emacs`` file.

.. NOTE::

   如果 Emacs 找不到 ``agda-mode`` 可执行程序，那么可以通过 ``M-x
   package-install RET exec-path-from-shell RET`` 来安装 exec-path-from-shell_ 包，
   之后在你的 ``.emacs`` 文件中添加

   .. code-block:: elisp

     (exec-path-from-shell-initialize)

  ..  to your ``.emacs`` file.

   即可。

.. _installation-development-version:

安装开发版
==========

.. Installation of the Development Version
.. =======================================

.. After getting the development version following the instructions in
.. the `Agda wiki <https://wiki.portal.chalmers.se/agda/pmwiki.php>`_:

请访问 `Agda wiki <https://wiki.portal.chalmers.se/agda/pmwiki.php>`_ 获得开发版，
之后执行以下步骤：

.. * Install the :ref:`prerequisites <prerequisites>`

.. * In the top-level directory of the Agda source tree

..   * Follow the :ref:`instructions <installation-from-hackage>` for
..     installing Agda from Hackage (except run ``cabal install``
..     instead of ``cabal install Agda``) or

..   * You can try to install Agda (including a compiled Emacs mode) by
..     running the following command:

..     .. code-block:: bash

..       make install

..     Note that on a Mac, because ICU is installed in a non-standard location,
..     you need to specify this location on the command line:

..     .. code-block:: bash

..       make install-bin CABAL_OPTS='--extra-lib-dirs=/usr/local/opt/icu4c/lib --extra-include-dirs=/usr/local/opt/icu4c/include'

* 安装\ :ref:`前提需求 <prerequisites>`\ 中列出的软件

* 在 Agda 源码树的顶层目录中

  * 按照\ :ref:`说明 <installation-from-hackage>`\ 从 Hackage 安装 Agda
    （请执行 ``cabal install`` 而非 ``cabal install Agda``），或者

  * 你可以运行以下命令来安装 Agda（包括编译版的 Emacs 模式）：

    .. code-block:: bash

      make install

    注意在 Mac 上，由于 ICU 安装在了非标准目录中，因此你需要在命令行中指定它的位置：

    .. code-block:: bash

      make install-bin CABAL_OPTS='--extra-lib-dirs=/usr/local/opt/icu4c/lib --extra-include-dirs=/usr/local/opt/icu4c/include'

.. _installation-flags:

安装选项
========

.. Installation Flags
.. ==================

.. When installing Agda the following flags can be used:

.. .. option:: cpphs

..      Use `cpphs <https://hackage.haskell.org/package/cpphs>`_ instead
..      of cpp. Default: off.

.. .. option:: debug

..      Enable debugging features that may slow Agda down. Default: off.

.. .. option:: enable-cluster-counting

..      Enable the :option:`--count-clusters` flag. Note that if
..      ``enable-cluster-counting`` is ``False``, then the
..      :option:`--count-clusters` flag triggers an error
..      message. Default: off.

在安装 Agda 时可指定以下命令行选项：

.. option:: cpphs

     使用 `cpphs <https://hackage.haskell.org/package/cpphs>`_ 代替 cpp。默认关闭。

.. option:: debug

     开启调试特性可能会减慢 Agda 的速度。默认关闭。

.. option:: enable-cluster-counting

     开启 :option:`--count-clusters` 选项。注意若
     ``enable-cluster-counting`` 为 ``False``，那么
     :option:`--count-clusters` 选项会触发一条错误信息。
     默认关闭。

.. _exec-path-from-shell: https://github.com/purcell/exec-path-from-shell
