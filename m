Return-Path: <rpaluri@codeaurora.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80144C433F5
	for <webhook@archiver.kernel.org>; Wed, 27 Oct 2021 10:52:38 +0000 (UTC)
Received: from m43-7.mailgun.net (m43-7.mailgun.net [69.72.43.7])
 by mx.groups.io with SMTP id smtpd.web09.10047.1635331955323966359
 for <yocto@lists.yoctoproject.org>;
 Wed, 27 Oct 2021 03:52:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=TFmPAIhG;
 spf=pass (domain: mg.codeaurora.org, ip: 69.72.43.7,
 mailfrom: bounce+38e253.be9e4a-yocto=lists.yoctoproject.org@mg.codeaurora.org)
DKIM-Signature: a=rsa-sha256; v=1; c=relaxed/relaxed; d=mg.codeaurora.org;
 q=dns/txt;
 s=smtp; t=1635331957; h=Content-Type: MIME-Version: Message-ID: Date:
 Subject: To: From: Sender;
 bh=fna2+fB43PeN//kWx1qknkcVtXKcNraxdeb4oJ9HUto=;
 b=TFmPAIhG8DIkxUBFCSXivI9/600xqjD0GWzi51KMqX31PgnYsg1szyb6VQgniKrS/M0tGQcx
 igp2BsBn156lK8MsjB7OVul7X/fDafi7IbNnJnM7S2b1fijf95PcA0HcVdNxWVzB8H1Fysfs
 /0yzYl/NyctqZqDW5gWIbLEf9ZE=
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: 
 WyIxNWVjOSIsICJ5b2N0b0BsaXN0cy55b2N0b3Byb2plY3Qub3JnIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n02.prod.us-west-2.postgun.com with SMTP id
 61792f5f5ca800b6c15574c8 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Wed, 27 Oct 2021 10:52:15
 GMT
Sender: rpaluri=codeaurora.org@codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id E1878C43460; Wed, 27 Oct 2021 10:52:14 +0000 (UTC)
Received: from rpaluri1 (unknown [136.185.63.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: rpaluri)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 51081C4338F;
	Wed, 27 Oct 2021 10:52:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 smtp.codeaurora.org 51081C4338F
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: aws-us-west-2-caf-mail-1.web.codeaurora.org;
 spf=fail smtp.mailfrom=codeaurora.org
From: <rpaluri@codeaurora.org>
To: <automated-testing@lists.yoctoproject.org>,
	<yocto@lists.yoctoproject.org>
Subject: BusyBox pTest failure
Date: Wed, 27 Oct 2021 16:22:09 +0530
Message-ID: <01f601d7cb20$b3551a90$19ff4fb0$@codeaurora.org>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_01F7_01D7CB4E.CD0E40F0"
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AdfLHg654WKSQRSaTyOJwXKiOZEYEA==
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 27 Oct 2021 10:52:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55171

This is a multipart message in MIME format.

------=_NextPart_000_01F7_01D7CB4E.CD0E40F0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi, 

    We are executing busybox pTests and we see that the test case execution
stops at md5sum test case.

We analyzed and see that the execution gets stuck here
<https://github.com/sailfishos-mirror/busybox/blob/master/testsuite/md5sum.t
ests#L29>  at Line no 29.

 

Below are the relevant code lines:

Line no. 28: text="The quick brown fox jumps over the lazy dog"

Line no. 29: text=`yes "$text" | head -c 9999`

 

I executed above two lines on my host machine and the I get the shell prompt
back but when executed on target machine, I'm not getting the shell prompt,
it gets stuck.

/usr/lib/busybox/ptest # text="The quick brown fox jumps over the lazy dog"

/usr/lib/busybox/ptest # text=`yes "$text" | head -c 9999`

<<get stuck here indefinitely and I don't get the shell prompt>>

 

I modified Line no. 29 as below (removed " around $text) and the test case
execution proceeds further with "yes: Broken Pipe" error. With the same
modification, I don't see this error on my host machine though.

Line no. 29: text=`yes $text | head -c 9999`

 

/usr/lib/busybox/ptest # text="The quick brown fox jumps over the lazy dog"

/usr/lib/busybox/ptest # text=`yes $text | head -c 9999`

yes: Broken pipe

 

My host machine uses Bash as my default shell where as my target uses
busybox sh as my default shell. Does this make any difference?

Any pointers on this will be appreciated.

 

Thanks,

Ravi

 


------=_NextPart_000_01F7_01D7CB4E.CD0E40F0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72" style=3D'word-wrap:break-word'><div =
class=3DWordSection1><p class=3DMsoNormal>Hi, <o:p></o:p></p><p =
class=3DMsoNormal>&nbsp;&nbsp;&nbsp;&nbsp;We are executing busybox =
pTests and we see that the test case execution stops at md5sum test =
case.<o:p></o:p></p><p class=3DMsoNormal>We analyzed and see that the =
execution gets stuck <a =
href=3D"https://github.com/sailfishos-mirror/busybox/blob/master/testsuit=
e/md5sum.tests#L29">here</a> at Line no 29.<o:p></o:p></p><p =
class=3DMsoNormal><i><o:p>&nbsp;</o:p></i></p><p =
class=3DMsoNormal><i>Below</i> are the relevant code =
lines:<o:p></o:p></p><p class=3DMsoNormal>Line no. 28: =
<i>text=3D&quot;The quick brown fox jumps over the lazy =
dog&quot;<o:p></o:p></i></p><p class=3DMsoNormal>Line no. 29: =
<i>text=3D`yes &quot;$text&quot; | head -c 9999`<o:p></o:p></i></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I executed =
above two lines on my host machine and the I get the shell prompt back =
but when executed on target machine, I&#8217;m not getting the shell =
prompt, it gets stuck.<o:p></o:p></p><p =
class=3DMsoNormal><i>/usr/lib/busybox/ptest # text=3D&quot;The quick =
brown fox jumps over the lazy dog&quot;<o:p></o:p></i></p><p =
class=3DMsoNormal><i>/usr/lib/busybox/ptest # text=3D`yes =
&#8220;$text&#8221; | head -c 9999`<o:p></o:p></i></p><p =
class=3DMsoNormal>&lt;&lt;get stuck here indefinitely and I don&#8217;t =
get the shell prompt&gt;&gt;<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal>I modified =
Line no. 29 as below (removed &#8220; around $text) and the test case =
execution proceeds further with &#8220;<i>yes: Broken Pipe</i>&#8221; =
error. With the same modification, I don&#8217;t see this error on my =
host machine though.<o:p></o:p></p><p class=3DMsoNormal>Line no. 29: =
<i>text=3D`yes $text | head -c 9999`<o:p></o:p></i></p><p =
class=3DMsoNormal><i><o:p>&nbsp;</o:p></i></p><p =
class=3DMsoNormal><i>/usr/lib/busybox/ptest # text=3D&quot;The quick =
brown fox jumps over the lazy dog&quot;<o:p></o:p></i></p><p =
class=3DMsoNormal><i>/usr/lib/busybox/ptest # text=3D`yes $text | head =
-c 9999`<o:p></o:p></i></p><p class=3DMsoNormal><i>yes: Broken =
pipe<o:p></o:p></i></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><b>My host machine uses Bash as my default shell where =
as my target uses busybox sh as my default shell. Does this make any =
difference?<o:p></o:p></b></p><p class=3DMsoNormal>Any pointers on this =
will be appreciated.<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal>Ravi<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>
------=_NextPart_000_01F7_01D7CB4E.CD0E40F0--


