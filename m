Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92CD8E01430
	for <yocto@yoctoproject.org>; Fri, 14 Sep 2012 01:29:55 -0700 (PDT)
Received: from localhost ([127.0.0.1]:54804 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TCRHQ-0007Zl-Fv
	for yocto@yoctoproject.org; Fri, 14 Sep 2012 08:29:40 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:content-type
	:content-transfer-encoding; s=default; bh=K8r1ayHwxWpEx9bHqHndDA
	r/FMs=; b=FlpeNHBeTVJyGgQmbJfwYmkwH+geH1wwb7uiMZyImY/MYMDWu5X7MM
	SLEL6jRgAHyekbB5IjVwJgU339nSHUfhYXsXxm6oyTVh7mYo4JeA8Ddu6+NsfEUx
	gDTgJ/samX0j2B475hO4kPujDBB4LTRbSGyS61QrrNj5M8nRbfpJc=
Received: from [195.171.99.130] (port=43998 helo=[192.168.0.40])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1TCRHQ-0007Zi-Dl
	for yocto@yoctoproject.org; Fri, 14 Sep 2012 08:29:40 +0000
Message-ID: <5052EB4A.1050504@communistcode.co.uk>
Date: Fri, 14 Sep 2012 09:31:06 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Poky SDK Issues
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Sep 2012 08:29:55 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I tried the most recent poky SDK image as it allows you to extract to 
anywhere you wish and I have run into an issue. When I try to compile my 
program with it (which worked with a poky sdk from a couple of months 
ago, 4.7.1) I run into the following error:

/home/jack/Projects/pokySDK-140912/sysroots/x86_64-pokysdk-linux/usr/bin/armv7a-vfp-neon-poky-linux-gnueabi/../../libexec/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.7.2/ld: 
cannot find crtbegin.o: No such file or directory

Which is strange as I also get this:

[jack@archHP armv7a-vfp-neon-poky-linux-gnueabi]$ find . -name crt*
./usr/lib/arm-poky-linux-gnueabi/4.7.2/crtendS.o
./usr/lib/arm-poky-linux-gnueabi/4.7.2/crtbeginS.o
./usr/lib/arm-poky-linux-gnueabi/4.7.2/crtbegin.o
./usr/lib/arm-poky-linux-gnueabi/4.7.2/crtbeginT.o
./usr/lib/arm-poky-linux-gnueabi/4.7.2/crtend.o
./usr/lib/crtn.o
./usr/lib/crti.o
./usr/lib/crt1.o

Now, I have seen some patches regarding PPC and crt issues but maybe 
they exist with arm also? Or possibly I am being a twit and not 
including the right directories, but seeing as they're GCC libs I would 
have though tit would have no problem finding them...

Any ideas?

Cheers,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


