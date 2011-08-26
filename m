Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F92BE011C1
	for <yocto@yoctoproject.org>; Fri, 26 Aug 2011 13:19:05 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Aug 2011 13:18:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="42638120"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 26 Aug 2011 13:18:57 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 26 Aug 2011 13:18:58 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX152.amr.corp.intel.com ([169.254.8.126]) with mapi id
	14.01.0323.003; Fri, 26 Aug 2011 13:18:57 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] documentation Makefile seems overly strict WRT "VER"
	variable
Thread-Index: AQHMY+MmkYa8vt92BEyXbCBjBarExJUvksPA
Date: Fri, 26 Aug 2011 20:18:56 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237916E5C757@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1108260723110.8380@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1108260723110.8380@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: documentation Makefile seems overly strict WRT "VER"	variable
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
X-List-Received-Date: Fri, 26 Aug 2011 20:19:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

Good point.  I will update the comments about how to invoke this.=20

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Friday, August 26, 2011 4:27 AM
To: Yocto discussion list
Subject: [yocto] documentation Makefile seems overly strict WRT "VER" varia=
ble


  more pedantry: the documentation Makefile reads:

... The command-line argument VER represents the distro
# version of the Yocto Release for which the manuals are being generated.
# You must invoke the Makefile with the DOC and VER arguments.
# Examples:
#
#     make DOC=3Dbsp-guide VER=3D1.1
#     make DOC=3Dyocto-project-qs VER=3D1.1
#     make pdf DOC=3Dyocto-project-qs VER=3D1.1

  i don't see that setting VER is actually required unless you're
"publish"ing, where VER is clearly necessary for the "scp" operation
to work properly:

publish:
        scp -r $(MANUALS) $(STYLESHEET) www.yoctoproject.org:/srv/www/www.y=
octoproject.org-docs/$(VER)/$(DOC)
        cd $(DOC); scp -r $(FIGURES) www.yoctoproject.org:/srv/www/www.yoct=
oproject.org-docs/$(VER)/$(DOC)/figures

  would it make sense to back off slightly on that claim that setting
VER is essential for building the docs?

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

