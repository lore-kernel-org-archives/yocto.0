Return-Path: <terry.farnham@quanergy.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80A0EE0086B; Tue, 22 Mar 2016 16:11:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_05,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0463]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1FCFE006CA
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 16:11:35 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id bc4so175112761lbc.2
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 16:11:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=quanergy-com.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:thread-index:date:message-id:subject:to;
	bh=P5oqFWjCYR0C4IOVGx0ks0uzc3IWmjymE9g2WsE9Izo=;
	b=omEkeO9lHSHC/yDIS+XeSbmyYS6hHeCCRV6X+sIXFIMn9L3QeaxbJxPmJ5aY8QeWG4
	nkyF2RRbJU/FEP7aUE/+NjZqklov8dFVO+CCdxasZwtsodiqnu9hpRDj9lIZ535aKhfh
	8ZsDcFygVAprYk+qInKVxGy8O+4a/zizK+UdBZKwoPbrRfZmLnTwmdtFedoYzhFWRz/l
	GPwodjqpq2Os31q78MaYbin7/a7G2Tovg2Wlffog43ASt1EG1hWXk+WWkY14ImMBRuVX
	GSZKl0h1H9i46+jHcG0fzal1rK6Td1z6MmdhkysX+OExaxJlVQ0jIejcyCF7WO+JfpRi
	cLig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:mime-version:thread-index:date:message-id
	:subject:to;
	bh=P5oqFWjCYR0C4IOVGx0ks0uzc3IWmjymE9g2WsE9Izo=;
	b=X17J+rjZ94U4r8u6/2UaqhtmTXuiIO9jKgHyV+qlM36pZgWsMhfR79/oBKP6IVKnV0
	Vr12qExmIoAX0tJeoTc4iQ4ngXGjcPULDE68I3QiMVoWnrj9NliKl85YgpCU0k8jkqBS
	UPV+zaIGIuXPldQGq7ZGd1bT4G8o8E2F3pOpMsRhioikWAGAdSA5z3RUqqSZcbwXesxO
	UEfsCr84Yvnb8+tJw6t2diRRDwOWpb0fHMmnJA45UMELVcoLIbW70pa4MwdRqFKFEvLi
	UdqUNaTUicjlu46ti6Zn9BfqKEopius1WMPBkul42O163iBaNjWsZIKHQDu64CWfwFLi
	gn1g==
X-Gm-Message-State: AD7BkJJO9WWl+rt3rELQY4pq3nwzDkHkPcxFstDZ6kWEqmAMtmU33XMZ9ezRNCHHYc+IjPnmJEZh47vmRCiyENbO
X-Received: by 10.112.201.133 with SMTP id ka5mr14294982lbc.1.1458688293970;
	Tue, 22 Mar 2016 16:11:33 -0700 (PDT)
From: Terry Farnham <terry.farnham@quanergy.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 14.0
Thread-Index: AdGEj8lyO0gmEHR+RtWx+FFaZZuKuA==
Date: Tue, 22 Mar 2016 16:11:33 -0700
Message-ID: <e221bcaf08dd2b667b36774e752cdf20@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 23 Mar 2016 08:06:25 -0700
Subject: How to configure SDK_POST_INSTALL_COMMAND
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Mar 2016 23:11:38 -0000
Content-Type: multipart/alternative; boundary=001a11c2692699bb95052eab55a2

--001a11c2692699bb95052eab55a2
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,



Looking through the populate_sdk_base class, I found
=E2=80=9CSDK_POST_INSTALL_COMMAND=E2=80=9D.  I am very interested in what t=
his feature
makes available, but all of my efforts to use it have failed.  Does anyone
have any information on how I should configure and use this variable?



Thanks,



Terry Farnham

--001a11c2692699bb95052eab55a2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; charset=
=3Dus-ascii"><meta name=3D"Generator" content=3D"Microsoft Word 14 (filtere=
d medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div =
class=3D"WordSection1"><p class=3D"MsoNormal">Hello,</p><p class=3D"MsoNorm=
al">=C2=A0</p><p class=3D"MsoNormal">Looking through the populate_sdk_base =
class, I found =E2=80=9CSDK_POST_INSTALL_COMMAND=E2=80=9D.=C2=A0 I am very =
interested in what this feature makes available, but all of my efforts to u=
se it have failed.=C2=A0 Does anyone have any information on how I should c=
onfigure and use this variable?</p><p class=3D"MsoNormal">=C2=A0</p><p clas=
s=3D"MsoNormal">Thanks,</p><p class=3D"MsoNormal">=C2=A0</p><p class=3D"Mso=
Normal">Terry Farnham</p></div></body></html>

--001a11c2692699bb95052eab55a2--
