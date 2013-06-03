Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10C16E004CF
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2013 00:51:06 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Jun 2013 00:51:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,791,1363158000"; d="scan'208";a="347268647"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by orsmga002.jf.intel.com with ESMTP; 03 Jun 2013 00:51:05 -0700
Received: from orsmsx110.amr.corp.intel.com (10.22.240.8) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Mon, 3 Jun 2013 00:51:05 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.64]) by
	ORSMSX110.amr.corp.intel.com ([169.254.3.227]) with mapi id
	14.03.0123.003; Mon, 3 Jun 2013 00:51:05 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Trevor Woerner <twoerner@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [yocto-docs][PATCH] dev-manual: correct location of
	license	data
Thread-Index: AQHOXoDPhidiebp0yUOHZ54KeuEpupkjoNWQ
Date: Mon, 3 Jun 2013 07:51:04 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF470AA@ORSMSX101.amr.corp.intel.com>
References: <1370061010-22690-1-git-send-email-twoerner@gmail.com>
In-Reply-To: <1370061010-22690-1-git-send-email-twoerner@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [yocto-docs][PATCH] dev-manual: correct location of license	data
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
X-List-Received-Date: Mon, 03 Jun 2013 07:51:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Trevor,=20

Thanks for the patch. I have applied it.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Trevor Woerner
>Sent: Friday, May 31, 2013 9:30 PM
>To: yocto@yoctoproject.org
>Subject: [yocto] [yocto-docs][PATCH] dev-manual: correct location of
>license data
>
>After a build, the license data is found in ${TMPDIR}/deploy/licenses
>not
>${TMPDIR}/deploy/images/licenses.
>
>Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>---
> documentation/dev-manual/dev-manual-newbie.xml | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/documentation/dev-manual/dev-manual-newbie.xml
>b/documentation/dev-manual/dev-manual-newbie.xml
>index 779d06d..e5d6f32 100644
>--- a/documentation/dev-manual/dev-manual-newbie.xml
>+++ b/documentation/dev-manual/dev-manual-newbie.xml
>@@ -782,7 +782,7 @@
>         Once the build completes, the list of all licenses found and
>used during that build are
>         kept in the
>         <link linkend=3D'build-directory'>Build Directory</link> at
>-        <filename>tmp/deploy/images/licenses</filename>.
>+        <filename>tmp/deploy/licenses</filename>.
>     </para>
>
>     <para>
>--
>1.8.3.rc1.44.gb387c77
>
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

