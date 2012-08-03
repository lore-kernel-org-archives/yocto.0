Return-Path: <elvis.dowson@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91DA2E0141D
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 23:37:08 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so523855ghb.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 23:37:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=oRF7bd5/zXWZnT00ioRYqdM44uWBN24BPqi6xJp48U0=;
	b=R6B+6Ks6VKpf8hV/wm/wQ6LhHuXXLR3tKfe0C8CoR8d+MWCgkjkJlaQiNYwPUIHsPN
	555MSrY9rpv2CCJCUJNQ73nE5F/GTOTqaLpls/bL7wAomeH29zQ/F8xvCjZE3c3EohrE
	YyHnNFQh6U/ee4v6XCCJy/nU6K6ksPvRquGhWdyqCztkTwxQe03rNL6jg6WQHoBZZ+cr
	5P55VioV4UoWIP3PBZgii1E3D3D1WhFeamldX19GOf7GYnY95O8gScsfnp1B2zh1Huz6
	65Ht1Reb+/p0+zg1L5bP4A9L+fBE1/lr5UgQulg8miuJFY6If2wDOxuHtZioJxuhEkqr
	tYMA==
Received: by 10.50.154.225 with SMTP id vr1mr8362933igb.70.1343975827599;
	Thu, 02 Aug 2012 23:37:07 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id y5sm19128075igb.11.2012.08.02.23.37.05
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Aug 2012 23:37:07 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 3 Aug 2012 10:37:01 +0400
Message-Id: <6F91EA1C-23C7-4706-978F-C08C8CAEA0FA@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Switching between stable gcc versions
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
X-List-Received-Date: Fri, 03 Aug 2012 06:37:08 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      In poky master, the current version of gcc is 4.7.2. If I have a =
situation, where I need to revert back to using gcc-4.5.1, how can I do =
this cleanly?=20

Perhaps some of the issues that I'm facing with getting my root =
filesystem image booting on my Xilinx ML507 development board (Virtex 5 =
PowerPC 440 processor) might be related the new gcc-4.7.2 release.

At the moment, I've had to delete my entire build, switch to the =
bernard-5.0.2 tag, and then attempt to try and build a new =
rootfilesystem. Others have successfully built and got linux running on =
my target board, with bernard-5.0, about a year ago.

So, if it does indeed turn out that I need to use an older version of =
gcc, for my target, what should I do, to continue working with the poky =
master repo, but only use the older gcc-4.5.1 release?

Some options that I can think of are:

a. Reintroduce the older gcc-4.5.1 recipes in a local branch, but that =
would mean others would not be able to reproduce my work on their =
machines.

b. Use bernard-5.0.2 to build the toolchain, and set things up so that =
it uses that as an external toolchain.

I don't think both the options are elegant, so if someone could offer =
any suggestions it would be great.=20

Best regards,

Elvis Dowson=

