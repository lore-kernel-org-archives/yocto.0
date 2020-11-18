Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web12.13156.1605809190670136308
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:06:31 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=CG0p1ZEE;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Wed, 18 Nov 2020 08:27:14 +0000
X-Sender: bounce+53643+51415+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 5674
X-Received: by 127.0.0.2 with SMTP id Wko7YY3619394xGKnfZRoOID; Wed, 18 Nov 2020 00:04:53 -0800
Subject: Re: [yocto] How to disable specific default recipe to be included in Yocto? #linux #yocto #cups #hplip
To: yocto@lists.yoctoproject.org
From: "Shamil Khan" <shamil.khan@exaleapsemi.com>
X-Originating-Location: Hyderabad, Telangana, IN (14.98.179.254)
X-Originating-Platform: Linux Chrome 84
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 17 Nov 2020 23:38:11 -0800
References: <TrZe.1596525506407384003.CLar@lists.yoctoproject.org>
In-Reply-To: <TrZe.1596525506407384003.CLar@lists.yoctoproject.org>
X-OldMsgId: <5848.1605685091547445364@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
X-Gm-Message-State: ottdeCgLuBkzGtSbqE5xQ03qx3618059AA=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605686693; bh=CJFyqOzwjRtq6sXT/ihSMzDzxeD8XkNKQYaRTZN46fM=; h=Content-Type:Date:From:Subject:To;
 b=CG0p1ZEEdE4sXDTezDEIpFPz51OKAJ1zzeaQL5dbb6MKpSn6DovwYygHG16JHywThA3 tGk5FwehwmfxW1nb7RUcpmC6YevHs7s81VnXlMwOt/oIiVp1vW7w4jP1CqqijOd/TS8rF PLAaqN+v5cwDIQ9qMee2R6NFtoU4yhZAW+8=
Return-Path: bounce+53643+51415+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <af963b74cefc4d2c8e7ef21c1c6955a4@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="z8ZPvq4fg4O52YX9COu7"

--z8ZPvq4fg4O52YX9COu7
Content-Type: multipart/alternative; boundary="nxtjdf6edItLrAH8Wxm2"

--nxtjdf6edItLrAH8Wxm2
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {DC55973B-A791-47BC-8FF0-2FF6DD9F6132}

Hi,

You can use BBMASK variable in your configuration file to prevent bitbake =
from parsing certain recipes.

For example,
BBMASK =3D "example.bb"
Here, BitBake ignores the example.bb recipe.

Hope this helps!




--nxtjdf6edItLrAH8Wxm2
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {B7987439-3EFE-49DF-B332-8D4AF40A6DEA}

<p style=3D"line-height: 1.42857;"><span style=3D"white-space: pre-wrap;">Hi=
,</span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"white-space: pre-wrap;">Yo=
u can use BBMASK variable in your configuration file to prevent bitbake from=
 parsing certain recipes.</span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"white-space: pre-wrap;">Fo=
r example,<br>BBMASK =3D "example.bb"<br>Here, BitBake ignores the example.b=
b recipe.</span><span style=3D"white-space: pre-wrap;"></span></p>
<p style=3D"line-height: 1.42857;"><span style=3D"white-space: pre-wrap;">Ho=
pe this helps!</span></p>

--nxtjdf6edItLrAH8Wxm2--

--z8ZPvq4fg4O52YX9COu7--
