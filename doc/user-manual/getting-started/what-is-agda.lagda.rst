
  ..
    ::
    module getting-started.what-is-agda where

*************
Agda 是什么？
*************

.. *************
.. What is Agda?
.. *************

.. Agda is a dependently typed programming language. It is an extension
.. of Martin-Löf's type theory, and is the latest in the tradition of
.. languages developed in the programming logic group at Chalmers.  Other
.. languages in this tradition are `Alf
.. <http://www.cs.chalmers.se/~bengt/papers/alfengine.pdf>`_, `Alfa
.. <http://www.cs.chalmers.se/~hallgren/Alfa/>`_, `Agda 1
.. <http://unit.aist.go.jp/cvs/Agda/>`_, `Cayenne
.. <http://www.cs.chalmers.se/~augustss/cayenne/index.html>`_.  Some
.. other loosely related languages are `Coq <http://coq.inria.fr/>`_,
.. `Epigram <http://www.e-pig.org/>`_, and `Idris
.. <http://idris-lang.org/>`_.

Agda 是一种带有依赖类型的编程语言。它是 Martin-Löf 类型论的一种扩展，也是 Chalmers
编程语言小组语言开发传统中最新开发的语言。此传统中的其它语言包括 `Alf
<http://www.cs.chalmers.se/~bengt/papers/alfengine.pdf>`_、`Alfa
<http://www.cs.chalmers.se/~hallgren/Alfa/>`_、`Agda 1
<http://unit.aist.go.jp/cvs/Agda/>`_ 和 `Cayenne
<http://www.cs.chalmers.se/~augustss/cayenne/index.html>`_。其它紧密相关的语言包括
`Coq <http://coq.inria.fr/>`_、`Epigram <http://www.e-pig.org/>`_ 和 `Idris
<http://idris-lang.org/>`_。

.. Because of strong typing and dependent types, Agda can be used as a
.. proof assistant, allowing to prove mathematical theorems (in a
.. constructive setting) and to run such proofs as algorithms.

由于带有强定型和依赖类型，Agda 可以作为证明助理，（在构造性设置下）证明数学定理
并将这些证明当做算法来运行。

.. Dependent types
.. ---------------

依赖类型
--------

.. Typing for programmers
.. ~~~~~~~~~~~~~~~~~~~~~~

Typing for programmers
~~~~~~~~~~~~~~~~~~~~~~

.. Type theory is concerned both with programming and logic. We see the
.. type system as a way to express syntactic correctness. A type correct
.. program has a meaning.
.. `Lisp <http://en.wikipedia.org/wiki/Lisp_%28programming_language%29>`_
.. is a totally untyped programming language, and so are its derivatives
.. like
.. `Scheme <http://en.wikipedia.org/wiki/Scheme_%28programming_language%29>`_. In
.. such languages, if ``f`` is a function, one can apply it to anything,
.. including itself. This makes it easy to write programs (almost all
.. programs are wellformed), but it also makes it easy to write erroneous
.. programs. Programs will raise exceptions or loop forever. And it is
.. very difficult to analyse where the problems are.

类型论同时涉及到编程和逻辑。我们将类型系统看作表达语法正确性的一种方式。
类型正确的程序才有意义。
`Lisp <http://en.wikipedia.org/wiki/Lisp_%28programming_language%29>`_
是一种完全无类型的编程语言，其衍生语言
`Scheme <http://en.wikipedia.org/wiki/Scheme_%28programming_language%29>`_\ 亦是如此。
在这类语言中，若 ``f`` 是一个函数，那么我们可以将它应用到任何东西上，包括它自身。
这让编写程序变得很容易（几乎所有程序都是良构的），但编写出错误的程序也很容易。
程序可能会引发异常或死循环，而分析之问题所在也十分困难。

.. `Haskell <http://www.haskell.org/>`_ or
.. `ML <http://en.wikipedia.org/wiki/ML_%28programming_language%29>`_ and
.. its derivatives like `Standard ML <http://en.wikipedia.org/wiki/Standard_ML>`_ and
.. `Caml <http://caml.inria.fr/>`_ are typed languages, where functions
.. come with a type expressing what type of arguments the program expects
.. and what the result type is.

`Haskell <http://www.haskell.org/>`_ 或
`ML <http://en.wikipedia.org/wiki/ML_%28programming_language%29>`_ 及其
衍生语言如 `Standard ML <http://en.wikipedia.org/wiki/Standard_ML>`_ 和
`Caml <http://caml.inria.fr/>`_ 都是有类型的语言，它们的函数带有的类型，\
其类型表达了程序期望的参数类型和结果的类型。

.. Between these two families of languages come languages, which may or
.. may not have a typing discipline. Most imperative languages do not
.. come with a rich type system. For example,
.. `C <http://en.wikipedia.org/wiki/C_%28programming_language%29>`_ is
.. typed, but very loosely (almost everything is an integer, or a
.. variant thereof).  Moreover, the typing system does not allow the
.. definition of trees or graphs without using pointers.

在这两族语言出现之前的语言，有的有定型规则，有的则没有。大部分指令式语言\
都没有丰富的类型系统。例如，`C <http://en.wikipedia.org/wiki/C_%28programming_language%29>`_
带有类型，但非常宽松（几乎一切都是整数或其变体）。此外，其定型系统必须用指针才能定义树或图。

.. All these languages are examples of **partial languages**, i.e. the
.. result of computing the value of an expression ``e`` of type ``T`` is
.. one of the following:

.. * the program terminates with a value in the type ``T``
.. * the program ``e`` does not terminate
.. * the program raises an exception (which has been caused by an
..   incomplete definition -- for instance a function is only defined for
..   positive integers, but is applied to a negative integer.

所有这些语言都属于\ **不完全语言（Partial Languages）**\ ，例如，类型为
``T`` 的表达式 ``e`` 的计算结果为以下几种情况：

* 程序以类型为 ``T`` 的值停机
* 程序 ``e`` 不停机
* 程序引发异常（这由不完全的定义产生，例如一个函数只为正整数定义，但应用在了负整数上。）

.. Agda and other languages based on type theory are **total languages**
.. in the sense that a program ``e`` of type ``T`` will always terminate
.. with a value in ``T``. No runtime error can occur and no
.. nonterminating programs can be written (unless explicitly requested by
.. the programmer).

Agda 和其它基于类型论的语言是\ **完全语言（Total Languages）**\ ，即类型为
``T`` 的程序 ``e`` of type ``T`` 总是会在类型为 ``T`` 的值上停机，不会出现运行时错误，\
也无法不出不停机的程序（除非由程序员显式要求）。

.. Dependent types
.. ~~~~~~~~~~~~~~~

依赖类型
~~~~~~~~

.. Dependent types are introduced by having families of types indexed by
.. objects in another type. For instance, we can define the type ``Vec
.. n`` of vectors of length ``n``. This is a family of types indexed by
.. objects in ``Nat`` (a type parameterized by natural numbers).

让类型族以其它类型的对象为索引，就引入了依赖类型（Dependent Type）。例如，\
我们可以将长度为 ``n`` 的向量类型定义为 ``Vec n``。这是一个类型族，它以 ``Nat``
中的对象为索引（以自然数参数化的类型）。

.. Having dependent types, we must generalize the type of functions and
.. the type of pairs.

有了依赖类型后，我们必须推广函数和序对（Pair）的类型。

.. The **dependent function space** ``(a : A) -> (B a)`` is the type of
.. functions taking an argument ``a`` in a type ``A`` and a result in ``B
.. a``. Here, ``A`` is a type and ``B`` is a family of types indexed by
.. elements in ``A``.

**依赖函数空间（dependent function space）** ``(a : A) -> (B a)`` 是接受一个类型为
``A`` 的参数 `a``，产生类型为 ``B a`` 的结果的函数类型。在这里，``A`` 是一个类型，
``B`` 是一个以 ``A`` 中的元素为索引的类型族。

.. For example, we could define the type of ``n x m`` matrices as a type
.. indexed by two natural numbers. Call this type ``Mat n m``. The
.. function ``identity`` which takes a natural number ``n`` as argument
.. and produces the ``n x n`` identity matrix is then a function of type
.. ``identity : (n : Nat) -> (Mat n n)``.

例如，我们可以将 ``n x m`` 的矩阵类型定义为一个以两个自然数为索引的类型。
我们将该类型称为 ``Mat n m``。函数 ``identity`` 接受一个自然数 ``n`` 作为参数，
产生一个 ``n x n`` 的单位矩阵，该函数的类型为 ``identity : (n : Nat) -> (Mat n n)``。

.. **Remark**: We could of course just specify the ``identity`` function
.. with the type ``Nat -> Nat -> Mat``, where ``Mat`` is the type of
.. matrices; but this is not as precise as the dependent version.

**注意**：我们当然可以将 ``identity`` 函数的类型指定为 ``Nat -> Nat -> Mat``，
其中 ``Mat`` 为矩阵类型，不过它没有依赖类型版本的那么精确。

.. The advantage of using dependent types is that it makes it possible to
.. express properties of programs in the typing system. We saw above that
.. it is possible to express the type of square matrices of length ``n``,
.. it is also possible to define the type of operations on matrices so
.. that the lengths are correct. For instance the type of matrix
.. multiplication is

使用依赖类型的优势在于它能在类型系统中表达程序的性质。前面我们还看到它能表示边长为
``n`` 的方阵，它也能定义矩阵运算的类型，保证其长度正确。例如，矩阵乘法的类型为：

.. code-block:: agda

   ∀ {i j k} → (Mat i j) -> (Mat j k) -> (Mat i k)

.. and the type system can check that a program for matrix multiplication
.. really takes arguments of the correct size. It can also check that
.. matrix multiplication is only applied to matrices where the number of
.. columns of the first argument is the same as the number of rows in the
.. second argument.

而类型系统可以确保执行矩阵乘法的程序确实接受了大小正确的参数。它也能够确保\
矩阵乘法只能应用于第一个参数的列数等于第二个参数的行数的矩阵。

.. Dependent types and logic
.. ~~~~~~~~~~~~~~~~~~~~~~~~~

依赖类型与逻辑
~~~~~~~~~~~~~~

.. Thanks to the `Curry-Howard
.. correspondence <http://en.wikipedia.org/wiki/Curry_Howard>`_, one can
.. express a logical specification using dependent types. Using only
.. typing, it is for example possible to define

.. * equality on natural numbers
.. * properties of arithmetical operations
.. * the type ``(n : Nat) -> (PrimRoot n)`` consisting of functions
..   computing primitive root in modular arithmetic.

感谢`柯里-霍华德对应 <http://en.wikipedia.org/wiki/Curry_Howard>`_，\
我们可以用依赖类型表达逻辑规范。只使用类型，我们就能定义

* 自然数的相等性
* 算术运算的性质
* 与模算术中计算原根的函数一致的类型 ``(n : Nat) -> (PrimRoot n)``

.. Of course a program of the above type will be more difficult to write
.. than the corresponding program of type ``Nat -> Nat`` which produces a
.. natural number which is a primitive root. However, the difficulty can
.. be compensated by the fact that the program is guaranteed to work: it
.. cannot produce something which is not a primitive root.

当然，与类型为 ``Nat -> Nat`` 的，产生一个自然数原根的程序相比，\
拥有上面类型的程序会更加难写。然而，这种困难换来的是保证程序能够工作：
它不会产生不是原根的结果。

.. On a more mathematical level, we can express formulas and prove them
.. using an algorithm. For example, a function of type ``(n : Nat) ->
.. (PrimRoot n)`` is also a proof that every natural number has a
.. primitive root.

从更加数学的层面来说，我们可以表达公式并用算法证明它们。例如，一个类型为
``(n : Nat) -> (PrimRoot n)`` 的函数也是每个自然数都有一个原根的证明。
