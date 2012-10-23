Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53DDDE0027E
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 11:35:57 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id kp12so3172022pab.35
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 11:35:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:message-id:mime-version:subject:date:references
	:to:in-reply-to:x-mailer;
	bh=nDt0cb0l5gwxnu0fwDGBBDeLfHGr8s4J4EojG2/h2Hk=;
	b=MG0Hso922uHAxqxMLc0RZNEU426XR1rrpvU7JduxwgpNTXMsT6PhExxaYsjr2eQfOA
	jvNomwJin+rnHxNIhWzBAJEVPjI3Kgt2anMqV1vu2QV7aTuXnbWGrRLzJZ9YArBXPuMA
	OaSzZeiYVuexJiIh3YzpityatuMvKTp80vV652FS6OFKCSdMG2/yD9nxr1fL5VZBgzWT
	d4eYzfdfSSRnP7uJZJPRjxPZYrMYYFNAb22gWBluaPjlgfRir26t0xnE2AlhzFBRr8L4
	DsM+wbdGlAaK5EgPl0cMKglt267Hv2Owc8GvvTL0fvDrn55ZUZtvUCYUrQC5sMfkYLbN
	PuGw==
Received: by 10.66.90.73 with SMTP id bu9mr37348403pab.71.1351017357152;
	Tue, 23 Oct 2012 11:35:57 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id od3sm4054891pbb.29.2012.10.23.11.35.53
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 11:35:55 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <37A1D383-EE8E-4490-80F6-CA3ECE928B67@gmail.com>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
Date: Tue, 23 Oct 2012 22:35:49 +0400
References: <7E7FACCF-2EB1-480F-998D-F52E40A59976@gmail.com>
	<0C4325BA-1CE2-451F-A7CE-2C08721911CC@gmail.com>
	<4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>,
	Philip Balister <philip@balister.org>
In-Reply-To: <4A7E1048-DBF7-4266-8CBC-40729B10C6CA@gmail.com>
X-Mailer: Apple Mail (2.1499)
Subject: Re: ERROR: Function failed: do_rootfs, poky commit id 8ce23f569584f195391bc5c68a780e1bf54e4360
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 23 Oct 2012 18:35:57 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_FFADD08C-641F-40A5-A7E3-E02AC92EB77D"

--Apple-Mail=_FFADD08C-641F-40A5-A7E3-E02AC92EB77D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi,      =20

On Oct 23, 2012, at 8:32 PM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:

> I haven't had any solutions for this build error that I'm facing. If =
someone could offer some insight as to what might be going wrong, it =
would be much appreciated.
>=20
>> On Oct 23, 2012, at 12:22 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>>=20
>>> | Configuring sysvinit.
>>> | Collected errors:
>>> |  * preinst_configure: Aborting installation of base-passwd.
>>> |  * opkg_install_cmd: Cannot install package =
packagegroup-core-boot.
>>> | ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further information)
>>> ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs) failed with exit code '1'
>>> NOTE: Tasks Summary: Attempted 1395 tasks of which 227 didn't need =
to be rerun and 1 failed.
>>> No currently running tasks (1395 of 1396)
>>=20
>> The build appears to be failing because it cannot install =
packagegroup-core-boot. Has something changed recently in poky/master, =
that might be causing this?
>=20
> I additionally notice that the path being generated is zynq_702 =
instead of zynq-702.=20
>=20
> No-where in Philip Ballister's machine configs for the zc702 board, is =
is mentioned zynq_zc702 with an underscore, yet it adds it.=20
>=20
> It's kind of weird.
>=20
> ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further information)
>=20
> It's kind of weird.
>=20
> I also see the same zynq_zc702 entry with an underscore in the logs as =
follows:
>=20
> | + ipkgarchs=3D'all any noarch arm armv4 armv5 armv5-vfp armv5e =
armv5e-vfp armv6-vfp armv7a armv7a-vfp armv7a-vfp-neon zynq_zc702'
>=20
> What could be causing this?
>=20

I found out why it was failing. I recently added two SSD drives in a =
RAID0 stripped disk configuration. One of the performance tweaks was to =
move /tmp to RAM, to improve the life of the SSDs. My /etc/fstab for =
setting up the /tmp folder inadvertently included the =
noexec,nodev,nosuid options, which cause the rootfs process to fail.

the following entry works for the /etc/fstab for moving the /tmp file to =
RAM

none    /tmp    tmpfs    defaults,noatime,nodiratime    0    0

I just updated poky and the rest of the meta-layers to the latest commit =
on their respective master branches, and it built successfully.


Best regards,

Elvis Dowson


--Apple-Mail=_FFADD08C-641F-40A5-A7E3-E02AC92EB77D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,&nbsp; &nbsp; &nbsp; &nbsp;<div><br><div><div>On Oct 23, 2012, at =
8:32 PM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div><div>I haven't had any solutions for this build error that I'm =
facing. If someone could offer some insight as to what might be going =
wrong, it would be much appreciated.</div><div><br><blockquote =
type=3D"cite"><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
"><div><div><div>On Oct 23, 2012, at 12:22 AM, Elvis Dowson &lt;<a =
href=3D"mailto:elvis.dowson@gmail.com">elvis.dowson@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><blockquote =
type=3D"cite"><div style=3D"font-family: Helvetica; font-size: medium; =
font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><font face=3D"Monaco" size=3D"2">| =
Configuring sysvinit.</font></div><div style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><font =
face=3D"Monaco" size=3D"2">| Collected errors:</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><font face=3D"Monaco" size=3D"2">| &nbsp;* preinst_configure: Aborting =
installation of base-passwd.</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><font =
face=3D"Monaco" size=3D"2">| &nbsp;* opkg_install_cmd: Cannot install =
package packagegroup-core-boot.</font></div><div style=3D"font-family: =
Helvetica; font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><font =
face=3D"Monaco" size=3D"2">| ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further =
information)</font></div><div style=3D"font-family: Helvetica; =
font-size: medium; font-style: normal; font-variant: normal; =
font-weight: normal; letter-spacing: normal; line-height: normal; =
orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; "><font =
face=3D"Monaco" size=3D"2">ERROR: Task 7 =
(/tool/yocto/poky/meta/recipes-core/images/core-image-minimal.bb, =
do_rootfs) failed with exit code '1'</font></div><div =
style=3D"font-family: Helvetica; font-size: medium; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
"><font face=3D"Monaco" size=3D"2">NOTE: Tasks Summary: Attempted 1395 =
tasks of which 227 didn't need to be rerun and 1 =
failed.</font></div><div style=3D"font-family: Helvetica; font-size: =
medium; font-style: normal; font-variant: normal; font-weight: normal; =
letter-spacing: normal; line-height: normal; orphans: 2; text-align: =
-webkit-auto; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px; "><font face=3D"Monaco" size=3D"2">No =
currently running tasks (1395 of =
1396)</font></div></blockquote></div><br></div><div>The build appears to =
be failing because it cannot install packagegroup-core-boot. Has =
something changed recently in poky/master, that might be causing =
this?</div></div></blockquote><br></div><div>I additionally notice that =
the path being generated is zynq_702 instead of =
zynq-702.&nbsp;</div><div><br></div><div>No-where in Philip Ballister's =
machine configs for the zc702 board, is is mentioned zynq_zc702 with an =
underscore, yet it adds it.&nbsp;</div><div><br></div><div>It's kind of =
weird.</div></div><div><br></div><div><span style=3D"font-family: =
Monaco; font-size: small; ">ERROR: Function failed: do_rootfs (see =
/tool/yocto/poky/build/tmp/work/zynq_zc702-poky-linux-gnueabi/core-image-m=
inimal-1.0-r0/temp/log.do_rootfs.30138 for further =
information)</span></div><div><span style=3D"font-family: Monaco; =
font-size: small; "><br></span></div><div>It's kind of =
weird.</div><div><br></div><div>I also see the same zynq_zc702 entry =
with an underscore in the logs as =
follows:</div><div><br></div><div><span style=3D"font-family: Monaco; =
font-size: small; ">| + ipkgarchs=3D'all any noarch arm armv4 armv5 =
armv5-vfp armv5e armv5e-vfp armv6-vfp armv7a armv7a-vfp armv7a-vfp-neon =
zynq_zc702'</span></div><div><br></div><div>What could be causing =
this?</div><div><br></div></div></blockquote><br></div><div>I found out =
why it was failing. I recently added two SSD drives in a RAID0 stripped =
disk configuration. One of the performance tweaks was to move /tmp to =
RAM, to improve the life of the SSDs. My /etc/fstab for setting up the =
/tmp folder inadvertently included the noexec,nodev,nosuid options, =
which cause the rootfs process to fail.</div><div><br></div><div>the =
following entry works for the /etc/fstab for moving the /tmp file to =
RAM</div><div><br></div><div>none &nbsp; &nbsp;/tmp &nbsp; &nbsp;tmpfs =
&nbsp; &nbsp;defaults,noatime,nodiratime &nbsp; &nbsp;0 &nbsp; =
&nbsp;0</div><div><br></div><div>I just updated poky and the rest of the =
meta-layers to the latest commit on their respective master branches, =
and it built successfully.</div><div><br></div><div><br></div><div>Best =
regards,</div><div><br></div><div>Elvis =
Dowson</div><br></div></body></html>=

--Apple-Mail=_FFADD08C-641F-40A5-A7E3-E02AC92EB77D--
