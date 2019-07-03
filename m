Return-Path: <stefan@herbrechtsmeier.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4CC88E00C87; Wed,  3 Jul 2019 12:42:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.13.157.12 listed in list.dnswl.org]
X-Greylist: delayed 352 seconds by postgrey-1.32 at yocto-www;
	Wed, 03 Jul 2019 12:42:34 PDT
Received: from dd41138.kasserver.com (dd41138.kasserver.com [85.13.157.12])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DDECE00C43
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 12:42:33 -0700 (PDT)
Received: from [192.168.178.34] (i59F77E15.versanet.de [89.247.126.21])
	by dd41138.kasserver.com (Postfix) with ESMTPSA id 48B0B11A0167
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2019 21:36:40 +0200 (CEST)
From: Stefan Herbrechtsmeier <stefan@herbrechtsmeier.net>
To: yocto@yoctoproject.org
Message-ID: <f9842057-d93a-d6f4-bba2-937f6b44b346@herbrechtsmeier.net>
Date: Wed, 3 Jul 2019 21:36:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
Subject: Create an image from deployed files
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
X-List-Received-Date: Wed, 03 Jul 2019 19:42:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

what would be the best solution to create an image from deployed files?

The wic bootimg-partition plugin copy over files listed in 
IMAGE_BOOT_FILES and create a partition inside the wic image. The 
image.bbclass creates an image from individual packages.

I want to create an image like the image.bbclass but from deployed files 
like the wic bootimg-partition plugin.

I have add an image_types_vfat.bbclass to create vfat images, move the 
common parts from image.bbclass into image-common.bbclass and add a 
boot-image.bbclass. This class duplicates some code from the wic 
bootimg-partition plugin inside the do_rootfs function and add some 
dummy tasks to minimize the changes in the common code.

I wonder if this is the right direction or if another solution exists.

Best regards
   Stefan


