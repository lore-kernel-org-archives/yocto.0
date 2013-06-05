Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC744E01505
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2013 01:55:21 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 05 Jun 2013 01:55:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,804,1363158000"; d="scan'208";a="345060601"
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
	by fmsmga001.fm.intel.com with ESMTP; 05 Jun 2013 01:55:41 -0700
Received: from orsmsx108.amr.corp.intel.com (10.22.225.41) by
	ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 5 Jun 2013 01:55:19 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX108.amr.corp.intel.com ([169.254.4.29]) with mapi id
	14.03.0123.003; Wed, 5 Jun 2013 01:55:19 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Jesse Zhang <sen.zhang@windriver.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH 1/1] dev-manual: fix instructions for enabling
	ptest
Thread-Index: AQHOYcpo+V4b5YXpZE+9uMKySFsbjA==
Date: Wed, 5 Jun 2013 08:55:19 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF4789B@ORSMSX101.amr.corp.intel.com>
References: <cover.1370417284.git.sen.zhang@windriver.com>
	<685ca7c686ae03be5a9cc52153c14551098ad13a.1370417284.git.sen.zhang@windriver.com>
In-Reply-To: <685ca7c686ae03be5a9cc52153c14551098ad13a.1370417284.git.sen.zhang@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Cc: "Purdie, Richard" <richard.purdie@intel.com>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: [PATCH 1/1] dev-manual: fix instructions for enabling ptest
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 05 Jun 2013 08:55:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Jesse,=20

Thanks for resending.  I have applied this patch to both the master and Dyl=
an branches of the yocto-docs repository.  You can see the change on the we=
bsite here:

* http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#adding-pt=
est-to-your-build
* http://www.yoctoproject.org/docs/1.4.1/dev-manual/dev-manual.html#adding-=
ptest-to-your-build

Thanks for catching this.=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Jesse Zhang
>Sent: Wednesday, June 05, 2013 1:32 AM
>To: yocto@yoctoproject.org
>Subject: [yocto] [PATCH 1/1] dev-manual: fix instructions for enabling
>ptest
>
>The IMAGE_FEATURE and DISTRO_FEATURE are exchanged.
>
>Signed-off-by: Jesse Zhang <sen.zhang@windriver.com>
>---
> documentation/dev-manual/dev-manual-common-tasks.xml | 4 ++--
> 1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
>b/documentation/dev-manual/dev-manual-common-tasks.xml
>index ebd12d7..1cf6969 100644
>--- a/documentation/dev-manual/dev-manual-common-tasks.xml
>+++ b/documentation/dev-manual/dev-manual-common-tasks.xml
>@@ -3619,8 +3619,8 @@
>                     which is found in the
>                     <link linkend=3D'build-directory'>Build
>Directory</link>:
>                     <literallayout class=3D'monospaced'>
>-     EXTRA_IMAGE_FEATURES +=3D "ptest"
>-     DISTRO_FEATURES_append =3D " ptest-pkgs"
>+     DISTRO_FEATURES_append =3D " ptest"
>+     EXTRA_IMAGE_FEATURES +=3D "ptest-pkgs"
>                     </literallayout>
>                     Once your build is complete, the ptest files are
>installed
>                     into the
><filename>/usr/lib/&lt;package&gt;/ptest</filename>
>--
>1.7.11.7
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

