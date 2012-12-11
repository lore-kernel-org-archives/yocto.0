Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C6FBE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 13:09:49 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 11 Dec 2012 13:09:45 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,262,1355126400"; d="scan'208";a="230109364"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 11 Dec 2012 13:09:45 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.125]) with mapi id
	14.01.0355.002; Tue, 11 Dec 2012 13:09:44 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Disabling PREMIRRORS and upstream sources
Thread-Index: AQHN0WmWxgskPaXHkECFxGcGckjxfpgUJBng
Date: Tue, 11 Dec 2012 21:09:43 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACC39E@ORSMSX101.amr.corp.intel.com>
References: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
In-Reply-To: <CANge7vV0M3t1r3e+=76+r7+_BwdaQfW2eOQ=AeLTXn5-R7XX-A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: Disabling PREMIRRORS and upstream sources
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
X-List-Received-Date: Tue, 11 Dec 2012 21:09:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Isn't this set up in the local.conf file for global use?  Also, Jon, what d=
ocumentation are you referring to here?  Are you looking at the latest Yoct=
o Project documentation (e.g. http://www.yoctoproject.org/docs/1.4/poky-ref=
-manual/poky-ref-manual.html for the Yocto Project Reference Manual?).

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Jon Szymaniak
>Sent: Monday, December 03, 2012 7:19 AM
>To: yocto@yoctoproject.org
>Subject: [yocto] Disabling PREMIRRORS and upstream sources
>
>Is there a simple way to disable the use of PREMIRRORS and MIRRORS
>within a recipe?
>
>(Perhaps the answer here might be worth mentioning in Section 12.23 of
>the
>Poky Reference  Manual?)
>
>My use case for this is the situation where the code hasn't been
>released yet,
>so there's no point in checking mirrors.
>
>Thank you,
>Jon
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

