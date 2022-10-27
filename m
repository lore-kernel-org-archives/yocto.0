Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E21E8C433FE
	for <webhook@archiver.kernel.org>; Thu, 27 Oct 2022 00:59:55 +0000 (UTC)
Subject: patching of device tree from layer
To: yocto@lists.yoctoproject.org
From: ron.eggler@mistywest.com
X-Originating-Location: Vancouver, British Columbia, CA (24.87.53.111)
X-Originating-Platform: Linux Chrome 105
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 26 Oct 2022 17:59:51 -0700
Message-ID: <nSWO.1666832391012021941.SCBQ@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Xenh9kgvFL0t14erwBR0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Oct 2022 00:59:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58421

--Xenh9kgvFL0t14erwBR0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I'm new here and relatively new to working with Yocto (creating my own laye=
rs anyways). I'm working on developing a SOM platform based on Renesas RZ s=
eries of MPUs.

I've followed the guide on Digikey by Shawn Hymel to learn about device tre=
e patching ( https://www.digikey.ca/en/maker/projects/intro-to-embedded-lin=
ux-part-5-how-to-enable-i2c-in-the-yocto-project/6843bbf9a83c4c96888fccada1=
e7aedf ). I assume many of you know about it as well.
It does a good job in describing how to add changes in a dts file. In the e=
xample, a i2c5 node is added in the dts, overwriting what had been defined =
in the original dtsi file and I'm doubting the cleanliness of it.
Would it not be better, to patch the node in the dtsi file and add the requ=
ired changes there instead of adding them to the dts file essentially overw=
riting what was set previously? I imagine this will essentially lead to two=
 nodes being defined with the same name, the latter just overwriting the fo=
rmer, is that so?
How would one go about patching the dtsi and making sure that the patch is =
applied before ther file is included?

Thank you all,
Mistyron

--Xenh9kgvFL0t14erwBR0
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi,</p>
<p>I'm new here and relatively new to working with Yocto (creating my own l=
ayers anyways). I'm working on developing a SOM platform based on Renesas R=
Z series of MPUs.</p>
<p>I've followed the guide on Digikey by Shawn Hymel to learn about device =
tree patching (<a href=3D"https://www.digikey.ca/en/maker/projects/intro-to=
-embedded-linux-part-5-how-to-enable-i2c-in-the-yocto-project/6843bbf9a83c4=
c96888fccada1e7aedf" target=3D"_blank" rel=3D"noopener">https://www.digikey=
.ca/en/maker/projects/intro-to-embedded-linux-part-5-how-to-enable-i2c-in-t=
he-yocto-project/6843bbf9a83c4c96888fccada1e7aedf</a>). I assume many of yo=
u know about it as well.&nbsp;<br />It does a good job in describing how to=
 add changes in a dts file. In the example, a i2c5 node is added in the dts=
, overwriting what had been defined in the original dtsi file and I'm doubt=
ing the cleanliness of it. <br />Would it not be better, to patch the node =
in the dtsi file and add the required changes there instead of adding them =
to the dts file essentially overwriting what was set previously? I imagine =
this will essentially lead to two nodes being defined with the same name, t=
he latter just overwriting the former, is that so?<br />How would one go ab=
out patching the dtsi and making sure that the patch is applied before ther=
 file is included?<br /><br />Thank you all,<br />Mistyron</p>

--Xenh9kgvFL0t14erwBR0--

