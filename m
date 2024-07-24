Return-Path: <ms.priyanshu.sharma@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7378FC3DA63
	for <webhook@archiver.kernel.org>; Wed, 24 Jul 2024 02:47:36 +0000 (UTC)
Subject: python3 recipe failing in Yocto scarthgap branch
To: yocto@lists.yoctoproject.org
From: "Priyanshu Sharma" <ms.priyanshu.sharma@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (202.164.25.5)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Jul 2024 19:47:34 -0700
Message-ID: <Oedp.1721789254652860989.pCOY@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QBmUwpy3HEgsTEqxllHm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jul 2024 02:47:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63562

--QBmUwpy3HEgsTEqxllHm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm building with Yocto project scarthgap branch. The python3 is failing in=
termittently due to this same error : https://github.com/python/cpython/iss=
ues/118505
As per the above forum, I upgraded my ncurses recipe to version 6.5 (which =
is available in the master branch of poky - https://git.yoctoproject.org/po=
ky/tree/meta/recipes-core/ncurses?h=3Dmaster )

However the error continues intermittently.

./Modules/_cursesmodule.c: In function _curses_window_addch_impl:
./Modules/_cursesmodule.c:763:9: error: implicit declaration of function se=
tcchar; did you mean getwchar     ? [-Werror=3Dimplicit-function-declaratio=
n]
763 |         setcchar(&wcval, wstr, attr, PAIR_NUMBER(attr), NULL);
      |         ^~~~~~~~
      |         getwchar
./Modules/_cursesmodule.c:765:19: error: implicit declaration of function m=
vwadd_wch; did you mean mvwad     dch? [-Werror=3Dimplicit-function-declara=
tion]
765 |             rtn =3D mvwadd_wch(self->win,y,x, &wcval);
      |                   ^~~~~~~~~~
      |                   mvwaddch
./Modules/_cursesmodule.c:767:19: error: implicit declaration of function w=
add_wch; did you mean waddch?      [-Werror=3Dimplicit-function-declaration=
]
767 |             rtn =3D wadd_wch(self->win, &wcval);
      |                   ^~~~~~~~
      |                   waddch
./Modules/_cursesmodule.c: In function _curses_window_addstr_impl:
1394 ./Modules/_cursesmodule.c:847:19: error: implicit declaration of funct=
ion mvwaddwstr; did you mean mvwad     dstr? [-Werror=3Dimplicit-function-d=
eclaration]
847 |             rtn =3D mvwaddwstr(self->win,y,x,wstr);
      |                   ^~~~~~~~~~
      |                   mvwaddstr
  4 ./Modules/_cursesmodule.c:849:19: error: implicit declaration of functi=
on waddwstr; did you mean waddstr     ? [-Werror=3Dimplicit-function-declar=
ation]
849 |             rtn =3D waddwstr(self->win,wstr);
      |                   ^~~~~~~~
      |                   waddstr
./Modules/_cursesmodule.c: In function _curses_window_addnstr_impl:
./Modules/_cursesmodule.c:930:19: error: implicit declaration of function m=
vwaddnwstr; did you mean mvwa     ddnstr? [-Werror=3Dimplicit-function-decl=
aration]
930 |             rtn =3D mvwaddnwstr(self->win,y,x,wstr,n);
       |                   ^~~~~~~~~~~
       |                   mvwaddnstr
./Modules/_cursesmodule.c:932:19: error: implicit declaration of function w=
addnwstr; did you mean waddns     tr? [-Werror=3Dimplicit-function-declarat=
ion]
932 |             rtn =3D waddnwstr(self->win,wstr,n);
       |                   ^~~~~~~~~
       |                   waddnstr

Any fixes or work arounds for this issue?
#yocto #scarthgap #ncurses

Thanks!

--QBmUwpy3HEgsTEqxllHm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm building with Yocto project scarthgap branch. The python3 is faili=
ng intermittently due to this same error : <a href=3D"https://github.com/py=
thon/cpython/issues/118505" target=3D"_blank" rel=3D"noopener">https://gith=
ub.com/python/cpython/issues/118505</a></div>
<div>As per the above forum, I upgraded my ncurses recipe to version 6.5 (w=
hich is available in the master branch of poky - <a href=3D"https://git.yoc=
toproject.org/poky/tree/meta/recipes-core/ncurses?h=3Dmaster" target=3D"_bl=
ank" rel=3D"noopener">https://git.yoctoproject.org/poky/tree/meta/recipes-c=
ore/ncurses?h=3Dmaster</a>)<br /><br />However the error continues intermit=
tently.</div>
<div>&nbsp;</div>
<div>
<pre class=3D"notranslate" style=3D"box-sizing: border-box; font-family: va=
r(--fontStack-monospace, ui-monospace, SFMono-Regular, SF Mono, Menlo, Cons=
olas, Liberation Mono, monospace); font-size: 11.9px; margin-top: 0px; marg=
in-bottom: var(--base-size-16); overflow-wrap: normal; padding: var(--base-=
size-16); overflow: auto; line-height: 1.45; color: #1f2328; background-col=
or: var(--bgcolor-muted, var(--color-canvas-subtle)); border-radius: 6px; f=
ont-style: normal; font-variant-ligatures: normal; font-variant-caps: norma=
l; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start;=
 text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -web=
kit-text-stroke-width: 0px; text-decoration-thickness: initial; text-decora=
tion-style: initial; text-decoration-color: initial;"><code class=3D"notran=
slate" style=3D"box-sizing: border-box; font-family: var(--fontStack-monosp=
ace, ui-monospace, SFMono-Regular, SF Mono, Menlo, Consolas, Liberation Mon=
o, monospace); font-size: 11.9px; padding: 0px; margin: 0px; white-space: p=
re; background: transparent; border-radius: 6px; word-break: normal; border=
: 0px; display: inline; overflow: visible; line-height: inherit; overflow-w=
rap: normal;">./Modules/_cursesmodule.c: In function _curses_window_addch_i=
mpl:
./Modules/_cursesmodule.c:763:9: error: implicit declaration of function se=
tcchar; did you mean getwchar     ? [-Werror=3Dimplicit-function-declaratio=
n]
763 |         setcchar(&amp;wcval, wstr, attr, PAIR_NUMBER(attr), NULL);
       |         ^~~~~~~~
       |         getwchar
./Modules/_cursesmodule.c:765:19: error: implicit declaration of function m=
vwadd_wch; did you mean mvwad     dch? [-Werror=3Dimplicit-function-declara=
tion]
765 |             rtn =3D mvwadd_wch(self-&gt;win,y,x, &amp;wcval);
       |                   ^~~~~~~~~~
       |                   mvwaddch
./Modules/_cursesmodule.c:767:19: error: implicit declaration of function w=
add_wch; did you mean waddch?      [-Werror=3Dimplicit-function-declaration=
]
767 |             rtn =3D wadd_wch(self-&gt;win, &amp;wcval);
       |                   ^~~~~~~~
       |                   waddch
./Modules/_cursesmodule.c: In function _curses_window_addstr_impl:
1394 ./Modules/_cursesmodule.c:847:19: error: implicit declaration of funct=
ion mvwaddwstr; did you mean mvwad     dstr? [-Werror=3Dimplicit-function-d=
eclaration]
847 |             rtn =3D mvwaddwstr(self-&gt;win,y,x,wstr);
       |                   ^~~~~~~~~~
       |                   mvwaddstr
   4 ./Modules/_cursesmodule.c:849:19: error: implicit declaration of funct=
ion waddwstr; did you mean waddstr     ? [-Werror=3Dimplicit-function-decla=
ration]
849 |             rtn =3D waddwstr(self-&gt;win,wstr);
       |                   ^~~~~~~~
       |                   waddstr
./Modules/_cursesmodule.c: In function _curses_window_addnstr_impl:
./Modules/_cursesmodule.c:930:19: error: implicit declaration of function m=
vwaddnwstr; did you mean mvwa     ddnstr? [-Werror=3Dimplicit-function-decl=
aration]
930 |             rtn =3D mvwaddnwstr(self-&gt;win,y,x,wstr,n);
        |                   ^~~~~~~~~~~
        |                   mvwaddnstr
./Modules/_cursesmodule.c:932:19: error: implicit declaration of function w=
addnwstr; did you mean waddns     tr? [-Werror=3Dimplicit-function-declarat=
ion]
932 |             rtn =3D waddnwstr(self-&gt;win,wstr,n);
        |                   ^~~~~~~~~
        |                   waddnstr</code></pre>
<div><br /><br /><code class=3D"notranslate" style=3D"box-sizing: border-bo=
x; font-family: var(--fontStack-monospace, ui-monospace, SFMono-Regular, SF=
 Mono, Menlo, Consolas, Liberation Mono, monospace); font-size: 11.9px; pad=
ding: 0px; margin: 0px; white-space: pre; background: transparent; border-r=
adius: 6px; word-break: normal; border: 0px; display: inline; overflow: vis=
ible; line-height: inherit; overflow-wrap: normal;">Any fixes or work aroun=
ds for this issue?</code></div>
<div><code class=3D"notranslate" style=3D"box-sizing: border-box; font-fami=
ly: var(--fontStack-monospace, ui-monospace, SFMono-Regular, SF Mono, Menlo=
, Consolas, Liberation Mono, monospace); font-size: 11.9px; padding: 0px; m=
argin: 0px; white-space: pre; background: transparent; border-radius: 6px; =
word-break: normal; border: 0px; display: inline; overflow: visible; line-h=
eight: inherit; overflow-wrap: normal;">#yocto #scarthgap #ncurses</code></=
div>
<div>&nbsp;</div>
<div><code class=3D"notranslate" style=3D"box-sizing: border-box; font-fami=
ly: var(--fontStack-monospace, ui-monospace, SFMono-Regular, SF Mono, Menlo=
, Consolas, Liberation Mono, monospace); font-size: 11.9px; padding: 0px; m=
argin: 0px; white-space: pre; background: transparent; border-radius: 6px; =
word-break: normal; border: 0px; display: inline; overflow: visible; line-h=
eight: inherit; overflow-wrap: normal;">Thanks!</code></div>
</div>

--QBmUwpy3HEgsTEqxllHm--

