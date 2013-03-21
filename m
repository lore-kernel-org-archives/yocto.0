Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0ADCE0148A
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 12:44:43 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-78-15.range86-137.btcentralplus.com
	[86.137.78.15]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 327639528
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 19:44:41 +0000 (GMT)
Message-ID: <514B6328.8000808@r-finger.com>
Date: Thu, 21 Mar 2013 19:44:40 +0000
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <65D9329CA2AF94438F542D48F2A42E8317717841FB@GOT-SRV-005.QMATIC.local>
In-Reply-To: <65D9329CA2AF94438F542D48F2A42E8317717841FB@GOT-SRV-005.QMATIC.local>
Subject: Re: Creating tailored image without standard rootfs files
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
X-List-Received-Date: Thu, 21 Mar 2013 19:44:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 21/03/13 15:09, Peter Bergin wrote:
> for my Yocto build I want to create two separate images as output
> because in my system I have two separate partitions. One partition
> containing the root file system and one partition containing
> configuration and application data. What I want is to create an image
> only containing data and applications from my recipes that I can apply
> to my data partition.

You can post-process the rootfs before generating the image to rm the
dirs you do not want, by appending a suitable function to the
ROOTFS_POSTPROCESS_COMMAND variable.

Also, there are existing systems out here that need multiple partitions,
e.g., the SD image  for RPi (see meta-raspberrypi) contains two separate
partitions, see the sdimage bbclass for what it does.

Tomas

-- 
http://sleepfive.com

