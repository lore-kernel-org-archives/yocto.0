Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90431E014BE
	for <yocto@yoctoproject.org>; Tue, 30 Apr 2013 03:39:16 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3UAemR8009369; Tue, 30 Apr 2013 11:40:48 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id DmbecyJmYoAv; Tue, 30 Apr 2013 11:40:48 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3UAeiYU009362
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Tue, 30 Apr 2013 11:40:46 +0100
Message-ID: <1367318340.5379.89.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Esteban Rivera <esteban.rc@gmail.com>
Date: Tue, 30 Apr 2013 11:39:00 +0100
In-Reply-To: <CACN9-wQieY6cZjF7GQaBofhJm2NB9XdgiEfU3orpYDWPezUNwQ@mail.gmail.com>
References: <CACN9-wQieY6cZjF7GQaBofhJm2NB9XdgiEfU3orpYDWPezUNwQ@mail.gmail.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Problem Installing Package Manager in FRI2
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
X-List-Received-Date: Tue, 30 Apr 2013 10:39:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

On Sat, 2013-04-06 at 14:24 -0600, Esteban Rivera wrote:
> I'm trying to generate an image for the FRI2 using the official Intel
> BSP provided in the Yocto Project website, in this image I want to
> include at least one package manager.
>
> I'm Using poky 8.0 with Hob GUI, from the recipes listed that can be
> included in the image I can see Dpkg and Zypper package managers, but
> I have trouble with both packages.

Usually, an image contains the package manager which it was created
with, so if you build the image with rpms, it would contain zypper and
rpm, if you build it with ipks, it would contain opkg and if you use deb
files, it would contain apt and dpkg.

Also note that we dropped zypper in favour of smart in the 1.4 cycle.

> I'm unable to create the Image whenever Dpkg is included because of
> the following error message:
>
>error: Failed dependencies:
> /home/poky-danny-8.0/build/tmp/sysroots/x86_64-linux/usr/bin/perl-native/perl is needed by dpkg-1.16.8-r18.0.core2

Its unusual to include dpkg in an rpm based image which I can tell from
this error message you're trying to do.

The problem is that the dpkg package for use in the target device is
referencing paths which are on the build system. There is some script in
that package with an incorrect header.

> I get this message even tho the files do exist at the path specified
> by the error message.
>
> On the other hand whenever I select Zypper, the image is created
> correctly but any zypper commands ends up showing the following error:
>
> zypper: dbconfig.c:493: db3New: Assertion 'dbOpts != ((void *)0) &&
> *db0pts != '\0'' failed.
> Aborted  

zypper should be added to an rpm image automatically, unless you select
removal of the package manager.

This sounds very like
https://bugzilla.yoctoproject.org/show_bug.cgi?id=2936

Cheers,

Richard



