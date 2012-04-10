Return-Path: <pcjegan@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01EDEE00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 00:21:16 -0700 (PDT)
Received: by wibhr17 with SMTP id hr17so2776868wib.5
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 00:21:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=JbKDQvqAQ1Z/9ug1hxs/KXPXqbOV3w5SwgKJwPj3WDM=;
	b=GeBs92RfkbflKxn/ZNgoL5yukITq+6I72rPKxrG5Y86c9FS+SGCv4iwqNGhD/Ogfjz
	96FxeDhYgRPSv3ZUGTXAIkUvgE6uUTLpcaFS4YpbqukJl6d8TRVTCBiYIS3n/8hHuHIb
	/PCvFOQgbiQNj3xEOaFUGJDYrfQ0GcnVicKPU8LXF+WrV7805LHT2lxMe6uSmmAXKaAD
	5XjIR3kTC8bdkY0X+EZHq/aQ+VxtAxdwWw6FI+j+0kCw2B8mp7LXCnJUdEgu4NwkwHzB
	HGQvAYQ9ynfhEavq0fFEfrDYsF5RKtNDArf7pt1nBgKLatTAXsw2F46QF6C3EVHm+bCy
	DU+A==
Received: by 10.180.102.100 with SMTP id fn4mr4381268wib.1.1334042475678; Tue,
	10 Apr 2012 00:21:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.185.195 with HTTP; Tue, 10 Apr 2012 00:20:55 -0700 (PDT)
From: Jegan Chandru <pcjegan@gmail.com>
Date: Tue, 10 Apr 2012 12:50:55 +0530
Message-ID: <CAAA4K6LukcBO8gH+oO8HeUhu4-uyoLPgLiV0t7oLss2CQp=Q8w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to remove a particular package or packages collection for an image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 10 Apr 2012 07:21:17 -0000
Content-Type: multipart/alternative; boundary=f46d0444ef4fe0caaa04bd4df7be

--f46d0444ef4fe0caaa04bd4df7be
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I am using Yocto milestone release 1.1.1 for my custom root filesystem
image creation. I just need some help in achieving it successfully.
I wrote a custom task bb file which defines/includes the packages i need in
my image. I also wrote a core-image-custom.bb file that includes these
tasks + other tasks. I also inherited core-image.bbclass in
core-image-custom.bb.  The file looks something like this,

*IMAGE_INSTALL = "\*
*    task-base \*
*    task-core-basic \*
*    task-core-boot \*
*    .......*
*    task-custom \*
*    "*
*inherit core-image*

I did  dry-run on core-image-custom and I see mostly all packages from
yocto included in my image, the packages that I do not need. So, how can I
remove a particular package or a package collection, say graphics or some X
packages for my image. Is it possible? or can core-image.bbclass is
overwritable? Does my approach ok?

Any help in achieving this is much appreciated.

Thanks,
JC

--f46d0444ef4fe0caaa04bd4df7be
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>I am using Yocto milestone release 1.1.1 for my cust=
om root filesystem image creation. I just need some help in achieving it su=
ccessfully.=A0</div><div>I wrote a custom task bb file which defines/includ=
es the packages i need in my image. I also wrote a <a href=3D"http://core-i=
mage-custom.bb">core-image-custom.bb</a> file that includes these tasks + o=
ther tasks. I also inherited core-image.bbclass in <a href=3D"http://core-i=
mage-custom.bb">core-image-custom.bb</a>. =A0The file looks something like =
this,</div>

<div><br></div><div><div><i>IMAGE_INSTALL =3D &quot;\</i></div><div><i>=A0 =
=A0 task-base \</i></div><div><i>=A0 =A0 task-core-basic \</i></div><div><i=
>=A0 =A0 task-core-boot \</i></div></div><div><i>=A0 =A0 .......</i></div><=
div><i>=A0 =A0 task-custom \</i></div>

<div><i>=A0 =A0 &quot;</i></div><div><i>inherit core-image</i></div><div><b=
r></div><div>I did =A0dry-run on core-image-custom and I see mostly all pac=
kages from yocto included in my image, the packages that I do not need. So,=
 how can I remove a particular package or a package collection, say graphic=
s or some X packages for my image. Is it possible? or can core-image.bbclas=
s is overwritable? Does my approach ok?</div>

<div><br></div><div>Any help in=A0achieving=A0this is much appreciated.</di=
v><div><br></div><div>Thanks,</div><div>JC<br clear=3D"all"><div><br></div>
</div>

--f46d0444ef4fe0caaa04bd4df7be--
