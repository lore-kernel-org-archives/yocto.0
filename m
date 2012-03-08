Return-Path: <jfabernathy@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E15CCE0030B
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2012 13:43:45 -0800 (PST)
Received: by yenq4 with SMTP id q4so707205yen.35
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2012 13:43:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=dmZzQiL0ffiBZpQSPWNFAxcht9ftw0F2MP66PJJ1g0k=;
	b=A/my4dMS4ZjfLedfeLprEiT7eGVWXqGaPs4TZ7V5BXP6EUxi7OVBKZ/PU+0q0z/MFv
	eDwGmNhv11Qwdh5dSxqj+UqtH/sL5WjnY8cpOt9faG87JOV2cNCYuVBomRSyAGYdHdLi
	/ekDc4EklYf1lDHfRfmzK1N7bHyQKhXW7laaGq3N8WeAHdYhVD1pL2CFBYiOiZw5RNep
	uxCawZLevtaf6xMLrp9ehgt/f/vORSXrI7LrjV6kpg0A3zQp2EvfbtESEIc6Da42I3WR
	G8xz9/QVqxCC6kna8Ri64Wl4ya4HgFFPRypf/u5xBQo9Js37EMvWZ/AhSqQk149vgX15
	CnHA==
Received: by 10.236.136.4 with SMTP id v4mr12545963yhi.44.1331243022409;
	Thu, 08 Mar 2012 13:43:42 -0800 (PST)
Received: from [10.0.1.54] (nc-184-4-33-105.dhcp.embarqhsd.net. [184.4.33.105])
	by mx.google.com with ESMTPS id p3sm5407149and.4.2012.03.08.13.43.38
	(version=SSLv3 cipher=OTHER); Thu, 08 Mar 2012 13:43:39 -0800 (PST)
Message-ID: <4F59280A.9010603@gmail.com>
Date: Thu, 08 Mar 2012 16:43:38 -0500
From: jfabernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.2) Gecko/20120216 Thunderbird/10.0.2
MIME-Version: 1.0
To: Rudolf Streif <rudolf.streif@linux.com>
References: <4F58D16C.8030309@gmail.com>
	<CADzUK1K0BTWTm8kfto2SZGpv7Q6sSGcCKggCHXeaconFKR9xcg@mail.gmail.com>
	<4F591A23.3050908@gmail.com>
	<CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
In-Reply-To: <CA+gsK-qzbm6j9Vj7jmDc7E2g=LfrUpwZENsXsPLaVT7cbpWg1Q@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Adding test files to an image
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
X-List-Received-Date: Thu, 08 Mar 2012 21:43:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/08/2012 04:33 PM, Rudolf Streif wrote:
> Jeff,
>
> Use hyphen instead of underscore for the subdirectory SRC_URI:
>
> SRC_URI = "file://myvideos-1.0/myvideos-1.0.tar.gz"
>
> and of course for the subdirectory in the subdirectory where the 
> recipe is located. The file fetcher copies the entire path 
> myvideos-1.0/myvideos-1.0.tar.gz to ${WORKDIR}.
>
> Rudi
that didn't solve the problem. I still get file not found errors.  The 
videos are unpack to WORKDIR, but the do_install is looking for them in S.

        install -d 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos
         install -m 0644 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/myvideos-1.0/* 
/build/sugarbay-master/tmp/work/x86_64-poky-linux/myvideos-1.0-r0/image/home/root/myvideos

I think I need to control where the do_unpack puts the files.

Jim A


