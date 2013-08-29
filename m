Return-Path: <timothy.bean@gmail.com>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F917E013BA
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 13:55:10 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id uz19so1051820obc.7
	for <yocto@yoctoproject.org>; Thu, 29 Aug 2013 13:55:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=yA6TLZsQ6q0IcO49jMGqpJdOJjspSvZJaJ5A1BgqJ+g=;
	b=n8QOKf6hL4X0QkuG4H5YGqH58SxeJoFIXCXmKvRVhHCsMt38kIVBjl0tcFZZnpTsqg
	GkouQqGG4ODxRE+4Tp8JtB2pWDpnYpv7+WFFT1MI8SvDgGfnlMpzNxHhqO64K1XHfvfr
	mMBgppEkjPqFlgoFrSeLbNi67eTxOUf7muYBoOu++Sw/llIYAY3PER2qZflI8pvQe3k1
	/7hmL4xJzoFeiJ6ytcJwp1kEazhOF7cd04K9327NbLjjOIf0Nvrzo4HuE5AeNzxzV3WT
	6VjHouZJKbycBKkWbW+6hhrmhIhANwhTaFfSflTlomifbqyNhWlyXM4LCSHcSV3pntbD
	DxTg==
MIME-Version: 1.0
X-Received: by 10.182.120.132 with SMTP id lc4mr4124666obb.7.1377809709812;
	Thu, 29 Aug 2013 13:55:09 -0700 (PDT)
Received: by 10.76.97.111 with HTTP; Thu, 29 Aug 2013 13:55:09 -0700 (PDT)
Date: Thu, 29 Aug 2013 15:55:09 -0500
Message-ID: <CAKv5JSp3cx0oFZhiPjE38LX3YYH_kbe=uZzLJx1-HkJnN5NK7Q@mail.gmail.com>
From: Timothy Bean <timothy.bean@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 29 Aug 2013 14:00:43 -0700
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
X-List-Received-Date: Thu, 29 Aug 2013 20:55:11 -0000
Content-Type: multipart/alternative; boundary=089e0111bd8052505904e51c5283

--089e0111bd8052505904e51c5283
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

--089e0111bd8052505904e51c5283
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hello all,<br><br>=
</div>I am a little new to Yocto and bitbake. Could someone please help me =
with probably some simple concepts that seem to be missing.<br><br></div>I =
would like to build a initramfs image to boot to my device (Freescale i.MX6=
)<br>
<br></div>I think I need to change the image type to cpio.gz for the output=
. But my real question is how can I include some external files into that i=
mage?<br><br></div>I have my application that needs to get bundled into the=
 image. I also have some configuration files as well like init scripts.<br>
<br></div>How would I go about having bitbake include those files when it i=
s creating the initramfs image?<br><br></div>I plan to build my application=
 outside of bitbake, and just need it to get wrapped up for me.<br><br>
</div>Remember I am a newbie, so, simple explanation would be great with an=
 example if possible.<br><br></div>Thanks<br><br>Tim<br></div>

--089e0111bd8052505904e51c5283--
