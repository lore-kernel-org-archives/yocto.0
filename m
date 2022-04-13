Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7C84C3527E
	for <webhook@archiver.kernel.org>; Wed, 13 Apr 2022 15:48:06 +0000 (UTC)
Subject: Re: Yocto kernel building
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 99
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 13 Apr 2022 00:02:21 -0700
References: 
 <BM1PR01MB3203E5DA71E89151F873898E94EC9@BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM>
In-Reply-To: 
 <BM1PR01MB3203E5DA71E89151F873898E94EC9@BM1PR01MB3203.INDPRD01.PROD.OUTLOOK.COM>
Message-ID: <25756.1649833341596207594@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PbRBfdaHLgKxeGS2LNvT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 13 Apr 2022 15:48:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56761

--PbRBfdaHLgKxeGS2LNvT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

>=20
> Hi,
>=20

Hi

>=20
>=20
>=20
>=20
>=20
>=20
>=20
> The default Linux kernel is built by using *bitbake fsl-image-networking.=
*
> Here, the kernel is built from *meta-freescale/recipes-kernel/linux/linux=
-qoriq_5.4.bb*
> path and source code is fetching from *"git://source.codeaurora.org/exter=
nal/qoriq/qoriq-components/linux;nobranch=3D1"*
> .
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> So I want to use another version of the kernel that should be fetch from =
*"
> https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/=
linux_4.19-rt/"
> (
> https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/=
linux_4.19-rt/%22
> )* and the SRC_REV=3D " *74700acb31e369495da22b4bbfd9e3f4315fc74a* "
>=20
>=20
>=20

When you want to use another version of the kernel it is better to create n=
ew recipe (.bb file). You
could use existing linux-qoriq_5.10 [1] recipe as example, just change the =
SRC_URI, SRCREV and
LINUX_VERSION.

Than in distro or machine config you would need to set PREFERRED_VERSION_li=
nux-qoriq to 4.19
or whatever the version is.

>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
>=20
> For that purpose, I have created a .bbappend file and changed the SRC_URI
> as well as SRC_REV.
>=20
>=20
>=20
> While building bitbake is causing errors,
>=20
>=20
>=20
> *ERROR: An uncaught exception occurred in runqueue################ | ETA:
> 0:00:01*
> *Traceback (most recent call last):*
> *File
> "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky/bitbake/lib/bb/r=
unqueue.py",
> line 1187, in
> RunQueueData.prepare_task_hash(tid=3D'/home/rancore/rohit/yocto_mmwave/yo=
cto-sdk/sources/meta-freescale/recipes-kernel/linux/linux-qoriq_5.4.bb:do_f=
etch'):*
>=20
> *def prepare_task_hash(self, tid):*
> *> bb.parse.siggen.prep_taskhash(tid, self.runtaskentries[tid].depends,
> self.dataCaches[mc_from_tid(tid)])*
> *self.runtaskentries[tid].hash =3D bb.parse.siggen.get_taskhash(tid,
> self.runtaskentries[tid].depends, self.dataCaches[mc_from_tid(tid)])*
> *File
> "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky/meta/lib/oe/ssta=
tesig.py",
> line 146, in
> SignatureGeneratorOEEquivHash.prep_taskhash(tid=3D'/home/rancore/rohit/yo=
cto_mmwave/yocto-sdk/sources/meta-freescale/recipes-kernel/linux/linux-qori=
q_5.4.bb:do_fetch',
> deps=3Dset(), dataCache=3D<bb.cache.CacheData object at 0x7ff029b3a0b8>):=
*
> *def prep_taskhash(self, tid, deps, dataCache):*
> *> super().prep_taskhash(tid, deps, dataCache)*
> *if hasattr(self, "extramethod"):*
> *File
> "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky/bitbake/lib/bb/s=
iggen.py",
> line 248, in
> SignatureGeneratorOEEquivHash.prep_taskhash(tid=3D'/home/rancore/rohit/yo=
cto_mmwave/yocto-sdk/sources/meta-freescale/recipes-kernel/linux/linux-qori=
q_5.4.bb:do_fetch',
> deps=3Dset(), dataCache=3D<bb.cache.CacheData object at 0x7ff029b3a0b8>):=
*
> *else:*
> *> checksums =3D
> bb.fetch2.get_file_checksums(dataCache.file_checksums[fn][task],
> recipename, self.localdirsexclude)*
> *for (f,cs) in checksums:*
>=20
>=20
>=20
> Can you please help me to resolve the issues?
>=20
> Thank you
>=20

Regards,

Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

>=20
>=20
>

--PbRBfdaHLgKxeGS2LNvT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<blockquote>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">Hi,</div>
</blockquote>
Hi<br />
<blockquote>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;"><br /><br /></div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">&nbsp;</div>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;">The default Linux kernel i=
s built by using&nbsp;<em><strong>bitbake fsl-image-networking.<span>&nbsp;=
</span></strong></em>Here, the kernel is built from&nbsp;<em><strong>meta-f=
reescale/recipes-kernel/linux/linux-qoriq_5.4.bb</strong></em><span>&nbsp;<=
/span>path and source code is fetching from<span>&nbsp;</span><em><strong>"=
git://source.codeaurora.org/external/qoriq/qoriq-components/linux;nobranch=
=3D1"</strong></em>.</p>
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;">&nbsp;</p>
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;">So I want to use another v=
ersion of the kernel that should be fetch from<span>&nbsp;</span><em><stron=
g>"<a href=3D"https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq=
-components/linux_4.19-rt/%22" target=3D"_blank" rel=3D"nofollow noopener">=
https://source.codeaurora.org/quic/femto5G/fsm/external/qoriq-components/li=
nux_4.19-rt/"</a></strong></em>&nbsp;and the SRC_REV=3D "<em><strong>74700a=
cb31e369495da22b4bbfd9e3f4315fc74a</strong></em>"</p>
</div>
</blockquote>
<p>When you want to use another version of the kernel it is better to creat=
e new recipe (.bb file). You<br />could use existing linux-qoriq_5.10 [1] r=
ecipe as example, just change the SRC_URI, SRCREV and<br />LINUX_VERSION.<b=
r /><br />Than in distro or machine config you would need to set <code><spa=
n class=3D"n">PREFERRED_VERSION_linux-qoriq</span><span class=3D"n"></span>=
</code> to 4.19<br />or whatever the version is.</p>
<blockquote>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;">&nbsp;</p>
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;">&nbsp;</p>
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;">For that purpose, I have c=
reated a .bbappend file and changed the SRC_URI as well as SRC_REV.</p>
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;">While building bitbake is =
causing errors,</p>
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;"><strong><em>ERROR: An unca=
ught exception occurred in runqueue################ | ETA: 0:00:01</em></st=
rong><br /><strong><em>Traceback (most recent call last):</em></strong><br =
/><strong><em>File "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky=
/bitbake/lib/bb/runqueue.py", line 1187, in RunQueueData.prepare_task_hash(=
tid=3D'/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/meta-freescale/re=
cipes-kernel/linux/linux-qoriq_5.4.bb:do_fetch'):</em></strong><br /><stron=
g><em>def prepare_task_hash(self, tid):</em></strong><br /><strong><em>&gt;=
 bb.parse.siggen.prep_taskhash(tid, self.runtaskentries[tid].depends, self.=
dataCaches[mc_from_tid(tid)])</em></strong><br /><strong><em>self.runtasken=
tries[tid].hash =3D bb.parse.siggen.get_taskhash(tid, self.runtaskentries[t=
id].depends, self.dataCaches[mc_from_tid(tid)])</em></strong><br /><strong>=
<em>File "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky/meta/lib/=
oe/sstatesig.py", line 146, in SignatureGeneratorOEEquivHash.prep_taskhash(=
tid=3D'/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/meta-freescale/re=
cipes-kernel/linux/linux-qoriq_5.4.bb:do_fetch', deps=3Dset(), dataCache=3D=
&lt;bb.cache.CacheData object at 0x7ff029b3a0b8&gt;):</em></strong><br /><s=
trong><em>def prep_taskhash(self, tid, deps, dataCache):</em></strong><br /=
><strong><em>&gt; super().prep_taskhash(tid, deps, dataCache)</em></strong>=
<br /><strong><em>if hasattr(self, "extramethod"):</em></strong><br /><stro=
ng><em>File "/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/poky/bitbak=
e/lib/bb/siggen.py", line 248, in SignatureGeneratorOEEquivHash.prep_taskha=
sh(tid=3D'/home/rancore/rohit/yocto_mmwave/yocto-sdk/sources/meta-freescale=
/recipes-kernel/linux/linux-qoriq_5.4.bb:do_fetch', deps=3Dset(), dataCache=
=3D&lt;bb.cache.CacheData object at 0x7ff029b3a0b8&gt;):</em></strong><br /=
><strong><em>else:</em></strong><br /><strong><em>&gt; checksums =3D bb.fet=
ch2.get_file_checksums(dataCache.file_checksums[fn][task], recipename, self=
.localdirsexclude)</em></strong><br /><strong><em>for (f,cs) in checksums:<=
/em></strong></p>
<p style=3D"color: #333f48; font-family: Arial, sans-serif; font-weight: 30=
0; text-align: left; background-color: #ffffff;">Can you please help me to =
resolve the issues?</p>
Thank you</div>
</blockquote>
<p>Regards,</p>
<p>Tomasz =C5=BByjewski<br />Embedded Systems Engineer<br />GPG: 5C495EA3EB=
EECA59<br />https://3mdeb.com | @3mdeb_com</p>
<blockquote>
<div class=3D"elementToProof" style=3D"font-family: Calibri, Arial, Helveti=
ca, sans-serif; font-size: 12pt; color: #000000;">&nbsp;</div>
</blockquote>

--PbRBfdaHLgKxeGS2LNvT--

