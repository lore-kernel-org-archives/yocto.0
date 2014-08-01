Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65E6AE0056A; Thu, 31 Jul 2014 22:39:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AD6AE004E0
	for <yocto@yoctoproject.org>; Thu, 31 Jul 2014 22:39:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 31 Jul 2014 22:39:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,777,1400050800"; d="scan'208";a="463870178"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2014 22:39:34 -0700
Received: from orsmsx157.amr.corp.intel.com (10.22.240.23) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Thu, 31 Jul 2014 22:39:34 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
	ORSMSX157.amr.corp.intel.com ([169.254.9.8]) with mapi id
	14.03.0123.003; Thu, 31 Jul 2014 22:39:34 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] replace references to hob with references to toaster?
Thread-Index: AQHPrPnZNG0vjmVdP0ufhzT5rotCl5u7Or/A
Date: Fri, 1 Aug 2014 05:39:34 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD2A1E@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1407311551370.16577@localhost>
In-Reply-To: <alpine.LFD.2.11.1407311551370.16577@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: replace references to hob with references to toaster?
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
X-List-Received-Date: Fri, 01 Aug 2014 05:39:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Thursday, July 31, 2014 12:58 PM
>To: Yocto discussion list
>Subject: [yocto] replace references to hob with references to toaster?
>
>
>  both in the docs and on the web/wiki pages, there would appear to be som=
e
>places that need some updating.
>
>  the dev manual, ch 4, has references to hob but none to toaster -- shoul=
d that
>not be updated?

If I understand Toaster correctly (and someone can correct me if I am wrong=
), it just reports information on a build.  I don't think you use Toaster t=
o actually build anything.  Thus, Chapter 4, which talks about methods of d=
eveloping an image, would not want to include Toaster as a method.

>
>  also, the link to hob in the dev manual takes one here:
>
>https://www.yoctoproject.org/tools-resources/projects/hob
>
>where there is no mention of toaster. and on the general internal projects=
 page
>here:
>
>https://www.yoctoproject.org/tools-resources/projects
>
>there are references to both hob and toaster, with no mention of toaster b=
eing
>the newer version, unless you follow the link to the wiki toaster page:
>
>https://wiki.yoctoproject.org/wiki/Toaster
>
>  oh, and that internal projects page also goes on about eglibc, with no m=
ention
>that there is no further development planned for eglibc.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

