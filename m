Return-Path: <timothy.bean@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12F78E003D2
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2013 07:31:59 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id uz19so420246obc.21
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2013 07:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=gGpULpZGDjXDNKN7U2WNOpdSJFn8gWroQMhryHYyelE=;
	b=AZsyOi9glUu6CDkuV8VB7nhMi8rkNsM0s6jk/ZLplfQBIDkZ1RTb64VeCb79QFW9J4
	baos7XJ3MX9OpPFC1BWFfJ+wwtrKh2pKFuHWly8uhlshPsM4HKXTe7vx+sQWMCflKNJX
	zg0pOG9lhRLPbrJUwApSigUSnnIatVh95Xyx9W/0grb9hrZTeO5ZfOWXoas0q228ox1E
	QzRBnBLAAQAYE1xPbPB18nLCyTVCVfs40JfIksU9g0BL97tjiZevk2bLNFD8UctxbR/Z
	FF0LBrhyjrKQSZDyuDsOotpUir6JT/K+96Eyvn0h/Jo3kVSX8ZOZ6oN+o4kmrbw9wdA5
	WDOw==
MIME-Version: 1.0
X-Received: by 10.60.58.10 with SMTP id m10mr1406990oeq.61.1378305118631; Wed,
	04 Sep 2013 07:31:58 -0700 (PDT)
Received: by 10.76.93.179 with HTTP; Wed, 4 Sep 2013 07:31:58 -0700 (PDT)
In-Reply-To: <CAKv5JSp3cx0oFZhiPjE38LX3YYH_kbe=uZzLJx1-HkJnN5NK7Q@mail.gmail.com>
References: <CAKv5JSp3cx0oFZhiPjE38LX3YYH_kbe=uZzLJx1-HkJnN5NK7Q@mail.gmail.com>
Date: Wed, 4 Sep 2013 09:31:58 -0500
Message-ID: <CAKv5JSo5iMxArOT9X4UXb3AyWHPi2awLoxxRF0cCj=YGUFjCAA@mail.gmail.com>
From: Timothy Bean <timothy.bean@gmail.com>
To: yocto@yoctoproject.org
Subject: Help with merging files
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
X-List-Received-Date: Wed, 04 Sep 2013 14:32:02 -0000
Content-Type: multipart/alternative; boundary=089e01538bc4fd00b204e58faa6c

--089e01538bc4fd00b204e58faa6c
Content-Type: text/plain; charset=ISO-8859-1

Hello all,

I am a little new to Yocto and bitbake. Could someone please help me with
probably some simple concepts that seem to be missing.

I would like to build a initramfs image to boot to my device (Freescale
i.MX6)

I think I need to change the image type to cpio.gz for the output. But my
real question is how can I include some external files into that image?

I have my application that needs to get bundled into the image. I also have
some configuration files as well like init scripts.

How would I go about having bitbake include those files when it is creating
the initramfs image?

I plan to build my application outside of bitbake, and just need it to get
wrapped up for me.

Remember I am a newbie, so, simple explanation would be great with an
example if possible.

Thanks

Tim

--089e01538bc4fd00b204e58faa6c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr"><div><div>=
<div><div><div><div><div><div>Hello all,<br><br></div>I am a little new to =
Yocto and bitbake. Could someone please help me with probably some simple c=
oncepts that seem to be missing.<br>
<br></div>I would like to build a initramfs image to boot to my device (Fre=
escale i.MX6)<br>
<br></div>I think I need to change the image type to cpio.gz for the output=
. But my real question is how can I include some external files into that i=
mage?<br><br></div>I have my application that needs to get bundled into the=
 image. I also have some configuration files as well like init scripts.<br>

<br></div>How would I go about having bitbake include those files when it i=
s creating the initramfs image?<br><br></div>I plan to build my application=
 outside of bitbake, and just need it to get wrapped up for me.<br><br>

</div>Remember I am a newbie, so, simple explanation would be great with an=
 example if possible.<br><br></div>Thanks<br><br>Tim<br></div>
</div><br></div>

--089e01538bc4fd00b204e58faa6c--
