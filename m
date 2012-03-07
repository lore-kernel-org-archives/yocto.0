Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 551AFE013A2
	for <yocto@yoctoproject.org>; Wed,  7 Mar 2012 08:11:27 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 07 Mar 2012 08:11:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="115547479"
Received: from orsmsx603.amr.corp.intel.com ([10.22.226.49])
	by orsmga001.jf.intel.com with ESMTP; 07 Mar 2012 08:10:23 -0800
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx603.amr.corp.intel.com (10.22.226.49) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Wed, 7 Mar 2012 08:10:23 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.188]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.120]) with mapi id
	14.01.0355.002; Wed, 7 Mar 2012 08:10:22 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Thread-Topic: [yocto] dev manual has broken "git workflows" link, what
	should replace it?
Thread-Index: AQHM/FFqdOhfvHvRhki7/bb1MT4S+ZZe298AgACjFYD//4Gg4A==
Date: Wed, 7 Mar 2012 16:10:21 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123793B744443@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203070557520.29783@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB123793B7443EA@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1203071039080.8310@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203071039080.8310@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual has broken "git workflows" link, what should replace it?
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
X-List-Received-Date: Wed, 07 Mar 2012 16:11:27 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I sent an email requesting a merge/pull from yocto-docs into poky/documenta=
tion yesterday.  I looked at the last documentation commit in poky/document=
ation and it was dated January 6.  They are quite a bit out of sync.

Scott

-----Original Message-----
From: Robert P. J. Day [mailto:rpjday@crashcourse.ca]=20
Sent: Wednesday, March 07, 2012 9:41 AM
To: Rifenbark, Scott M
Cc: Yocto discussion list
Subject: RE: [yocto] dev manual has broken "git workflows" link, what shoul=
d replace it?

On Wed, 7 Mar 2012, Rifenbark, Scott M wrote:

> This area in the document has been re-worked and the bad link does
> not exist in the
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html
> version (master) of the document.

  i'm sure you've answered this before, but how far behind is the docs
repo from the general yocto dev repo?  i simply use the yocto
development checkout for my work, so that's what i'm picking up for
docs.  and give that it's development, it would seem that commits
shouldn't languish very long in the docs repo before being pushed.

  what's the general time lag?

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

