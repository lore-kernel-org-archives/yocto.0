Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5E4CE013A5
	for <yocto@yoctoproject.org>; Mon, 19 Mar 2012 10:17:28 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 19 Mar 2012 10:17:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141317587"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2012 10:17:28 -0700
Received: from orsmsx102.amr.corp.intel.com (10.22.225.129) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Mon, 19 Mar 2012 10:17:28 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.160]) with mapi id
	14.01.0355.002; Mon, 19 Mar 2012 10:17:27 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] my idea of a quick start guide
Thread-Index: AQHM9wIhawuYzRKybECCnXXJm+VyC5ZtqYfQgATDUQD//4zWAA==
Date: Mon, 19 Mar 2012 17:17:26 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945173A2A@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1202291147340.2150@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945173476@ORSMSX101.amr.corp.intel.com>
	<4F6767CE.5080802@linux.intel.com>
In-Reply-To: <4F6767CE.5080802@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: my idea of a quick start guide
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
X-List-Received-Date: Mon, 19 Mar 2012 17:17:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I could replace the Beagleboard xM machine with qemux86.  The introductory =
bit up front provides minimal inconvenience to the reader to quickly hop do=
wn to the section via the link. =20

Scott

-----Original Message-----
From: Darren Hart [mailto:dvhart@linux.intel.com]=20
Sent: Monday, March 19, 2012 11:07 AM
To: Rifenbark, Scott M
Cc: Robert P. J. Day; Yocto discussion list
Subject: Re: [yocto] my idea of a quick start guide



On 03/16/2012 04:27 PM, Rifenbark, Scott M wrote:
> Several people have indicated a quick start section like Robert's wiki pa=
ge would be good in the YP QS.  I agree that the idea of diverting the supe=
r user to a shortened, more concise section that let's you kick the tires o=
f Yocto is a good idea.  I have created a section based on Robert's example=
 from his wiki page.  You can see it at this link:
>=20
> http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs=
.html#super-user
>=20
> Feedback and comments welcome.

It's not a bad section to have, but it doesn't feel integrated into the
quickstart, especially the bit about building for Beagleboard xM. Users
looking for a truly quick start will still have to troll through pages
of introductory overview and concepts before they get to this. I still
argue that a new user should be able to build and boot qemux86 sato
using the QS guide without having to scroll down.

--
Darren

>=20
> Scott
>=20
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Robert P. J. Day
> Sent: Wednesday, February 29, 2012 10:49 AM
> To: Yocto discussion list
> Subject: [yocto] my idea of a quick start guide
>=20
>=20
>   since it's easier to just write something than suggest numerous
> fixes, i took less than an hour and wrote this:
>=20
> http://www.crashcourse.ca/wiki/index.php/Yocto_Project_Quick_Start
>=20
> it's the sort of thing that would have been perfect for me when i
> first jumped into yocto.
>=20
>   i'm going to add a couple more short sections but, technically, it
> contains everything i would have needed to know to build my first
> image.
>=20
>   thoughts?
>=20
> rday
>=20

--=20
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

