Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA194E00E3D; Fri,  9 Feb 2018 04:18:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B49A5E00D5F
	for <yocto@yoctoproject.org>; Fri,  9 Feb 2018 04:18:13 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w19CI9JM000648
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Fri, 9 Feb 2018 14:18:10 +0200
To: Robert Berger <yocto.user.mailinglist@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <ac8ff7de-889b-f948-87ba-cac758900512@vitheia.com>
	<4662d7ee-4215-e81e-58aa-a98a42c5ad56@gmail.com>
	<b2a06fdc-c5b5-42be-e1e9-1005c5c531e6@vitheia.com>
	<f14fc372-f394-2d32-4c95-c8b71fa43a51@gmail.com>
	<e412b2d0-6e14-983e-b7cc-63938705344a@vitheia.com>
	<903d7ec1-c04d-99a6-285b-edcd65b93778@gmail.com>
From: Mircea Gliga <mircea.gliga@vitheia.com>
Message-ID: <e04cc9ee-2dcc-3548-2a21-18daf1046416@vitheia.com>
Date: Fri, 9 Feb 2018 14:18:09 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <903d7ec1-c04d-99a6-285b-edcd65b93778@gmail.com>
Subject: Re: static libraries missing from sdk
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
X-List-Received-Date: Fri, 09 Feb 2018 12:18:17 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US

Hi


 > I am not sure it makes sense to build and add both the static and 
dynamic libs to an SDK.
The idea is that I want everything that is needed to build the app in 
the SDK and I don't want to individually specify what goes in because 
it's error prone and you can forget something.
Some pkgs could have dynamic libs other could have static libs ...

See below further comments.
Thanks for your help!

On 07/02/18 20:56, Robert Berger wrote:
> Hi,
>
> I played around a bit with my autotooled lib, which produces only a 
> static lib.
>
> 1) My preferred approach is this:
>
> I add to local.conf:
>
> TOOLCHAIN_TARGET_TASK_append = " libhw-a-staticdev libhw-a-dev"
>
> The recipe looks like this:
>
> https://pastebin.com/YLUvQSSx
>
> 2) But your approach works as well:
>
> I add to local.conf:
>
> # we need to add the empty package to the rootfs for
> # IMAGE_FEATURES_append to work:
> IMAGE_INSTALL_append = " libhw-a"
That's what I've been missing... I need to add the empty main pkg in the 
image and then the static library ends up in the SDK - because the SDK 
it's build upon the image...
It's not a perfect scenario... First you have to create the empty main 
pkg using ALLOW_EMPTY then install the empty pkg in the image...

> # add all -dev, -dbg, -staticdev pkgs to the SDK (only):
> SDKIMAGE_FEATURES_append = " dev-pkgs dbg-pkgs staticdev-pkgs"
>
> The recipe looks like this:
> (needed to slightly modify my original recipe)
>
> https://pastebin.com/VcsqNuMf
>
> On the rootfs there is nothing with respect to this recipe.
>
> In the SDK are:
> ./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/lib/libhw.a
> ./opt/poky/2.4/sysroots/armv7a-neon-poky-linux-gnueabi/usr/include/lib_hw.h 
>
>
> Regards,
>
> Robert
>


