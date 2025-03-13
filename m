Return-Path: <emailaddress.ashish@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 485E5C282DE
	for <webhook@archiver.kernel.org>; Thu, 13 Mar 2025 16:46:42 +0000 (UTC)
Subject: jzlib hosting website down and hence build is failing
To: yocto@lists.yoctoproject.org
From: emailaddress.ashish@gmail.com
X-Originating-Location: Bhubaneswar, Odisha, IN (106.222.203.175)
X-Originating-Platform: Linux Firefox 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 13 Mar 2025 09:46:37 -0700
Message-ID: <myL2.1741884397359241204.Zyqi@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nXZPpjV83srDN0OEjvwZ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Mar 2025 16:46:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64950

--nXZPpjV83srDN0OEjvwZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Members ,

Its been few weeks that the website http://www.jcraft.com/jzlib is down.
Can senior members please help and share what's the approach to handle such=
 cases.

Currently i have the tar from other build which i am manually copying to my=
 current download folder .
Since we have customer release lined up , manually copying the tar will not=
 be an feasible option.

So wanted to check in community :
1) Do we have any alternate hosting website , i can create an patch and pus=
h the changes
2) Is there any template to copy the TAR in download folder ?
As any patch we create will be from WORKDIR , not seen any implementation w=
here recipe is touching "download" folder
3) Generally whats the suggested mechanism in Yocto to handle such scenario

Thanks ,
Ashish

--nXZPpjV83srDN0OEjvwZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Members ,</div>
<div>&nbsp;</div>
<div>Its been few weeks that the website <a href=3D"http://www.jcraft.com/j=
zlib" target=3D"_blank" rel=3D"noopener">http://www.jcraft.com/jzlib</a>&nb=
sp; is down.</div>
<div>Can senior members please help and share what's the approach to handle=
 such cases.</div>
<div>&nbsp;</div>
<div>Currently i have the tar from other build which i am manually copying =
to my current download folder .</div>
<div>Since we have customer release lined up , manually copying the tar wil=
l not be an feasible option. </div>
<div>&nbsp;</div>
<div>So wanted to check in community :</div>
<div>1) Do we have any alternate hosting website , i can create an patch an=
d push the changes </div>
<div>2) Is there any template to copy the TAR in download folder ?</div>
<div>&nbsp;&nbsp;&nbsp;&nbsp; As any patch we create will be from WORKDIR ,=
 not seen any implementation where recipe is touching "download" folder </d=
iv>
<div>3) Generally whats the suggested mechanism in Yocto to handle such sce=
nario</div>
<div>&nbsp;</div>
<div>Thanks ,<br />Ashish </div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--nXZPpjV83srDN0OEjvwZ--

