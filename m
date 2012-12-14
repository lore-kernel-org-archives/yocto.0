Return-Path: <jessica.zhang@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97AB6E00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 13:10:00 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 14 Dec 2012 13:10:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,284,1355126400"; d="scan'208";a="231736114"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by azsmga001.ch.intel.com with ESMTP; 14 Dec 2012 13:09:59 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 14 Dec 2012 13:09:59 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.43]) with mapi id
	14.01.0355.002; Fri, 14 Dec 2012 13:09:58 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: Mark Hatle <mark.hatle@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] What is GMAE?
Thread-Index: AQHN2jMUaz0r4g0zHkC5Fchvzb9UyZgZORyAgAAQoQD//33tAA==
Date: Fri, 14 Dec 2012 21:09:57 +0000
Message-ID: <C6510F6D410BB64A8C15398EDC6B847C46B6C012@ORSMSX101.amr.corp.intel.com>
References: <50CB8173.4030801@am.sony.com>
	<CAJTo0LaHPuYMnasJJ3dvufb6HYy9rpf8CUpkB8CcwMNSyux5NQ@mail.gmail.com>
	<50CB9004.60908@windriver.com>
In-Reply-To: <50CB9004.60908@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: What is GMAE?
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
X-List-Received-Date: Fri, 14 Dec 2012 21:10:00 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Actually I talked with Richard regarding retiring the toolchain targets (me=
ta-toolchain and meta-toolchain-gmae) as Mark mentioned that now we can bui=
ld a toolchain matching the image.  Also, we're continue improving adt-inst=
aller which also allows you to setup sysroot using the target image as well=
.  Richard's concern is there maybe some legacy user that preferred the too=
lchain target. With the latest changes in toolchain generation which really=
 maps to target images, probably we should unplug to legacy ones to make th=
e toolchain generation more streamline.  Thoughts or concerns?

Thanks,
Jessica

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Mark Hatle
Sent: Friday, December 14, 2012 12:46 PM
To: yocto@yoctoproject.org
Subject: Re: [yocto] What is GMAE?

On 12/14/12 1:46 PM, Burton, Ross wrote:
> On 14 December 2012 19:43, Tim Bird <tim.bird@am.sony.com> wrote:
>> "If you need GMAE, you should use the bitbake meta-toolchain-gmae
>> command. The resulting installation script when run will support such de=
velopment. However, if you are not concerned with GMAE, you can generate th=
e toolchain installer using bitbake meta-toolchain."
>>
>> After googling a bit, I figured out that GMAE stands for Gnome Mobile an=
d Embedded.
>>
>> It might be good to put this acronym somewhere in the manual.
>> (I'm still not sure if I need GMAE or not...)
>
> Basically, GMAE means GTK+ 2 and bits of the GNOME stack.
>
> A stealth plan of mine is to remove every trace of GMAE from Yocto.
> It was an initiative Poky was involved with back in the OpenedHand
> days that didn't really take off, and we're still carrying pieces of
> it.

I get this question a lot.  With the ability (new in 1.3) to build an SDK b=
ased on the contents of any arbitrary image.. the meta-toolchain-gmae is si=
mply not necessary.

bitbake -c populate_sdk <image recipe>

--Mark

> Ross
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

