Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 770B0E0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 08:46:52 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 05 Apr 2012 08:46:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138077471"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by fmsmga001.fm.intel.com with ESMTP; 05 Apr 2012 08:46:52 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 5 Apr 2012 08:46:51 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.106]) with mapi id
	14.01.0355.002; Thu, 5 Apr 2012 08:46:51 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>, "Robert P. J. Day"
	<rpjday@crashcourse.ca>
Thread-Topic: [yocto] i think the meta-intel "BSP layer" needs to be
	clarified in BSP guide
Thread-Index: AQHNEydH2dkdK1LuakqdjXRuQgJcp5aMViQggAB4cQD//4xG8IAABR6w
Date: Thu, 5 Apr 2012 15:46:50 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945178D11@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1204050815450.21476@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945178C7A@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1204051116220.29794@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945178CF1@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237945178CF1@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: i think the meta-intel "BSP layer" needs to be clarified in BSP guide
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
X-List-Received-Date: Thu, 05 Apr 2012 15:46:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I looked at meta-ti and I don't see other BSP Layers within it.  I see the =
recipe-* stuff, conf, classes, etc.  Can someone explain how meta-ti is lik=
e meta-intel?

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Rifenbark, Scott M
Sent: Thursday, April 05, 2012 9:28 AM
To: Robert P. J. Day
Cc: Yocto discussion list
Subject: Re: [yocto] i think the meta-intel "BSP layer" needs to be clarifi=
ed in BSP guide

Good points Robert.

Thanks

-----Original Message-----
From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]=20
Sent: Thursday, April 05, 2012 9:21 AM
To: Rifenbark, Scott M
Cc: Yocto discussion list
Subject: RE: [yocto] i think the meta-intel "BSP layer" needs to be clarifi=
ed in BSP guide

On Thu, 5 Apr 2012, Rifenbark, Scott M wrote:

> I think what I can do here is add to the paragraph that talks about
> some BSP layers requiring additional layers on top.  I can call out
> meta-intel specifically here and describe that.  That section does
> have a link back to the "Understanding and Creating Layers" section
> in the dev manual where meta-intel is specifically discussed.

  i think that would do, i was just concerned about tossing the reader
an example that involved two "layers" of BSP as an introduction.  it
might be worth mentioning meta-ti as another example, just so the
reader doesn't get the impression meta-intel is the only possibility
there.

  i will think on this more.

rday

--=20

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

