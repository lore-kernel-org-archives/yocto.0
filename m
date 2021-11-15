Return-Path: <lavkhush2208@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6445C433F5
	for <webhook@archiver.kernel.org>; Mon, 15 Nov 2021 06:39:51 +0000 (UTC)
Subject: ftp on yocto
To: yocto@lists.yoctoproject.org
From: lavkhush2208@gmail.com
X-Originating-Location: Patna, Bihar, IN (157.35.3.33)
X-Originating-Platform: Linux Firefox 93
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 14 Nov 2021 22:39:50 -0800
Message-ID: <q15e.1636958390836790658.epgU@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ohv5GenxqsSH0FobLqKH"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 Nov 2021 06:39:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55328

--ohv5GenxqsSH0FobLqKH
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Guys
I have installed *netkit-ftp-0.17* version and *vsftpd-3.0.3* version succe=
ssfully but i am facing an *issue* with command using ftp -help.

*$ ftp -help*
*Usage: { ftp | pftp } [-46pinegvtd] [hostname]*

*-p: enable passive mode (default for pftp)*
*-i: turn off prompting during mget*
*-n: inhibit auto-login*
*-e: disable readline support, if present*
*-g: disable filename globbing*
*-v: verbose mode*
*-t: enable packet tracing [nonfunctional]*
*-d: enable debugging*

*not getting ipv4 and ipv6 option*
*-4: use IPv4 addresses only*
*-6: use IPv6, nothing else

* I enabled=C2=A0 ipv4 and ipv6 in kernel config , same issue i am facing

if something is missing, please update me so that i can modify.

T&R
lavkhush

--ohv5GenxqsSH0FobLqKH
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Guys <br />I have installed <strong>netkit-ftp-0.17</strong> version =
and <strong>vsftpd-3.0.3</strong> version successfully but i am facing an <=
strong>issue</strong> with command using ftp -help.<br /><br /><strong>$ ft=
p -help</strong><br /><strong>&nbsp;&nbsp; Usage: { ftp | pftp } [-46pinegv=
td] [hostname]</strong><br /><br /><strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; =
-p: enable passive mode (default for pftp)</strong><br /><strong>&nbsp;&nbs=
p; &nbsp;&nbsp;&nbsp; -i: turn off prompting during mget</strong><br /><str=
ong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; -n: inhibit auto-login</strong><br /><s=
trong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; -e: disable readline support, if pres=
ent</strong><br /><strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; -g: disable filen=
ame globbing</strong><br /><strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; -v: verb=
ose mode</strong><br /><strong>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; -t: enable p=
acket tracing [nonfunctional]</strong><br /><strong>&nbsp;&nbsp; &nbsp;&nbs=
p;&nbsp; -d: enable debugging</strong><br /><br /><strong>not getting ipv4 =
and ipv6 option</strong><br /><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
-4: use IPv4 addresses only</strong><br /><strong>&nbsp;&nbsp; &nbsp;&nbsp;=
&nbsp; -6: use IPv6, nothing else<br /><br /></strong>I enabled&nbsp; ipv4 =
and ipv6 in kernel config , same issue i am facing<br /><br />if something =
is missing, please update me so that i can modify.<br /><br />T&amp;R<br />=
lavkhush

--ohv5GenxqsSH0FobLqKH--

