Return-Path: <belen.barros.pena@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0574DE005BB; Fri,  1 Aug 2014 02:39:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CCB6E0056A
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 02:39:09 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 01 Aug 2014 02:39:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,778,1400050800"; d="scan'208";a="582124436"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by orsmga002.jf.intel.com with ESMTP; 01 Aug 2014 02:39:07 -0700
Received: from irsmsx107.ger.corp.intel.com (163.33.3.99) by
	IRSMSX101.ger.corp.intel.com (163.33.3.153) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Fri, 1 Aug 2014 10:38:42 +0100
Received: from irsmsx106.ger.corp.intel.com ([169.254.8.250]) by
	IRSMSX107.ger.corp.intel.com ([169.254.10.245]) with mapi id
	14.03.0195.001; Fri, 1 Aug 2014 10:38:42 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] replace references to hob with references to toaster?
Thread-Index: AQHPrWxWwW8uiSIDbUObSqIrLTJXYw==
Date: Fri, 1 Aug 2014 09:38:24 +0000
Message-ID: <D0011B94.492C7%belen.barros.pena@intel.com>
References: <alpine.LFD.2.11.1407311551370.16577@localhost>
In-Reply-To: <alpine.LFD.2.11.1407311551370.16577@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.3.140616
x-originating-ip: [10.237.224.31]
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
X-List-Received-Date: Fri, 01 Aug 2014 09:39:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <C8D7A91B49F8014BA78C51DF434AEF28@intel.com>
Content-Transfer-Encoding: quoted-printable



On 31/07/2014 20:57, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:

>
>  both in the docs and on the web/wiki pages, there would appear to be
>some places that need some updating.
>
>  the dev manual, ch 4, has references to hob but none to toaster --
>should that not be updated?
>
>  also, the link to hob in the dev manual takes one here:
>
>https://www.yoctoproject.org/tools-resources/projects/hob
>
>where there is no mention of toaster. and on the general internal
>projects page here:
>
>https://www.yoctoproject.org/tools-resources/projects
>
>there are references to both hob and toaster, with no mention of
>toaster being the newer version,

That's because Toaster is not a new version of Hob. Hob was created as a
simple build utility. The goal was making the process of running your
first Yocto Project build as easy as possible, and that's all it does.

Toaster aims to be a web interface to the build system (that loosely
meaning OE and BitBake). The goal is to structure it as a set of modules
that do different things. One of those modules will allow you to configure
and run builds, so that module will probably grow to the point where it
will do exactly what Hob does, and then Toaster will replace Hob. But that
point is not 1.7, I'm afraid, so Hob is not being replaced by Toaster yet.

If this needs to be clarified, I can add a "Hob's twisted relationship
with Toaster" section in the website and wiki explaining the above.

>unless you follow the link to the
>wiki toaster page:
>
>https://wiki.yoctoproject.org/wiki/Toaster

That wiki page says: "This project was formerly known as Web Hob / Webhob
/ webhob, and you
may still find references to the old name in the documentation." It was
not our intention to say that "Toaster is a replacement for Hob", so if
that's how it reads, we better change it! :)

Cheers

Bel=E9n=20

>
>  oh, and that internal projects page also goes on about eglibc, with
>no mention that there is no further development planned for eglibc.
>
>rday
>
>--=20
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>--=20
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto


