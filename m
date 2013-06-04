Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B3ABE01439
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 01:17:54 -0700 (PDT)
Received: from [192.168.0.2] (host86-141-47-214.range86-141.btcentralplus.com
	[86.141.47.214]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id E67D5952B
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 09:17:53 +0100 (BST)
Message-ID: <51ADA2B0.7000702@r-finger.com>
Date: Tue, 04 Jun 2013 09:17:52 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAD71xELiPm0A46qyJBkfx+r4nFBZsXUcFDz6XZLvpQVgoSc0+Q@mail.gmail.com>
In-Reply-To: <CAD71xELiPm0A46qyJBkfx+r4nFBZsXUcFDz6XZLvpQVgoSc0+Q@mail.gmail.com>
Subject: Re: Error including meta-oracle-java in custom image
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
X-List-Received-Date: Tue, 04 Jun 2013 08:17:54 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 04/06/13 08:41, Marcelo Valle wrote:
> 1.
> Fetcher failure for URL:
> 'http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz'.
> Checksum mismatch!
> 
> ...
>
> To fix it i've update oracle-jse-jre-x86-64_1.7.0.bb
> <http://oracle-jse-jre-x86-64_1.7.0.bb> with these checksum.
> I build the image again and new error appears
> 
> --------------------------------------------
> 
> 2.
> Function failed: Unpack failure for URL:
> 'http://download.oracle.com/otn-pub/java/jdk/7u2-b13/jre-7u2-linux-x64.tar.gz'
> 
> Unpacking
> /home/mvalle/Yocto2/poky-dylan-9.0.0/build/downloads/jre-7u2-linux-x64.tar.gz
> gzip: stdin: not in gzip format

This suggests that the original check sum failure is down to your
original download being corrupted. You should not modify the chechsums,
but rather run 'bitbake -c cleanall oracle-jse-jre-x86-64', and then
rerun the build to fetch the tarball again. Or, since you already have
the tarball, you can change the checksums back, run 'bitbake -c
cleansstate oracle-jse-jre-x86-64', then rerun the build.

(Your set up works because you manually replaced the tarball after the
sums have been verified, but if someone else tries to build your
modified recipe, it will fail on the checksums.).

> -----------------------------------------------
> But if I try to build my custom image and the build fails with these error:
> 
> Function failed: do_rootfs
> 
> | Computing transaction...error: Can't install
> oracle-jse-jre-x86-64-1.7.0-r0@x86_64: no package provides
> libXi.so.6()(64bit)


libXi is provided by the libxi package, this should be added to the
RDEPENDS for the jre package to get it pulled into the image (looking at
the recipe there are probably other RDEPENDS missing there as well).

Tomas


-- 
http://sleepfive.com

