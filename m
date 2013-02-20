Return-Path: <swaroop.damarla@gmail.com>
Received: from mail-vc0-f174.google.com (mail-vc0-f174.google.com
	[209.85.220.174]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D500DE012F3
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 05:17:39 -0800 (PST)
Received: by mail-vc0-f174.google.com with SMTP id n11so4913528vch.19
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2013 05:17:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=wKozF0j8Pl6/UBKhFxvKNSLwVz2i9UwBf57Hd8HXoc8=;
	b=HoAcvI7UYvPe83EKZOK/ygrVZsHhoPKQ5MDiZLV87zTNtBW1V9SCmrRJCmXoC8DKQS
	Ab/ImTnP5MnQKR5ipo8jJJEtBN6oy2navIyW8+BYlfE5T/ivucihcU5O+sfph6p/h7OB
	2UnG2n95Ox2vifBO4WM5/bfp1tYyvk/9BTJ7QOlpzV0w5G7xrvPLtJdlSb22AU9W57k8
	YUvkLdAkIXdxKt7kLs8tWP8j11vcH+7L4QXL9Gz4ZB/nwrQPKXiaaErTVExrQ01ToYfr
	7aa1hx87nSTju/i1eP8tuogIgy0eOadjKphfxiUQlZKeydNzxZ9l4iYgM2lyu9iZwr0R
	bFiA==
MIME-Version: 1.0
X-Received: by 10.58.214.231 with SMTP id od7mr26425448vec.44.1361366258788;
	Wed, 20 Feb 2013 05:17:38 -0800 (PST)
Received: by 10.58.155.102 with HTTP; Wed, 20 Feb 2013 05:17:38 -0800 (PST)
Date: Wed, 20 Feb 2013 14:17:38 +0100
Message-ID: <CABTzgQ6QXaw6YY1gF7FQrXaG8cD8P-zUMJvSEianzLz-FJJWJQ@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: yocto@yoctoproject.org
Subject: Updating uboot to v2013.01
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
X-List-Received-Date: Wed, 20 Feb 2013 13:17:40 -0000
Content-Type: multipart/alternative; boundary=089e0118319843a78c04d627c883

--089e0118319843a78c04d627c883
Content-Type: text/plain; charset=ISO-8859-1

Hi Guys,

I need support for uboot on Tamonten board but the version on it is
v2012.04 but I came to know that v2012.10 or v2013.01 supports the
Tamontenboard through some guys here..

It would be great if you can tell me how can I accomplish v2013.01 or
v2012.10 into the build system and make it available so that I can compile
the and get uImage

(Tamonten board is a derivative of harmony board with some changes and has
arm cortexa9 processor without neon extentions )

I am kind of new to add new .bb files and help is really appreciated as I
am not able to figure out how to add

Greetings & Regards,
Swaroop

--089e0118319843a78c04d627c883
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Guys,<div><br></div><div style>I need support for uboot=
 on Tamonten board but the version on it is v2012.04 but I came to know tha=
t v2012.10 or v2013.01 supports the Tamontenboard through some guys here..<=
/div>
<div style><br></div><div style>It would be great if you can tell me how ca=
n I accomplish v2013.01 or v2012.10 into the build system and make it avail=
able so that I can compile the and get uImage</div><div style><br></div>
<div style>(Tamonten board is a derivative of harmony board with some chang=
es and has arm cortexa9 processor without neon extentions )</div><div style=
><br></div><div style>I am kind of new to add new .bb files and help is rea=
lly appreciated as I am not able to figure out how to add</div>
<div style><br></div><div style>Greetings &amp; Regards,</div><div style>Sw=
aroop</div></div>

--089e0118319843a78c04d627c883--
