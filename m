Return-Path: <usa_butt@hotmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E89C433F5
	for <webhook@archiver.kernel.org>; Mon,  7 Mar 2022 12:05:39 +0000 (UTC)
Subject: Two DSI ports and only one fb0 #yocto #kernel
To: yocto@lists.yoctoproject.org
From: usa_butt@hotmail.com
X-Originating-Location: Bascharage, Capellen, LU (185.213.187.31)
X-Originating-Platform: Linux Chrome 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 07 Mar 2022 04:05:38 -0800
Message-ID: <S2lo.1646654738565383881.K7lE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="kdyXUib7VUhKBIvPjpBw"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Mar 2022 12:05:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56380

--kdyXUib7VUhKBIvPjpBw
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am working on a BSP build using Yocto. My physical board has two DSI port=
s to which panels are connected. Both are 4-lane DSI panels. Panels are def=
ined in device tree and they are initialized and loaded by kernel using the=
 correct driver. However only one frame buffer and console is created /dev/=
fb0 , /dev/fbcon. I can see through dmesg logs one fbdev is also created.=
=C2=A0On one panel i can see the console, other panel nothing showed up.
I am not using any physical bridge. I wanted to know how fbdev is created? =
How i can create another frame buffer?

Please correct me if i am missing some thing here.

--kdyXUib7VUhKBIvPjpBw
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am working on a BSP build using Yocto. My physical board has two DSI port=
s to which panels are connected. Both are 4-lane DSI panels. Panels are def=
ined in device tree and they are initialized and loaded by kernel using the=
 correct driver. However only one frame buffer and console is created /dev/=
fb0 , /dev/fbcon. I can see through dmesg logs one fbdev is also created.&n=
bsp;On one panel i can see the console, other panel nothing showed up.<br /=
>I am not using any physical bridge. I wanted to know how fbdev is created?=
 How i can create another frame buffer?<br /><br />Please correct me if i a=
m missing some thing here.

--kdyXUib7VUhKBIvPjpBw--

