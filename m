Return-Path: <paul.betafive@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DD07E0073F
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 03:22:12 -0700 (PDT)
Received: by mail-vb0-f48.google.com with SMTP id w16so1451524vbf.7
	for <yocto@yoctoproject.org>; Fri, 16 Aug 2013 03:22:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=Vu5Ax9DxFA7q2ZSSk24iqC6RPFKYKloSH32g4Ln/4Ag=;
	b=YOXkkNoq7us5CWWc3Ph9wCMqS7Zbyo5rgsyEjfG3T5LiwPCipU2VzL/5E+DzNMZufl
	3kQ9uPsuK+Q/nMF8jxrrDHN2TT3n+gmLAFa8C6a394EPg/0/81ceozLizBagIBAfCl4s
	K7rMP7eQVPVnBIQNtA4BF9jMh7A8Awq7bfXT39Z6koGjapiBvvCWKLDJdernDumowZlz
	JZQUCU0wLYVku20KytJE/ed7q9tVOZpSWa7Mn9AkCtUjgNDMY/6KYHQez/OJKG15Hx59
	nu/410GtQdX/a5Nxuzg2igjnd5lPXPllanMpfhvnB2VamglahSAPtnnbSKkBsyyi3f4l
	rtGQ==
X-Received: by 10.58.73.202 with SMTP id n10mr567707vev.7.1376648531613; Fri,
	16 Aug 2013 03:22:11 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Fri, 16 Aug 2013 03:21:30 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 16 Aug 2013 11:21:30 +0100
X-Google-Sender-Auth: 7suqv7cU4ko9xC2jcdG1NiMQYN0
Message-ID: <CANyK_8d13jds+LeO8U==uOn2FAC5UXvqOWY+eLnxJNPp6Pi_xA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: [opkg-utils] Splitting package feed directories and where to send patches
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
X-List-Received-Date: Fri, 16 Aug 2013 10:22:18 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm planning a patch to opkg-utils to add an option to split packages
into subdirectories in the same way as debian package feeds are often
laid out. So you'd have 'a*' in a subdirectory 'a', 'b*' in 'b', etc.
Packages beginning with 'lib' are put in 'liba', 'libb', etc as
appropriate and packages matching 'l*' but not 'lib*' stay in 'l'.
That's done to reduce the number of files in a single directory - I'm
having trouble mirroring over 7000 files in one directory to my
webserver. I shan't be changing the default, just want to add the
option if I can and then add a way of enabling this behaviour in a
distro config or local.conf.

However, I can't see any info on where to send packages for opkg-utils
and if there's a particular maintainer I need to CC on my emails. I'm
guessing they probably go to this list or someone on this list. So I'm
also going to propose adding a README file to opkg-utils with info on
who's maintaining it and where to send patches.

I now seem to be the de-facto maintainer of opkg itself so it would
make sense for me to co-ordinate with whoever is looking after
opkg-utils.

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

