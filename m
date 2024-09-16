Return-Path: <mns@gomspace.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6027EC3ABA2
	for <webhook@archiver.kernel.org>; Mon, 16 Sep 2024 10:00:33 +0000 (UTC)
Subject: read-only-rootfs and opkg
To: yocto@lists.yoctoproject.org
From: "Martin Siegumfeldt" <mns@gomspace.com>
X-Originating-Location: Copenhagen, Capital Region, DK (79.171.149.174)
X-Originating-Platform: Linux Chrome 128
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 16 Sep 2024 03:00:31 -0700
Message-ID: <2l0y.1726480831050637843.EbIS@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SvobMv0QBXgXg0lIVsl1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Sep 2024 10:00:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63840

--SvobMv0QBXgXg0lIVsl1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to realize a rootfs backed by opkg as package manager. It appea=
rs that the opkg meta-data is directed to a volatile mount (triggered by re=
ad-only-rootfs feature in order to achieve write access I assume):

$ tail -5 /etc/opkg/opkg.conf
# Default destination for installed packages
dest root /
option lists_dir =C2=A0 /var/lib/opkg/lists
option info_dir =C2=A0 =C2=A0/var/lib/opkg/info
option status_file /var/lib/opkg/status

$ mount | grep var/lib
overlay on /var/lib type overlay (rw,relatime,lowerdir=3D/var/lib,upperdir=
=3D/var/volatile/lib,workdir=3D/var/volatile/.lib-work)

$ find /var/lib/opkg/ | head
/var/lib/opkg/
/var/lib/opkg/status
/var/lib/opkg/info
/var/lib/opkg/info/vim-tiny.list
/var/lib/opkg/info/libdaemon0.list
/var/lib/opkg/info/coreutils.prerm
/var/lib/opkg/info/busybox-syslog.control
/var/lib/opkg/info/libc6.postinst
/var/lib/opkg/info/libmount1.list
/var/lib/opkg/info/libpcap1.postinst

Consequently, any updated meta-data do no persist across reboots.

I have attempted to assign 'OPKGLIBDIR' to a R/W mount:

OPKGLIBDIR ?=3D "/data-os/opkg"

,=C2=A0which does appear to update the conf file:

$ tail -5 /etc/opkg/opkg.conf
# Default destination for installed packages
dest root /
option lists_dir =C2=A0 /data-os/opkg/opkg/lists
option info_dir =C2=A0 =C2=A0/data-os/opkg/opkg/info
option status_file /data-os/opkg/opkg/status
but meta-data still appears to reside with '/var/lib'

but meta-data still appears residing within '/var/lib':

$ find /data-os/opkg/
/data-os/opkg/
/data-os/opkg/opkg
/data-os/opkg/opkg/info

$ find /var/lib/opkg/ | head
/var/lib/opkg/
/var/lib/opkg/status
/var/lib/opkg/info
/var/lib/opkg/info/vim-tiny.list
/var/lib/opkg/info/libdaemon0.list
/var/lib/opkg/info/coreutils.prerm
/var/lib/opkg/info/busybox-syslog.control
/var/lib/opkg/info/libc6.postinst
/var/lib/opkg/info/libmount1.list
/var/lib/opkg/info/libpcap1.postinst

and opkg appears broken (as nothing is indicated installed):

$ opkg list-installed; echo $?
0

To clarify, I imagine a process where the ipk file is uploaded to the devic=
e, after which the rootfs is remounted R/W and ipk installed/updated throug=
h opkg. Installation/update do succeed, but the meta-data do not persist as=
 inteded.

Note, I am on baseline Langdale, no obvious changes seem to have been pushe=
d to master though.

Am I missing any available configuration to achieve this?
Thanks,
Martin

--SvobMv0QBXgXg0lIVsl1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div>Hi all,</div>
<div>&nbsp;</div>
<div>I am trying to realize a rootfs backed by opkg as package manager. It =
appears that the opkg meta-data is directed to a volatile mount (triggered =
by read-only-rootfs feature in order to achieve write access I assume):</di=
v>
<div>&nbsp;</div>
<div>$ tail -5 /etc/opkg/opkg.conf&nbsp;<br /># Default destination for ins=
talled packages<br />dest root /<br />option lists_dir &nbsp; /var/lib/opkg=
/lists<br />option info_dir &nbsp; &nbsp;/var/lib/opkg/info<br />option sta=
tus_file /var/lib/opkg/status</div>
<div>&nbsp;</div>
<div>$ mount | grep var/lib<br />overlay on /var/lib type overlay (rw,relat=
ime,lowerdir=3D/var/lib,upperdir=3D/var/volatile/lib,workdir=3D/var/volatil=
e/.lib-work)</div>
<div><br />$ find /var/lib/opkg/ | head<br />/var/lib/opkg/<br />/var/lib/o=
pkg/status<br />/var/lib/opkg/info<br />/var/lib/opkg/info/vim-tiny.list<br=
 />/var/lib/opkg/info/libdaemon0.list<br />/var/lib/opkg/info/coreutils.pre=
rm<br />/var/lib/opkg/info/busybox-syslog.control<br />/var/lib/opkg/info/l=
ibc6.postinst<br />/var/lib/opkg/info/libmount1.list<br />/var/lib/opkg/inf=
o/libpcap1.postinst</div>
<div>&nbsp;</div>
<div>Consequently, any updated meta-data do no persist across reboots.</div=
>
<div>&nbsp;</div>
<div>I have attempted to assign 'OPKGLIBDIR' to a R/W mount:&nbsp;</div>
<div>&nbsp;</div>
<div>OPKGLIBDIR ?=3D "/data-os/opkg"</div>
<div>&nbsp;</div>
<div>,&nbsp;which does appear to update the conf file:</div>
<div>&nbsp;</div>
<div>$ tail -5 /etc/opkg/opkg.conf&nbsp;<br /># Default destination for ins=
talled packages<br />dest root /<br />option lists_dir &nbsp; /data-os/opkg=
/opkg/lists<br />option info_dir &nbsp; &nbsp;/data-os/opkg/opkg/info<br />=
option status_file /data-os/opkg/opkg/status</div>
<div>but meta-data still appears to reside with '/var/lib'</div>
<div>&nbsp;</div>
<div>but meta-data still appears residing within '/var/lib':</div>
<div>&nbsp;</div>
<div>$ find /data-os/opkg/<br />/data-os/opkg/<br />/data-os/opkg/opkg<br /=
>/data-os/opkg/opkg/info</div>
<div>&nbsp;</div>
<div>$ find /var/lib/opkg/ | head<br />/var/lib/opkg/<br />/var/lib/opkg/st=
atus<br />/var/lib/opkg/info<br />/var/lib/opkg/info/vim-tiny.list<br />/va=
r/lib/opkg/info/libdaemon0.list<br />/var/lib/opkg/info/coreutils.prerm<br =
/>/var/lib/opkg/info/busybox-syslog.control<br />/var/lib/opkg/info/libc6.p=
ostinst<br />/var/lib/opkg/info/libmount1.list<br />/var/lib/opkg/info/libp=
cap1.postinst</div>
<div>&nbsp;</div>
<div>and opkg appears broken (as nothing is indicated installed):</div>
<div>&nbsp;</div>
<div>$ opkg list-installed; echo $?<br />0</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>To clarify, I imagine a process where the ipk file is uploaded to the =
device, after which the rootfs is remounted R/W and ipk installed/updated t=
hrough opkg. Installation/update do succeed, but the meta-data do not persi=
st as inteded.</div>
<div>&nbsp;</div>
<div>Note, I am on baseline Langdale, no obvious changes seem to have been =
pushed to master though.</div>
<div>&nbsp;</div>
<div>Am I missing any available configuration to achieve this?</div>
<div>Thanks,<br />Martin</div>
</div>

--SvobMv0QBXgXg0lIVsl1--

