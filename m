Return-Path: <jessica.zhang@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BBCDE004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 08:07:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 Sep 2011 08:07:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,449,1312182000"; d="scan'208";a="67927104"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga001.fm.intel.com with ESMTP; 27 Sep 2011 08:07:55 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 27 Sep 2011 08:07:54 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.109]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.101]) with mapi id
	14.01.0323.003; Tue, 27 Sep 2011 08:07:54 -0700
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Jack Mitchell <ml@communistcode.co.uk>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] QEMU nfs kernel panic
Thread-Index: AQHMfPSqHDbz0AyAkUu/cc1sBRxL8ZVhluKA//+9LPA=
Date: Tue, 27 Sep 2011 15:07:53 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C16E848CE@ORSMSX101.amr.corp.intel.com>
References: <4E8191BC.9030207@communistcode.co.uk>
	<4E81BBFF.7040400@communistcode.co.uk>
In-Reply-To: <4E81BBFF.7040400@communistcode.co.uk>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: QEMU nfs kernel panic
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
X-List-Received-Date: Tue, 27 Sep 2011 15:07:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Jack,

The minimal-dev image doesn't contain tcf-agent which is needed for any rem=
ote interaction.  So can you build core-image-sato-sdk image and use it to =
boot up qemu, then your problem will be solved.

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jack Mitchell
Sent: Tuesday, September 27, 2011 5:05 AM
To: yocto@yoctoproject.org
Subject: Re: [yocto] QEMU nfs kernel panic

On 27/09/2011 10:05, Jack Mitchell wrote:
> I am using the stock sysroot and arm kernel zImage downloaded from the
> yocto site. When I try to boot QEMU all is well until it tries to
> mount the nfs root filesystem. It can't find it and the kernel panics,
> I have set --debug all on in the runqemu-export-rootfs script but it
> throws no further errors. Does anyone have any idea why it would do
> this, is it possible that there is something wrong with the nfs
> implementation in the kernel and the module is not loaded correctly,
> or is it more likely that the nfs share isn't mounted on my machine
> and the kernel cannot find it.
>
> Screenshot of kernel panic: http://imgur.com/UbPTT
>
> The only thing that jumps out at me is in the kernel boot up the
> rootfs doesn't have a value as can be seen in the screenshot, but I
> don't know if this is normal or not?
>
> Cheers,
> Jack.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Ok, I managed to fix it. I needed to load the tun module to get it
working. Maybe this should be added as a check in runqemu?

I am now having issues with connecting to the live image, I recieve a
connection refused message when I try to upload the file to the virtual
machine, I have just the stick minimal-dev image so no additional
passwords set.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

