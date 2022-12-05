Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 17BB3C4332F
	for <webhook@archiver.kernel.org>; Mon,  5 Dec 2022 16:23:06 +0000 (UTC)
Subject: How to maintain meta layer with different versions of recipes?
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Mysore, Karnataka, IN (150.129.88.138)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 05 Dec 2022 08:22:59 -0800
Message-ID: <xLrY.1670257379005960532.pyUD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7gluOuXJEwl90h07zRW1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 05 Dec 2022 16:23:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58728

--7gluOuXJEwl90h07zRW1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I have a generic use-case of maintaining the meta layer. I have a custom me=
ta layer. But this layer serves multiple customers who share most of the re=
cipes and files. But some files are customer-specific. Currently, I am usin=
g different repos and tags in gitlab but regularly updating them is tedious=
 and time-consuming. Rather I am think to create to create a generic meta l=
ayer and use Yocto features/variables (if existing) to maintain different v=
ersions. For example, a recipe test.bb has FILES_${PN} +=3D " /lib/systemd/=
system/test.service \ "
But the contents of "test.service" is customer-specific and different versi=
ons has to be maintained. So, is there any way to make this generic? Can th=
is be done using .bbappend files?

I assume this might be the use case of many people..

Thanks in advance

--7gluOuXJEwl90h07zRW1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I have a generic use-case of maintaining the meta layer. =
I have a custom meta layer. But this layer serves multiple customers who sh=
are most of the recipes and files. But some files are customer-specific. Cu=
rrently, I am using different repos and tags in gitlab but regularly updati=
ng them is tedious and time-consuming. Rather I am think to create to creat=
e a generic meta layer and use Yocto features/variables (if existing) to ma=
intain different versions. For example, a recipe test.bb has <span style=3D=
"font-family: Menlo, Monaco, Consolas, Courier New, monospace;"><span style=
=3D"font-size: 13px; background-color: #f5f5f5;">FILES_${PN} +=3D "</span><=
/span><span style=3D"background-color: #f5f5f5; font-size: 13px; font-famil=
y: Menlo, Monaco, Consolas, 'Courier New', monospace;">/lib/systemd/system/=
test.service \ "<br /></span>
<div>But the contents of "test.service" is customer-specific and different =
versions has to be maintained. So, is there any way to make this generic? C=
an this be done using .bbappend files?<br /><br />I assume this might be th=
e use case of many people..<br /><br />Thanks in advance</div>

--7gluOuXJEwl90h07zRW1--

