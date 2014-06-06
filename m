Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDC20E00B9F; Fri,  6 Jun 2014 06:47:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B97CE009E7
	for <yocto@yoctoproject.org>; Fri,  6 Jun 2014 06:47:30 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 06 Jun 2014 06:47:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,989,1392192000"; d="scan'208";a="550900555"
Received: from irsmsx104.ger.corp.intel.com ([163.33.3.159])
	by fmsmga002.fm.intel.com with ESMTP; 06 Jun 2014 06:47:29 -0700
Received: from irsmsx108.ger.corp.intel.com (163.33.3.3) by
	IRSMSX104.ger.corp.intel.com (163.33.3.159) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 6 Jun 2014 14:47:26 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.14]) by
	IRSMSX108.ger.corp.intel.com ([169.254.11.221]) with mapi id
	14.03.0123.003; Fri, 6 Jun 2014 14:47:26 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Bharath Chandra <ellurubharath29@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Query in yocto
Thread-Index: AQHPgY3ZOzCMpXEu2EObHFlJEmHDug==
Date: Fri, 6 Jun 2014 13:47:25 +0000
Message-ID: <CFB7817F.45A32%belen.barros.pena@intel.com>
References: <CAGM0ZdSUpbeA3grSA5OZ5Y7cFesqKYBfRAc8genYCV2pWPjLKA@mail.gmail.com>
In-Reply-To: <CAGM0ZdSUpbeA3grSA5OZ5Y7cFesqKYBfRAc8genYCV2pWPjLKA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.2.140509
x-originating-ip: [10.237.224.30]
MIME-Version: 1.0
Subject: Re: Query in yocto
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
X-List-Received-Date: Fri, 06 Jun 2014 13:47:42 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <FBF931FAE44D9541B87C681604175CEF@intel.com>
Content-Transfer-Encoding: quoted-printable


On 03/06/2014 00:51, "Bharath Chandra" <ellurubharath29@gmail.com> wrote:

>Hi,
>
>
>I am new to yocto and have been working on customizing a recipe and
>building a new image. I have a small query. By looking at a binary file
>on the target machine, I want to know from which recipe it has been
>generated??.=20

Hi Bharath,

Toaster, the web-based interface, is one way to figure this out. It shows
you a list of all the binary files in your root file system, which package
generated them, and which recipe produced the package. This video (kind
of) shows how:

https://wiki.yoctoproject.org/wiki/images/e/ef/Toaster-manual-v3.webmhd.web
m

More details about the tool here:

https://wiki.yoctoproject.org/wiki/Toaster

Cheers

Bel=E9n

>Came to know that someone is working
> on a similar kind of tool called as bb tool. Any help on this topic
>would be appreciated.
>
>
>--=20
>Thanks & Regards,
>Bharath Chandra Elluru.
>Contact Number:785-979-4875.
>
>


