Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B38E9E00B30; Thu,  5 Apr 2018 02:14:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 80E6BE00857
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 02:14:35 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	05 Apr 2018 02:14:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,410,1517904000"; d="scan'208";a="40876705"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 05 Apr 2018 02:14:34 -0700
To: Aditya Tayade <Aditya.Tayade@kpit.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <MAXPR01MB03488720F9BD6E615B6832BE91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <f95a8fea-9b6a-0e07-8490-5cf49eb75709@linux.intel.com>
Date: Thu, 5 Apr 2018 12:08:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <MAXPR01MB03488720F9BD6E615B6832BE91A60@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: QEMU package list verification
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
X-List-Received-Date: Thu, 05 Apr 2018 09:14:37 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 04/02/2018 01:28 PM, Aditya Tayade wrote:
> 1) Build core-image-sato for yocto 2.5 ( DISTRO_VERSION = 
> 2.4+snapshot-20180402)
> 2) I used the bitbake-layers show-recipes to list down the packages .
> 3) Verify whether the packages are part of the image root fs
> 4) I use command *find ./ -name*<package-name>**
> 
> If above command returns **<package-name>*.so or 
> /var/lib/dnf/yumdb/*/*<package-name>** then i consider the the package 
> successfully added to rootfs.
> If not then i consider the package not present in the rootfs.
> 
> 4) I found some packages not present in the rootfs that are listed in 
> the step 2 . I assume that by default meta, meta-poky and meta-yocto-bsp 
> layers are part of yocto 2.5 so  all the packages present in these 
> layers should be present in QEMU as well.
> 
> If my assumption is correct how do we ensure that all the packges of the 
> layers *meta, meta-poky and meta-yocto-bsp* layers are present in the 
> qemu root fs ?

What goes into an image is defined by that image's recipe. In this case, 
it's meta/recipes-sato/images/core-image-sato.bb - have a look and take 
it from there.


Alex

