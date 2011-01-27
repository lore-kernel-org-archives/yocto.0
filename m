Return-Path: <marcelo.lorenzati@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1E2534C8112C
	for <yocto@yoctoproject.org>; Thu, 27 Jan 2011 06:31:15 -0600 (CST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 27 Jan 2011 04:31:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.60,385,1291622400"; d="scan'208";a="651710167"
Received: from rrsmsx603.amr.corp.intel.com ([10.31.0.57])
	by fmsmga002.fm.intel.com with ESMTP; 27 Jan 2011 04:31:14 -0800
Received: from rrsmsx606.amr.corp.intel.com (10.31.1.130) by
	rrsmsx603.amr.corp.intel.com (10.31.0.57) with Microsoft SMTP Server
	(TLS) id 8.2.254.0; Thu, 27 Jan 2011 05:31:14 -0700
Received: from rrsmsx503.amr.corp.intel.com ([10.31.0.31]) by
	RRSMSX606.amr.corp.intel.com ([10.31.1.130]) with mapi; Thu, 27 Jan 2011
	05:31:14 -0700
From: "Lorenzati, Marcelo" <marcelo.lorenzati@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Date: Thu, 27 Jan 2011 05:31:12 -0700
Thread-Topic: [yocto] ulibc instead of glibc
Thread-Index: Acu9oFilpk8cTYdiQUuggQyVveR3wQAAB7YQ
Message-ID: <FE028D69955796489B510CE43DBBE8030118CF9E3E@rrsmsx503.amr.corp.intel.com>
References: <FE028D69955796489B510CE43DBBE8030118C8B7E8@rrsmsx503.amr.corp.intel.com>
	<4D409288.90903@linux.intel.com>
In-Reply-To: <4D409288.90903@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ulibc instead of glibc
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
X-List-Received-Date: Thu, 27 Jan 2011 12:31:15 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren,
	I'm just trying to estimate the minimal footprint that can be achieved for=
 an image with a basic set of features in order to have a comparison.
In march I'll participate in a local academia event in Argentina and I'll b=
e talking about Yocto, so I have anticipated that this kind of questions wo=
uld be in place.
=09

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Wednesday, January 26, 2011 6:31 PM
To: Lorenzati, Marcelo
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] ulibc instead of glibc

On 01/25/2011 10:36 AM, Lorenzati, Marcelo wrote:
> Hi all,
>
> I wanted to know if it's feasible to build Yocto with ulibc instead of
> glibc and if someone have tried.
>
> In a really constrained system could be the difference between selecting
> RT Linux or another real time OS.

What size of an image are you hoping to achieve?


--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

