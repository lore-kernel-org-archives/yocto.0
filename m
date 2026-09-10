Return-Path: <wanwizard@openpli.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FBFBC79F9F
	for <webhook@archiver.kernel.org>; Thu, 10 Sep 2026 19:42:56 +0000 (UTC)
Subject: Hashserve OEEquivHash unihash issue
To: yocto@lists.yoctoproject.org
From: "Harro Verton" <wanwizard@openpli.org>
X-Originating-Location: Stafford, England, GB (194.164.227.192)
X-Originating-Platform: Linux Firefox 154
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 10 Sep 2026 12:42:52 -0700
Message-ID: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="NyCDOFBFpduoeUnPE5xK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2026 19:42:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66715

--NyCDOFBFpduoeUnPE5xK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Community,

First post, and a relative OE newbie, so please bear with me.

I've inherited a build environment of an open source project ( https://gith=
ub.com/OpenPLi/openpli-oe-core ). The project builds images for some 120 di=
fferent devices, with MIPSEL or ARM SoCs, covering 5 different ARCHs.

All are build from a single repository, containing the submodules for Bitba=
ke, Openembedded-Core and meta-openembedded, and all required BSP's for the=
se devices. They all share sstate, a PR server, and a Hashserve server.

In order to avoid packages build for the ARCH feed rebuilding for all subse=
quent MACHINEs using that same ARCH, my predecessor has introduced HashServ=
e, using OEEquivHash.

This works fine in our previous release (which is based on Hardknott), and =
worked fine in our current release (which is based on Scarthgap), until a f=
ew months ago.
We want to start with the next release, based on Wrynose, but we can't unti=
l we can make a final Scarthgap release, which we can't because of this iss=
ue.

I've run a=C2=A0 test, building two different MACHINEs with the same ARCH (=
identical hardware, different brands, different drivers, so separate BSPs),=
 with an empty build directory (so no sstate cache, new PR database, no has=
h data). For the second machine, 230 tasks are recorded as having a changed=
 unihash, which triggers a recipe rebuild for the second MACHINE.

I've enabled hashserve debugging, and these recipes log something like:
log.do_package_write_ipk.212153:DEBUG: Reported task efe6373f8d36e03f92f019=
8b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e as unihash efe6373f8d36e03f92f01=
98b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e to unix:///data/openpli/oe/scar=
thgap/build/hashserve.sock log.do_package_write_ipk.2223688:DEBUG: Task 8da=
90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8 unihash chang=
ed 8da90b016d0a41cac6ce46c20d8ee64d5e7af35687de43c306544508050227e8 -> efe6=
373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47c65e by server unix=
:///data/openpli/oe/scarthgap/build/hashserve.sock
so the second build records a changed unihash, which triggers a rebuild of =
the package, and leads to an r0.1 version of the ipk.

All of them but 8 report a unihash change for do_package_qa , those 8 also =
for do_package_write_ipk.

The downside of this is that after device A is flashed with the result of t=
he first build, and you do an "opkg list-upgradable", you're presented with=
 182 packages from the ARCH feed shared between the two devices that are su=
pposedly changed (but the only change is r0.0 to r0.1 due to the rebuild). =
Apart from the fact that most of our users are not tech savvy, several devi=
ces are limited on flash memory space, so having to update 180+ packages ev=
ery time we have a build run is quite a bit of an issue.

I can't find a reason why this suddenly happens, some of these packages are=
 quite basic and don't contain binary code, packages like python3-requests =
for example. And I have no idea how to debug this further.

For this test build, Bitbake is at yocto-5.0.19, openembedded-core and meta=
-openembedded are on the scarthgap branch, pulled yesterday.

I've looked at the commit history in our repo, the only time this trio was =
updated was on July 30th. If I revert that, bitbake goes back to yocto-5.0.=
15 and both OE submodules to a commit in december 2025, which is when we st=
arted with our Scarthgap branch.
When I repeat the test build after the revert, only two recipes for the ARC=
H feed are rebuild for the second machine, ffmpeg and gstreamer, both are r=
ecipes that we override in our own meta layer ( version upgrades to those i=
n openembedded ).

So somewhere along the line, something got broken (or how it worked changed=
, and we missed that).

re there fixes in later versions for this issue, that are not backported to=
 Scarthgap? How can I debug what exactly causes the unihash to change? Or b=
etter, how do I fix this?

TIA,

Harro Verton, member of the PLi Association
https://openpli.org

--NyCDOFBFpduoeUnPE5xK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello Community,</div>
<div>&nbsp;</div>
<div>First post, and a relative OE newbie, so please bear with me.</div>
<div>&nbsp;</div>
<div>I've inherited a build environment of an open source project ( <a href=
=3D"https://github.com/OpenPLi/openpli-oe-core" target=3D"_blank" rel=3D"no=
opener">https://github.com/OpenPLi/openpli-oe-core</a> ). The project build=
s images for some 120 different devices, with MIPSEL or ARM SoCs, covering =
5 different ARCHs.</div>
<div>&nbsp;</div>
<div>All are build from a single repository, containing the submodules for =
Bitbake, Openembedded-Core and meta-openembedded, and all required BSP's fo=
r these devices. They all share sstate, a PR server, and a Hashserve server=
.</div>
<div>&nbsp;</div>
<div>In order to avoid packages build for the ARCH feed rebuilding for all =
subsequent MACHINEs using that same ARCH, my predecessor has introduced Has=
hServe, using OEEquivHash.</div>
<div>&nbsp;</div>
<div>This works fine in our previous release (which is based on Hardknott),=
 and worked fine in our current release (which is based on Scarthgap), unti=
l a few months ago. <br />We want to start with the next release, based on =
Wrynose, but we can't until we can make a final Scarthgap release, which we=
 can't because of this issue.</div>
<div>&nbsp;</div>
<div>I've run a&nbsp; test, building two different MACHINEs with the same A=
RCH (identical hardware, different brands, different drivers, so separate B=
SPs), with an empty build directory (so no sstate cache, new PR database, n=
o hash data). For the second machine, 230 tasks are recorded as having a ch=
anged unihash, which triggers a recipe rebuild for the second MACHINE.<br /=
><br />I've enabled hashserve debugging, and these recipes log something li=
ke:</div>
<div><span style=3D"color: #dddddd; font-family: Menlo, Monaco, Consolas, '=
Courier New', monospace; font-size: 13px; font-style: normal; font-variant-=
ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform=
: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white=
-space: pre-wrap; background-color: #272822; text-decoration-thickness: ini=
tial; text-decoration-style: initial; text-decoration-color: initial; displ=
ay: inline !important; float: none;">log.do_package_write_ipk.212153:DEBUG:=
 Reported task efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a47=
c65e as unihash efe6373f8d36e03f92f0198b5c2891fba8b459bd1e16ee9043f3e3d85a4=
7c65e to unix:///data/openpli/oe/scarthgap/build/hashserve.sock log.do_pack=
age_write_ipk.2223688:DEBUG: Task 8da90b016d0a41cac6ce46c20d8ee64d5e7af3568=
7de43c306544508050227e8 unihash changed 8da90b016d0a41cac6ce46c20d8ee64d5e7=
af35687de43c306544508050227e8 -&gt; efe6373f8d36e03f92f0198b5c2891fba8b459b=
d1e16ee9043f3e3d85a47c65e by server unix:///data/openpli/oe/scarthgap/build=
/hashserve.sock</span></div>
<div>so the second build records a changed unihash, which triggers a rebuil=
d of the package, and leads to an r0.1 version of the ipk.</div>
<div>&nbsp;</div>
<div>All of them but 8 report a unihash change for&nbsp;<span style=3D"colo=
r: #dddddd; font-family: 'Open Sans', sans-serif; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-in=
dent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text=
-stroke-width: 0px; white-space: pre-wrap; background-color: #36393f; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial; display: inline !important; float: none;"> do_package_q=
a</span>, those 8 also for <span style=3D"color: #dddddd; font-family: Menl=
o, Monaco, Consolas, 'Courier New', monospace; font-size: 13px; font-style:=
 normal; font-variant-ligatures: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-inden=
t: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; white-space: pre-wrap; background-color: #272822; text-dec=
oration-thickness: initial; text-decoration-style: initial; text-decoration=
-color: initial; display: inline !important; float: none;">do_package_write=
_ipk</span>.</div>
<div>&nbsp;</div>
<div>The downside of this is that after device A is flashed with the result=
 of the first build, and you do an "opkg list-upgradable", you're presented=
 with 182 packages from the ARCH feed shared between the two devices that a=
re supposedly changed (but the only change is r0.0 to r0.1 due to the rebui=
ld). Apart from the fact that most of our users are not tech savvy, several=
 devices are limited on flash memory space, so having to update 180+ packag=
es every time we have a build run is quite a bit of an issue.</div>
<div>&nbsp;</div>
<div>I can't find a reason why this suddenly happens, some of these package=
s are quite basic and don't contain binary code, packages like python3-requ=
ests for example. And I have no idea how to debug this further.</div>
<div>&nbsp;</div>
<div>For this test build, Bitbake is at yocto-5.0.19, openembedded-core and=
 meta-openembedded are on the scarthgap branch, pulled yesterday.</div>
<div>&nbsp;</div>
<div>I've looked at the commit history in our repo, the only time this trio=
 was updated was on July 30th. If I revert that, bitbake goes back to yocto=
-5.0.15 and both OE submodules to a commit in december 2025, which is when =
we started with our Scarthgap branch.</div>
<div>When I repeat the test build after the revert, only two recipes for th=
e ARCH feed are rebuild for the second machine, ffmpeg and gstreamer, both =
are recipes that we override in our own meta layer ( version upgrades to th=
ose in openembedded ).</div>
<div>&nbsp;</div>
<div>So somewhere along the line, something got broken (or how it worked ch=
anged, and we missed that).</div>
<div>&nbsp;</div>
<div>re there fixes in later versions for this issue, that are not backport=
ed to Scarthgap? How can I debug what exactly causes the unihash to change?=
 Or better, how do I fix this?</div>
<div>&nbsp;</div>
<div>TIA,</div>
<div>&nbsp;</div>
<div>Harro Verton, member of the PLi Association</div>
<div>https://openpli.org</div>

--NyCDOFBFpduoeUnPE5xK--

