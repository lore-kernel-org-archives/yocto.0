Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBCBBC433EF
	for <webhook@archiver.kernel.org>; Thu, 24 Mar 2022 16:57:11 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web09.13450.1648141030210240776
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Mar 2022 09:57:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=Az/kZ7Ru;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1648141030; x=1805821030;
  h=from:to:subject:date:mime-version;
  bh=73FcMzaPMmHwq4Ttm2daBPDHrhDlPybtNWJhVCG7QtA=;
  b=Az/kZ7RuCDw5W86O9Nja1FKyYsFxhS2Tr4OAyVSw5eMnh66h40Nr/VlA
   6TWR9oy9at2BUS6SdIruf7/5sG1tPjeGUq/a3hix/oDaMUK4xZoL//zA7
   FSLiu8dL5f8WEL60VPkYk9yI8BuDvbj8oSRosAThgLDVWraoFhZiW/27s
   M=;
IronPort-SDR: 
 ZTWkN5JX8aa6HL5+glf8IHgwflBPHSpnO6AzPDBqNLPLQ4NjJpIqhoOUxxs4WbLvFEwIYcV65W
 MnYcTxG5Qosg==
IronPort-PHdr: =?us-ascii?q?A9a23=3AUtpCdx08ScT0fzjPsmDOOwQyDhhOgF0UFjAc5?=
 =?us-ascii?q?pdvsb9SaKPrp82kYBaFo6wx3RSYBc3y0LFts6LuqafuWGgNs96qkUspV9hyb?=
 =?us-ascii?q?SIDktgchAc6AcSIWgXRJf/uaDEmTowZDAc2t360PlJIF8ngelbcvmO97SIIG?=
 =?us-ascii?q?hX4KAF5Ovn5FpTdgsipyey+4YDfbgpMiTayZb5+MAi9oBnMuMURnYZsMLs6x?=
 =?us-ascii?q?AHTontPdeRWxGdoKkyWkh3h+Mq+/4Nt/jpJtf45+MFOTav1f6IjTbxFFzsmK?=
 =?us-ascii?q?Hw65NfqtRbYUwSC4GYXX3gMnRpJBwjF6wz6Xov0vyDnuOdxxDWWMMvrRr0yR?=
 =?us-ascii?q?D+s7bpkSAXwhSkHKTA37X3XhMJzgqJavB2uqAdyzJTIbIGXLvdyYr/Rcc0cS?=
 =?us-ascii?q?GFcXshRTStBAoakYocBCOQBOuBYr5LjqFQQthuyHRSnCv7zyjBWmH/5w6s62?=
 =?us-ascii?q?Pk/HArb2AAvEc8AvHHaoN7oM6oSSvy1w7fWzTrdafNawzL96I/OchA6v/6DQ?=
 =?us-ascii?q?6lwfNHKxkY1CQzFlVWRqZf5PzyL0+QNqHKX4PZnVeKqkmMqrRx6rTezyMk2k?=
 =?us-ascii?q?IbJmp4VxU7e9SV/2Is7K9O1RVJ6bNOmEZZcqTyWOpV1T84iR2xltyk3xqAIt?=
 =?us-ascii?q?5O7cyYG1ZAqyhzfZvGIcoWE/wzuWeKSLDp7mX9pZb2xihCv+kaj0u3xTtS43?=
 =?us-ascii?q?EpQoidHnNTArHMA2hPJ5sSaUvdx41ut1SyA2g3c8O1JLlo4mbfbJpMn37U+j?=
 =?us-ascii?q?IAcsV7ZES/zgEj2iaiWeVg69eWw8OTnZ6nmpoebN49plgHyKqQuldK7AeQ/K?=
 =?us-ascii?q?gUOQ2ea9v661L3m5k30RKlGguEqnqXEqpzaON8bqrSiDABPzIkj8Ba+Dyy60?=
 =?us-ascii?q?NsGmHkHN0hJdw6Aj4jsI13OIfb4Aumjg1m0jTtn2+rKM7/vD5nXLXXOn63tc?=
 =?us-ascii?q?atl505Z0gUzzNRf55xOCrEGJfL+QlTxtMDGAR8nLQO0xfzrCNB61oMYQmKAH?=
 =?us-ascii?q?LGWMLjJvFCT/O0gPfKMZY8OuDbhNfcl4uXugWUlll8aeKmlxZ0XZ2ugEfR8P?=
 =?us-ascii?q?0qZeWbsgssGEWoSowYyVPbqh0GaUT5Pe3ayWLox5zE8CI26EYfDQZuggLiA3?=
 =?us-ascii?q?CegAp1WfXpKC1CLEXj0a4WEXO8MaDiVIs9jjDMLSaShR5Um1RG0uw+pg4Zge?=
 =?us-ascii?q?6DF/SYEsrrn1cNp/KvCkhou8iRuCMaQ2H3LSHt71CtcVjg9wKdXpU1m1kzFw?=
 =?us-ascii?q?K9zn/tAD9tR6vhVFAAgOsiP4fZ9DoW4fwXHZdqEUxLuecmrHzw3Bvl5g+I1I?=
 =?us-ascii?q?gw1T86+gw7O2WyvBLkOmrGQLJY9/7nNxGT8It07wHHDgvpyx2I6S9dCYDX1z?=
 =?us-ascii?q?pV08BLeUtahrg=3D=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AwBAAWojxi/wFUSQpagQkJgVGBIYI?=
 =?us-ascii?q?FgWyyO4F8CwEBAQEBAQEBAQgBQwQBAYlWJjYHDgECBAEBARIBAQYBAQEBAQc?=
 =?us-ascii?q?EAYEbhWkMgjUihB9eAQwJayYBBBuCfYIOr1aBMxoCZYRrhRAJAYEygWaFUIM?=
 =?us-ascii?q?BhiBDj0EEmDKDE6BeoGsHA4NJn2EwFZZmA5FXhWyQbyCmOQIEAgQFAhaBZwG?=
 =?us-ascii?q?CDnCDOlAXAo47Fo4ugS0CBgsBAQMJjzCBEgEB?=
X-IPAS-Result: =?us-ascii?q?A2AwBAAWojxi/wFUSQpagQkJgVGBIYIFgWyyO4F8CwEBA?=
 =?us-ascii?q?QEBAQEBAQgBQwQBAYlWJjYHDgECBAEBARIBAQYBAQEBAQcEAYEbhWkMgjUih?=
 =?us-ascii?q?B9eAQwJayYBBBuCfYIOr1aBMxoCZYRrhRAJAYEygWaFUIMBhiBDj0EEmDKDE?=
 =?us-ascii?q?6BeoGsHA4NJn2EwFZZmA5FXhWyQbyCmOQIEAgQFAhaBZwGCDnCDOlAXAo47F?=
 =?us-ascii?q?o4ugS0CBgsBAQMJjzCBEgEB?=
X-IronPort-AV: E=Sophos;i="5.90,207,1643673600";
   d="scan'208,217";a="462718286"
IronPort-SDR: 
 QUeFzSUs81JyFoCsW2V4OBVZaLvfdfLIAKM9UYuFBN/gjl+3VWctY3WRjTvkPEf6iPo0PlpJGk
 E/wRSBtAOf+8bJyIT47m0HDU/GL1jBbmXNy0CBy4WNUDbUudkr+4vzfFJ3qDDf1zGqxK+aDHCN
 tJ6/ATUk7cmC61kHw6vl+XWvOgGwO3V+ObsO9sPz2I27m52kX5qRK+4fAHc4iBDdil+Gl/g+vR
 63yiX7ssfLF2fD/+QUN90U5JC1MPBKLbV3gP5Debx2MFO5N8CAsDtjAbrT3uGeC6d9StI1oRKr
 HaA=
IronPort-Data: =?us-ascii?q?A9a23=3AG1CxIKwBUJT11a1XRM16t+f9xCrEfRIJ4+Muj?=
 =?us-ascii?q?C+fZmUNrF6WrkUEzGMbXGzXOPaNYWH0co9+bo+ypklTvJ/UmNdgQAY5+3w8F?=
 =?us-ascii?q?HgiRejtXI/AdhiqV8+xwmwvdK/shiknQoGowPscEzmN/n9BDpC79SMmjfrSG?=
 =?us-ascii?q?uKmYAL5EnsZqTFMGX5JZS1Ly7ZRbr5A2bBVMivV0T/Ai5S31GyNh1aYBlkpB?=
 =?us-ascii?q?5er83uDihhTVAQw5TTSbdgT1LPXeuJ84Jg3fcldJFOgKmVY83LTq08uEdiEE?=
 =?us-ascii?q?m3lExcFUrtJk57UVmEvee6PZVXQzHVRX6SmhBsEvCs1zqI9N/Nab0pL49mLt?=
 =?us-ascii?q?4kpjo4S88XuEEFwZf2kdOc1CnG0FwllIaBY9bmBJH+5qsGe1GXMenb30u5yA?=
 =?us-ascii?q?UQte4Yf/46bBEkXrqRAdGlUPk/ra+WehejTpvNXrtUkJ9XsFIceoW17iyDeB?=
 =?us-ascii?q?uohWYrEQajB+ZlfxjhYuyzkNZ4yfOIWbTZqd0SdO0ARfFgQDJ46muTunH74b?=
 =?us-ascii?q?zleq1vTo6cri1U/BTdZiNDFWOc5sPTQLSmNonulmw=3D=3D?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3A4n/fcK2hkfcoyq0FaHPqOAqjBLAkLtp133?=
 =?us-ascii?q?Aq2lEZdPUCSL39qynIpoV46faUskdzZJhOo7u90cW7K080sKQb3WBzB9eftW?=
 =?us-ascii?q?vd1FdAd7sSircKqgeIcxEWtNQy6U4KSclD4bPLYGSTg67BkWyFL+o=3D?=
X-IronPort-AV: E=Sophos;i="5.90,207,1643673600";
   d="scan'208,217";a="130041187"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: CVE patch updates
Thread-Topic: CVE patch updates
Thread-Index: Adg/nxH4gJNzryebTbih43oNBtV1HA==
Date: Thu, 24 Mar 2022 16:56:07 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_fb25ef63c0df4b9ea8ca9fb9a98c6e16baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Mar 2022 16:57:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56552
Message-Id: <20220324165711.BBCBBC433EF@smtp.lore.kernel.org>

--_000_fb25ef63c0df4b9ea8ca9fb9a98c6e16baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



I am currently building in cve-check to see what is reported, and I was cur=
ious if Yocto might provide any CVE based patch repositories ?

Is there a yocto page somewhere that goes over this side of things ?,
I did not see much in the mega-manual... I am running on zeus based platfor=
ms (for both armarch64 and x86_64).

Thanks,
Steve

--_000_fb25ef63c0df4b9ea8ca9fb9a98c6e16baesystemscom_
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am currently building in cve-check to see what is =
reported, and I was curious if Yocto might provide any CVE based patch repo=
sitories ?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there a yocto page somewhere that goes over this =
side of things ?,
<o:p></o:p></p>
<p class=3D"MsoNormal">I did not see much in the mega-manual&#8230; I am ru=
nning on zeus based platforms (for both armarch64 and x86_64).<o:p></o:p></=
p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_fb25ef63c0df4b9ea8ca9fb9a98c6e16baesystemscom_--

