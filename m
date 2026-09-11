Return-Path: <wanwizard@openpli.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6189AC88E53
	for <webhook@archiver.kernel.org>; Fri, 11 Sep 2026 16:48:37 +0000 (UTC)
Subject: Re: [yocto] Hashserve OEEquivHash unihash issue
To: "Harro Verton" <wanwizard@openpli.org>, yocto@lists.yoctoproject.org
From: "Harro Verton" <wanwizard@openpli.org>
X-Originating-Location: Stafford, England, GB (194.164.227.192)
X-Originating-Platform: Linux Firefox 154
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Sep 2026 09:48:35 -0700
References: <p7FW.1789069372704480303.Aepi@lists.yoctoproject.org> <307014.1789069815176190258@lists.yoctoproject.org> <CAJdd5GYmUEJjWnVCYC1y_g+_0gMFASHw4M+ZjHnGBOZHTKocVw@mail.gmail.com> <307014.1789144839597694168@lists.yoctoproject.org>
In-Reply-To: <307014.1789144839597694168@lists.yoctoproject.org>
Message-ID: <308852.1789145315543998896@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="sz81V2A89lMICPtA1N0Y"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 11 Sep 2026 16:48:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66720

--sz81V2A89lMICPtA1N0Y
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

The PR database contains two entries for ffmpeg:

sqlite> SELECT * from PRMAIN_nohist WHERE version LIKE 'ffmpeg%';
ffmpeg-6.1.4-r0|cortexa15hf-neon-vfpv4|fc22c7d30187c90305b3aa0bc761e3e42036=
55822f618753019b8779a8c0ca68|0
ffmpeg-6.1.4-r0|cortexa15hf-neon-vfpv4|4f51d61f7509b9bc26440b0e0639af96fe78=
93070e516e63c523bd8b49e3003d|1

--sz81V2A89lMICPtA1N0Y
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>The PR database contains two entries for ffmpeg:</div>
<div>&nbsp;</div>
<div>sqlite&gt; SELECT * from PRMAIN_nohist WHERE version LIKE 'ffmpeg%';<b=
r />ffmpeg-6.1.4-r0|cortexa15hf-neon-vfpv4|fc22c7d30187c90305b3aa0bc761e3e4=
203655822f618753019b8779a8c0ca68|0<br />ffmpeg-6.1.4-r0|cortexa15hf-neon-vf=
pv4|4f51d61f7509b9bc26440b0e0639af96fe7893070e516e63c523bd8b49e3003d|1</div=
>

--sz81V2A89lMICPtA1N0Y--

