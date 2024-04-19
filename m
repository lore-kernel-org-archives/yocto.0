Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED52C4345F
	for <webhook@archiver.kernel.org>; Fri, 19 Apr 2024 13:25:52 +0000 (UTC)
Subject: Re: [yocto] Http access token fetching with gitsm fetcher
To: alexzoyv@gmail.com, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 19 Apr 2024 06:25:46 -0700
References: <19195.1697812374702702885@lists.yoctoproject.org>
In-Reply-To: <19195.1697812374702702885@lists.yoctoproject.org>
Message-ID: <7441.1713533146798727037@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VSC1WfTgtme1c3x7gbVh"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 19 Apr 2024 13:25:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62968

--VSC1WfTgtme1c3x7gbVh
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Adrian,

Hi Yoann,

I have two project when is using dunfell and another one with using Kirksto=
ne. with the Dunfell project I was using one recipe with fetching from git =
repo like this

SRC_URI =3D "git://${ COMPANY_GIT_REPO }/path/to/project.git;protocol=3Dhtt=
ps; *user=3Dtoken_name:${TOKEN}"*

The https+Token was working fine with Dunfell, now I have ported this recip=
e to kirkstone but it is not working and I get this error

fatal: could not read Password for 'https://git@COMPANY_GIT_REPO': No such =
device or address

Is this known WONTFIX bug was also in dunfell? or introduced only in the ne=
w yocto version?

is this only applied for gitsm or also for git?

Thanks in advance.

Regards,

Salahaldeen Altous

--VSC1WfTgtme1c3x7gbVh
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Adrian,</p>
<p>Hi Yoann,</p>
<p>&nbsp;</p>
<p>I have two project when is using dunfell and another one with using Kirk=
stone. with the Dunfell project I was using one recipe with fetching from g=
it repo like this</p>
<p><span style=3D"color: #1d1c1d; font-family: Slack-Lato, Slack-Fractions,=
 appleLogo, sans-serif; font-size: 15px; font-style: normal; font-variant-l=
igatures: common-ligatures; font-variant-caps: normal; font-weight: 400; le=
tter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; white-space: normal; background-color: #ffffff; text-decoration-thickne=
ss: initial; text-decoration-style: initial; text-decoration-color: initial=
; display: inline !important; float: none;">SRC_URI =3D "git://${</span>COM=
PANY_GIT_REPO<span style=3D"color: #1d1c1d; font-family: Slack-Lato, Slack-=
Fractions, appleLogo, sans-serif; font-size: 15px; font-style: normal; font=
-variant-ligatures: common-ligatures; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: =
0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-strok=
e-width: 0px; white-space: normal; background-color: #ffffff; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial; display: inline !important; float: none;">}/path/to/project.git=
;protocol=3Dhttps;</span><strong style=3D"box-sizing: inherit; color: #1d1c=
1d; font-family: Slack-Lato, Slack-Fractions, appleLogo, sans-serif; font-s=
ize: 15px; font-style: normal; font-variant-ligatures: common-ligatures; fo=
nt-variant-caps: normal; letter-spacing: normal; orphans: 2; text-align: le=
ft; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #ffff=
ff; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial;" data-stringify-type=3D"bold">user=3Dtoken_nam=
e:${TOKEN}"</strong></p>
<p>The https+Token was working fine with Dunfell, now I have ported this re=
cipe to kirkstone but it is not working and I get this error</p>
<p>fatal: could not read Password for 'https://git@COMPANY_GIT_REPO': No su=
ch device or address</p>
<p>&nbsp;</p>
<p>Is this known WONTFIX bug was also in dunfell? or introduced only in the=
 new yocto version?</p>
<p>is this only applied for gitsm or also for git?</p>
<p>&nbsp;</p>
<p>Thanks in advance.</p>
<p>&nbsp;</p>
<p>Regards,</p>
<p>Salahaldeen Altous</p>

--VSC1WfTgtme1c3x7gbVh--

