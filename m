Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E947C02182
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 04:43:40 +0000 (UTC)
Subject: [scartgap] image-mklibs.bbclass support is deprecated
To: yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.177)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 20 Jan 2025 20:43:33 -0800
Message-ID: <PPVa.1737434613568711102.0jzC@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yQjWzbrt8nBh8WcLwdRn"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 04:43:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64592

--yQjWzbrt8nBh8WcLwdRn
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am upgrading from dunfell to scarthgap-5.0.5 (LTS). Scarthgap has depreca=
ted support for *image-mklibs.bbclass.*
I have removed it from *USER_CLASSES ?=3D "buildstats image-prelink"* varia=
ble in *local.conf.sample* file.

The error thrown is from *BBHandler.py* from *def inherit* function as belo=
w.

ERROR: Unable to parse /home/build/project/bitbake/lib/bb/parse/parse_py/BB=
Handler.py
Traceback (most recent call last):
File "/home/build/project/bitbake/lib/bb/parse/parse_py/BBHandler.py", line=
 71, in inherit(files=3D['image-mklibs'], fn=3D'configuration INHERITs', li=
neno=3D0, d=3D<bb.data_smart.DataSmart object at 0x7fd4f63fd190>, deferred=
=3DFalse):
if not os.path.exists(file):
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0raise ParseError("Could not inhe=
rit file %s" % (file), fn, lineno)
*bb.parse.ParseError: ParseError in configuration INHERITs: Could not inher=
it file classes/image-mklibs.bbclass

location below has no image-mklibs.bbclass* which is present in dunfell and=
 also the count of files is 45 whereas in dunfell it was 201. The count may=
 be different as i have removed meta-gplv2 from the manifest file and bblay=
er.conf .
*
* build@ubuntu-bionic:~/project/meta/classes$ ls
archiver.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 distrooverrides.=
bbclass =C2=A0 =C2=A0 own-mirrors.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0sign_rpm.bbclass
buildhistory.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 externalsrc.bbclass =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 prexport.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 siteconfig.bbclass
buildstats-summary.bbclass =C2=A0 extrausers.bbclass =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0primport.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 terminal.bbclass
ccache.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 go-vendor.b=
bclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 recipe_sanity.bbclass =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0toaster.bbclass
ccmake.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 icecc.bbcla=
ss =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 relative_symlinks.bbcla=
ss =C2=A0 =C2=A0 =C2=A0typecheck.bbclass
chrpath.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0image-build=
info.bbclass =C2=A0 =C2=A0 relocatable.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0useradd_base.bbclass
copyleft_compliance.bbclass =C2=A0mcextend.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0remove-libtool.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 useradd=
.bbclass
copyleft_filter.bbclass =C2=A0 =C2=A0 =C2=A0metadata_scm.bbclass =C2=A0 =C2=
=A0 =C2=A0 =C2=A0report-error.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 us=
eradd-staticids.bbclass
create-spdx-2.2.bbclass =C2=A0 =C2=A0 =C2=A0migrate_localcount.bbclass =C2=
=A0rm_work_and_downloads.bbclass =C2=A0yocto-check-layer.bbclass
create-spdx.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0multilib.bbclass =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0rm_work.bbclass
cve-check.bbclass =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0multilib_global.=
bbclass =C2=A0 =C2=A0 sign_ipk.bbclass
devtool-source.bbclass =C2=A0 =C2=A0 =C2=A0 oelint.bbclass =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sign_package_feed.bbclass *
*

--yQjWzbrt8nBh8WcLwdRn
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I am upgrading from dunfell to scarthgap-5.0.5 (LTS). Scarthgap has de=
precated support for<strong> image-mklibs.bbclass.&nbsp;</strong>&nbsp;<br =
/>I have removed it from <strong>USER_CLASSES ?=3D "buildstats image-prelin=
k"</strong> variable in <strong>local.conf.sample</strong> file.</div>
<div>&nbsp;</div>
<div>The error thrown is from <strong>BBHandler.py </strong>from<strong> de=
f inherit </strong>function as below.<br /><br /></div>
<div>
<div>ERROR: Unable to parse /home/build/project/bitbake/lib/bb/parse/parse_=
py/BBHandler.py<br />Traceback (most recent call last):<br />&nbsp; File "/=
home/build/project/bitbake/lib/bb/parse/parse_py/BBHandler.py", line 71, in=
 inherit(files=3D['image-mklibs'], fn=3D'configuration INHERITs', lineno=3D=
0, d=3D&lt;bb.data_smart.DataSmart object at 0x7fd4f63fd190&gt;, deferred=
=3DFalse):<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;if not os.p=
ath.exists(file):<br />&nbsp; &nbsp; &gt; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp;raise ParseError("Could not inherit file %s" % (file), fn, lineno)<=
/div>
<div><strong>bb.parse.ParseError: ParseError in configuration INHERITs: Cou=
ld not inherit file classes/image-mklibs.bbclass<br /><br />location below =
has no image-mklibs.bbclass</strong>&nbsp; which is present in dunfell and =
also the count of files is 45 whereas in dunfell it was 201. The count may =
be different as i have removed meta-gplv2 from the manifest file and bblaye=
r.conf .</div>
<div><strong><br /></strong>build@ubuntu-bionic:~/project/meta/classes$ ls<=
br />archiver.bbclass &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; distrooverr=
ides.bbclass &nbsp; &nbsp; own-mirrors.bbclass &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp;sign_rpm.bbclass<br />buildhistory.bbclass &nbsp; &nbsp; &nbsp=
; &nbsp; externalsrc.bbclass &nbsp; &nbsp; &nbsp; &nbsp; prexport.bbclass &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; siteconfig.bbclass<br />bui=
ldstats-summary.bbclass &nbsp; extrausers.bbclass &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp;primport.bbclass &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
terminal.bbclass<br />ccache.bbclass &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; go-vendor.bbclass &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; recipe_sani=
ty.bbclass &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;toaster.bbclass<br />ccmake.bb=
class &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; icecc.bbclass &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; relative_symlinks.bbclass &nbsp;=
 &nbsp; &nbsp;typecheck.bbclass<br />chrpath.bbclass &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp;image-buildinfo.bbclass &nbsp; &nbsp; relocatable=
.bbclass &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;useradd_base.bbclass<br /=
>copyleft_compliance.bbclass &nbsp;mcextend.bbclass &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp;remove-libtool.bbclass &nbsp; &nbsp; &nbsp; &nbsp; userad=
d.bbclass<br />copyleft_filter.bbclass &nbsp; &nbsp; &nbsp;metadata_scm.bbc=
lass &nbsp; &nbsp; &nbsp; &nbsp;report-error.bbclass &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; useradd-staticids.bbclass<br />create-spdx-2.2.bbclass &nbsp; =
&nbsp; &nbsp;migrate_localcount.bbclass &nbsp;rm_work_and_downloads.bbclass=
 &nbsp;yocto-check-layer.bbclass<br />create-spdx.bbclass &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp;multilib.bbclass &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
rm_work.bbclass<br />cve-check.bbclass &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp;multilib_global.bbclass &nbsp; &nbsp; sign_ipk.bbclass<br />devtool-so=
urce.bbclass &nbsp; &nbsp; &nbsp; oelint.bbclass &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp;sign_package_feed.bbclass<strong><br /></strong></div=
>
</div>

--yQjWzbrt8nBh8WcLwdRn--

