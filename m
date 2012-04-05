Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46850E0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 08:12:24 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 05 Apr 2012 08:12:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="129062527"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by orsmga002.jf.intel.com with ESMTP; 05 Apr 2012 08:12:23 -0700
Received: from orsmsx103.amr.corp.intel.com (10.22.225.130) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Thu, 5 Apr 2012 08:12:23 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX103.amr.corp.intel.com ([169.254.2.10]) with mapi id
	14.01.0355.002; Thu, 5 Apr 2012 08:12:23 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] i think the meta-intel "BSP layer" needs to be
	clarified in BSP guide
Thread-Index: AQHNEydH2dkdK1LuakqdjXRuQgJcp5aMViQg
Date: Thu, 5 Apr 2012 15:12:22 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945178C7A@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1204050815450.21476@oneiric>
In-Reply-To: <alpine.DEB.2.02.1204050815450.21476@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
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
X-List-Received-Date: Thu, 05 Apr 2012 15:12:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I think what I can do here is add to the paragraph that talks about some BS=
P layers requiring additional layers on top.  I can call out meta-intel spe=
cifically here and describe that.  That section does have a link back to th=
e "Understanding and Creating Layers" section in the dev manual where meta-=
intel is specifically discussed.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Thursday, April 05, 2012 6:26 AM
To: Yocto discussion list
Subject: [yocto] i think the meta-intel "BSP layer" needs to be clarified i=
n BSP guide


  i think it would be useful if the BSP guide was expanded just a bit
to make it much clearer that the alleged meta-intel "BSP layer" (since
that's how it's referred to) is not *really* a full BSP layer but an
umbrella over multiple intel-based BSP layers, with some common
content.

  it's obviously useful to use a real example to explain how a BSP
layer works, but it would have been more informative if the guide had
used a truly standalone layer, *then* perhaps segued nicely into
meta-layers like meta-intel and meta-ti, etc.

  as it is, i think the current explanation is a bit awkward given
that the crownbay layer.conf file is explained before the first
mention of the meta-intel layer.  a simple solution might be a
prominent <note> before all that starts, emphasizing how what follows
is a little bit different since it involves *two* layers, not just
one.  then it would make much more sense.

  thoughts?

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

