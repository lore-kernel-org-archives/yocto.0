Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F1CE00345
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 08:02:11 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 20 Jul 2012 08:02:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="195573457"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by fmsmga002.fm.intel.com with ESMTP; 20 Jul 2012 08:02:03 -0700
Received: from orsmsx106.amr.corp.intel.com (10.22.225.133) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 20 Jul 2012 08:02:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.93]) by
	ORSMSX106.amr.corp.intel.com ([169.254.5.44]) with mapi id
	14.01.0355.002; Fri, 20 Jul 2012 08:02:02 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: =?iso-8859-1?Q?Timo_M=FCller?= <mail@timomueller.eu>
Thread-Topic: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse
Thread-Index: AQHNZOWziBt+fCyTaUuDKJZvnyhZP5cvIhlAgAGAuYCAAAvmgIABgiuAgAAWgDA=
Date: Fri, 20 Jul 2012 15:02:02 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A44629@ORSMSX101.amr.corp.intel.com>
References: <cover.1342614895.git.timo.mueller@bmw-carit.de>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A42DD5@ORSMSX101.amr.corp.intel.com>
	<5007AFA3.9060306@timomueller.eu>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A4408B@ORSMSX101.amr.corp.intel.com>
	<5008FD8F.6090706@timomueller.eu>
In-Reply-To: <5008FD8F.6090706@timomueller.eu>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
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
X-List-Received-Date: Fri, 20 Jul 2012 15:02:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This will be a nice feature.  Thanks!

Scott

-----Original Message-----
From: Timo M=FCller [mailto:mail@timomueller.eu]=20
Sent: Thursday, July 19, 2012 11:41 PM
To: Rifenbark, Scott M
Cc: yocto@yoctoproject.org; Timo Mueller
Subject: Re: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse

Hi,

Rifenbark, Scott M wrote, On 19.07.2012 16:39:
> Very nice... thanks
>
> -----Original Message-----
> From: Timo M=FCller [mailto:mail@timomueller.eu]
> Sent: Wednesday, July 18, 2012 11:57 PM
> To: Rifenbark, Scott M
> Cc: yocto@yoctoproject.org; Timo Mueller
> Subject: Re: [yocto] [RFC 0/8] Integrate yocto documentation into eclipse
>
> Hi,
>
> Rifenbark, Scott M wrote, On 18.07.2012 17:03:
>> Hi,
>>
>> This seems like a very cool idea.  What about when things change
>   > structurally for the Yocto Docs? For example, right now I am
>   > restructuring much of the Eclipse information that is in the ADT
>   > manual to move it to the development manual as part of an application
>   > development flow.  It looks like your patch here includes the ADT
>   > manual and the Quick Start.  The changes I am working on will
>   > eventually require the YP development manual as well.
>
> I wanted to make sure that it is possible to generate eclipse help from
> the documentation and integrate it into eclipse. Starting with the
> development manual and the quick start guide was the obvious choice.
> But, as I didn't encounter any problems using the docbook eclipse
> stylesheet on the documentation, I suspect that integrating the other
> documents is also possible.
> I will give it a try and let you know about the results.
>

As I suspected I didn't encounter any problems generating eclipse help=20
documentation from all documentation parts (dev-manual, kernel-manual,=20
...). So it will be straight-forward and easy to add them to the eclipse=20
plugin as well.

>>
>> Scott

<snip>

Regards,
Timo

