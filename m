Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1C7AC004D4
	for <webhook@archiver.kernel.org>; Thu, 19 Jan 2023 18:00:52 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web10.52569.1674151243033813104
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Jan 2023 10:00:43 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=SNJjIVzF;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65, mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1674151243; x=1831831243;
  h=from:to:subject:date:mime-version;
  bh=47Gg+rCsovwZoAcAo4xZRzffOSnfQvlf4A3G+3SOIBU=;
  b=SNJjIVzFRk7WQ6pAT/KBv7YxbawNI0QTvAYL5U9/oywCr9aXNsLZjWtF
   qinKYlA24a+Nyb6FXSbG4v/GyPoTeCJurMV7i9vjV4qhhYDHY25MzsZAf
   a1ibqw7yr3+9JfZJ8b2IAXOK/OSPUAQKAyjvqvUx+6Pd7b7wpS6YS3H5I
   s=;
X-IPAS-Result: =?us-ascii?q?A2A7AwB5hMlj/wFUSQpaHgEBCxIMQAmBOwuBKoIIAoFvs?=
 =?us-ascii?q?xaBfg8BAQEBAQEBAQEIAUQEAQGEfAKFJyY0CQ4BAgQBAQEBAwIDAQEBAQEBA?=
 =?us-ascii?q?wEBBgEBAQEBAQYEAYEchS86DII4IoQwXgEMCWsfBwEEG4J3ghaBDKtagTQaA?=
 =?us-ascii?q?mWEcpxOgUCBZoclg04VhkBDkAAEmhVsgTt8gScOgUiBGgIJAhMrBzYDRB1AA?=
 =?us-ascii?q?wsHZgpANRZKKxobB4EIKigVAwQEAwIGEwMiAg0oMRQEKRMNJyZpCQIDIWYDA?=
 =?us-ascii?q?wQoLQkgAgEcByYkPAdWPQIPHzcGAwkDAh9PgSAkBQMLFSpHBAg2BQZREgIID?=
 =?us-ascii?q?xIPLEMOQjc0EwaBBgsOEQNQgU0Ec4EjV6JtoQCiJwcDg3CgVi4WlyUDkgKGD?=
 =?us-ascii?q?5E8IKdDAgQCBAUCFoFighVwgzhRFwKcf4EwAgcLAQEDCYsPgRQBAQ?=
IronPort-PHdr: A9a23:SAGkHhb3EM8z6oVDCkz3JKj/LTFN14qcDmcuAnoPtbtCf+yZ8oj4O
 wSHvLMx1gKPBNyDoKsc1KL/iOPJZy8p2d65qncMcZhBBVcuqP49uEgeOvODElDxN/XwbiY3T
 4xoXV5h+GynYwAOQJ6tL1LdrWev4jEMBx7xKRR6JvjvGo7Vks+7y/2+94fcbglWhDexe65+I
 AiqoQneq8UanYlvIbstxxXUpXdFZ+tZyWR0KFyJgh3y/N2w/Jlt8yRRv/Iu6ctNWrjkcqo7U
 LJVEi0oP3g668P3uxbDSxCP5mYHXWUNjhVIGQnF4wrkUZr3ryD3q/By2CiePc3xULA0RTGv5
 LplRRP0lCsKMSMy/WfKgcJyka1bugqsqRxhzYDJfIGbOvlwfqLBctwVXmdORNpdVy5bD4+gc
 4cDEewMNvtYoYnnoFsOqAOzCQerCuPozD9InWH50rMh0+g5DArIwRAgEMwQsHvKqtX+KbkfW
 v2xwKbG0DvPav1a0ir65YjTbhAuv++MUqx2ccbLzEkvEAXFjk6OpoP7JDOYzf8CvHKF4Op7V
 eOvkHInpB90oji03Msjlo7JhocMx13C6C52z5o7K8eiR05nfd6rDoFQtyeCOoV4TM4vX2Blt
 SQ7x7EYpJK2YisHxZQjyhPQZPGLboaG7xLsWuqMJTp1hnJodb2+ihqv70Wtzu7xW8qp3VpXo
 SRIlMTHuHMV1xHL98SLVuFx80Wv1DqV1A3e5ftILV0smabGN5It2LE9moQJvUjeAyP7nF/6g
 aCUe0gi5+Om8f7oYq/8qZ+ZL4J0jwb+PbkwlcGnGuQ4NxQOX3Cc+eShyL3v5U35T6tOjv0xi
 qTZrJ/bKt4dpq68GA9Y1pov5wqjAzu7ytgYgGIHIEhedx2dkYfpIFHPIOvkDfihhlSsiy1ny
 OzBPr3kGpnNL37Dn6n9fbtl9kJQ1BA/wNJR6p5OCbwML+j/VlLpuNzdFBA5Mgi0w+j9CNV60
 4MTQXmPArOHP6PMr1CI4PgjI+yLZI8TozbyNeYq5+X1gHAig1ASY7Kp3JsMaHCkAPtmJl6Zb
 WDwjdcGFGcGpgw+Q/fyh12YTTFTf2qyX7475jwjFY6qFZ3DSZy1gLydwCe7GYVbZ2BBCl+QD
 XfocJ6JW/MNaCKJPs9hiSYIVLimS4A9yRGusxf6y6BgLurW5CIXqY7j2MJy5+3JmhFhvQBzW
 o6M1GqRSElwn3gUXHkn26tjplRnzVWO2rQ+hOZXX5QH9vRCTgASMZ/H0/c8Gtf5RgXZZNCLR
 V26BNK8DmdiYMg2xopERkF7ANivlVSL5DanHbIT35fDRKEPs+iUi2PtKthwzTDD0686glQ9a
 sFGOHa3nbJy8hOVDInMxRbK3522fLgRiXaevFyIynCD6RkwbQ==
IronPort-Data: A9a23:UZ676atWcXgITNx46hvQpiwUfOfnVN5cMUV32f8akzHdYApBsoF/q
 tZmKWjTM/uOazOkLtlwb4W190gOuseGmNMxSAs4pH1kQS8VgMeUXt7xwmUcn8+xwm8vaGo9s
 q3yv/GZdJhcokf0/0vrav64xZVF/fngqoDUUYYoAQgsA147IMsdoUg7wbVh29c52YLR7z6l4
 LseneWOYDdJ5BYpagr424rbwP+4lK2v0N+wlgVWicFj5DcypVFMZH4sDf3Zw0/Df2VhNrXSq
 9AvbV2O1jixEx8FUrtJm1tgG6EAaua60QOm0hK6V0U+6/RPjnRa70o1CBYTQW5FgAyCv/5w8
 Ypc8rOSUTcuFKfNk+tIBnG0EwkmVUFH0KPXKH66qp3LlxWfNWb3hf9nAVonJpEV//0xCmZLn
 RAaAGlVKE/YwbLqhuvTpupE36zPKOHwII4Bt3cmyDbfFvsrWrjJSqjR9MRE0TIrwMtJGJ4yY
 uJEMWE1NESfOXWjPH8rNoNntbyJoUD2dmRJlUi+lfANuFfcmVkZPL/FdYC9lsaxbdRSlVqfj
 mbH5HjiRAAdP8CY0SCC8H+nmqnIhyyTZW4JPOTgsKExxg3PgDV75AAqaGZXaMKR0iaWM++z4
 WRIksbyhcDeLHCWc+Q=
IronPort-HdrOrdr: A9a23:2UdV9apobAbFentvU95BCOoaV5o8eYIsimQD101hICG9E/bo9P
 xG+c5xvyMc5wxhOk3I5urwXZVoLUmwyXcX2+ks1NWZMjUO0VHARL2Ki7GP/9SKIUzDH4Bmup
 uIepIObOHNMQ==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=Sophos;i="5.97,229,1669075200"; 
   d="scan'208,217";a="50320872"
X-IronPort-AV: E=Sophos;i="5.97,229,1669075200"; 
   d="scan'208,217";a="149417133"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: linux script command
Thread-Topic: linux script command
Thread-Index: AdksL6C6NmGpQng9R5+Cl6A2LAez3g==
Date: Thu, 19 Jan 2023 18:00:40 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.42.119.47]
Content-Type: multipart/alternative;
	boundary="_000_4826cc42c923419da9c7c967bbe115ecbaesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 Jan 2023 18:00:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59022
Message-Id: <20230119180052.B1C7AC004D4@smtp.lore.kernel.org>

--_000_4826cc42c923419da9c7c967bbe115ecbaesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Does Yocto support the Linux script command, and how would I enable it for =
kernel use ?

I am currently using Zeus release...

Thanks,
Steve

--_000_4826cc42c923419da9c7c967bbe115ecbaesystemscom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
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
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
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
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Does Yocto support the Linux script command, and how=
 would I enable it for kernel use ?
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently using Zeus release&#8230;<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_4826cc42c923419da9c7c967bbe115ecbaesystemscom_--

