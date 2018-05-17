Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71FDFE009BC; Wed, 16 May 2018 21:14:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A1CCE00831
	for <yocto@yoctoproject.org>; Wed, 16 May 2018 21:14:13 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	16 May 2018 21:14:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.49,409,1520924400"; d="scan'208";a="224912540"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.23.24])
	([10.221.23.24])
	by orsmga005.jf.intel.com with ESMTP; 16 May 2018 21:14:11 -0700
To: Rahul jangra <rahuljangra017@gmail.com>, yocto@yoctoproject.org
References: <CAGUdgLYvHa1DMx4qZ5D1M+x7YSymjYJ9_htyjf=bXKuV50V4hA@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <12db0c4e-d881-60ca-8af9-01461ebc00a5@intel.com>
Date: Thu, 17 May 2018 12:14:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAGUdgLYvHa1DMx4qZ5D1M+x7YSymjYJ9_htyjf=bXKuV50V4hA@mail.gmail.com>
Subject: Re: apt-get error
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
X-List-Received-Date: Thu, 17 May 2018 04:14:14 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 05/16/2018 06:31 PM, Rahul jangra wrote:
> Hi
> i am facing the so many issues to creating .deb base yocto raspberry pi
> image now i am getting this error.
> someone can help me how to resolve this error.
> 
> ERROR: core-image-full-cmdline-1.0-r0 do_rootfs: Unable to install
> packages. Command
> '/home/nsspl/rpi/build/tmp/work/raspberrypi3-poky-linux-gnueabi/core-image-f
> ull-cmdline/1.0-r0/recipe-sysroot-native/usr/bin/apt-get install
> --force-yes --allow-unauthenticated mender psplash-raspberrypi shadow
> run-postinsts hello-mender packagegroup-core-boot kernel-devicetree
> packagegroup-core-ssh-openssh apt dpkg base-passwd kernel-image-4.14.37

It'd help if you can share more details - layers that you are using,
which version, local configuration and the complete error.


