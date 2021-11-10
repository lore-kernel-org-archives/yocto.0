Return-Path: <bojanjov@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DA46C433EF
	for <webhook@archiver.kernel.org>; Wed, 10 Nov 2021 19:37:03 +0000 (UTC)
Subject: Re: Cross-compile custom ROS2 package for Yocto #bitbake
To: yocto@lists.yoctoproject.org
From: "bojankoce" <bojanjov@gmail.com>
X-Originating-Location: =?utf-8?b?QXJwYWpvbiwgw45sZS1kZS1GcmFuY2UsIEZSICg5?=
 =?utf-8?b?MS4xNzQuMjM1LjIwMSk=?=
X-Originating-Platform: Windows Firefox 94
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 10 Nov 2021 11:37:02 -0800
References: <11037.1636554596013489582@lists.yoctoproject.org>
In-Reply-To: <11037.1636554596013489582@lists.yoctoproject.org>
Message-ID: <25232.1636573022425909997@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qmHwRW6ExNifb2b3zoOj"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Nov 2021 19:37:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55305

--qmHwRW6ExNifb2b3zoOj
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In addition to the above changes, I also included instructions inside conf/=
local.conf file to install my first ROS2 package:
IMAGE_INSTALL_append=3D" ros-core my-first-yocto-pkg"
After that, I was able to bitbake the complete Yocto image, put it on the S=
D card, and boot the Yocto on my devkit. After sourcing ros2_setup.sh scrip=
t, I entered:

ros2 pkg list command to list all available ROS2 packages on the system.

my_first_yocto_pkg package was on the list so I was happy and excited!

I wanted to do the final touch and launch the *talker* node from the packet=
 with:

ros2 run my_first_yocto_pkg talker
However, I got the info that No executable is found ! What the heck!

Do you have any idea what I did wrong in the whole process?

Appreciate your efforts!

Sincerely,
Bojan.

--qmHwRW6ExNifb2b3zoOj
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In addition to the above changes, I also included instructions inside <code=
>conf/local.conf</code> file to install my first ROS2 package:<br />
<pre class=3D"prettyprint prettyprinted"><code><span class=3D"typ"><span cl=
ass=3D"typ">IMAGE_INSTALL_append=3D" ros-core my-first-yocto-pkg"</span></s=
pan></code></pre>
<br />After that, I was able to bitbake the complete Yocto image, put it on=
 the SD card, and boot the Yocto on my devkit. After sourcing <code>ros2_se=
tup.sh</code> script, I entered:<br /><br />
<pre class=3D"prettyprint prettyprinted">ros2 pkg list</pre>
command to list all available ROS2 packages on the system. <br /><br /><cod=
e>my_first_yocto_pkg</code> package was on the list so I was happy and exci=
ted! <br /><br />I wanted to do the final touch and launch the <em><strong>=
talker</strong></em> node from the packet with:<br /><br />
<pre class=3D"prettyprint prettyprinted">ros2 run my_first_yocto_pkg talker=
</pre>
<br />However, I got the info that <code>No executable is found</code>! Wha=
t the heck! <br /><br />Do you have any idea what I did wrong in the whole =
process? <br /><br />Appreciate your efforts!<br /><br />Sincerely,<br />Bo=
jan.

--qmHwRW6ExNifb2b3zoOj--

