Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7099FE006B8
	for <yocto@yoctoproject.org>; Mon, 14 Nov 2011 07:59:40 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 14 Nov 2011 07:59:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.69,509,1315206000"; d="scan'208";a="90252941"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by fmsmga002.fm.intel.com with ESMTP; 14 Nov 2011 07:59:39 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 14 Nov 2011 07:59:39 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.228]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.149]) with mapi id
	14.01.0355.002; Mon, 14 Nov 2011 07:59:39 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: William Mills <wmills@ti.com>, "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] couple questions about cleaning up the Quick Start Guide
Thread-Index: AQHMoMDxxzXOyIHovUe6aIKUs1iODpWtEWyA
Date: Mon, 14 Nov 2011 15:59:38 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916EAEDF0@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1110301030050.32341@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237916E9FEFB@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1110311144500.7448@localhost6.localdomain6>
	<4EBDA104.3040007@ti.com>
In-Reply-To: <4EBDA104.3040007@ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple questions about cleaning up the Quick Start Guide
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
X-List-Received-Date: Mon, 14 Nov 2011 15:59:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This is fixed by removing the "www" and I have pushed to yocto-docs/master =
and yocto-docs/Edison and published to "latest" and "current" directories o=
n the website (1.2 and 1.1, respectively). =20

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of William Mills
Sent: Friday, November 11, 2011 2:26 PM
To: Robert P. J. Day
Cc: Yocto discussion list
Subject: Re: [yocto] couple questions about cleaning up the Quick Start Gui=
de



On 10/31/2011 11:47 AM, Robert P. J. Day wrote:
> On Mon, 31 Oct 2011, Rifenbark, Scott M wrote:
>
>> Robert,
>>
>> Thanks for the stuff and the look here.  Regarding your first point
>> - I don't have a problem using the real link over the redirect.
>> The only things that come to mind are if they work why change them?
>> But, if the community wants the downloads.yoctoproject.org/releases
>> URL in there I can certainly go in and make changes to master.
>
>    yes, that's a judgment call, someone else can make that decision.
> obviously, not a critical change.
>

I think someone tried to "fix" the quick start based on Robert's input=20
and it got broken instead.

The quick start I downloaded on Oct 21 was fine and said:

$ wget http://www.yoctoproject.org/downloads/poky/poky-edison-6.0.tar.bz2

The one I get today from
http://www.yoctoproject.org/docs/current/yocto-project-qs/yocto-project-qs.=
html=20

does not work and says:

$ wget=20
http://www.downloads.yoctoproject.org/releases/yocto/yocto-1.1/poky-edison-=
6.0.tar.bz2

If you lose the "www." it should work.
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

