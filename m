Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4689E00282
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2012 07:39:19 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 19 Jul 2012 07:39:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="124361090"
Received: from orsmsx606.amr.corp.intel.com ([10.22.226.128])
	by AZSMGA002.ch.intel.com with ESMTP; 19 Jul 2012 07:39:18 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx606.amr.corp.intel.com (10.22.226.128) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 19 Jul 2012 07:39:18 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.231]) with mapi id
	14.01.0355.002; Thu, 19 Jul 2012 07:39:18 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
Thread-Topic: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse
Thread-Index: AQHNZOWziBt+fCyTaUuDKJZvnyhZP5cvIhlAgAGAuYCAAAvmgA==
Date: Thu, 19 Jul 2012 14:39:17 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A4408B@ORSMSX101.amr.corp.intel.com>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A42DD5@ORSMSX101.amr.corp.intel.com>
	<5007AFA3.9060306@timomueller.eu>
In-Reply-To: <5007AFA3.9060306@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Timo Mueller <timo.mueller@bmw-carit.de>
Subject: Re: [RFC 0/8] Integrate yocto documentation into eclipse
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
X-List-Received-Date: Thu, 19 Jul 2012 14:39:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Very nice... thanks

-----Original Message-----
From: Timo M=FCller [mailto:mail@timomueller.eu]=20
Sent: Wednesday, July 18, 2012 11:57 PM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org; Timo Mueller
Subject: Re: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse

Hi,

Rifenbark, Scott M wrote, On 18.07.2012 17:03:
> Hi,
>
> This seems like a very cool idea.  What about when things change
 > structurally for the Yocto Docs? For example, right now I am
 > restructuring much of the Eclipse information that is in the ADT
 > manual to move it to the development manual as part of an application
 > development flow.  It looks like your patch here includes the ADT
 > manual and the Quick Start.  The changes I am working on will
 > eventually require the YP development manual as well.

I wanted to make sure that it is possible to generate eclipse help from=20
the documentation and integrate it into eclipse. Starting with the=20
development manual and the quick start guide was the obvious choice.
But, as I didn't encounter any problems using the docbook eclipse=20
stylesheet on the documentation, I suspect that integrating the other=20
documents is also possible.
I will give it a try and let you know about the results.

>
> Scott
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of mail@timomueller.eu
> Sent: Wednesday, July 18, 2012 6:03 AM
> To: yocto@yoctoproject.org
> Cc: Timo Mueller
> Subject: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse
>
> From: Timo Mueller <timo.mueller@bmw-carit.de>
>
> Hi,
>
> the documentation of the yocto project can currently be viewed online
> or as a separate pdf. When using the eclipse ide to develop software
> on base of a yocto sysroot and toolchain it would be convenient to
> access the relevant parts of the documentation from within the ide.
>
> In order to achieve this, I've generated eclipse help from yocto's
> documentation (adt-manual, yocto-project-qs). I have intergrated this
> documentation in the ide and it can now be accessed through the
> eclipse help center (Help -> Help Contents). Please let me know what
> you think about it?
>
> Yocto's documentation is licensed under the Creative Commons
> Attribution-Share Alike 2.0 UK: England & Wales (CCA-SA), which is
> incompatible to the Eclipse Public License 1.0. Thus I've created a
> standalone feature to simply redistribute the documentation avoiding
> licensing issues. Do you agree on the way this is structured?
>
> Cheers,
>    Timo
>
> Timo Mueller (8):
>    plugins/sdk.doc.user: Added plugin for the yocto project
>      documentation
>    plugins/sdk.doc.user: Added empty table of contents
>    feature/sdk.doc: Added feature containing yocto documentation plugins
>    feature/sdk.doc: Added org.yocto.sdk.doc.user plugin
>    plugins/sdk.doc.user: Added yocto quick start guide
>    feature/sdk: Added org.yocto.sdk.doc feature.
>    features/sdk.site: Added eclipse help feature to update site
>    plugins/sdk.doc.user: Added yocto adt manual

<snip>

Cheers,
Timo

