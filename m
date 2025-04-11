Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72AC9C369B2
	for <webhook@archiver.kernel.org>; Mon, 14 Apr 2025 11:05:32 +0000 (UTC)
Subject: sdktest.bbclass does not find custom sdk tests
To: yocto@lists.yoctoproject.org
From: kasper.sloth99@gmail.com
X-Originating-Location: Hvidovre, Capital Region, DK (87.62.83.1)
X-Originating-Platform: Linux Firefox 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Apr 2025 23:52:19 -0700
Message-ID: <Pnq3.1744354339757137128.EBko@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="J6mK0nRpcVwRvgCBoMjm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Apr 2025 11:05:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65158

--J6mK0nRpcVwRvgCBoMjm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
I'm currently trying to create some tests for my sdk, using sdktest.bbclass=
, but i'm having issues with bitbake locating my tests.
In my layer, i have this setup:
=E2=94=9C=E2=94=80=E2=94=80 meta-custom
...
=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 layer.conf
=E2=94=82 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80 lib
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=E2=94=80=E2=94=80 oeqa
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=94=80=E2=94=80=
 controllers
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=A0 =E2=94=94=
=E2=94=80=E2=94=80 __init__.py
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =C2=A0 =E2=94=94=E2=94=80=E2=94=80=
 sdk
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=
=94=80=E2=94=80 cases
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=82 =C2=
=A0 =E2=94=9C=E2=94=80=E2=94=80 mytest.py
=E2=94=82 =C2=A0 =E2=94=82 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =E2=94=9C=E2=
=94=80=E2=94=80 __init__.py
...

In the __init__.py files i have added:
from pkgutil import extend_path
__path__ =3D extend_path ( __path__ , __name__ )

And in layer.conf:

addpylib ${ LAYERDIR } / lib oeqa

And in my image i have:
inherit testsdk

mytest.py is quite simple:
from oeqa. sdk. case import OESDKTestCase

class CustomTestSuite ( OESDKTestCase ):
def test_failure ( self ):
self. _run ( " false " )

def test_success ( self ):
self. _run ( " true " )

But when i run bitbake custom-image -c testsdk after bitbake custom-image -=
c populate_sdk, the following is only run:
SDK testing environment: armv8a-poky-linux GalculatorTest class: SDK don't =
support gtk+3 No python3-maturin package in the SDK No python3-maturin pack=
age in the SDK RustCompileTest class: SDK doesn't contain a Rust cross-cana=
dian toolchain RustCompileTest class: SDK doesn't contain a Rust cross-cana=
dian toolchain RESULTS: RESULTS - assimp.BuildAssimp.test_assimp: PASSED (8=
9.13s) RESULTS - buildcpio.BuildCpioTest.test_cpio: PASSED (23.24s) RESULTS=
 - buildepoxy.EpoxyTest.test_epoxy: PASSED (11.51s) RESULTS - buildlzip.Bui=
ldLzipTest.test_lzip: PASSED (1.31s) RESULTS - gcc.GccCompileTest.test_gcc_=
compile: PASSED (0.07s) RESULTS - gcc.GccCompileTest.test_gpp2_compile: PAS=
SED (0.07s) RESULTS - gcc.GccCompileTest.test_gpp_compile: PASSED (0.17s) R=
ESULTS - gcc.GccCompileTest.test_make: PASSED (0.08s) RESULTS - perl.PerlTe=
st.test_perl: PASSED (0.02s) RESULTS - python.Python3Test.test_python3: PAS=
SED (0.03s) RESULTS - buildgalculator.GalculatorTest.test_galculator: SKIPP=
ED (0.00s) RESULTS - maturin.MaturinDevelopTest.test_maturin_develop: SKIPP=
ED (0.00s) RESULTS - maturin.MaturinTest.test_maturin_list_python: SKIPPED =
(0.00s) RESULTS - rust.RustCompileTest.test_cargo_build: SKIPPED (0.00s) RE=
SULTS - rust.RustHostCompileTest.test_cargo_build: SKIPPED (0.00s)
SUMMARY: custom-image sdk - Ran 15 tests in 125.628s custom-image sdk - OK =
- All required tests passed (successes=3D10, skipped=3D5, failures=3D0, err=
ors=3D0) NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't need to b=
e rerun and all succeeded.

Where i would expect:
mytest.CustomTestSuite.test_failure: FAILURE (or ERROR)
mytest.CustomTestSuite.test_success: PASSED

Any help or pointers is appreciated :)

--J6mK0nRpcVwRvgCBoMjm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi,</div>
<div>I'm currently trying to create some tests for my sdk, using sdktest.bb=
class, but i'm having issues with bitbake locating my tests.</div>
<div>In my layer, i have this setup:</div>
<div>=E2=94=9C=E2=94=80=E2=94=80 meta-custom<br />...<br />=E2=94=82 &nbsp;=
 =E2=94=9C=E2=94=80=E2=94=80 conf<br />=E2=94=82 &nbsp; =E2=94=82 &nbsp; =
=E2=94=94=E2=94=80=E2=94=80 layer.conf<br />=E2=94=82 &nbsp; =E2=94=9C=E2=
=94=80=E2=94=80 lib<br />=E2=94=82 &nbsp; =E2=94=82 &nbsp; =E2=94=94=E2=94=
=80=E2=94=80 oeqa<br />=E2=94=82 &nbsp; =E2=94=82 &nbsp; &nbsp; &nbsp; =E2=
=94=9C=E2=94=80=E2=94=80 controllers<br />=E2=94=82 &nbsp; =E2=94=82 &nbsp;=
 &nbsp; &nbsp; =E2=94=82 &nbsp; =E2=94=94=E2=94=80=E2=94=80 __init__.py<br =
/>=E2=94=82 &nbsp; =E2=94=82 &nbsp; &nbsp; &nbsp; =E2=94=94=E2=94=80=E2=94=
=80 sdk<br />=E2=94=82 &nbsp; =E2=94=82 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 cases<br />=E2=94=82 &nbsp; =E2=94=82 &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; =E2=94=82 &nbsp; =E2=94=9C=E2=94=80=E2=94=80 myte=
st.py<br />=E2=94=82 &nbsp; =E2=94=82 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
=E2=94=9C=E2=94=80=E2=94=80 __init__.py<br />...<br /><br />In the __init__=
.py files i have added:</div>
<div>
<div style=3D"color: #dadada; background-color: #1e1e1e; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #d8a0df;">from</span><span style=3D"color: #dada=
da;"> pkgutil</span><span style=3D"color: #dadada;"> </span><span style=3D"=
color: #d8a0df;">import</span><span style=3D"color: #dadada;"> </span><span=
 style=3D"color: #dcdcaa;">extend_path</span></div>
<div><span style=3D"color: #9cdcfe;">__path__</span><span style=3D"color: #=
dadada;"> </span><span style=3D"color: #b4b4b4;">=3D</span><span style=3D"c=
olor: #dadada;"> </span><span style=3D"color: #dcdcaa;">extend_path</span><=
span style=3D"color: #b4b4b4;">(</span><span style=3D"color: #9cdcfe;">__pa=
th__</span><span style=3D"color: #b4b4b4;">,</span><span style=3D"color: #d=
adada;"> </span><span style=3D"color: #9cdcfe;">__name__</span><span style=
=3D"color: #b4b4b4;">)</span></div>
</div>
</div>
<div>&nbsp;</div>
<div>And in layer.conf:</div>
<div>&nbsp;</div>
<div>
<div style=3D"color: #dadada; background-color: #1e1e1e; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #9cdcfe;">addpylib</span><span style=3D"color: #=
dadada;"> </span><span style=3D"color: #569cd6;">${</span><span style=3D"co=
lor: #9cdcfe;">LAYERDIR</span><span style=3D"color: #569cd6;">}</span><span=
 style=3D"color: #dadada;">/</span><span style=3D"color: #9cdcfe;">lib</spa=
n><span style=3D"color: #dadada;"> </span><span style=3D"color: #9cdcfe;">o=
eqa</span></div>
</div>
</div>
<div>&nbsp;</div>
<div>And in my image i have:</div>
<div>
<div style=3D"color: #dadada; background-color: #1e1e1e; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #d8a0df;">inherit</span><span style=3D"color: #d=
adada;"> </span><span style=3D"color: #9cdcfe;">testsdk</span></div>
</div>
</div>
<div>&nbsp;</div>
<div>mytest.py is quite simple:</div>
<div>
<div style=3D"color: #dadada; background-color: #1e1e1e; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #d8a0df;">from</span><span style=3D"color: #dada=
da;"> </span><span style=3D"color: #c8c8c8;">oeqa</span><span style=3D"colo=
r: #b4b4b4;">.</span><span style=3D"color: #c8c8c8;">sdk</span><span style=
=3D"color: #b4b4b4;">.</span><span style=3D"color: #c8c8c8;">case</span><sp=
an style=3D"color: #dadada;"> </span><span style=3D"color: #d8a0df;">import=
</span><span style=3D"color: #dadada;"> </span><span style=3D"color: #4ec9b=
0;">OESDKTestCase</span><span style=3D"color: #dcdcaa;"></span></div>
<br />
<div>
<div style=3D"color: #dadada; background-color: #1e1e1e; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #569cd6;">class</span><span style=3D"color: #dad=
ada;"> </span><span style=3D"color: #4ec9b0;">CustomTestSuite</span><span s=
tyle=3D"color: #b4b4b4;">(</span><span style=3D"color: #4ec9b0;">OESDKTestC=
ase</span><span style=3D"color: #b4b4b4;">):</span></div>
</div>
</div>
<div><span style=3D"color: #dadada;"> </span><span style=3D"color: #569cd6;=
">def</span><span style=3D"color: #dadada;"> </span><span style=3D"color: #=
dcdcaa;">test_failure</span><span style=3D"color: #b4b4b4;">(</span><span s=
tyle=3D"color: #9a9a9a;">self</span><span style=3D"color: #b4b4b4;">):</spa=
n></div>
<div><span style=3D"color: #dadada;"> </span><span style=3D"color: #9a9a9a;=
">self</span><span style=3D"color: #b4b4b4;">.</span><span style=3D"color: =
#dcdcaa;">_run</span><span style=3D"color: #b4b4b4;">(</span><span style=3D=
"color: #e8c9bb;">"</span><span style=3D"color: #ce9178;">false</span><span=
 style=3D"color: #e8c9bb;">"</span><span style=3D"color: #b4b4b4;">)</span>=
</div>
<br />
<div><span style=3D"color: #dadada;"> </span><span style=3D"color: #569cd6;=
">def</span><span style=3D"color: #dadada;"> </span><span style=3D"color: #=
dcdcaa;">test_success</span><span style=3D"color: #b4b4b4;">(</span><span s=
tyle=3D"color: #9a9a9a;">self</span><span style=3D"color: #b4b4b4;">):</spa=
n></div>
<div><span style=3D"color: #dadada;"> </span><span style=3D"color: #9a9a9a;=
">self</span><span style=3D"color: #b4b4b4;">.</span><span style=3D"color: =
#dcdcaa;">_run</span><span style=3D"color: #b4b4b4;">(</span><span style=3D=
"color: #e8c9bb;">"</span><span style=3D"color: #ce9178;">true</span><span =
style=3D"color: #e8c9bb;">"</span><span style=3D"color: #b4b4b4;">)</span><=
/div>
</div>
</div>
<div>&nbsp;</div>
<div>But when i run bitbake custom-image -c testsdk after bitbake custom-im=
age -c populate_sdk, the following is only run:<br /><span data-testid=3D"i=
ssue-activity-feed.feed-display-with-intersection-observer"><span><span dat=
a-testid=3D"comment-base-item-69640"><span data-code-lang=3D"" data-ds--cod=
e--code-block=3D"" style=3D"--ads-code-line-number-width: calc(2ch + 16px);=
 --ads-highlighted-start-text: Highlight start; --ads-highlighted-end-text:=
 Highlight end;" class=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _=
1e0c1txw _vwz4gktf _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41=
odn _1ozdn7od _7xinn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _=
pn28u2gc _gz9fu2gc _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81=
yev _tv41hkgb _1hmimyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _=
13cdh2mm _15ba126e _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21=
hna _1xx2grf3 _x7c815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _=
mx8b7mnp _1kr87mnp _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1=
q9c _1mgnt94y _nhket94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _=
1gx21e5h _1ls01ule _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomu=
sic _lcwuusic _1552u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _=
euyxusvi _cahfusvi _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101=
giz _1wfuwrk5 _16kzwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _=
eiht5x2v _t9zb5x2v _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361=
fxt _137bh55r _1k7d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _=
113p131l _1n6tpnps _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq1=
0m5 _1vww10m5 _1rju10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _=
p2vr17qg _19o610m5 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2p=
nps _1pbkpnps _k3lipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _=
1f0gpnps _9d3e17qg _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoi=
dpf _1a9lidpf _20bqidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"langu=
age-" style=3D"white-space: pre;"><span class=3D"">SDK testing environment:=
 armv8a-poky-linux
</span></code></span></span></span></span><span data-testid=3D"issue-activi=
ty-feed.feed-display-with-intersection-observer"><span><span data-testid=3D=
"comment-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-blo=
ck=3D"" style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-high=
lighted-start-text: Highlight start; --ads-highlighted-end-text: Highlight =
end;" class=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _v=
wz4gktf _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7=
od _7xinn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _g=
z9fu2gc _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hk=
gb _1hmimyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _1=
5ba126e _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2gr=
f3 _x7c815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1=
kr87mnp _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt9=
4y _nhket94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1=
ls01ule _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuus=
ic _1552u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _c=
ahfusvi _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwr=
k5 _16kzwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t=
9zb5x2v _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh5=
5r _1k7d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1=
n6tpnps _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10=
m5 _1rju10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _1=
9o610m5 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpn=
ps _k3lipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9=
d3e17qg _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lid=
pf _20bqidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=
=3D"white-space: pre;">GalculatorTest class: SDK don't support gtk+3
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">No python3-maturin package in the SDK
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">No python3-maturin package in the SDK
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RustCompileTest class: SDK doesn't contain a Rust cross-can=
adian toolchain
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RustCompileTest class: SDK doesn't contain a Rust cross-can=
adian toolchain
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS:
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - assimp.BuildAssimp.test_assimp: PASSED (89.13s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - buildcpio.BuildCpioTest.test_cpio: PASSED (23.24s=
)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - buildepoxy.EpoxyTest.test_epoxy: PASSED (11.51s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - buildlzip.BuildLzipTest.test_lzip: PASSED (1.31s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - gcc.GccCompileTest.test_gcc_compile: PASSED (0.07=
s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - gcc.GccCompileTest.test_gpp2_compile: PASSED (0.0=
7s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - gcc.GccCompileTest.test_gpp_compile: PASSED (0.17=
s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - gcc.GccCompileTest.test_make: PASSED (0.08s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - perl.PerlTest.test_perl: PASSED (0.02s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - python.Python3Test.test_python3: PASSED (0.03s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - buildgalculator.GalculatorTest.test_galculator: S=
KIPPED (0.00s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - maturin.MaturinDevelopTest.test_maturin_develop: =
SKIPPED (0.00s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - maturin.MaturinTest.test_maturin_list_python: SKI=
PPED (0.00s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - rust.RustCompileTest.test_cargo_build: SKIPPED (0=
.00s)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">RESULTS - rust.RustHostCompileTest.test_cargo_build: SKIPPE=
D (0.00s)</code></span></span></span></span><br /><span data-testid=3D"issu=
e-activity-feed.feed-display-with-intersection-observer"><span><span data-t=
estid=3D"comment-base-item-69640"><span data-code-lang=3D"" data-ds--code--=
code-block=3D"" style=3D"--ads-code-line-number-width: calc(2ch + 16px); --=
ads-highlighted-start-text: Highlight start; --ads-highlighted-end-text: Hi=
ghlight end;" class=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0=
c1txw _vwz4gktf _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn=
 _1ozdn7od _7xinn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn2=
8u2gc _gz9fu2gc _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev=
 _tv41hkgb _1hmimyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13c=
dh2mm _15ba126e _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna=
 _1xx2grf3 _x7c815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8=
b7mnp _1kr87mnp _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c=
 _1mgnt94y _nhket94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx=
21e5h _1ls01ule _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic=
 _lcwuusic _1552u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euy=
xusvi _cahfusvi _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz=
 _1wfuwrk5 _16kzwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eih=
t5x2v _t9zb5x2v _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt=
 _137bh55r _1k7d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113=
p131l _1n6tpnps _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5=
 _1vww10m5 _1rju10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2v=
r17qg _19o610m5 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps=
 _1pbkpnps _k3lipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0=
gpnps _9d3e17qg _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf=
 _1a9lidpf _20bqidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language=
-" style=3D"white-space: pre;">SUMMARY:
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">custom-image sdk  - Ran 15 tests in 125.628s
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">custom-image sdk - OK - All required tests passed (successe=
s=3D10, skipped=3D5, failures=3D0, errors=3D0)
</code></span></span></span></span><span data-testid=3D"issue-activity-feed=
.feed-display-with-intersection-observer"><span><span data-testid=3D"commen=
t-base-item-69640"><span data-code-lang=3D"" data-ds--code--code-block=3D""=
 style=3D"--ads-code-line-number-width: calc(2ch + 16px); --ads-highlighted=
-start-text: Highlight start; --ads-highlighted-end-text: Highlight end;" c=
lass=3D"prismjs _2rkoglpi _1dqoglyw _1wyb1crf _k48pi7a9 _1e0c1txw _vwz4gktf=
 _1reo1wug _o572qvpr _1eimjvyg _bfhktkvp _syaz1fxt _ect41odn _1ozdn7od _7xi=
nn7od _t7aun7od _1v15u2gc _ilvcu2gc _m29uu2gc _17wyu2gc _pn28u2gc _gz9fu2gc=
 _1hmyegat _vblregat _vbulegat _wozj1yev _1agb1yev _lkm81yev _tv41hkgb _1hm=
imyb0 _1ra01n1a _1d4j1y44 _1f8gstnw _1pzyb3bt _j1w0ww7y _13cdh2mm _15ba126e=
 _zvy9f705 _qcxof705 _14y71a66 _j0l11wug _1weckb7n _1na21hna _1xx2grf3 _x7c=
815vq _lh0y15vq _1m3815vq _qk1e15vq _12l6ysn8 _uga3ysn8 _mx8b7mnp _1kr87mnp=
 _xo19t94y _1bemt94y _nalpstnw _151dstnw _1exb1q9c _1hgu1q9c _1mgnt94y _nhk=
et94y _h909m7j4 _scgayz1z _ipl81e17 _jeky1l04 _1gec1a66 _1gx21e5h _1ls01ule=
 _vm2c1rh5 _12ok1rh5 _rude1ule _1q16glyw _1io6glyw _juomusic _lcwuusic _155=
2u2gc _12afu2gc _28ddu2gc _1i8zu2gc _12tu1a66 _zu0j1a66 _euyxusvi _cahfusvi=
 _zhnuidpf _1amdidpf _mbgcpf9b _bu7zpf9b _131n1giz _gy101giz _1wfuwrk5 _16k=
zwrk5 _9kk3moej _cjus1w1g _9k2r1m30 _nhmw1m30 _yl021m30 _eiht5x2v _t9zb5x2v=
 _mqok1w1g _3hsg1w1g _i7ngn7od _9wu1fb2s _1xcoh55r _1t361fxt _137bh55r _1k7=
d1fxt _97lipnps _12nh9lu1 _1g0517qg _i2ig10m5 _326z1fxt _113p131l _1n6tpnps=
 _tgu817qg _1k47pnps _g0lx1fxt _ys4e131l _7gp8h55r _1yvq10m5 _1vww10m5 _1rj=
u10m5 _1v0lh55r _wmyy17qg _748n17qg _1mfn17qg _1d7e17qg _p2vr17qg _19o610m5=
 _kxov17qg _1np517qg _m2f517qg _1b9tpnps _1tq6pnps _1rd2pnps _1pbkpnps _k3l=
ipnps _13zt131l _2g12fb2s _k86b10m5 _b5iy131l _gti3131l _1f0gpnps _9d3e17qg=
 _qdiapnps _72uvpnps _13dgkb7n _170714ej _1i3h1txw _1huoidpf _1a9lidpf _20b=
qidpf _1oggidpf _bympidpf _9nnjidpf"><code class=3D"language-" style=3D"whi=
te-space: pre;">NOTE: Tasks Summary: Attempted 1 tasks of which 0 didn't ne=
ed to be rerun and all succeeded.</code></span></span></span></span></div>
<div>&nbsp;</div>
<div>Where i would expect:</div>
<div>mytest.CustomTestSuite.test_failure: FAILURE (or ERROR)</div>
<div>mytest.CustomTestSuite.test_success: PASSED</div>
<div>&nbsp;</div>
<div>Any help or pointers is appreciated :)</div>

--J6mK0nRpcVwRvgCBoMjm--

