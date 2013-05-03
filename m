Return-Path: <Ben.Warren@spidercloud.com>
Received: from berg.int.copivia.com (mailgate1.spidercloud.com [209.49.242.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9413E014D6
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 16:44:02 -0700 (PDT)
Received: from mailx.spidercloud.com ([10.1.1.225])
	by berg.int.copivia.com (8.13.8/8.13.8) with ESMTP id r43Ni1Zw024424
	for <yocto@yoctoproject.org>; Fri, 3 May 2013 16:44:01 -0700
Received: from sofia.us.spidercloud.com ([10.1.1.225]) by
	sofia.us.spidercloud.com ([10.1.1.225]) with mapi;
	Fri, 3 May 2013 16:44:01 -0700
From: Ben Warren <Ben.Warren@spidercloud.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 3 May 2013 16:44:01 -0700
Thread-Topic: Trouble integrating meta-virtualization
Thread-Index: Ac5IWBaBy0rNfgbtQb2NiV0gR7pw8g==
Message-ID: <ABB6A20C-CB31-45DC-A74F-26424B52F84E@spidercloud.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Trouble integrating meta-virtualization
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
X-List-Received-Date: Fri, 03 May 2013 23:44:02 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_ABB6A20CCB3145DCA74F26424B52F84Espidercloudcom_"

--_000_ABB6A20CCB3145DCA74F26424B52F84Espidercloudcom_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

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






--_000_ABB6A20CCB3145DCA74F26424B52F84Espidercloudcom_
Content-Type: text/html; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html charset=
=3Dwindows-1252"></head><body style=3D"word-wrap: break-word; -webkit-nbsp-=
mode: space; -webkit-line-break: after-white-space; ">Hello,<div><br></div>=
<div>I'm trying to build an image using some components from meta-virtualiz=
ation, and it's failing because it can't find many of the dependent modules=
. &nbsp;I'm posting this on the main yocto mailing list since it's more of =
a general question of 'where are these things?'</div><div><br></div><div>Sp=
ecifics:</div><div><ul class=3D"MailOutline"><li>poky @ git tag 'dylan 9.0.=
0'</li><li>meta-virtualization @ git commit&nbsp;bb8c2c420bca06c67deb05e9f6=
3e101752110759 (4/25/2013)</li><li>poky-contrib @jzhang/2342 (latest commit=
, tried other branches with similar results)</li><li>BSP based on 'crystalf=
orest'</li></ul><div><br></div><div>Here's how it fails:</div><div><div><fo=
nt face=3D"Courier">WARNING: Host distribution "CentOS-5.9" has not been va=
lidated with this version of the build system; you may possibly experience =
unexpected failures. It is recommended that you use a tested distribution.<=
/font></div><div><font face=3D"Courier">Loading cache: 100% |##############=
###########################################################################=
#################################################| ETA: &nbsp;00:00:00</fon=
t></div><div><font face=3D"Courier">Loaded 2335 entries from dependency cac=
he.</font></div><div><font face=3D"Courier">Parsing recipes: 100% |########=
###########################################################################=
#####################################################| Time: 00:00:02</font=
></div><div><font face=3D"Courier">Parsing of 1674 .bb files complete (1531=
 cached, 143 parsed). 2296 targets, 75 skipped, 0 masked, 0 errors.</font><=
/div><div><font face=3D"Courier"><br></font></div><div><font face=3D"Courie=
r">Build Configuration:</font></div><div><font face=3D"Courier">BB_VERSION =
&nbsp; &nbsp; &nbsp; &nbsp;=3D "1.18.0"</font></div><div><font face=3D"Cour=
ier">BUILD_SYS &nbsp; &nbsp; &nbsp; &nbsp; =3D "x86_64-linux"</font></div><=
div><font face=3D"Courier">NATIVELSBSTRING &nbsp; =3D "CentOS-5.9"</font></=
div><div><font face=3D"Courier">TARGET_SYS &nbsp; &nbsp; &nbsp; &nbsp;=3D "=
x86_64-poky-linux"</font></div><div><font face=3D"Courier">MACHINE &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; =3D "scw-appscard"</font></div><div><font face=
=3D"Courier">DISTRO &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "poky"</fo=
nt></div><div><font face=3D"Courier">DISTRO_VERSION &nbsp; &nbsp;=3D "1.4"<=
/font></div><div><font face=3D"Courier">TUNE_FEATURES &nbsp; &nbsp; =3D "m6=
4"</font></div><div><font face=3D"Courier">TARGET_FPU &nbsp; &nbsp; &nbsp; =
&nbsp;=3D ""</font></div><div><font face=3D"Courier">meta &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font face=3D"Courier">met=
a-yocto &nbsp; &nbsp; &nbsp; &nbsp;</font></div><div><font face=3D"Courier"=
>meta-yocto-bsp &nbsp; &nbsp;=3D "scw-dylan:789b2b7e0cca404ff8ba8ed5ba823d2=
15e6ba5b4"</font></div><div><font face=3D"Courier">meta-intel &nbsp; &nbsp;=
 &nbsp; &nbsp;</font></div><div><font face=3D"Courier">meta-crystalforest =
=3D "dylan:6147ba0e962c3d7ba28b53b9b930f1bed5833c90"</font></div><div><font=
 face=3D"Courier">meta-virtualization =3D "master:bb8c2c420bca06c67deb05e9f=
63e101752110759"</font></div><div><font face=3D"Courier">meta-scw-appscard =
=3D "&lt;unknown&gt;:&lt;unknown&gt;"</font></div><div><font face=3D"Courie=
r">meta &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=3D "jzhang/2342:ed=
fa2b0331248facb9b0db86e3b3229e32ddbf20"</font></div><div><font face=3D"Cour=
ier"><br></font></div><div><font face=3D"Courier">NOTE: Resolving any missi=
ng task queue dependencies</font></div><div><font face=3D"Courier">ERROR: N=
othing PROVIDES 'bridge-utils' (but /b/ben/yocto2/meta-virtualization/recip=
es-extended/libvirt/libvirt_1.0.3.bb DEPENDS on or otherwise requires it)</=
font></div><div><font face=3D"Courier">NOTE: Runtime target 'libvirt' is un=
buildable, removing...</font></div><div><font face=3D"Courier">Missing or u=
nbuildable dependency chain was: ['libvirt', 'bridge-utils']</font></div><d=
iv><font face=3D"Courier">ERROR: Required build target 'scw-image-libvirt' =
has no buildable providers.</font></div><div><font face=3D"Courier">Missing=
 or unbuildable dependency chain was: ['scw-image-libvirt', 'libvirt', 'bri=
dge-utils']</font></div></div><div><br></div><div>If I let it continue usin=
g 'bit bake -k', all sorts of other common utilities are not found, such as=
 <b>lvm2</b>, <b>ebtables</b>, <b>dnsmasq</b>, =85</div><div><br></div><div=
>My bblayers.conf file has this:</div><div><div><font face=3D"Courier"><br>=
</font></div><div><font face=3D"Courier">BBLAYERS ?=3D " \</font></div><div=
><font face=3D"Courier">&nbsp; /b/ben/yocto2/poky/meta \</font></div><div><=
font face=3D"Courier">&nbsp; /b/ben/yocto2/poky/meta-yocto \</font></div><d=
iv><font face=3D"Courier">&nbsp; /b/ben/yocto2/poky/meta-yocto-bsp \</font>=
</div><div><font face=3D"Courier">&nbsp; /b/ben/yocto2/meta-intel \</font><=
/div><div><font face=3D"Courier">&nbsp; /b/ben/yocto2/meta-intel/meta-cryst=
alforest \</font></div><div><font face=3D"Courier">&nbsp; /b/ben/yocto2/met=
a-virtualization \</font></div><div><font face=3D"Courier">&nbsp; /b/ben/yo=
cto2/meta-scw-appscard \</font></div><div><font face=3D"Courier">&nbsp; /b/=
ben/yocto2/poky-contrib/meta \</font></div><div><font face=3D"Courier">&nbs=
p; "</font></div></div><div><br></div><div>So my question is: is there a re=
po other than poky-contrib that contains all of these things, is it up to m=
e to find them, or am I missing a key concept? &nbsp;I'm very new to Yocto,=
 and while the documentation is excellent, it is also vast.</div><div><br><=
/div><div>thanks a lot!</div><div>Ben</div><div><br></div><div><br></div><d=
iv><br></div><div><br></div></div><div><br></div></body></html>=

--_000_ABB6A20CCB3145DCA74F26424B52F84Espidercloudcom_--
