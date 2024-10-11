Return-Path: <jairo.mejiaaponte@belden.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AB18D0EE17
	for <webhook@archiver.kernel.org>; Fri, 11 Oct 2024 15:57:31 +0000 (UTC)
Subject: How to install a debian package in the host. Having problems with tar subprocess with dpkg-native
To: yocto@lists.yoctoproject.org
From: jairo.mejiaaponte@belden.com
X-Originating-Location: Gelsenkirchen, North Rhine-Westphalia, DE (37.201.212.228)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Oct 2024 08:57:25 -0700
Message-ID: <vIaT.1728662245920397641.q3bQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="wWXRJPGRGv9Wwh8KUtDt"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Oct 2024 15:57:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64009

--wWXRJPGRGv9Wwh8KUtDt
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Yocto community,

I know it is not ideal, but I need to install a package in the building hos=
t that is close source. Because of it, I just received the deb package with=
out the source code. This deb package only needs to run on the building hos=
t aka native, but I am unable to achieve it. This is how the recipe look li=
ke:

SUMMARY =3D "Recipe for installing deb package"
DESCRIPTION =3D "It installs own deb package"
HOMEPAGE =3D ""
LICENSE =3D "CLOSED"

DEPENDS =3D "dpkg-native ldconfig-native virtual/fakeroot-native"

SRC_URI =3D "file://close-source-deb-file.amd64.deb;unpack=3D0"

fakeroot do_install : append () {
touch ${ STAGING_DIR_NATIVE } / var / lib / dpkg / status
${ STAGING_BINDIR_NATIVE } / dpkg -- force architecture -- instdir =3D ${ D=
 } / \
-- admindir =3D ${ STAGING_DIR_NATIVE } / var / lib / dpkg / \
- i ${ WORKDIR } / close - source - deb - file. amd64. deb
}
do_install [ depends ] +=3D "virtual/fakeroot-native:do_populate_sysroot"

FILES : ${ PN } +=3D " \
/usr/* \
/etc/* \
"
However, when I tried to run this recipe I got stuck in the extraction part=
 of the process with the error "Cannot change ownership":

| NOTE : Skipping as already exists in sysroot : [ 'glibc' , 'ldconfig-nati=
ve' , 'gcc-cross-aarch64' ,
'gcc-runtime' , 'quilt-native' , 'dpkg-native' , 'patch-native' , 'pseudo-n=
ative' , 'xz-native' ,
'linux-libc-headers' , 'libgcc' , 'libtool-native' , 'attr-native' , 'gette=
xt-minimal-native' ,
'bzip2-native' , 'gettext-native' , 'perl-native' , 'zlib-native' , 'opkg-u=
tils-native' , 'libmpc-native' ,
'binutils-cross-aarch64' , 'zstd-native' , 'gnu-config-native' , 'gmp-nativ=
e' , 'flex-native' , 'mpfr-native' ,
'texinfo-dummy-native' , 'make-native' , 'gdbm-native' , 'm4-native' ]
| DEBUG : Python function extend_recipe_sysroot finished
| DEBUG : Executing shell function do_install
| tar :. / conffiles : Cannot change ownership to uid 0 , gid 0 : Invalid a=
rgument
| tar :. / control : Cannot change ownership to uid 0 , gid 0 : Invalid arg=
ument
| tar :. / md5sums : Cannot change ownership to uid 0 , gid 0 : Invalid arg=
ument
| tar :. / postinst : Cannot change ownership to uid 0 , gid 0 : Invalid ar=
gument
| tar :. / shlibs : Cannot change ownership to uid 0 , gid 0 : Invalid argu=
ment
| tar :. / triggers : Cannot change ownership to uid 0 , gid 0 : Invalid ar=
gument
| tar :. : Cannot change ownership to uid 0 , gid 0 : Invalid argument
| tar : Exiting with failure status due to previous errors
| dpkg - deb : error : tar subprocess returned error exit status 2
| dpkg : error processing archive pwd / close - source - deb - file. amd64.=
 deb (-- install ):
| dpkg - deb -- control subprocess returned error exit status 2
| Errors were encountered while processing :

I know this error is typical of tar when the uid and gid of the user and th=
e owner are not the same but I cannot use the flag "--no-same-owner" as far=
 as I know using dpkg. I also tried with pseudo and fakeroot, but the resul=
t is the same. I have been looking the code of dpkg but adding the flag to =
the variable TAR seems not to be working because it will not find the binar=
y $PATH.

So I do not know what else kind I tried to make it work. Have I something m=
issed? Could you maybe point me into the right direction?

Thanks for your help.

Happy coding,

JM

--wWXRJPGRGv9Wwh8KUtDt
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Dear Yocto community,&nbsp;</div>
<div>&nbsp;</div>
<div>I know it is not ideal, but I need to install a package in the buildin=
g host that is close source. Because of it, I just received the deb package=
 without the source code. This deb package only needs to run on the buildin=
g host aka native, but I am unable to achieve it. This is how the recipe lo=
ok like:&nbsp;<br /><br />
<div style=3D"color: #a9b1d6; background-color: #1a1b26; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #e0af68;">SUMMARY</span><span style=3D"color: #a=
9b1d6;"> </span><span style=3D"color: #89ddff;">=3D</span><span style=3D"co=
lor: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">"Recipe for installi=
ng deb package"</span></div>
<div><span style=3D"color: #e0af68;">DESCRIPTION</span><span style=3D"color=
: #a9b1d6;"> </span><span style=3D"color: #89ddff;">=3D</span><span style=
=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">"It installs o=
wn deb package"</span></div>
<div><span style=3D"color: #e0af68;">HOMEPAGE</span><span style=3D"color: #=
a9b1d6;"> </span><span style=3D"color: #89ddff;">=3D</span><span style=3D"c=
olor: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">""</span></div>
<div><span style=3D"color: #e0af68;">LICENSE</span><span style=3D"color: #a=
9b1d6;"> </span><span style=3D"color: #89ddff;">=3D</span><span style=3D"co=
lor: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">"CLOSED"</span></div=
>
<br />
<div><span style=3D"color: #e0af68;">DEPENDS</span><span style=3D"color: #a=
9b1d6;"> </span><span style=3D"color: #89ddff;">=3D</span><span style=3D"co=
lor: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">"dpkg-native ldconfi=
g-native virtual/fakeroot-native"</span></div>
<br />
<div><span style=3D"color: #e0af68;">SRC_URI</span><span style=3D"color: #a=
9b1d6;"> </span><span style=3D"color: #89ddff;">=3D</span><span style=3D"co=
lor: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">"file://close-source=
-deb-file.amd64.deb;unpack=3D0"</span></div>
<br />
<div><span style=3D"color: #bb9af7;">fakeroot</span><span style=3D"color: #=
a9b1d6;"> </span><span style=3D"color: #7aa2f7;">do_install</span><span sty=
le=3D"color: #89ddff;">:</span><span style=3D"color: #bb9af7;">append</span=
><span style=3D"color: #a9b1d6;">() {</span></div>
<div><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #7aa2f7;=
">touch</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color:=
 #7dcfff;">${</span><span style=3D"color: #bb9af7;">STAGING_DIR_NATIVE</spa=
n><span style=3D"color: #7dcfff;">}</span><span style=3D"color: #a9b1d6;">/=
</span><span style=3D"color: #c0caf5;">var</span><span style=3D"color: #a9b=
1d6;">/</span><span style=3D"color: #c0caf5;">lib</span><span style=3D"colo=
r: #a9b1d6;">/</span><span style=3D"color: #c0caf5;">dpkg</span><span style=
=3D"color: #a9b1d6;">/</span><span style=3D"color: #c0caf5;">status</span><=
/div>
<div><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #7aa2f7;=
">${</span><span style=3D"color: #7aa2f7;">STAGING_BINDIR_NATIVE</span><spa=
n style=3D"color: #7aa2f7;">}</span><span style=3D"color: #7aa2f7;">/</span=
><span style=3D"color: #7aa2f7;">dpkg</span><span style=3D"color: #a9b1d6;"=
> --</span><span style=3D"color: #c0caf5;">force</span><span style=3D"color=
: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">architecture</span><spa=
n style=3D"color: #a9b1d6;"> --</span><span style=3D"color: #c0caf5;">instd=
ir</span><span style=3D"color: #89ddff;">=3D</span><span style=3D"color: #7=
dcfff;">${</span><span style=3D"color: #bb9af7;">D</span><span style=3D"col=
or: #7dcfff;">}</span><span style=3D"color: #a9b1d6;">/ \</span></div>
<div><span style=3D"color: #a9b1d6;"> --</span><span style=3D"color: #c0caf=
5;">admindir</span><span style=3D"color: #89ddff;">=3D</span><span style=3D=
"color: #7dcfff;">${</span><span style=3D"color: #bb9af7;">STAGING_DIR_NATI=
VE</span><span style=3D"color: #7dcfff;">}</span><span style=3D"color: #a9b=
1d6;">/</span><span style=3D"color: #c0caf5;">var</span><span style=3D"colo=
r: #a9b1d6;">/</span><span style=3D"color: #c0caf5;">lib</span><span style=
=3D"color: #a9b1d6;">/</span><span style=3D"color: #c0caf5;">dpkg</span><sp=
an style=3D"color: #a9b1d6;">/ \</span></div>
<div><span style=3D"color: #a9b1d6;"> -</span><span style=3D"color: #c0caf5=
;">i</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #7=
dcfff;">${</span><span style=3D"color: #bb9af7;">WORKDIR</span><span style=
=3D"color: #7dcfff;">}</span><span style=3D"color: #a9b1d6;">/</span><span =
style=3D"color: #c0caf5;">close</span><span style=3D"color: #a9b1d6;">-</sp=
an><span style=3D"color: #c0caf5;">source</span><span style=3D"color: #a9b1=
d6;">-</span><span style=3D"color: #c0caf5;">deb</span><span style=3D"color=
: #a9b1d6;">-</span><span style=3D"color: #c0caf5;">file</span><span style=
=3D"color: #89ddff;">.</span><span style=3D"color: #c0caf5;">amd64</span><s=
pan style=3D"color: #89ddff;">.</span><span style=3D"color: #c0caf5;">deb</=
span></div>
<div><span style=3D"color: #a9b1d6;">}</span></div>
<div><span style=3D"color: #e0af68;">do_install</span><span style=3D"color:=
 #a9b1d6;">[</span><span style=3D"color: #c0caf5;">depends</span><span styl=
e=3D"color: #a9b1d6;">] </span><span style=3D"color: #89ddff;">+=3D</span><=
span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">"vir=
tual/fakeroot-native:do_populate_sysroot"</span></div>
<br />
<div><span style=3D"color: #e0af68;">FILES</span><span style=3D"color: #a9b=
1d6;">:</span><span style=3D"color: #7dcfff;">${</span><span style=3D"color=
: #e0af68;">PN</span><span style=3D"color: #7dcfff;">}</span><span style=3D=
"color: #a9b1d6;"> </span><span style=3D"color: #89ddff;">+=3D</span><span =
style=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">" \</span=
></div>
<div><span style=3D"color: #9ece6a;"> /usr/* \</span></div>
<div><span style=3D"color: #9ece6a;"> /etc/* \</span></div>
<div><span style=3D"color: #9ece6a;">"</span></div>
</div>
</div>
<div>However, when I tried to run this recipe I got stuck in the extraction=
 part of the process with the error "Cannot change ownership":&nbsp;<br /><=
br />
<div style=3D"color: #a9b1d6; background-color: #1a1b26; font-family: 'Droi=
d Sans Mono', 'monospace', monospace; font-weight: normal; font-size: 14px;=
 line-height: 19px; white-space: pre;">
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">NOTE</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color=
: #c0caf5;">Skipping</span><span style=3D"color: #a9b1d6;"> </span><span st=
yle=3D"color: #bb9af7;">as</span><span style=3D"color: #a9b1d6;"> </span><s=
pan style=3D"color: #c0caf5;">already</span><span style=3D"color: #a9b1d6;"=
> </span><span style=3D"color: #c0caf5;">exists</span><span style=3D"color:=
 #a9b1d6;"> </span><span style=3D"color: #bb9af7;">in</span><span style=3D"=
color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">sysroot</span><spa=
n style=3D"color: #a9b1d6;">: [</span><span style=3D"color: #9ece6a;">'glib=
c'</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b=
1d6;"> </span><span style=3D"color: #9ece6a;">'ldconfig-native'</span><span=
 style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span>=
<span style=3D"color: #9ece6a;">'gcc-cross-aarch64'</span><span style=3D"co=
lor: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span></div>
<div><span style=3D"color: #9ece6a;">'gcc-runtime'</span><span style=3D"col=
or: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span><span style=
=3D"color: #9ece6a;">'quilt-native'</span><span style=3D"color: #89ddff;">,=
</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6=
a;">'dpkg-native'</span><span style=3D"color: #89ddff;">,</span><span style=
=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">'patch-native'=
</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d=
6;"> </span><span style=3D"color: #9ece6a;">'pseudo-native'</span><span sty=
le=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span><spa=
n style=3D"color: #9ece6a;">'xz-native'</span><span style=3D"color: #89ddff=
;">,</span><span style=3D"color: #a9b1d6;"> </span></div>
<div><span style=3D"color: #9ece6a;">'linux-libc-headers'</span><span style=
=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span><span =
style=3D"color: #9ece6a;">'libgcc'</span><span style=3D"color: #89ddff;">,<=
/span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a=
;">'libtool-native'</span><span style=3D"color: #89ddff;">,</span><span sty=
le=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">'attr-native=
'</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1=
d6;"> </span><span style=3D"color: #9ece6a;">'gettext-minimal-native'</span=
><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> <=
/span></div>
<div><span style=3D"color: #9ece6a;">'bzip2-native'</span><span style=3D"co=
lor: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span><span style=
=3D"color: #9ece6a;">'gettext-native'</span><span style=3D"color: #89ddff;"=
>,</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ec=
e6a;">'perl-native'</span><span style=3D"color: #89ddff;">,</span><span sty=
le=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">'zlib-native=
'</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1=
d6;"> </span><span style=3D"color: #9ece6a;">'opkg-utils-native'</span><spa=
n style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span=
><span style=3D"color: #9ece6a;">'libmpc-native'</span><span style=3D"color=
: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span></div>
<div><span style=3D"color: #9ece6a;">'binutils-cross-aarch64'</span><span s=
tyle=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span><s=
pan style=3D"color: #9ece6a;">'zstd-native'</span><span style=3D"color: #89=
ddff;">,</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color=
: #9ece6a;">'gnu-config-native'</span><span style=3D"color: #89ddff;">,</sp=
an><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">=
'gmp-native'</span><span style=3D"color: #89ddff;">,</span><span style=3D"c=
olor: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">'flex-native'</span=
><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> <=
/span><span style=3D"color: #9ece6a;">'mpfr-native'</span><span style=3D"co=
lor: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span></div>
<div><span style=3D"color: #9ece6a;">'texinfo-dummy-native'</span><span sty=
le=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span><spa=
n style=3D"color: #9ece6a;">'make-native'</span><span style=3D"color: #89dd=
ff;">,</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: =
#9ece6a;">'gdbm-native'</span><span style=3D"color: #89ddff;">,</span><span=
 style=3D"color: #a9b1d6;"> </span><span style=3D"color: #9ece6a;">'m4-nati=
ve'</span><span style=3D"color: #a9b1d6;">]</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">DEBUG</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"colo=
r: #c0caf5;">Python</span><span style=3D"color: #a9b1d6;"> </span><span sty=
le=3D"color: #c0caf5;">function</span><span style=3D"color: #a9b1d6;"> </sp=
an><span style=3D"color: #c0caf5;">extend_recipe_sysroot</span><span style=
=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">finished</span=
></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">DEBUG</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"colo=
r: #c0caf5;">Executing</span><span style=3D"color: #a9b1d6;"> </span><span =
style=3D"color: #c0caf5;">shell</span><span style=3D"color: #a9b1d6;"> </sp=
an><span style=3D"color: #c0caf5;">function</span><span style=3D"color: #a9=
b1d6;"> </span><span style=3D"color: #c0caf5;">do_install</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">tar</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color:=
 #89ddff;">.</span><span style=3D"color: #a9b1d6;">/</span><span style=3D"c=
olor: #c0caf5;">conffiles</span><span style=3D"color: #a9b1d6;">: </span><s=
pan style=3D"color: #c0caf5;">Cannot</span><span style=3D"color: #a9b1d6;">=
 </span><span style=3D"color: #c0caf5;">change</span><span style=3D"color: =
#a9b1d6;"> </span><span style=3D"color: #c0caf5;">ownership</span><span sty=
le=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">to</span><sp=
an style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">uid</s=
pan><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #ff9e64;"=
>0</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b=
1d6;"> </span><span style=3D"color: #c0caf5;">gid</span><span style=3D"colo=
r: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0</span><span style=3D=
"color: #a9b1d6;">: </span><span style=3D"color: #c0caf5;">Invalid</span><s=
pan style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">argum=
ent</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">tar</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color:=
 #89ddff;">.</span><span style=3D"color: #a9b1d6;">/</span><span style=3D"c=
olor: #c0caf5;">control</span><span style=3D"color: #a9b1d6;">: </span><spa=
n style=3D"color: #c0caf5;">Cannot</span><span style=3D"color: #a9b1d6;"> <=
/span><span style=3D"color: #c0caf5;">change</span><span style=3D"color: #a=
9b1d6;"> </span><span style=3D"color: #c0caf5;">ownership</span><span style=
=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">to</span><span=
 style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">uid</spa=
n><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0=
</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d=
6;"> </span><span style=3D"color: #c0caf5;">gid</span><span style=3D"color:=
 #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0</span><span style=3D"c=
olor: #a9b1d6;">: </span><span style=3D"color: #c0caf5;">Invalid</span><spa=
n style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">argumen=
t</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">tar</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color:=
 #89ddff;">.</span><span style=3D"color: #a9b1d6;">/</span><span style=3D"c=
olor: #c0caf5;">md5sums</span><span style=3D"color: #a9b1d6;">: </span><spa=
n style=3D"color: #c0caf5;">Cannot</span><span style=3D"color: #a9b1d6;"> <=
/span><span style=3D"color: #c0caf5;">change</span><span style=3D"color: #a=
9b1d6;"> </span><span style=3D"color: #c0caf5;">ownership</span><span style=
=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">to</span><span=
 style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">uid</spa=
n><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0=
</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d=
6;"> </span><span style=3D"color: #c0caf5;">gid</span><span style=3D"color:=
 #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0</span><span style=3D"c=
olor: #a9b1d6;">: </span><span style=3D"color: #c0caf5;">Invalid</span><spa=
n style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">argumen=
t</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">tar</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color:=
 #89ddff;">.</span><span style=3D"color: #a9b1d6;">/</span><span style=3D"c=
olor: #c0caf5;">postinst</span><span style=3D"color: #a9b1d6;">: </span><sp=
an style=3D"color: #c0caf5;">Cannot</span><span style=3D"color: #a9b1d6;"> =
</span><span style=3D"color: #c0caf5;">change</span><span style=3D"color: #=
a9b1d6;"> </span><span style=3D"color: #c0caf5;">ownership</span><span styl=
e=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">to</span><spa=
n style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">uid</sp=
an><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">=
0</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1=
d6;"> </span><span style=3D"color: #c0caf5;">gid</span><span style=3D"color=
: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0</span><span style=3D"=
color: #a9b1d6;">: </span><span style=3D"color: #c0caf5;">Invalid</span><sp=
an style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">argume=
nt</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">tar</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color:=
 #89ddff;">.</span><span style=3D"color: #a9b1d6;">/</span><span style=3D"c=
olor: #c0caf5;">shlibs</span><span style=3D"color: #a9b1d6;">: </span><span=
 style=3D"color: #c0caf5;">Cannot</span><span style=3D"color: #a9b1d6;"> </=
span><span style=3D"color: #c0caf5;">change</span><span style=3D"color: #a9=
b1d6;"> </span><span style=3D"color: #c0caf5;">ownership</span><span style=
=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">to</span><span=
 style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">uid</spa=
n><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0=
</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d=
6;"> </span><span style=3D"color: #c0caf5;">gid</span><span style=3D"color:=
 #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0</span><span style=3D"c=
olor: #a9b1d6;">: </span><span style=3D"color: #c0caf5;">Invalid</span><spa=
n style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">argumen=
t</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">tar</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color:=
 #89ddff;">.</span><span style=3D"color: #a9b1d6;">/</span><span style=3D"c=
olor: #c0caf5;">triggers</span><span style=3D"color: #a9b1d6;">: </span><sp=
an style=3D"color: #c0caf5;">Cannot</span><span style=3D"color: #a9b1d6;"> =
</span><span style=3D"color: #c0caf5;">change</span><span style=3D"color: #=
a9b1d6;"> </span><span style=3D"color: #c0caf5;">ownership</span><span styl=
e=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">to</span><spa=
n style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">uid</sp=
an><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">=
0</span><span style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1=
d6;"> </span><span style=3D"color: #c0caf5;">gid</span><span style=3D"color=
: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0</span><span style=3D"=
color: #a9b1d6;">: </span><span style=3D"color: #c0caf5;">Invalid</span><sp=
an style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">argume=
nt</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">tar</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color:=
 #89ddff;">.</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"=
color: #c0caf5;">Cannot</span><span style=3D"color: #a9b1d6;"> </span><span=
 style=3D"color: #c0caf5;">change</span><span style=3D"color: #a9b1d6;"> </=
span><span style=3D"color: #c0caf5;">ownership</span><span style=3D"color: =
#a9b1d6;"> </span><span style=3D"color: #c0caf5;">to</span><span style=3D"c=
olor: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">uid</span><span sty=
le=3D"color: #a9b1d6;"> </span><span style=3D"color: #ff9e64;">0</span><spa=
n style=3D"color: #89ddff;">,</span><span style=3D"color: #a9b1d6;"> </span=
><span style=3D"color: #c0caf5;">gid</span><span style=3D"color: #a9b1d6;">=
 </span><span style=3D"color: #ff9e64;">0</span><span style=3D"color: #a9b1=
d6;">: </span><span style=3D"color: #c0caf5;">Invalid</span><span style=3D"=
color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">argument</span></d=
iv>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">tar</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color:=
 #c0caf5;">Exiting</span><span style=3D"color: #a9b1d6;"> </span><span styl=
e=3D"color: #bb9af7;">with</span><span style=3D"color: #a9b1d6;"> </span><s=
pan style=3D"color: #c0caf5;">failure</span><span style=3D"color: #a9b1d6;"=
> </span><span style=3D"color: #c0caf5;">status</span><span style=3D"color:=
 #a9b1d6;"> </span><span style=3D"color: #c0caf5;">due</span><span style=3D=
"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">to</span><span st=
yle=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">previous</s=
pan><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;"=
>errors</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">dpkg</span><span style=3D"color: #a9b1d6;">-</span><span style=3D"color:=
 #c0caf5;">deb</span><span style=3D"color: #a9b1d6;">: </span><span style=
=3D"color: #c0caf5;">error</span><span style=3D"color: #a9b1d6;">: </span><=
span style=3D"color: #c0caf5;">tar</span><span style=3D"color: #a9b1d6;"> <=
/span><span style=3D"color: #c0caf5;">subprocess</span><span style=3D"color=
: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">returned</span><span st=
yle=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">error</span=
><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">ex=
it</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0c=
af5;">status</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"c=
olor: #ff9e64;">2</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">dpkg</span><span style=3D"color: #a9b1d6;">: </span><span style=3D"color=
: #c0caf5;">error</span><span style=3D"color: #a9b1d6;"> </span><span style=
=3D"color: #c0caf5;">processing</span><span style=3D"color: #a9b1d6;"> </sp=
an><span style=3D"color: #c0caf5;">archive</span><span style=3D"color: #a9b=
1d6;"> pwd</span><span style=3D"color: #a9b1d6;">/</span><span style=3D"col=
or: #c0caf5;">close</span><span style=3D"color: #a9b1d6;">-</span><span sty=
le=3D"color: #c0caf5;">source</span><span style=3D"color: #a9b1d6;">-</span=
><span style=3D"color: #c0caf5;">deb</span><span style=3D"color: #a9b1d6;">=
-</span><span style=3D"color: #c0caf5;">file</span><span style=3D"color: #8=
9ddff;">.</span><span style=3D"color: #c0caf5;">amd64</span><span style=3D"=
color: #89ddff;">.</span><span style=3D"color: #7aa2f7;">deb</span><span st=
yle=3D"color: #a9b1d6;"> (--</span><span style=3D"color: #c0caf5;">install<=
/span><span style=3D"color: #a9b1d6;">):</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">dpkg</span><span style=3D"color: #a9b1d6;">-</span><span style=3D"color:=
 #c0caf5;">deb</span><span style=3D"color: #a9b1d6;"> --</span><span style=
=3D"color: #c0caf5;">control</span><span style=3D"color: #a9b1d6;"> </span>=
<span style=3D"color: #c0caf5;">subprocess</span><span style=3D"color: #a9b=
1d6;"> </span><span style=3D"color: #c0caf5;">returned</span><span style=3D=
"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">error</span><span=
 style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">exit</sp=
an><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: #c0caf5;">=
status</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"color: =
#ff9e64;">2</span></div>
<div><span style=3D"color: #a9b1d6;">| </span><span style=3D"color: #c0caf5=
;">Errors</span><span style=3D"color: #a9b1d6;"> </span><span style=3D"colo=
r: #c0caf5;">were</span><span style=3D"color: #a9b1d6;"> </span><span style=
=3D"color: #c0caf5;">encountered</span><span style=3D"color: #a9b1d6;"> </s=
pan><span style=3D"color: #bb9af7;">while</span><span style=3D"color: #a9b1=
d6;"> </span><span style=3D"color: #c0caf5;">processing</span><span style=
=3D"color: #a9b1d6;">:</span></div>
</div>
<br />I know this error is typical of tar when the uid and gid of the user =
and the owner are not the same but I cannot use the flag "--no-same-owner" =
as far as I know using dpkg. I also tried with pseudo and fakeroot, but the=
 result is the same. I have been looking the code of dpkg but adding the fl=
ag to the variable TAR seems not to be working because it will not find the=
 binary $PATH.&nbsp;<br /><br />So I do not know what else kind I tried to =
make it work. Have I something missed? Could you maybe point me into the ri=
ght direction?<br /><br />Thanks for your help.&nbsp;<br /><br />Happy codi=
ng,<br /><br />JM</div>

--wWXRJPGRGv9Wwh8KUtDt--

