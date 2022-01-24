Return-Path: <praveen44com@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7BCC433EF
	for <webhook@archiver.kernel.org>; Mon, 24 Jan 2022 18:04:26 +0000 (UTC)
Subject: Custom SDK generation from YoctoSDK #sdk
To: yocto@lists.yoctoproject.org
From: "Praveen" <praveen44com@gmail.com>
X-Originating-Location: Mumbai, Maharashtra, IN (52.95.75.26)
X-Originating-Platform: Mac Firefox 91
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 24 Jan 2022 10:04:25 -0800
Message-ID: <stmw.1643047465432853711.lKwh@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="dzvSvmBLQ4p989Msrz90"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 24 Jan 2022 18:04:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55956

--dzvSvmBLQ4p989Msrz90
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am looking for Custom SDK with filtered Header files/libraries based on s=
ome rules/approvals. It means not all files from YoctoSDK will be packaged =
in the CustomSDK.

What is the mechanism or approach where we can pull only those approved hea=
der files & libraries from YoctoSDK and package as Customized SDK tar?

Is there a way we can fetch those approved header files from YOCTO SDK and =
filter it?

I am thinking like creating subset versioned module recipe and specify thos=
e approved header files and package only those files. Is there any better m=
echanism on packaging or filtering the SDK based on some rules to filter so=
me header files?

Like for example in YoctoSDK, we have 2 modules moduleA (A1.h, A2.h,A3.h an=
d libA.so), moduleB ( B1.h, B2.h, B3.h and libB.so)
Lets say A3.h & B3.h are not approved in my Custom SDK, then in final Custo=
mer SDK we will only package
moduleA (A1.h, A2.h and libA.so), moduleB (B1.h, B2.h, and libB.so)

I want to keep YoctoSDK without any filters, so that A3.h/B3.h can be used =
for internal purposes without any issue.

--dzvSvmBLQ4p989Msrz90
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">
<div>I am looking for Custom SDK with filtered Header files/libraries based=
 on some rules/approvals. It means not all files from YoctoSDK will be pack=
aged in the CustomSDK.</div>
</div>
<div>&nbsp;</div>
<div>What is the mechanism or approach where we can pull only those approve=
d header files &amp; libraries from YoctoSDK and package as Customized SDK =
tar?</div>
<div>&nbsp;</div>
<div>Is there a way we can fetch those approved header files from YOCTO SDK=
 and filter it?<br /><br />I am thinking like creating subset versioned mod=
ule recipe and specify those approved header files and package only those f=
iles. Is there any better mechanism on packaging or filtering the SDK based=
 on some rules to filter some header files?<br /><br />Like for example in =
YoctoSDK, we have 2 modules moduleA (A1.h, A2.h,A3.h and libA.so), moduleB =
<span style=3D"color: #000000;"><span style=3D"color: #888888;">(</span>B1.=
h, B2.h, B3.h and libB.so)</span><br /><span style=3D"color: #000000;">Lets=
 say A3.h &amp; B3.h are not approved in my Custom SDK, then in final Custo=
mer SDK we will only package </span><br /><span style=3D"color: #000000;">m=
oduleA (A1.h, A2.h and libA.so), moduleB (B1.h, B2.h, and libB.so)</span><b=
r /><span style=3D"color: #888888;"><span style=3D"color: #888888;"><br /><=
span style=3D"color: #000000;">I want to keep YoctoSDK without any filters,=
 so that A3.h/B3.h can be used for internal purposes without any issue.</sp=
an><br /></span></span></div>

--dzvSvmBLQ4p989Msrz90--

