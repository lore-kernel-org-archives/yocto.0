Return-Path: <yong.9.wang@outlook.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2AF9EB64DA
	for <webhook@archiver.kernel.org>; Sat, 22 Jul 2023 05:06:15 +0000 (UTC)
Subject: owner and group of sysroots changed to nobdoy #bitbake #kirkstone
To: yocto@lists.yoctoproject.org
From: yong.9.wang@outlook.com
X-Originating-Location: FI (131.228.2.26)
X-Originating-Platform: Windows Chrome 114
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 21 Jul 2023 22:06:13 -0700
Message-ID: <P4mt.1690002373731047850.DF58@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="8BzsiQViVkzcT03m5qbk"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 22 Jul 2023 05:06:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60631

--8BzsiQViVkzcT03m5qbk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,=C2=A0 experts

I'm moving my bb recipe to kirkstone but met a problem which causing ssh op=
eration in bb recipe failed.=C2=A0 after some investigation I found out tha=
t the owner and group of the sysroots accessing in the bb recipes were all =
changed to nobody.=C2=A0 below is the shell commands run in the bb recipes =
and error log.=C2=A0 So I'm curious how this owner and group changed and ho=
w to fix it=EF=BC=9F

>=20
>=20
>=20
> check_gerrit_authentication() {
>=20
>=20
>=20
> ls -ld /*
>=20
>=20
>=20
> if ! ssh -o BatchMode=3Dyes -p 29418 gerrit-essl2.int.net.nokia.com gerri=
t
> version; then
>=20
>=20
>=20
> bberror "SSH connection to Gerrit failed.\n\n\
>=20
>=20
>=20
> Please check that your public key is installed and Gerrit host is in your
> known_hosts file.\n\
>=20
>=20
>=20
> To check the connection:\n\
>=20
>=20
>=20
> $ ssh -p 29418 gerrit-essl2.int.net.nokia.com\n"
>=20
>=20
>=20
> exit 1
>=20
>=20
>=20
> fi
>=20
>=20
>=20
> }
>=20
>=20

and the output :

>=20
>=20
>=20
> DEBUG: Executing shell function check_gerrit_authentication
>=20
>=20
>=20
> lrwxrwxrwx=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A07 Jan 28=
=C2=A0 2020 /bin -> usr/bin
>=20
>=20
>=20
> dr-xr-xr-x=C2=A0 =C2=A02 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A06 Jan 28=
=C2=A0 2020 /boot
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A05 nobody nobody=C2=A0 =C2=A0 =C2=A0360 Jul 21 07:4=
4 /dev
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A01 *nobody nobody* 139 Jul 21 07:44 /etc
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 21 Jul 21 07:4=
4 /home
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A04 nobody nobody=C2=A0 =C2=A0 =C2=A0 33 Jul 21 07:4=
4 /host
>=20
>=20
>=20
> lrwxrwxrwx=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A07 Jan 28=
=C2=A0 2020 /lib -> usr/lib
>=20
>=20
>=20
> lrwxrwxrwx=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A09 Jan 28=
=C2=A0 2020 /lib64 -> usr/lib64
>=20
>=20
>=20
> drwx------=C2=A0 =C2=A02 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A06 Apr 27=
=C2=A0 2021 /lost+found
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 10 nobody nobody=C2=A0 =C2=A0 4096 Jun 11 01:56 /make-4.=
3
>=20
>=20
>=20
> -rw-r--r--=C2=A0 =C2=A01 nobody nobody 2317073 Jan 19=C2=A0 2020 /make-4.=
3.tar.gz
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A02 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A06 Jan 28=
=C2=A0 2020 /media
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A02 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A06 Jan 28=
=C2=A0 2020 /mnt
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 22 Jun=C2=A0 1=
 07:08 /opt
>=20
>=20
>=20
> dr-xr-xr-x 314 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A00 Jul 21 07:44 /pr=
oc
>=20
>=20
>=20
> dr-xr-x---=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 58 Jun=C2=A0 1=
 07:08 /root
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 22 Jun=C2=A0 1=
 07:08 /run
>=20
>=20
>=20
> lrwxrwxrwx=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A08 Jan 28=
=C2=A0 2020 /sbin -> usr/sbin
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 27 Jun 11 01:5=
6 /scripts
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A02 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A06 Jan 28=
=C2=A0 2020 /srv
>=20
>=20
>=20
> dr-xr-xr-x=C2=A0 12 nobody nobody=C2=A0 =C2=A0 =C2=A0 =C2=A00 Jul 21 08:1=
8 /sys
>=20
>=20
>=20
> drwxrwxrwt=C2=A0 =C2=A02 nobody nobody=C2=A0 =C2=A0 =C2=A0 40 Jul 21 07:4=
4 /tmp
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 45 Apr 27=C2=
=A0 2021 /usr
>=20
>=20
>=20
> drwxr-xr-x=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 30 Jun 11 01:5=
6 /var
>=20
>=20
>=20
> -rw-r--r--=C2=A0 =C2=A01 nobody nobody=C2=A0 =C2=A0 =C2=A0 16 Jun 11 01:5=
5 /VERSION
>=20
>=20
>=20
> *Bad owner or permissions on /etc/ssh/ssh_config.d/50-redhat.conf^M*
>=20
>=20
>=20
> ERROR: SSH connection to Gerrit failed.
>=20
>=20
>=20
>=20

Best Regards
Yong

--8BzsiQViVkzcT03m5qbk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,&nbsp; experts<br /><br />I'm moving my bb recipe to kirkstone but me=
t a problem which causing ssh operation in bb recipe failed.&nbsp; after so=
me investigation I found out that the owner and group of the sysroots acces=
sing in the bb recipes were all changed to nobody.&nbsp; below is the shell=
 commands run in the bb recipes and error log.&nbsp; So I'm curious how thi=
s owner and group changed and how to fix it=EF=BC=9F</p>
<blockquote>
<p>check_gerrit_authentication() {</p>
<p>&nbsp; &nbsp; ls -ld /*</p>
<p>&nbsp; &nbsp; if ! ssh -o BatchMode=3Dyes -p 29418 gerrit-essl2.int.net.=
nokia.com gerrit version; then</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; bberror "SSH connection to Gerrit failed.\n\=
n\</p>
<p>&nbsp; &nbsp; Please check that your public key is installed and Gerrit =
host is in your known_hosts file.\n\</p>
<p>&nbsp; &nbsp; To check the connection:\n\</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; $ ssh -p 29418 gerrit-essl2.int.net.nokia.co=
m\n"</p>
<p>&nbsp; &nbsp; &nbsp; &nbsp; exit 1</p>
<p>&nbsp; &nbsp; fi</p>
<p>}</p>
</blockquote>
<p>and the output :</p>
<blockquote>
<p>DEBUG: Executing shell function check_gerrit_authentication</p>
<p>lrwxrwxrwx&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;7 Jan 2=
8&nbsp; 2020 /bin -&gt; usr/bin</p>
<p>dr-xr-xr-x&nbsp; &nbsp;2 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;6 Jan 2=
8&nbsp; 2020 /boot</p>
<p>drwxr-xr-x&nbsp; &nbsp;5 nobody nobody&nbsp; &nbsp; &nbsp;360 Jul 21 07:=
44 /dev</p>
<p>drwxr-xr-x&nbsp; &nbsp;1 <strong>nobody nobody</strong>&nbsp; &nbsp; &nb=
sp;139 Jul 21 07:44 /etc</p>
<p>drwxr-xr-x&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; 21 Jul 21 07:=
44 /home</p>
<p>drwxr-xr-x&nbsp; &nbsp;4 nobody nobody&nbsp; &nbsp; &nbsp; 33 Jul 21 07:=
44 /host</p>
<p>lrwxrwxrwx&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;7 Jan 2=
8&nbsp; 2020 /lib -&gt; usr/lib</p>
<p>lrwxrwxrwx&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;9 Jan 2=
8&nbsp; 2020 /lib64 -&gt; usr/lib64</p>
<p>drwx------&nbsp; &nbsp;2 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;6 Apr 2=
7&nbsp; 2021 /lost+found</p>
<p>drwxr-xr-x&nbsp; 10 nobody nobody&nbsp; &nbsp; 4096 Jun 11 01:56 /make-4=
.3</p>
<p>-rw-r--r--&nbsp; &nbsp;1 nobody nobody 2317073 Jan 19&nbsp; 2020 /make-4=
.3.tar.gz</p>
<p>drwxr-xr-x&nbsp; &nbsp;2 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;6 Jan 2=
8&nbsp; 2020 /media</p>
<p>drwxr-xr-x&nbsp; &nbsp;2 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;6 Jan 2=
8&nbsp; 2020 /mnt</p>
<p>drwxr-xr-x&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; 22 Jun&nbsp; =
1 07:08 /opt</p>
<p>dr-xr-xr-x 314 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;0 Jul 21 07:44 /p=
roc</p>
<p>dr-xr-x---&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; 58 Jun&nbsp; =
1 07:08 /root</p>
<p>drwxr-xr-x&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; 22 Jun&nbsp; =
1 07:08 /run</p>
<p>lrwxrwxrwx&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;8 Jan 2=
8&nbsp; 2020 /sbin -&gt; usr/sbin</p>
<p>drwxr-xr-x&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; 27 Jun 11 01:=
56 /scripts</p>
<p>drwxr-xr-x&nbsp; &nbsp;2 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;6 Jan 2=
8&nbsp; 2020 /srv</p>
<p>dr-xr-xr-x&nbsp; 12 nobody nobody&nbsp; &nbsp; &nbsp; &nbsp;0 Jul 21 08:=
18 /sys</p>
<p>drwxrwxrwt&nbsp; &nbsp;2 nobody nobody&nbsp; &nbsp; &nbsp; 40 Jul 21 07:=
44 /tmp</p>
<p>drwxr-xr-x&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; 45 Apr 27&nbs=
p; 2021 /usr</p>
<p>drwxr-xr-x&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; 30 Jun 11 01:=
56 /var</p>
<p>-rw-r--r--&nbsp; &nbsp;1 nobody nobody&nbsp; &nbsp; &nbsp; 16 Jun 11 01:=
55 /VERSION</p>
<p><strong>Bad owner or permissions on /etc/ssh/ssh_config.d/50-redhat.conf=
^M</strong></p>
<p>ERROR: SSH connection to Gerrit failed.<br /><br /></p>
</blockquote>
<div>Best Regards</div>
<div>Yong</div>

--8BzsiQViVkzcT03m5qbk--

