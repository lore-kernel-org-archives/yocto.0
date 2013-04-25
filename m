Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-we0-f178.google.com (mail-we0-f178.google.com
	[74.125.82.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C000E01496
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:10:53 -0700 (PDT)
Received: by mail-we0-f178.google.com with SMTP id z53so2641131wey.37
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 07:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:from:date:message-id:subject:to
	:content-type; bh=sSI+K8HfLDfu8LaqzEdx28Iu4RPaawtqpokuiB0y0LY=;
	b=XNk7QaMh/LQN/Lyq+k1MlxmalzSuMSVPE75o6Gxl9H8CRrV6qcBm2ocJ79c0LWUdSZ
	83E9I2YnXcLmGqd/DMfT32aRGfJocX8XBMK9GpS0G14nWSPqyZ/42+iR5BCgyYig0VMR
	ZA4doKiM1hYgovzdJg6p6t7Cqo9J0Cp1HH8ecH2ODVwY9fvDpM+TRpblVV8uf6ulZxCN
	u/OE+PKgMy5ry1444R/CuOPuvyZH96IEooUvuwL9P+h48QS5Bl4H/XUUmM4zJHFSgsVy
	s9dyD0eig5DxUOLu2IgX09erUHEvES27jflEdo0svN94PiCz2IbQbSgL6DmQXYM/IqC5
	TYHQ==
X-Received: by 10.180.93.134 with SMTP id cu6mr74508542wib.8.1366899052155;
	Thu, 25 Apr 2013 07:10:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.37.233 with HTTP; Thu, 25 Apr 2013 07:10:31 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Thu, 25 Apr 2013 10:10:31 -0400
Message-ID: <CANge7vWGtcVQE6Sv1rn1dxWR25W99eK53UdDJjBVp2zQW=nr+Q@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Finding/Generating Rootfs Package List
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
X-List-Received-Date: Thu, 25 Apr 2013 14:10:54 -0000
Content-Type: multipart/alternative; boundary=f46d043894c572b23604db2ffc30

--f46d043894c572b23604db2ffc30
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I generally like to keep a little manifest file with my rootfs images,
containing a list of installed packages and their associated versions.  On
images where I keep package data around, I usually generate this via 'opkg
list'.

In my current situation, I have a small read-only image where I can't
afford to ship pkg data, and wanted to gather this info on the host side of
things.  I assume this information is tracked somewhere in the poky build
directory, but I'm having some trouble finding it.

Could someone kindly point me towards this information or the documentation
section(s) that I may have overlooked.

Thank you!
Jon

--f46d043894c572b23604db2ffc30
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Hi all,<br><br></div><div>I generally like =
to keep a little manifest file with my rootfs images, containing a list of =
installed packages and their associated versions.=A0 On images where I keep=
 package data around, I usually generate this via &#39;opkg list&#39;.=A0 <=
br>

</div><br></div>In my current situation, I have a small read-only image whe=
re I can&#39;t afford to ship pkg data, and wanted to gather this info on t=
he host side of things.=A0 I assume this information is tracked somewhere i=
n the poky build directory, but I&#39;m having some trouble finding it.<br>

<br></div><div><div><div>Could someone kindly point me towards this informa=
tion or the documentation section(s) that I may have overlooked.<br></div><=
div><br>Thank you!<br></div><div>Jon<br clear=3D"all"></div></div></div>
</div>

--f46d043894c572b23604db2ffc30--
