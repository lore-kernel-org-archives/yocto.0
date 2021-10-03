Return-Path: <lijchen@blackberry.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0F968C433EF
	for <webhook@archiver.kernel.org>; Sun,  3 Oct 2021 01:40:48 +0000 (UTC)
Received: from smtp-pg10.blackberry.com (smtp-pg10.blackberry.com
 [68.171.242.226])
 by mx.groups.io with SMTP id smtpd.web11.17991.1633225246269955232
 for <yocto@lists.yoctoproject.org>;
 Sat, 02 Oct 2021 18:40:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=WOe9Pjkr;
 spf=pass (domain: blackberry.com, ip: 68.171.242.226,
 mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs400ykf.rim.net [127.0.0.1])
	by mhs400ykf.rim.net (8.16.0.43/8.16.0.43) with SMTP id 1931ehN6000874;
	Sat, 2 Oct 2021 21:40:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp19; bh=FDe9rfvGbxOBUzH05r5TK5UWz+43unMk2p3aIOKUX2g=;
 b=WOe9PjkrgosyAR3ktZjlvfxgYP9+dBGCdHEsZENC2glVlWdwkXybkKXDQYXTx/Puxc7G
 7BiDVmb5PK/3oWwedRVPlzvqtJXq85EQwhzBg4LsH+aPTs/mPHSRPm7Kfb1bt6rSEiWb
 dlcw06UlTLyxLLRtydqe1vh9NQlGBj30OvYBZaChMrV8PUdqauDUNEdTUM0e4pJR002K
 fibvPYJc2qn4F4R9/xGF4/KMI3gaR+uGGiKQcrIlH8NMcGa2tJXPTRQZnz8B6CEC7QO9
 e2m1NeXC254+lxdHtGkcAc5WYMfpi5jntLsu1N60nmHvBTo3ydAFPIwS0Qn99nvTYmmY dA==
Received: from xch212ykf.rim.net (xch212ykf.rim.net [10.12.114.212])
	by mhs400ykf.rim.net with ESMTP id 3bekm78kty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Sat, 02 Oct 2021 21:40:43 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH212YKF.rim.net
 (10.12.114.212) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Sat, 2 Oct
 2021 21:40:42 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Sat, 2 Oct 2021 21:40:42 -0400
From: Lijun Chen <lijchen@blackberry.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] gcov support for target in Yocto
Thread-Topic: [yocto] gcov support for target in Yocto
Thread-Index: AQHXsJti8y0JtgWz/kqHFVxhBUEuM6uy4g8AgA2r9YQ=
Date: Sun, 3 Oct 2021 01:40:42 +0000
Message-ID: <3260b60dea6d427b97ec186d7ca3338e@blackberry.com>
References: 
 <cd74ff1907374ec2bd340f18d691123d@blackberry.com>,<CAMKF1spCmGPbJvCycwSYuiWW2hEMzcZKKvJZ=yOrGqa_LJyOqw@mail.gmail.com>
In-Reply-To: 
 <CAMKF1spCmGPbJvCycwSYuiWW2hEMzcZKKvJZ=yOrGqa_LJyOqw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.209]
Content-Type: multipart/alternative;
	boundary="_000_3260b60dea6d427b97ec186d7ca3338eblackberrycom_"
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-10-02_07:2021-10-01,2021-10-02 signatures=0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 03 Oct 2021 01:40:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54933

--_000_3260b60dea6d427b97ec186d7ca3338eblackberrycom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thank

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Friday, September 24, 2021 12:53:26 AM
To: Lijun Chen
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] gcov support for target in Yocto

On Thu, Sep 23, 2021 at 9:53 AM Lijun Chen <lijchen@blackberry.com> wrote:
>
> Hi,
>
>
> Anybody knows how to enable gcov support for the target in Yocto?
>

IMAGE_INSTALL +=3D "gcov gcov-symlinks"

>
> Thanks,
>
> Lijun
>
> ________________________________
> This transmission (including any attachments) may contain confidential in=
formation, privileged material (including material protected by the solicit=
or-client or other applicable privileges), or constitute non-public informa=
tion. Any use of this information by anyone other than the intended recipie=
nt is prohibited. If you have received this transmission in error, please i=
mmediately reply to the sender and delete this information from your system=
. Use, dissemination, distribution, or reproduction of this transmission by=
 unintended recipients is not authorized and may be unlawful.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#54817): https://urldefense.com/v3/__https://lists.yoc=
toproject.org/g/yocto/message/54817__;!!COg3wY07Hnb7!5JnFgNjXAl35HXZGfGplYE=
VO0T-S7j3NB5NgN_z4Eptw3Pj6cyGsHjwo87C0XJeTmw$
> Mute This Topic: https://urldefense.com/v3/__https://lists.yoctoproject.o=
rg/mt/85818669/1997914__;!!COg3wY07Hnb7!5JnFgNjXAl35HXZGfGplYEVO0T-S7j3NB5N=
gN_z4Eptw3Pj6cyGsHjwo87D-XLhEtg$
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://urldefense.com/v3/__https://lists.yoctoproject.org/g=
/yocto/unsub__;!!COg3wY07Hnb7!5JnFgNjXAl35HXZGfGplYEVO0T-S7j3NB5NgN_z4Eptw3=
Pj6cyGsHjwo87Bi_bGkvw$  [raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

----------------------------------------------------------------------
This transmission (including any attachments) may contain confidential info=
rmation, privileged material (including material protected by the solicitor=
-client or other applicable privileges), or constitute non-public informati=
on. Any use of this information by anyone other than the intended recipient=
 is prohibited. If you have received this transmission in error, please imm=
ediately reply to the sender and delete this information from your system. =
Use, dissemination, distribution, or reproduction of this transmission by u=
nintended recipients is not authorized and may be unlawful.

--_000_3260b60dea6d427b97ec186d7ca3338eblackberrycom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii">
<meta name=3D"Generator" content=3D"Microsoft Exchange Server">
<!-- converted from text --><style><!-- .EmailQuote { margin-left: 1pt; pad=
ding-left: 4pt; border-left: #800000 2px solid; } --></style>
</head>
<body>
<meta content=3D"text/html; charset=3DUTF-8">
<style type=3D"text/css" style=3D"">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
<div dir=3D"ltr">
<div id=3D"x_divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; col=
or:#000000; font-family:Calibri,Helvetica,sans-serif">
<p>Thank<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Friday, September 24, 2021 12:53:26 AM<br>
<b>To:</b> Lijun Chen<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] gcov support for target in Yocto</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Thu, Sep 23, 2021 at 9:53 AM Lijun Chen &lt;lij=
chen@blackberry.com&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; Anybody knows how to enable gcov support for the target in Yocto?<br>
&gt;<br>
<br>
IMAGE_INSTALL &#43;=3D &quot;gcov gcov-symlinks&quot;<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Lijun<br>
&gt;<br>
&gt; ________________________________<br>
&gt; This transmission (including any attachments) may contain confidential=
 information, privileged material (including material protected by the soli=
citor-client or other applicable privileges), or constitute non-public info=
rmation. Any use of this information
 by anyone other than the intended recipient is prohibited. If you have rec=
eived this transmission in error, please immediately reply to the sender an=
d delete this information from your system. Use, dissemination, distributio=
n, or reproduction of this transmission
 by unintended recipients is not authorized and may be unlawful.<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#54817): <a href=3D"https://urldefense.com/v3/__htt=
ps://lists.yoctoproject.org/g/yocto/message/54817__;!!COg3wY07Hnb7!5JnFgNjX=
Al35HXZGfGplYEVO0T-S7j3NB5NgN_z4Eptw3Pj6cyGsHjwo87C0XJeTmw$">
https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/message/=
54817__;!!COg3wY07Hnb7!5JnFgNjXAl35HXZGfGplYEVO0T-S7j3NB5NgN_z4Eptw3Pj6cyGs=
Hjwo87C0XJeTmw$</a>
<br>
&gt; Mute This Topic: <a href=3D"https://urldefense.com/v3/__https://lists.=
yoctoproject.org/mt/85818669/1997914__;!!COg3wY07Hnb7!5JnFgNjXAl35HXZGfGplY=
EVO0T-S7j3NB5NgN_z4Eptw3Pj6cyGsHjwo87D-XLhEtg$">
https://urldefense.com/v3/__https://lists.yoctoproject.org/mt/85818669/1997=
914__;!!COg3wY07Hnb7!5JnFgNjXAl35HXZGfGplYEVO0T-S7j3NB5NgN_z4Eptw3Pj6cyGsHj=
wo87D-XLhEtg$</a>
<br>
&gt; Group Owner: yocto&#43;owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://urldefense.com/v3/__https://lists.yoct=
oproject.org/g/yocto/unsub__;!!COg3wY07Hnb7!5JnFgNjXAl35HXZGfGplYEVO0T-S7j3=
NB5NgN_z4Eptw3Pj6cyGsHjwo87Bi_bGkvw$">
https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/unsub__;=
!!COg3wY07Hnb7!5JnFgNjXAl35HXZGfGplYEVO0T-S7j3NB5NgN_z4Eptw3Pj6cyGsHjwo87Bi=
_bGkvw$</a>&nbsp; [raj.khem@gmail.com]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</div>
</span></font>

<HR>This transmission (including any attachments) may contain confidential =
information, privileged material (including material protected by the solic=
itor-client or other applicable privileges), or constitute non-public infor=
mation. Any use of this information by anyone other than the intended recip=
ient is prohibited. If you have received this transmission in error, please=
 immediately reply to the sender and delete this information from your syst=
em. Use, dissemination, distribution, or reproduction of this transmission =
by unintended recipients is not authorized and may be unlawful.<BR>
</body>
</html>

--_000_3260b60dea6d427b97ec186d7ca3338eblackberrycom_--

