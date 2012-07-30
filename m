Return-Path: <jfabernathy@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97E97E0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 14:08:49 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so6076378ggn.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 14:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=6iHh8wjRGDwlR3yHRELG26UhTHbWanTry8auuuRXpfc=;
	b=cebB3HTUoY1lbGw8STQx3M+l3FUlO5jf6wIoXPvXvm0yCugY+bjXznH55ywTQbbsr4
	JlBYv//GCtaeQ3+LjgYk4SytsrzdUz7aIUZy4AZDEvXz89QQStbsn+J0wIuhZgHZxP+O
	nQHAaJLaynn2KGPiRsdHX2WU9Iir3U+2O339Pnzvg+cIpSoyz0dA2GkllJMs6Jz9Tpgg
	9lr88K7JOfdpta+ws5hymen5A7s0JK/S6E5WpuaSpYB1ZrUNYfYrxgOKb7MoAnlQGqbp
	3ycA3y0KffWJ5Hk1S0PzKHqfZsVf2++baBJp6Gydu3U4cVJXAVsWN0dYqwJktHJqAxc/
	5yXg==
Received: by 10.100.236.39 with SMTP id j39mr3582996anh.35.1343682528787;
	Mon, 30 Jul 2012 14:08:48 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id k2sm10191859anl.11.2012.07.30.14.08.48
	(version=SSLv3 cipher=OTHER); Mon, 30 Jul 2012 14:08:48 -0700 (PDT)
Message-ID: <5016F7DF.60802@gmail.com>
Date: Mon, 30 Jul 2012 17:08:47 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: creating SD card for booting Yocto image on Pandaboard
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
X-List-Received-Date: Mon, 30 Jul 2012 21:08:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have not seem a procedure documented for creating an SD card with the 
Yocto image that works in a Pandaboard Rev A2.

I have created a core-image-minimal and core-image-sato successfully. I 
followed the basic procedures on pandaboard wiki to format the SD card.  
After formating the card, I can insert it into an Ubuntu 12.04 system 
and the /media/boot and /media/rootfs devices are mounted 
automatically.  Using the files in tmp/deploy/images, I copy the files 
as below:

cp MLO-pandaboard-2012.12  /media/boot/MLO
cp u-boot-pandaboard-2011.12-r8.img  /media/boot/u-boot.img
cp uImage-3.1.0-r0-pandaboard-201207300170622.bin /media/boot/uImage

tar -xjf core-image-minimal-pandaboard.tar.bz2 -C /media/rootfs/

Am I missing a step? It starts booting the kernel, but that's is, no 
more output on the console.

Jim A


