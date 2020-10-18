Subject: Yocto - glib-gettextize: not found #yocto
To: yocto@lists.yoctoproject.org
From: zidouhzakaria@gmail.com
X-Originating-Location: Paris, Île-de-France, FR (82.248.8.219)
X-Originating-Platform: Linux Chrome 85
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 18 Oct 2020 14:00:15 -0700
Message-ID: <qp1q.1603054815281667643.UQQK@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="D65zPenm0kLfKuKth3j9"

--D65zPenm0kLfKuKth3j9
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to compile a recipe based on autotools, but it still fails in do=
_configure:

glib-gettextize: not found

However, I have glib-2.0 in my DEPENDS which generates the glib-2.0-dev pa=
ckage containing the binary. In glib.inc file :

[...]    
   FILES_${PN}-dev +=3D "[...]
                           ${bindir}/glib-gettextize \
[...]

Do you have any ideas ?

Thanks

--D65zPenm0kLfKuKth3j9
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0p=
x; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-st=
retch: inherit; line-height: inherit; font-family: Arial, 'Helvetica Neue',=
 Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-sizi=
ng: inherit; clear: both; color: #242729;">I'm trying to compile a recipe b=
ased on autotools, but it still fails in do_configure:</p>
<pre style=3D"margin-bottom: calc(var(--s-prose-spacing) + 0.4em); padding=
: 12px; font-variant-numeric: inherit; font-variant-east-asian: inherit; fo=
nt-stretch: inherit; line-height: 1.30769; font-family: Consolas, Menlo, Mo=
naco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream V=
era Sans Mono', 'Courier New', monospace, sans-serif; vertical-align: basel=
ine; box-sizing: inherit; width: auto; max-height: 600px; background-color:=
 var(--highlight-bg); border-radius: 5px; overflow-wrap: normal; color: var=
(--highlight-color); border: 0px initial initial;"><code style=3D"margin: 0=
px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: i=
nherit; font-stretch: inherit; line-height: inherit; font-family: Consolas,=
 Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'B=
itstream Vera Sans Mono', 'Courier New', monospace, sans-serif; font-size: =
13px; vertical-align: baseline; box-sizing: inherit; white-space: inherit;"=
>glib-gettextize: not found
</code></pre>
<div>
<p style=3D"margin-bottom: var(--s-prose-spacing); padding: 0px; border: 0=
px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-s=
tretch: inherit; line-height: inherit; font-family: Arial, 'Helvetica Neue'=
, Helvetica, sans-serif; font-size: 15px; vertical-align: baseline; box-siz=
ing: inherit; clear: both; color: #242729;">However, I have glib-2.0 in my&=
nbsp;<code style=3D"margin: 0px; border: 0px; font-style: inherit; font-var=
iant: inherit; font-weight: inherit; font-stretch: inherit; line-height: in=
herit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberation =
Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', monos=
pace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: in=
herit; background-color: var(--black-075); white-space: pre-wrap; color: va=
r(--black-800); border-radius: 3px;">DEPENDS</code>&nbsp;which generates th=
e&nbsp;<code style=3D"margin: 0px; border: 0px; font-style: inherit; font-v=
ariant: inherit; font-weight: inherit; font-stretch: inherit; line-height: =
inherit; font-family: Consolas, Menlo, Monaco, 'Lucida Console', 'Liberatio=
n Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono', 'Courier New', mon=
ospace, sans-serif; font-size: 13px; vertical-align: baseline; box-sizing: =
inherit; background-color: var(--black-075); white-space: pre-wrap; color: =
var(--black-800); border-radius: 3px;">glib-2.0-dev</code>&nbsp;package con=
taining the binary. In&nbsp;<code style=3D"margin: 0px; border: 0px; font-s=
tyle: inherit; font-variant: inherit; font-weight: inherit; font-stretch: i=
nherit; line-height: inherit; font-family: Consolas, Menlo, Monaco, 'Lucida=
 Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream Vera Sans Mono=
', 'Courier New', monospace, sans-serif; font-size: 13px; vertical-align: b=
aseline; box-sizing: inherit; background-color: var(--black-075); white-spa=
ce: pre-wrap; color: var(--black-800); border-radius: 3px;">glib.inc</code>=
&nbsp;file :</p>
</div>
<div><br />
<pre style=3D"margin-bottom: calc(var(--s-prose-spacing) + 0.4em); padding=
: 12px; font-variant-numeric: inherit; font-variant-east-asian: inherit; fo=
nt-stretch: inherit; line-height: 1.30769; font-family: Consolas, Menlo, Mo=
naco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream V=
era Sans Mono', 'Courier New', monospace, sans-serif; vertical-align: basel=
ine; box-sizing: inherit; width: auto; max-height: 600px; background-color:=
 var(--highlight-bg); border-radius: 5px; overflow-wrap: normal; color: var=
(--highlight-color); border: 0px initial initial;"><code style=3D"margin: 0=
px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: i=
nherit; font-stretch: inherit; line-height: inherit; font-family: Consolas,=
 Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'B=
itstream Vera Sans Mono', 'Courier New', monospace, sans-serif; font-size: =
13px; vertical-align: baseline; box-sizing: inherit; white-space: inherit;"=
><span style=3D"background-color: #ffffff;">[...]    
    FILES_${PN}-dev +=3D "[...]
                            ${bindir}/glib-gettextize \
[...]</span><br /><br /><br /></code></pre>
<div class=3D"s-prose js-post-body" style=3D"margin: 0px 0px 5px; padding:=
 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: =
inherit; font-stretch: inherit; line-height: var(--s-prose-line-height); fo=
nt-family: Arial, 'Helvetica Neue', Helvetica, sans-serif; font-size: 15px;=
 vertical-align: baseline; box-sizing: inherit; --s-prose-line-height: 1.5;=
 --s-prose-spacing: 1.1em; --s-prose-spacing-condensed: calc(var(--s-prose-=
spacing) / 2); overflow-wrap: break-word; width: 469px; color: #242729; whi=
te-space: normal; background-color: #ffffff;">
<p style=3D"margin-bottom: 0px; padding: 0px; border: 0px; font-style: inh=
erit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; l=
ine-height: inherit; font-family: inherit; vertical-align: baseline; box-si=
zing: inherit; clear: both;">Do you have any ideas ?<br /><br />Thanks&nbsp=
;</p>
</div>
<pre style=3D"margin-bottom: calc(var(--s-prose-spacing) + 0.4em); padding=
: 12px; font-variant-numeric: inherit; font-variant-east-asian: inherit; fo=
nt-stretch: inherit; line-height: 1.30769; font-family: Consolas, Menlo, Mo=
naco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream V=
era Sans Mono', 'Courier New', monospace, sans-serif; vertical-align: basel=
ine; box-sizing: inherit; width: auto; max-height: 600px; background-color:=
 var(--highlight-bg); border-radius: 5px; overflow-wrap: normal; color: var=
(--highlight-color); border: 0px initial initial;"><code style=3D"margin: 0=
px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: i=
nherit; font-stretch: inherit; line-height: inherit; font-family: Consolas,=
 Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'B=
itstream Vera Sans Mono', 'Courier New', monospace, sans-serif; font-size: =
13px; vertical-align: baseline; box-sizing: inherit; white-space: inherit;"=
></code></pre>
<div class=3D"mt24 mb12" style=3D"padding: 0px; border: 0px; font-variant-=
numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; =
line-height: inherit; font-family: Arial, 'Helvetica Neue', Helvetica, sans=
-serif; vertical-align: baseline; box-sizing: inherit; color: #242729; whit=
e-space: normal; background-color: #ffffff; margin: 24px !important 0px 12p=
x !important 0px;">
<div class=3D"post-taglist grid gs4 gsy fd-column" style=3D"margin: -2px 0=
px 10px; padding: 0px; border: 0px; font-style: inherit; font-variant: inhe=
rit; font-weight: inherit; font-stretch: inherit; line-height: inherit; fon=
t-family: inherit; vertical-align: baseline; box-sizing: inherit; display: =
flex; clear: both; flex-direction: column !important;">
<div class=3D"grid ps-relative" style=3D"margin: 2px 0px; padding: 0px; bo=
rder: 0px; font-style: inherit; font-variant: inherit; font-weight: inherit=
; font-stretch: inherit; line-height: inherit; font-family: inherit; vertic=
al-align: baseline; box-sizing: inherit; display: flex; position: relative =
!important;">&nbsp;</div>
</div>
</div>
<pre style=3D"margin-bottom: calc(var(--s-prose-spacing) + 0.4em); padding=
: 12px; font-variant-numeric: inherit; font-variant-east-asian: inherit; fo=
nt-stretch: inherit; line-height: 1.30769; font-family: Consolas, Menlo, Mo=
naco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'Bitstream V=
era Sans Mono', 'Courier New', monospace, sans-serif; vertical-align: basel=
ine; box-sizing: inherit; width: auto; max-height: 600px; background-color:=
 var(--highlight-bg); border-radius: 5px; overflow-wrap: normal; color: var=
(--highlight-color); border: 0px initial initial;"><code style=3D"margin: 0=
px; border: 0px; font-style: inherit; font-variant: inherit; font-weight: i=
nherit; font-stretch: inherit; line-height: inherit; font-family: Consolas,=
 Menlo, Monaco, 'Lucida Console', 'Liberation Mono', 'DejaVu Sans Mono', 'B=
itstream Vera Sans Mono', 'Courier New', monospace, sans-serif; font-size: =
13px; vertical-align: baseline; box-sizing: inherit; white-space: inherit;"=
></code></pre>
</div>

--D65zPenm0kLfKuKth3j9--
