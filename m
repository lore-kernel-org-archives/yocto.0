Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AC65E005BB; Fri,  1 Aug 2014 02:26:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBDC8E0056A
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 02:26:14 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 Aug 2014 02:20:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,778,1400050800"; d="scan'208";a="582121183"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by orsmga002.jf.intel.com with ESMTP; 01 Aug 2014 02:26:13 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Fri, 1 Aug 2014 02:26:12 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.229]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.235]) with mapi id
	14.03.0123.003; Fri, 1 Aug 2014 02:26:12 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] replace references to hob with references to toaster?
Thread-Index: AQHPrPnZNG0vjmVdP0ufhzT5rotCl5u7Or/AgACkPoD//5tMgA==
Date: Fri, 1 Aug 2014 09:26:11 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD2AE2@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1407311551370.16577@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD2A1E@ORSMSX101.amr.corp.intel.com>
	<alpine.LFD.2.11.1408010421120.14488@localhost>
In-Reply-To: <alpine.LFD.2.11.1408010421120.14488@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 01 Aug 2014 09:26:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable



>-----Original Message-----
>From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]
>Sent: Friday, August 01, 2014 1:23 AM
>To: Rifenbark, Scott M
>Cc: Yocto discussion list
>Subject: RE: [yocto] replace references to hob with references to toaster?
>
>On Fri, 1 Aug 2014, Rifenbark, Scott M wrote:
>
>>
>>
>> >-----Original Message-----
>> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
>> >bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>> >Sent: Thursday, July 31, 2014 12:58 PM
>> >To: Yocto discussion list
>> >Subject: [yocto] replace references to hob with references to toaster?
>> >
>> >
>> >  both in the docs and on the web/wiki pages, there would appear to
>> >be some places that need some updating.
>> >
>> >  the dev manual, ch 4, has references to hob but none to toaster --
>> >should that not be updated?
>>
>> If I understand Toaster correctly (and someone can correct me if I am
>> wrong), it just reports information on a build.  I don't think you use
>> Toaster to actually build anything.  Thus, Chapter 4, which talks
>> about methods of developing an image, would not want to include
>> Toaster as a method.
>
>  having never used toaster (yet), i may be entirely off-base. but the toa=
ster wiki
>page:
>
>https://wiki.yoctoproject.org/wiki/Toaster
>
>claims:
>
>"Toaster is a web-based interface to the Bitbake build system and the Poky
>distribution inside the Yocto Project. This project was formerly known as =
Web
>Hob / Webhob / webhob, and you may still find references to the old name i=
n
>the documentation."
>
>  that pretty clearly suggests it does building and is meant to supersede =
hob, no?

Yes - this does clearly suggest that.  I spoke to key people here and my un=
derstanding of the Hob and Toaster functionality is correct (i.e. Hob build=
s things and Toaster reports things).  "Plans" are for 1.7 to have Toaster =
be able to build things.  If that happens by release time, then I will need=
 to update that chapter 4 in the dev manual to include a section on creatin=
g an image through Toaster and will leave the one in there for Hob since it=
 will still be valid as a method for creating an image. =20

Regarding the wiki, that statement indicating that Toaster was formerly kno=
wn as "Web Hob", etc. was missed.  It needs to be removed.

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


