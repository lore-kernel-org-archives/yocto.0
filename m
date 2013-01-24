Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3FE5EE01458
	for <yocto@yoctoproject.org>; Wed, 23 Jan 2013 16:39:11 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 23 Jan 2013 16:39:10 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,525,1355126400"; d="scan'208";a="247698702"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by azsmga001.ch.intel.com with ESMTP; 23 Jan 2013 16:39:10 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.209]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.35]) with mapi id
	14.01.0355.002; Wed, 23 Jan 2013 16:39:10 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Thread-Topic: are separate -sdk image targets necessary Was: [yocto] Build
	external module against Yocto kernel
Thread-Index: AQHN+Ynh9Q9rTaYroUSoeei2mtokcJhXobmg
Date: Thu, 24 Jan 2013 00:39:09 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C57DD6E88@ORSMSX101.amr.corp.intel.com>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
In-Reply-To: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: are separate -sdk image targets necessary Was: Build external module against Yocto kernel
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
X-List-Received-Date: Thu, 24 Jan 2013 00:39:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Trevor,

-c populate_sdk will generate a SDK that matches the target image, while an=
 -sdk image allows people to use it to boot up device and do development wo=
rk on target as you can see in the requirements of bug 1614. The other usag=
e of an -sdk image is to extract its rootfs and use it as your cross develo=
pment sysroot, if you want to use your toolchain against different sysroot(=
s).

Thanks,
Jessica

-----Original Message-----
From: Trevor Woerner [mailto:twoerner@gmail.com]
Sent: Wednesday, January 23, 2013 8:51 AM
To: Zhang, Jessica
Cc: yocto@yoctoproject.org
Subject: are separate -sdk image targets necessary Was: [yocto] Build exter=
nal module against Yocto kernel

On Tue, Jan 15, 2013 at 2:16 PM, Zhang, Jessica <jessica.zhang@intel.com> w=
rote:
> According to bug 1614, the kernel dev packages should be included in
> sdk images. Please generate your toolchain using "bitbake
> core-image-sato-sdk -c populate_sdk" which will make the toolchain
> target sysroot matching your image's sysroot (this is a new feature of
> 1.3) as long as your image is a sdk image.

I am a bit confused by the above email. To me it appears as if Jessica is s=
aying: "add '-c populate_sdk' to the build of an -sdk image".

But if we look at this email from Mark Hatle:
http://www.mail-archive.com/yocto@yoctoproject.org/msg10636.html

I get the impression that Mark is saying: "now that '-c populate_sdk'
is available, there no longer is any need for separate -sdk images".

Am I confusing two different things with each other?

