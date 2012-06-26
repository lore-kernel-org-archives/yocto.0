Return-Path: <david.c.stewart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3FD2E006D9
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 13:10:48 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 26 Jun 2012 13:10:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="116285386"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by AZSMGA002.ch.intel.com with ESMTP; 26 Jun 2012 13:10:48 -0700
Received: from orsmsx101.amr.corp.intel.com (10.22.225.128) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 26 Jun 2012 13:10:45 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.138]) by
	ORSMSX101.amr.corp.intel.com ([169.254.8.59]) with mapi id
	14.01.0355.002; Tue, 26 Jun 2012 13:10:45 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: Dallas Clement <dallas.a.clement@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] How to clean
Thread-Index: AQHNU9DtGFEixNS0SkilORuapSNdw5cNB63A
Date: Tue, 26 Jun 2012 20:10:44 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C866D8D@ORSMSX105.amr.corp.intel.com>
References: <CAE9DZURiOqQg+djPTxz4S9h=uRrmYoce9uGrN1QjzG1ccsoFNQ@mail.gmail.com>
In-Reply-To: <CAE9DZURiOqQg+djPTxz4S9h=uRrmYoce9uGrN1QjzG1ccsoFNQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: How to clean
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
X-List-Received-Date: Tue, 26 Jun 2012 20:10:49 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Dallas Clement
>Sent: Tuesday, June 26, 2012 12:21 PM
>
>I'd like to clean all of my build output so that I can rebuild with a
>different toolchain.  What is the best way to clean without having to
>redownload all of my source packages again?
>
>I can see that something like this
>
>$ bitbake -c cleanall linux-yocto
>
>can clean the kernel or an individual package.  I want to clean everything=
.

I just delete the tmp directory and that seems to get the result I want - r=
emove all the binaries but doesn't delete the sources.

