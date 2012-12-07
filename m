Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A832E00348
	for <yocto@yoctoproject.org>; Fri,  7 Dec 2012 15:08:51 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 07 Dec 2012 15:08:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,241,1355126400"; d="scan'208";a="177707028"
Received: from orsmsx106.amr.corp.intel.com ([10.22.225.133])
	by AZSMGA002.ch.intel.com with ESMTP; 07 Dec 2012 15:08:50 -0800
Received: from orsmsx151.amr.corp.intel.com (10.22.226.38) by
	ORSMSX106.amr.corp.intel.com (10.22.225.133) with Microsoft SMTP Server
	(TLS) id 14.1.355.2; Fri, 7 Dec 2012 15:08:50 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.81]) by
	ORSMSX151.amr.corp.intel.com ([169.254.7.43]) with mapi id
	14.01.0355.002; Fri, 7 Dec 2012 15:08:50 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Bob Cochran <yocto@mindchasers.com>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] Yocto Project Dev Manual - bad reference in
	dev-manual-newbie.xml
Thread-Index: AQHNz9a3z89begGZJkmfLKGzTBgzB5gN9aMg
Date: Fri, 7 Dec 2012 23:08:50 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237946ACB742@ORSMSX101.amr.corp.intel.com>
References: <50BA1F07.3030802@mindchasers.com>
In-Reply-To: <50BA1F07.3030802@mindchasers.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: [PATCH] Yocto Project Dev Manual - bad reference in	dev-manual-newbie.xml
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
X-List-Received-Date: Fri, 07 Dec 2012 23:08:52 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

This patch has been applied to the master branch of yocto-docs repo.  I hav=
e republished the dev-manual in the "In Progress" documents on the YP websi=
te. =20

Thanks for the patch Bob.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Bob Cochran
>Sent: Saturday, December 01, 2012 7:15 AM
>To: Yocto discussion list
>Subject: [yocto] [PATCH] Yocto Project Dev Manual - bad reference in
>dev-manual-newbie.xml
>
>I updated a note that points the reader to the maintainers list.  The
>note in the master branch pointed the reader to a nonexistent (old)
>file.
>
>Signed-off-by: Robert Cochran<yocto@mindchasers.com>
>
>---
>  documentation/dev-manual/dev-manual-newbie.xml |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
>diff --git a/documentation/dev-manual/dev-manual-newbie.xml
>b/documentation/dev-manual/dev-manual-newbie.xml
>index bb01131..8b078e1 100644
>--- a/documentation/dev-manual/dev-manual-newbie.xml
>+++ b/documentation/dev-manual/dev-manual-newbie.xml
>@@ -742,8 +742,8 @@
>          The maintainer is responsible for allowing changes in from
>other developers and for
>          organizing the underlying branch structure to reflect release
>strategies and so forth.
>          <note>You can see who is the maintainer for Yocto Project
>files by examining the
>-        <filename>distro_tracking_fields.inc</filename> file in the
>Yocto Project
>-        <filename>meta/conf/distro/include</filename> directory.</note>
>+        <filename>maintainers.inc</filename> file in the Yocto Project
>+        <filename>meta-yocto/conf/distro/include</filename>
>directory.</note>
>      </para>
>
>      <para>
>--
>1.7.9.5
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

