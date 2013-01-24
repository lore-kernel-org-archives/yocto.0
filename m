Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-da0-f50.google.com (mail-da0-f50.google.com
	[209.85.210.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F350DE014C8
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 05:49:02 -0800 (PST)
Received: by mail-da0-f50.google.com with SMTP id h15so4253469dan.37
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 05:49:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=386Ug+skn6qc2vy7imRJ/zbFWVbRRFibEEo5qOIxkuM=;
	b=nHDkA9Mf5Djh91838JUa2PGL+zzd/qa2fnd3UCj4Kufbf2CshHV8DICiELhj8nT76K
	RgD4wfQ8cu5PvjJWHTOIOOhm9inJ8u+m9F/KvN2n4tS+iP0y0SyHoRxHPM0RA1RJxdGn
	N72p33XVK6aHaMD1t+/Ue5OqkkFRpGEDnoxhNFmbv54Nc8qp7jPSg375CxjJcjDDByH2
	zc/e3JrRwAPMkZ9jKkW5Ag8VsFCb+ozXtSlOjgc+YxS5MsFo8x/XZRwTX/LIjwVhcZIy
	l2Y4ze6MVOCxHQqI+WJg5buxHd9Yv3/6iwJEJDgJkeuP49mvCIp2EojVV2apPv8ntBz+
	xrKA==
X-Received: by 10.68.220.6 with SMTP id ps6mr4986855pbc.80.1359035342766;
	Thu, 24 Jan 2013 05:49:02 -0800 (PST)
Received: from [192.168.1.155] (114-25-187-50.dynamic.hinet.net.
	[114.25.187.50])
	by mx.google.com with ESMTPS id tq4sm14907058pbc.50.2013.01.24.05.49.01
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Thu, 24 Jan 2013 05:49:02 -0800 (PST)
Message-ID: <51013BCB.8080208@gmail.com>
Date: Thu, 24 Jan 2013 21:48:59 +0800
From: Eddy Lai GMail <eddy.lai.tw@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
	<CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
	<510092A1.6050009@windriver.com>
In-Reply-To: <510092A1.6050009@windriver.com>
Subject: Re: install and use "bitbake -c populate_sdk"
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
X-List-Received-Date: Thu, 24 Jan 2013 13:49:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I have build and boot the image from USB flash disk with the .hddimg 
created by "bitbake -k core-image-basic"
have added ssh server inside and make sure the ethernet works well,
then use "bitbake -c populate_sdk core-image-basic" to create the 
"poky_eglibc_xx.sh" under "tmp/deploy/sdk" directory,
my plan is to install the sdk into the target system and compile my 
kernel module there, but now the problem is:
1. even I have 8GB USB flash disk, the .hddimg is 420MB only, "df" 
command from target said there's 85MB available only,
     but the sdk .sh installer image is about 300MB, how can I "extend" 
the target system to use the rest USB disk space? ( it's FAT file system)
     or how to modify configuration to force build the .hddimg create 
~"8GB" file system?
2. after that SDK installed into my target system, can I copy (scp) my 
own kernel module driver source code into the target system then
     make/compile and try insmod/debug the .ko there?
     or should I install the sdk on host system, then copy only the 
compiled .ko into target system for test/debugging?

Eddy

