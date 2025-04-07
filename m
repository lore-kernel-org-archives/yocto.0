Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29833C36010
	for <webhook@archiver.kernel.org>; Mon,  7 Apr 2025 07:07:57 +0000 (UTC)
Subject: Inputs to reduce the size of nodejs & nodejs-npm
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Delhi, National Capital Territory of Delhi, IN (182.74.28.237)
X-Originating-Platform: Linux Firefox 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Apr 2025 00:07:52 -0700
Message-ID: <br8T.1744009672028382435.wJxT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="OmFftCuyGMjN9eunWvLv"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Apr 2025 07:07:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65110

--OmFftCuyGMjN9eunWvLv
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Members ,

Is there any way to reduce the size of Node Js package on RFS
We are adding the nodejs (nodejs-npm is added as run time dependency ) usin=
g Yocto Scarthgap.
The default size is :
30989 KiB =C2=A0 =C2=A0nodejs
10867 KiB =C2=A0 =C2=A0nodejs-npm

Can senior members please share any known hack to reduce the nodejs / nodej=
s-npm size in RFS

Thanks ,
Ashish

--OmFftCuyGMjN9eunWvLv
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Members ,&nbsp;</div>
<div>&nbsp;</div>
<div>Is there any way to reduce the size of Node Js package on RFS </div>
<div>We are adding the nodejs (nodejs-npm is added as run time dependency )=
 using Yocto Scarthgap.</div>
<div>The default size is :</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; 30989 KiB &nbsp; &nbsp;nodejs<br />&nbsp;&nbs=
p;&nbsp;&nbsp; 10867 KiB &nbsp; &nbsp;nodejs-npm</div>
<div>&nbsp;</div>
<div>Can senior members please share any known hack to reduce the nodejs / =
nodejs-npm size in RFS </div>
<div>&nbsp;</div>
<div>Thanks ,<br />Ashish </div>
<div>&nbsp;</div>

--OmFftCuyGMjN9eunWvLv--

