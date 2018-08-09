Return-Path: <yv@iseg-hv.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF081E00CEE; Thu,  9 Aug 2018 07:47:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wp465.webpack.hosteurope.de (wp465.webpack.hosteurope.de
	[80.237.133.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE4DFE00AD1
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 07:47:45 -0700 (PDT)
Received: from p578ab399.dip0.t-ipconnect.de ([87.138.179.153]
	helo=post.iseg.site); authenticated
	by wp465.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
	id 1fnmE4-0001n0-45; Thu, 09 Aug 2018 16:47:44 +0200
Received: from [192.168.25.170] (unknown [192.168.25.170])
	by post.iseg.site (Postfix) with ESMTP id 71C974C004B
	for <yocto@yoctoproject.org>; Thu,  9 Aug 2018 16:47:43 +0200 (CEST)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Yuvarajesh Valleru <yv@iseg-hv.de>
Message-ID: <6f61f2a3-4825-2c6e-ece7-39a78e324c1c@iseg-hv.de>
Date: Thu, 9 Aug 2018 16:43:22 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
X-bounce-key: webpack.hosteurope.de;yv@iseg-hv.de;1533826065;df738334;
X-HE-SMSGID: 1fnmE4-0001n0-45
Subject: custom splash screen using psplash
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
X-List-Received-Date: Thu, 09 Aug 2018 14:47:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: de-DE

Hallo,

I would like to overwrite the poky psplash splash screen [1] with my 
custom splash screen.

I copied the psplash_git.bb recipe from 
openembedded-core/meta/recipes-core/psplash/ to my custom layer and 
changed psplash_poky_img.h to mycustom_image_img.h in mycustom_recipe/files/

But during the boot the Custom splash screen displays along with a 
progress bar from poky splash screen. (I noticed that the psplash.c 
source file also contains progress-bar.h file included)

Is it possible to remove or overwrite the complete poky splash screen 
files with mycustom_splashscreen?

Thank you,

Best Regards;
Rajesh

[1] 
https://git.yoctoproject.org/cgit.cgi/poky/plain/meta/recipes-core/psplash/psplash_git.bb


