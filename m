Return-Path: <haimbachar2008@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB311C5472F
	for <webhook@archiver.kernel.org>; Tue, 27 Aug 2024 16:20:27 +0000 (UTC)
Subject: Re: [yocto] fsbl recipe changed during migration from Zeus to Honister? #honister #zeus
To: "Martin Jansa" <martin.jansa@gmail.com>, yocto@lists.yoctoproject.org
From: "Haimbach" <haimbachar2008@gmail.com>
X-Originating-Location: Ness Ziona, Central District, IL (77.137.74.82)
X-Originating-Platform: Windows Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 Aug 2024 09:20:25 -0700
References: <CA+chaQdd9c-NZxOUe2jUmfhkeEr6GmEGxKaSr=FuRXcx-vq1SA@mail.gmail.com>
In-Reply-To: <CA+chaQdd9c-NZxOUe2jUmfhkeEr6GmEGxKaSr=FuRXcx-vq1SA@mail.gmail.com>
Message-ID: <32417.1724775625752090143@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Doe8wt3RxiD7zgPY102L"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Aug 2024 16:20:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63753

--Doe8wt3RxiD7zgPY102L
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Martin,
As I'm understands, I should apply the next changes:
Add to local.conf: BBMULTICONFIG +=3D "fsbl-fw"

After the above change I could build fsbl by typing `bitbake fsbl` ? withou=
t changing fsbl_%.bbappend to fsbl-firmware_%.bbappend ?

Regards,
Haim

--Doe8wt3RxiD7zgPY102L
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Martin,</div>
<div>As I'm understands, I should apply the next changes:</div>
<div><span style=3D"color: #333333; font-family: 'Source Code Pro', 'Courie=
r New', monospace; font-size: 13.3333px; font-style: normal; font-variant-l=
igatures: normal; font-variant-caps: normal; font-weight: 400; letter-spaci=
ng: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform=
: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white=
-space: pre; background-color: #ffffff; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial; display: i=
nline !important; float: none;">Add to local.conf: BBMULTICONFIG +=3D "fsbl=
-fw"</span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: 'Source Code Pro', 'Courier New', monospac=
e; font-size: 13.3333px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial; float: none; display: inline !important;">After the a=
bove change I could build fsbl by typing `bitbake fsbl` ? without changing =
fsbl_%.bbappend to fsbl-firmware_%.bbappend ?</span></div>
<div>&nbsp;</div>
<div><span style=3D"font-family: 'Source Code Pro', 'Courier New', monospac=
e; font-size: 13.3333px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial; float: none; display: inline !important;">Regards,</s=
pan></div>
<div><span style=3D"font-family: 'Source Code Pro', 'Courier New', monospac=
e; font-size: 13.3333px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial; float: none; display: inline !important;">Haim</span>=
</div>

--Doe8wt3RxiD7zgPY102L--

