Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id A87174C8007E
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2011 09:34:34 -0500 (CDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 15 Jul 2011 07:34:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,535,1304319600"; d="scan'208";a="26268244"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga002.jf.intel.com with ESMTP; 15 Jul 2011 07:34:24 -0700
Received: from orsmsx104.amr.corp.intel.com (10.22.225.131) by
	orsmsx602.amr.corp.intel.com (10.22.226.211) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Fri, 15 Jul 2011 07:34:24 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.138]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.12]) with mapi id
	14.01.0289.001; Fri, 15 Jul 2011 07:34:23 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] DOCS: Fix spelling error in link to Fedora
	sudo	page.
Thread-Index: AQHMQudy3D+PEOqgLk2mP+kwBHZBYJTtco3A
Date: Fri, 15 Jul 2011 14:34:23 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123790316C0@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1107150803080.4879@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1107150803080.4879@localhost6.localdomain6>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.9.131.214]
MIME-Version: 1.0
Subject: Re: [PATCH] DOCS: Fix spelling error in link to Fedora sudo	page.
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
X-List-Received-Date: Fri, 15 Jul 2011 14:34:35 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Good catch Robert.  I have fixed this and pushed.  Will notify maintainer.

Scott

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Robert P. J. Day
Sent: Friday, July 15, 2011 5:04 AM
To: Yocto discussion list
Subject: [yocto] [PATCH] DOCS: Fix spelling error in link to Fedora sudo pa=
ge.


Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

---

diff --git a/documentation/yocto-project-qs/yocto-project-qs.xml b/document=
ation/yocto-project-qs/yocto-project-qs.xml
index 52f7391..c0ba207 100644
--- a/documentation/yocto-project-qs/yocto-project-qs.xml
+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
@@ -180,7 +180,7 @@
         <note><para>
             If you are using a Fedora version prior to version 15 you will=
 need to take some
             extra steps to enable <filename>sudo</filename>.
-            See <ulink url=3D'https://fedoraproject.org/wiki/Configureing_=
Sudo'></ulink> for details.
+            See <ulink url=3D'https://fedoraproject.org/wiki/Configuring_S=
udo'></ulink> for details.
         </para></note>

         <para>

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

