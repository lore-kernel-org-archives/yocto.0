Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1D07AC433FE
	for <webhook@archiver.kernel.org>; Tue, 22 Feb 2022 12:23:52 +0000 (UTC)
Subject: Re: Enabling variable history for bbappends #devtool #yocto
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 97
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 22 Feb 2022 04:23:51 -0800
References: <lNIS.1645532448433942414.e23R@lists.yoctoproject.org>
In-Reply-To: <lNIS.1645532448433942414.e23R@lists.yoctoproject.org>
Message-ID: <1833.1645532631227889820@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JlbPbFOGib4XvRKwrNZh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Feb 2022 12:23:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56238

--JlbPbFOGib4XvRKwrNZh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

what do you mean by variable history?

You can run `bitbake -e recipe_name | grep variable_name` which should show=
 you how
the variable value was changed by next recipes/bbappend files etc.

Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

--JlbPbFOGib4XvRKwrNZh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>what do you mean by variable history?<br /><br />You can run `bitbake -e=
 recipe_name | grep variable_name` which should show you how<br />the varia=
ble value was changed by next recipes/bbappend files etc.<br /><br />Tomasz=
 =C5=BByjewski<br />Embedded Systems Engineer<br />GPG: 5C495EA3EBEECA59<br=
 />https://3mdeb.com | @3mdeb_com</p>

--JlbPbFOGib4XvRKwrNZh--

