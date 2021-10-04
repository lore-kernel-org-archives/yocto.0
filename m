Return-Path: <lijchen@blackberry.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08160C433F5
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 13:12:44 +0000 (UTC)
Received: from smtp-pg10.blackberry.com (smtp-pg10.blackberry.com
 [68.171.242.226])
 by mx.groups.io with SMTP id smtpd.web09.9088.1633353162607363685
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 06:12:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@blackberry.com header.s=corp19 header.b=F0e/EtEk;
 spf=pass (domain: blackberry.com, ip: 68.171.242.226,
 mailfrom: lijchen@blackberry.com)
Received: from pps.filterd (mhs400ykf.rim.net [127.0.0.1])
	by mhs400ykf.rim.net (8.16.0.43/8.16.0.43) with SMTP id 194D7dtg019200;
	Mon, 4 Oct 2021 09:12:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=blackberry.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 mime-version; s=corp19; bh=vAAl8+1XvQ8jmIQzjVPFY8qbAW6ahWXZEjaL1xuF6Po=;
 b=F0e/EtEkd1YzoHkN+a/Lulc6Vqy6M2Yb0ukFFD3BlAf8X0Wm1JP0Y2QL6Jb4xJZKxshF
 1PYHHx97lB+SgN6b4xgNDDVgZ4MYsFvamwxiSMPbDYsAcEly9v/iqF7/Ds1JE/fYqgPs
 Jnu5CLJU+tKuEli1SwJEvuYtLNeFKkgWlArqe1Japfc2HgmUOqVM8vVDxoj/guORtVsz
 z1jWBPDBZSBOlinzWvcs2SZfXaI/So0ftUg5dd1+VJDhzrMvn5U6k+xXRitdxcuhXwDQ
 TETOJo3E3K7z7qGfKWxNis9ltb7NsDWr3hApRln5f1h7hRdO9AQXLXfqot8YKRNn8N0S 6g==
Received: from xch210cnc.rim.net (xch210cnc.rim.net [10.3.27.115])
	by mhs400ykf.rim.net with ESMTP id 3bekm79rcn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 04 Oct 2021 09:12:40 -0400
Received: from XCH211YKF.rim.net (10.12.114.211) by XCH210CNC.rim.net
 (10.3.27.115) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2308.14; Mon, 4 Oct
 2021 09:12:40 -0400
Received: from XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180]) by
 XCH211YKF.rim.net ([fe80::dca:23f8:c2c0:7180%5]) with mapi id 15.01.2308.014;
 Mon, 4 Oct 2021 09:12:40 -0400
From: Lijun Chen <lijchen@blackberry.com>
To: Khem Raj <raj.khem@gmail.com>
CC: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Shared lib symlinks in target image
Thread-Topic: [yocto] Shared lib symlinks in target image
Thread-Index: AQHXt/hkH3Oz20dKZEmAKPu+QWv1a6vA31EAgAHyyhI=
Date: Mon, 4 Oct 2021 13:12:40 +0000
Message-ID: <7508347f66784a1487e4f20bf1ad89f0@blackberry.com>
References: 
 <c7c1faf5ec0f43178b03bcd5bdacb744@blackberry.com>,<CAMKF1sp4aDrC4z9MBkM8ap=nqKEckAk9shReHKOifZ5X=KYtkQ@mail.gmail.com>
In-Reply-To: 
 <CAMKF1sp4aDrC4z9MBkM8ap=nqKEckAk9shReHKOifZ5X=KYtkQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [100.64.197.209]
Content-Type: multipart/alternative;
	boundary="_000_7508347f66784a1487e4f20bf1ad89f0blackberrycom_"
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.790
 definitions=2021-10-04_04:2021-10-04,2021-10-04 signatures=0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 13:12:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54937

--_000_7508347f66784a1487e4f20bf1ad89f0blackberrycom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I have an app built in a different environment that has lower versioned lib=
s, such as boost. I was wondering if on the target there are symlinks to th=
ose libs, whether the app can be run on a target that has newer libs withou=
t resbuild against a matched env. Seems that is not viable.

________________________________
From: Khem Raj <raj.khem@gmail.com>
Sent: Saturday, October 2, 2021 11:23:58 PM
To: Lijun Chen
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Shared lib symlinks in target image

On Sat, Oct 2, 2021 at 6:55 PM Lijun Chen <lijchen@blackberry.com> wrote:
>
> Hi,
>
>
> When I build a yocto image, I added some packages into IMAGE_INSTALL, suc=
h as boost, thrift, etc. I notice in the target OS image, the shared libs d=
on't the symlinks. But in the SDK image, the symlinks are there. For exampl=
e,
>
> lrwxrwxrwx 1 root root       22 Oct  2 16:41 libboost_filesystem-mt.so ->=
 libboost_filesystem.so
> lrwxrwxrwx 1 root root       29 Oct  2 16:41 libboost_filesystem.so -> li=
bboost_filesystem.so.1.75.0
>
> Is there a way to add the symlinks to the target image as well?
>
>
> With the symlinks, I assume we can run an old application even the depend=
ent lib is a newer version?
>

unversioned symlinks should not be used they are there to be used for
linking during build time. Unless you need to do builds on targets you
really do not need them
so explain you usecase. Are you trying to build stuff on device ?

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
> View/Reply Online (#54934): https://urldefense.com/v3/__https://lists.yoc=
toproject.org/g/yocto/message/54934__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muAS=
h2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJORDalv1bA$
> Mute This Topic: https://urldefense.com/v3/__https://lists.yoctoproject.o=
rg/mt/86035483/1997914__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgo=
weZDAV8wx1sd8uvxVqOEHJOTJ_1cQxQ$
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://urldefense.com/v3/__https://lists.yoctoproject.org/g=
/yocto/unsub__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1=
sd8uvxVqOEHJOQieFL_-A$  [raj.khem@gmail.com]
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

--_000_7508347f66784a1487e4f20bf1ad89f0blackberrycom_
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
<p>I have an app built in a different environment that has lower versioned =
libs, such as boost. I was wondering if on the target there are symlinks to=
 those libs, whether the app can be run on a target that has newer libs wit=
hout resbuild against a matched
 env. Seems that is not viable.<br>
</p>
</div>
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"x_divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" =
color=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Khem Raj &lt;raj.kh=
em@gmail.com&gt;<br>
<b>Sent:</b> Saturday, October 2, 2021 11:23:58 PM<br>
<b>To:</b> Lijun Chen<br>
<b>Cc:</b> yocto@lists.yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Shared lib symlinks in target image</font>
<div>&nbsp;</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt;">
<div class=3D"PlainText">On Sat, Oct 2, 2021 at 6:55 PM Lijun Chen &lt;lijc=
hen@blackberry.com&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt;<br>
&gt; When I build a yocto image, I added some packages into IMAGE_INSTALL, =
such as boost, thrift, etc. I notice in the target OS image, the shared lib=
s don't the symlinks. But in the SDK image, the symlinks are there. For exa=
mple,<br>
&gt;<br>
&gt; lrwxrwxrwx 1 root root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 22 Oct&nbsp=
; 2 16:41 libboost_filesystem-mt.so -&gt; libboost_filesystem.so<br>
&gt; lrwxrwxrwx 1 root root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 29 Oct&nbsp=
; 2 16:41 libboost_filesystem.so -&gt; libboost_filesystem.so.1.75.0<br>
&gt;<br>
&gt; Is there a way to add the symlinks to the target image as well?<br>
&gt;<br>
&gt;<br>
&gt; With the symlinks, I assume we can run an old application even the dep=
endent lib is a newer version?<br>
&gt;<br>
<br>
unversioned symlinks should not be used they are there to be used for<br>
linking during build time. Unless you need to do builds on targets you<br>
really do not need them<br>
so explain you usecase. Are you trying to build stuff on device ?<br>
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
&gt; View/Reply Online (#54934): <a href=3D"https://urldefense.com/v3/__htt=
ps://lists.yoctoproject.org/g/yocto/message/54934__;!!COg3wY07Hnb7!44p3yfVE=
nAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJORDalv1bA$">
https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/message/=
54934__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxV=
qOEHJORDalv1bA$</a>
<br>
&gt; Mute This Topic: <a href=3D"https://urldefense.com/v3/__https://lists.=
yoctoproject.org/mt/86035483/1997914__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muA=
Sh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJOTJ_1cQxQ$">
https://urldefense.com/v3/__https://lists.yoctoproject.org/mt/86035483/1997=
914__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqO=
EHJOTJ_1cQxQ$</a>
<br>
&gt; Group Owner: yocto&#43;owner@lists.yoctoproject.org<br>
&gt; Unsubscribe: <a href=3D"https://urldefense.com/v3/__https://lists.yoct=
oproject.org/g/yocto/unsub__;!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlch=
KqgoweZDAV8wx1sd8uvxVqOEHJOQieFL_-A$">
https://urldefense.com/v3/__https://lists.yoctoproject.org/g/yocto/unsub__;=
!!COg3wY07Hnb7!44p3yfVEnAD6rM-DM0muASh2wNizlchKqgoweZDAV8wx1sd8uvxVqOEHJOQi=
eFL_-A$</a>&nbsp; [raj.khem@gmail.com]<br>
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

--_000_7508347f66784a1487e4f20bf1ad89f0blackberrycom_--

