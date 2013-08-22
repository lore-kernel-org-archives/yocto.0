Return-Path: <belen.barros.pena@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C169FE00747
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 02:53:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 22 Aug 2013 02:53:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,933,1367996400"; d="scan'208";a="384834575"
Received: from irsmsx103.ger.corp.intel.com ([163.33.3.157])
	by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2013 02:53:18 -0700
Received: from irsmsx152.ger.corp.intel.com (163.33.192.66) by
	IRSMSX103.ger.corp.intel.com (163.33.3.157) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 22 Aug 2013 10:53:17 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.233]) by
	IRSMSX152.ger.corp.intel.com ([169.254.6.33]) with mapi id
	14.03.0123.003; Thu, 22 Aug 2013 10:53:17 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Frank Eisenmenger <eisenmenger@fmp-berlin.de>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Where are those images gone ?
Thread-Index: AQHOnx1tJci3Hy67mEKeWtJGX3BJKA==
Date: Thu, 22 Aug 2013 09:53:18 +0000
Message-ID: <CE3B9CF2.30A8F%belen.barros.pena@intel.com>
In-Reply-To: <52149D250200001D00010E02@gwsmtp.fmp-berlin.de>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.3.2.130206
x-originating-ip: [10.237.224.163]
MIME-Version: 1.0
Subject: Re: Where are those images gone ?
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
X-List-Received-Date: Thu, 22 Aug 2013 09:53:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <A177D268CC073844B9604A4BE12915D1@intel.com>
Content-Transfer-Encoding: quoted-printable

Hi Frank,

You need to select the "live" image type before building. You can do that
through Hob. After selecting your machine and image recipe, click on the
"Advanced configuration" button. You will see a list of image types: click
the checkbox for "live". That will produce .hddimg and .iso files.

We know this is a bit of a problem: hopefully we'll get to fix it sometime
soon.

Belen

On 21/08/2013 09:57, "Frank Eisenmenger" <eisenmenger@fmp-berlin.de> wrote:

>Hi,
>
>I've successfully used 'hob' (with poky-dylan-9.0.1) with atom-pc BSP in
>order to create a bootable linux on my 4 GB sdhc flash for eeepc 901.
>Searching for an image-file to 'dd' to my sd-card, I found under my
>build/tmp/deploy/:
>
>./images/core-image-x11-atom-pc.tar.bz2
>./images/core-image-x11-atom-pc.ext3
>./images/core-image-x11-atom-pc-20130820142138.rootfs.ext3
>./images/core-image-x11-atom-pc-20130820142138.rootfs.tar.bz2
>
>I could not find any suitable docu how to use those.
>
>There're only texts to use 'hddimage' files (e.g.
>www.yoctoproject.org/download/intel-atom-based-pcs-and-devices ), I was
>unable to create using 'hob'.
>
>Regards,
>
>Frank
>
>
> =

>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


