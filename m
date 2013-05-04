Return-Path: <Ben.Warren@spidercloud.com>
Received: from berg.int.copivia.com (mail.spidercloud.com [209.49.242.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41510E0136A
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 17:16:35 -0700 (PDT)
Received: from mailx.spidercloud.com ([10.1.1.225])
	by berg.int.copivia.com (8.13.8/8.13.8) with ESMTP id r440GYQA025814
	for <yocto@yoctoproject.org>; Fri, 3 May 2013 17:16:34 -0700
Received: from sofia.us.spidercloud.com ([10.1.1.225]) by
	sofia.us.spidercloud.com ([10.1.1.225]) with mapi;
	Fri, 3 May 2013 17:16:34 -0700
From: Ben Warren <Ben.Warren@spidercloud.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 3 May 2013 17:16:34 -0700
Thread-Topic: Trouble integrating meta-virtualization - ANSWERED
Thread-Index: Ac5IXKKj3xRMU9uxQnGjA49GqO/Low==
Message-ID: <6BE566C2-E4A9-4EA5-96EF-8F38E939B5E5@spidercloud.com>
References: <ABB6A20C-CB31-45DC-A74F-26424B52F84E@spidercloud.com>
In-Reply-To: <ABB6A20C-CB31-45DC-A74F-26424B52F84E@spidercloud.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Trouble integrating meta-virtualization - ANSWERED
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 04 May 2013 00:16:35 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_6BE566C2E4A94EA596EF8F38E939B5E5spidercloudcom_"

--_000_6BE566C2E4A94EA596EF8F38E939B5E5spidercloudcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Sorry for the spam.  I eventually found everything on openembedded.org<http=
://openembedded.org>.

regards,
Ben

On May 3, 2013, at 4:44 PM, Ben Warren <Ben.Warren@spidercloud.com<mailto:B=
en.Warren@spidercloud.com>> wrote:

Hello,

I'm trying to build an image using some components from meta-virtualization=
, and it's failing because it can't find many of the dependent modules.  I'=
m posting this on the main yocto mailing list since it's more of a general =
question of 'where are these things?'

Specifics:

 *   poky @ git tag 'dylan 9.0.0'
 *   meta-virtualization @ git commit bb8c2c420bca06c67deb05e9f63e101752110=
759 (4/25/2013)
 *   poky-contrib @jzhang/2342 (latest commit, tried other branches with si=
milar results)
 *   BSP based on 'crystalforest'

Here's how it fails:
WARNING: Host distribution "CentOS-5.9" has not been validated with this ve=
rsion of the build system; you may possibly experience unexpected failures.=
 It is recommended that you use a tested distribution.
Loading cache: 100% |######################################################=
###########################################################################=
#########| ETA:  00:00:00
Loaded 2335 entries from dependency cache.
Parsing recipes: 100% |####################################################=
###########################################################################=
#########| Time: 00:00:02
Parsing of 1674 .bb files complete (1531 cached, 143 parsed). 2296 targets,=
 75 skipped, 0 masked, 0 errors.

Build Configuration:
BB_VERSION        =3D "1.18.0"
BUILD_SYS         =3D "x86_64-linux"
NATIVELSBSTRING   =3D "CentOS-5.9"
TARGET_SYS        =3D "x86_64-poky-linux"
MACHINE           =3D "scw-appscard"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.4"
TUNE_FEATURES     =3D "m64"
TARGET_FPU        =3D ""
meta
meta-yocto
meta-yocto-bsp    =3D "scw-dylan:789b2b7e0cca404ff8ba8ed5ba823d215e6ba5b4"
meta-intel
meta-crystalforest =3D "dylan:6147ba0e962c3d7ba28b53b9b930f1bed5833c90"
meta-virtualization =3D "master:bb8c2c420bca06c67deb05e9f63e101752110759"
meta-scw-appscard =3D "<unknown>:<unknown>"
meta              =3D "jzhang/2342:edfa2b0331248facb9b0db86e3b3229e32ddbf20=
"

NOTE: Resolving any missing task queue dependencies
ERROR: Nothing PROVIDES 'bridge-utils' (but /b/ben/yocto2/meta-virtualizati=
on/recipes-extended/libvirt/libvirt_1.0.3.bb DEPENDS on or otherwise requir=
es it)
NOTE: Runtime target 'libvirt' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['libvirt', 'bridge-utils']
ERROR: Required build target 'scw-image-libvirt' has no buildable providers=
.
Missing or unbuildable dependency chain was: ['scw-image-libvirt', 'libvirt=
', 'bridge-utils']

If I let it continue using 'bit bake -k', all sorts of other common utiliti=
es are not found, such as lvm2, ebtables, dnsmasq, =85

My bblayers.conf file has this:

BBLAYERS ?=3D " \
  /b/ben/yocto2/poky/meta \
  /b/ben/yocto2/poky/meta-yocto \
  /b/ben/yocto2/poky/meta-yocto-bsp \
  /b/ben/yocto2/meta-intel \
  /b/ben/yocto2/meta-intel/meta-crystalforest \
  /b/ben/yocto2/meta-virtualization \
  /b/ben/yocto2/meta-scw-appscard \
  /b/ben/yocto2/poky-contrib/meta \
  "

So my question is: is there a repo other than poky-contrib that contains al=
l of these things, is it up to me to find them, or am I missing a key conce=
pt?  I'm very new to Yocto, and while the documentation is excellent, it is=
 also vast.

thanks a lot!
Ben







--_000_6BE566C2E4A94EA596EF8F38E939B5E5spidercloudcom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-=
mode: space; -webkit-line-break: after-white-space; ">Sorry for the spam. &=
nbsp;I eventually found everything on <a href=3D"http://openembedded.org">o=
penembedded.org</a>.<div><br></div><div>regards,</div><div>Ben</div><div><b=
r><div><div>On May 3, 2013, at 4:44 PM, Ben Warren &lt;<a href=3D"mailto:Be=
n.Warren@spidercloud.com">Ben.Warren@spidercloud.com</a>&gt; wrote:</div><b=
r class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><meta http-=
equiv=3D"Content-Type" content=3D"text/html charset=3Dwindows-1252"><div st=
yle=3D"word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break:=
 after-white-space; ">Hello,<div><br></div><div>I'm trying to build an imag=
e using some components from meta-virtualization, and it's failing because =
it can't find many of the dependent modules. &nbsp;I'm posting this on the =
main yocto mailing list since it's more of a general question of 'where are=
 these things?'</div><div><br></div><div>Specifics:</div><div><ul class=3D"=
MailOutline"><li>poky @ git tag 'dylan 9.0.0'</li><li>meta-virtualization @=
 git commit&nbsp;bb8c2c420bca06c67deb05e9f63e101752110759 (4/25/2013)</li><=
li>poky-contrib @jzhang/2342 (latest commit, tried other branches with simi=
lar results)</li><li>BSP based on 'crystalforest'</li></ul><div><br></div><=
div>Here's how it fails:</div><div><div><font face=3D"Courier">WARNING: Hos=
t distribution "CentOS-5.9" has not been validated with this version of the=
 build system; you may possibly experience unexpected failures. It is recom=
mended that you use a tested distribution.</font></div><div><font face=3D"C=
ourier">Loading cache: 100% |##############################################=
###########################################################################=
#################| ETA: &nbsp;00:00:00</font></div><div><font face=3D"Couri=
er">Loaded 2335 entries from dependency cache.</font></div><div><font face=
=3D"Courier">Parsing recipes: 100% |#######################################=
###########################################################################=
######################| Time: 00:00:02</font></div><div><font face=3D"Couri=
er">Parsing of 1674 .bb files complete (1531 cached, 143 parsed). 2296 targ=
ets, 75 skipped, 0 masked, 0 errors.</font></div><div><font face=3D"Courier=
"><br></font></div><div><font face=3D"Courier">Build Configuration:</font><=
/div><div><font face=3D"Courier">BB_VERSION &nbsp; &nbsp; &nbsp; &nbsp;=3D =
"1.18.0"</font></div><div><font face=3D"Courier">BUILD_SYS &nbsp; &nbsp; &n=
bsp; &nbsp; =3D "x86_64-linux"</font></div><div><font face=3D"Courier">NATI=
VELSBSTRING &nbsp; =3D "CentOS-5.9"</font></div><div><font face=3D"Courier"=
>TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=3D "x86_64-poky-linux"</font></div>=
<div><font face=3D"Courier">MACHINE &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =3D =
"scw-appscard"</font></div><div><font face=3D"Courier">DISTRO &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</font></div><div><font face=3D"Couri=
er">DISTRO_VERSION &nbsp; &nbsp;=3D "1.4"</font></div><div><font face=3D"Co=
urier">TUNE_FEATURES &nbsp; &nbsp; =3D "m64"</font></div><div><font face=3D=
"Courier">TARGET_FPU &nbsp; &nbsp; &nbsp; &nbsp;=3D ""</font></div><div><fo=
nt face=3D"Courier">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</=
font></div><div><font face=3D"Courier">meta-yocto &nbsp; &nbsp; &nbsp; &nbs=
p;</font></div><div><font face=3D"Courier">meta-yocto-bsp &nbsp; &nbsp;=3D =
"scw-dylan:789b2b7e0cca404ff8ba8ed5ba823d215e6ba5b4"</font></div><div><font=
 face=3D"Courier">meta-intel &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><=
font face=3D"Courier">meta-crystalforest =3D "dylan:6147ba0e962c3d7ba28b53b=
9b930f1bed5833c90"</font></div><div><font face=3D"Courier">meta-virtualizat=
ion =3D "master:bb8c2c420bca06c67deb05e9f63e101752110759"</font></div><div>=
<font face=3D"Courier">meta-scw-appscard =3D "&lt;unknown&gt;:&lt;unknown&g=
t;"</font></div><div><font face=3D"Courier">meta &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;=3D "jzhang/2342:edfa2b0331248facb9b0db86e3b3229e32dd=
bf20"</font></div><div><font face=3D"Courier"><br></font></div><div><font f=
ace=3D"Courier">NOTE: Resolving any missing task queue dependencies</font><=
/div><div><font face=3D"Courier">ERROR: Nothing PROVIDES 'bridge-utils' (bu=
t /b/ben/yocto2/meta-virtualization/recipes-extended/libvirt/libvirt_1.0.3.=
bb DEPENDS on or otherwise requires it)</font></div><div><font face=3D"Cour=
ier">NOTE: Runtime target 'libvirt' is unbuildable, removing...</font></div=
><div><font face=3D"Courier">Missing or unbuildable dependency chain was: [=
'libvirt', 'bridge-utils']</font></div><div><font face=3D"Courier">ERROR: R=
equired build target 'scw-image-libvirt' has no buildable providers.</font>=
</div><div><font face=3D"Courier">Missing or unbuildable dependency chain w=
as: ['scw-image-libvirt', 'libvirt', 'bridge-utils']</font></div></div><div=
><br></div><div>If I let it continue using 'bit bake -k', all sorts of othe=
r common utilities are not found, such as <b>lvm2</b>, <b>ebtables</b>, <b>=
dnsmasq</b>, =85</div><div><br></div><div>My bblayers.conf file has this:</=
div><div><div><font face=3D"Courier"><br></font></div><div><font face=3D"Co=
urier">BBLAYERS ?=3D " \</font></div><div><font face=3D"Courier">&nbsp; /b/=
ben/yocto2/poky/meta \</font></div><div><font face=3D"Courier">&nbsp; /b/be=
n/yocto2/poky/meta-yocto \</font></div><div><font face=3D"Courier">&nbsp; /=
b/ben/yocto2/poky/meta-yocto-bsp \</font></div><div><font face=3D"Courier">=
&nbsp; /b/ben/yocto2/meta-intel \</font></div><div><font face=3D"Courier">&=
nbsp; /b/ben/yocto2/meta-intel/meta-crystalforest \</font></div><div><font =
face=3D"Courier">&nbsp; /b/ben/yocto2/meta-virtualization \</font></div><di=
v><font face=3D"Courier">&nbsp; /b/ben/yocto2/meta-scw-appscard \</font></d=
iv><div><font face=3D"Courier">&nbsp; /b/ben/yocto2/poky-contrib/meta \</fo=
nt></div><div><font face=3D"Courier">&nbsp; "</font></div></div><div><br></=
div><div>So my question is: is there a repo other than poky-contrib that co=
ntains all of these things, is it up to me to find them, or am I missing a =
key concept? &nbsp;I'm very new to Yocto, and while the documentation is ex=
cellent, it is also vast.</div><div><br></div><div>thanks a lot!</div><div>=
Ben</div><div><br></div><div><br></div><div><br></div><div><br></div></div>=
<div><br></div></div></blockquote></div><br></div></body></html>=

--_000_6BE566C2E4A94EA596EF8F38E939B5E5spidercloudcom_--
