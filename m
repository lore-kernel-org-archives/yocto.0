Return-Path: <dmulder@lasx.com>
Received: from omx.cbeyond.com (omx.cbeyond.com [50.20.30.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56FBEE006CB
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2013 16:36:14 -0700 (PDT)
X-SBRS: 5.3
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: omx03bay.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AkQBADT2SFEyFB4LmWdsb2JhbABDhCODJr1GgVsOAQEBAQEICwsHFCiCJAEBAQMBOj8FDQEIFQEMFAk5FBIBBA4FCIgGBgGxf5AJjl0xgmZhA6prgig
X-IronPort-AV: E=Sophos;i="4.84,874,1355115600"; d="scan'208";a="15085332"
Received: from mts.cbeyond.com (HELO EXHUB101.mmeprod.cbeyond) ([50.20.30.11])
	by omx.cbeyond.com with ESMTP; 19 Mar 2013 19:36:07 -0400
Received: from EXMBX202A.mmeprod.cbeyond ([fe80::b0ca:4d9b:ba7c:8227]) by
	EXHUB101.mmeprod.cbeyond ([::1]) with mapi id 14.02.0298.004;
	Tue, 19 Mar 2013 19:35:58 -0400
From: David Mulder <dmulder@lasx.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Building uio-pci-generic  into core-image-minimal
Thread-Index: Ac4k+n3uSd3FvjjwRnOqu+Ecg4mkfA==
Date: Tue, 19 Mar 2013 23:35:57 +0000
Message-ID: <19F0379280417C4A8FE3BD23AA7298E5013484CF@EXMBX202A.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [69.198.178.141]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building uio-pci-generic into core-image-minimal
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
X-List-Received-Date: Tue, 19 Mar 2013 23:36:14 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: Thursday, February 21, 2013 11:53 AM
> I've now simply cherry-picked the two patches that came before this plus =
my
> patch from master on top of the 1.3 release tag, and tested the result;
> patches are attached.

Hi, Paul.

Just a note that this problem ('menuconfig', 'bitbake core-image-minimal' (=
hddimg has correct kernel), 'bitbake core-image-minimal' (hddimage has olde=
st-built kernel)) seems to be in 1.4 M4, which I just tried today, even tho=
ugh you checked in patches to fix it a month ago.

I don't need a fix for it, but I thought you might want to know  (since I a=
lways want to know when my stuff doesn't work :-)

Thanks!
Dave

