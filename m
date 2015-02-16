Return-Path: <kaiu@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05326E0074C; Mon, 16 Feb 2015 02:33:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kaiu[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C78EE00746
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 02:33:15 -0800 (PST)
Received: from mail-we0-f180.google.com ([74.125.82.180]) by mail.gmx.com
	(mrgmx102) with ESMTPSA (Nemesis) id 0LrqNe-1XROCd2SIo-013hYm for
	<yocto@yoctoproject.org>; Mon, 16 Feb 2015 11:33:13 +0100
Received: by mail-we0-f180.google.com with SMTP id k11so28343128wes.11
	for <yocto@yoctoproject.org>; Mon, 16 Feb 2015 02:33:12 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.181.12.5 with SMTP id em5mr45669382wid.84.1424082792871;
	Mon, 16 Feb 2015 02:33:12 -0800 (PST)
Received: by 10.194.39.169 with HTTP; Mon, 16 Feb 2015 02:33:12 -0800 (PST)
Date: Mon, 16 Feb 2015 11:33:12 +0100
Message-ID: <CAAKMwiqNP=rQqmDQkdNRiAx2jT1pA1s6Z2GNgSVr6zDzGdp-uQ@mail.gmail.com>
From: Kai Ulrich <kaiu@gmx.de>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Provags-ID: V03:K0:/G+e6YPUP7cQExs9ilXNV7n9H7Sjb5sth0ZWnh7jLqlJQeRp03h
	AmoMxOVsWl1USKt4QwSC2QD6VXyElFb1Fc7Kzjht5Y+saZuUEmyMJa0HFaitSdgrXnqlaDt
	Oywu2PoMiEjt6P0W3W7ZJpsGqujCBFxsuXZKJtiGJigCPh7215HxfarL6Mwmi0LkQZdEJW9
	JWr02NXZiWGMybV0lJQSw==
X-UI-Out-Filterresults: notjunk:1;
Subject: recipe with optional dependency and configuration.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: kaiu@gmx.de
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 16 Feb 2015 10:33:21 -0000
Content-Type: multipart/alternative; boundary=f46d043c7c58fffd36050f321c28

--f46d043c7c58fffd36050f321c28
Content-Type: text/plain; charset=UTF-8

Hi,

I'm new into yocto creating recipes.
After reading the Docu I feel confident with the basics.

So here my questions.

I want to create a recipe of smstools.

1. There is no repository (git / svn / cvs). There are sources to download.
http://smstools3.kekekasvi.com/index.php?p=packages
Q: In the philosophy of yocto / openembedded, is it better to create a own
git or use the original source package.

2. For OPTIONAL statistics you can add this feature
- by enable it in the src/Makefile
- Install  OSSP mm Shared Memory Library <http://www.ossp.org/>
- mmlib is not part of the yocto / openembedded. So it has to be added too.

Q: How can I structure the recipes to add the smstools easy.
Q: How can provide the optional statistics feature.


Friendly regrades
Kai
<http://www.ossp.org/>

--f46d043c7c58fffd36050f321c28
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi,<br><br></div>I&#39;m new into yocto cre=
ating recipes.<br></div>After reading the Docu I feel confident with the ba=
sics.<br><br></div>So here my questions.<br><div><br><div>I want to create =
a recipe of smstools. <br><br></div><div>1. There is no repository (git / s=
vn / cvs). There are sources to download. <br><a href=3D"http://smstools3.k=
ekekasvi.com/index.php?p=3Dpackages" target=3D"_blank">http://smstools3.kek=
ekasvi.com/index.php?p=3Dpackages</a><br></div><div>Q: In the philosophy of=
 yocto / openembedded, is it better to create a own git or use the original=
 source package.<br><br></div><div>2. For OPTIONAL statistics you can add t=
his feature <br>- by enable it in the src/Makefile<br>- Install=C2=A0 <a hr=
ef=3D"http://www.ossp.org/" target=3D"_blank">OSSP mm Shared Memory Library=
</a><br></div><div>- mmlib is not part of the  yocto / openembedded. So it =
has to be added too. <br></div><div><br>Q: How can I structure the recipes =
to add the smstools easy. <br></div><div>Q: How can provide the optional st=
atistics feature.<br><br><br></div><div>Friendly regrades<br></div><div>Kai=
 <br></div><div><a href=3D"http://www.ossp.org/" target=3D"_blank"></a></di=
v></div></div>

--f46d043c7c58fffd36050f321c28--
