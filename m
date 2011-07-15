Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id B6F974C80836
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 18:07:11 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 15 Jul 2011 16:07:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,210,1309762800"; d="scan'208";a="30905033"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga001.fm.intel.com with ESMTP; 15 Jul 2011 16:07:11 -0700
Received: from orsmsx152.amr.corp.intel.com (10.22.226.39) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Jul 2011 16:07:10 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX152.amr.corp.intel.com ([169.254.6.186]) with mapi id
	14.01.0289.001; Fri, 15 Jul 2011 16:07:10 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] DOCS: Correct format of command continuation.
Thread-Index: AQHMQunAJjmcbUz5fEGX9awKxFO/2JTuAetQ
Date: Fri, 15 Jul 2011 23:07:09 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB12379031B07@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107150819450.24156@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107150819450.24156@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: Re: [PATCH] DOCS: Correct format of command continuation.
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
X-List-Received-Date: Fri, 15 Jul 2011 23:07:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Fixed.

Thanks Robert.

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Friday, July 15, 2011 5:21 AM
To: Yocto discussion list
Subject: [yocto] [PATCH] DOCS: Correct format of command continuation.


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

  i *think* this is what the author had in mind.

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/document=
ation/yocto-project-qs/yocto-project-qs.xml
index 52f7391..d2e85ba 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -213,9 +213,9 @@
             </literallayout>

             <literallayout class=3D'monospaced'>
-     $ sudo zypper install python gcc gcc-c++ libtool
-     $ subversion git chrpath automake
-     $ help2man diffstat texinfo mercurial wget
+     $ sudo zypper install python gcc gcc-c++ libtool \
+     subversion git chrpath automake \
+     help2man diffstat texinfo mercurial wget
             </literallayout>

     </section>

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

