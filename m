Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CDA7E0044D
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2012 17:05:03 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Mar 2012 17:05:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="124483950"
Received: from orsmsx605.amr.corp.intel.com ([10.22.226.10])
	by orsmga002.jf.intel.com with ESMTP; 23 Mar 2012 17:05:03 -0700
Received: from orsmsx105.amr.corp.intel.com (10.22.225.132) by
	orsmsx605.amr.corp.intel.com (10.22.226.10) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 23 Mar 2012 17:05:03 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.154]) by
	ORSMSX105.amr.corp.intel.com ([169.254.4.199]) with mapi id
	14.01.0355.002; Fri, 23 Mar 2012 17:05:02 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] yocto docs: confusion between shell env vars and
	bitbake	env vars
Thread-Index: AQHNCECM4+24E91OZk+pKLcuJilpfpZ4kpEg
Date: Sat, 24 Mar 2012 00:05:02 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237945175C29@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203221123080.6483@oneiric>
In-Reply-To: <alpine.DEB.2.02.1203221123080.6483@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: yocto docs: confusion between shell env vars and bitbake	env vars
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
X-List-Received-Date: Sat, 24 Mar 2012 00:05:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I clarified about 5 instances of this problem in the reference manual.  As =
usual, see http://www.yoctoprojects.org/docs/latest/poky-ref-manual/poky-re=
f-manual.html for the latest.

Scott


-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Thursday, March 22, 2012 9:29 AM
To: Yocto discussion list
Subject: [yocto] yocto docs: confusion between shell env vars and bitbake e=
nv vars


  since i'm reading this out of the yocto/poky reference manual, i
might as well point it out here.

  there is occasional confusion when the docs refer to "environment
variables", since it's not clear when that means *shell* env vars or
*bitbake* env vars.  for instance, in the ref manual, section B.1,
"Parsing", you read:

"The first thing BitBake does is look for the bitbake.conf file. The
Yocto Project keeps this file in the Yocto Project file's meta/conf/
directory. BitBake finds it by examining the BBPATH environment
variable and looking for the meta/conf/ directory."

  but there is no BBPATH shell environment variable.  in fact,
oe-init-build-env explicitly *unsets* that shell variable at the very
end.

  however, you can check the *bitbake* environment with "bitbake -e"
and there it is, and i think that not being clear about the difference
has the potential to massively confuse readers.

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

