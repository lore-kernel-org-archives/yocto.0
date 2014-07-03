Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 932E2E0070F; Thu,  3 Jul 2014 02:54:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE8BE006C4
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 02:53:40 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 Jul 2014 02:53:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,594,1400050800"; d="scan'208";a="452870684"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
	by azsmga001.ch.intel.com with ESMTP; 03 Jul 2014 02:52:55 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.157]) by
	ORSMSX104.amr.corp.intel.com ([169.254.3.57]) with mapi id
	14.03.0123.003; Thu, 3 Jul 2014 02:52:55 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "maxin@maxinbjohn.info" <maxin@maxinbjohn.info>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [PATCH] documentation: update git version requirement
Thread-Index: AQHPlp/bR5aBLFI2YUGhc/GpiexURZuOG8FQ
Date: Thu, 3 Jul 2014 09:52:54 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FB5BA0@ORSMSX101.amr.corp.intel.com>
References: <1404379029-44995-1-git-send-email-maxin@maxinbjohn.info>
In-Reply-To: <1404379029-44995-1-git-send-email-maxin@maxinbjohn.info>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH] documentation: update git version requirement
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
X-List-Received-Date: Thu, 03 Jul 2014 09:54:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks - I have applied this.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of maxin@maxinbjohn.info
>Sent: Thursday, July 03, 2014 2:17 AM
>To: yocto@yoctoproject.org
>Subject: [yocto] [PATCH] documentation: update git version requirement
>
>From: "Maxin B. John" <maxin.john@enea.com>
>
>git version 1.7.8 added the --list option to git-branch. Since we depend o=
n this
>option in git.py, the minimum requiremnt for git should be updated to Git
>1.7.8+
>
>Signed-off-by: Maxin B. John <maxin.john@enea.com>
>---
> documentation/ref-manual/introduction.xml           | 2 +-
> documentation/ref-manual/migration.xml              | 2 +-
> documentation/yocto-project-qs/yocto-project-qs.xml | 2 +-
> 3 files changed, 3 insertions(+), 3 deletions(-)
>
>diff --git a/documentation/ref-manual/introduction.xml
>b/documentation/ref-manual/introduction.xml
>index f48489a..6fa3785 100644
>--- a/documentation/ref-manual/introduction.xml
>+++ b/documentation/ref-manual/introduction.xml
>@@ -352,7 +352,7 @@
>             must meet the following version requirements for Git, tar, an=
d
>             Python:
>             <itemizedlist>
>-                <listitem><para>Git 1.7.5 or greater</para></listitem>
>+                <listitem><para>Git 1.7.8 or greater</para></listitem>
>                 <listitem><para>tar 1.24 or greater</para></listitem>
>                 <listitem><para>Python 2.7.3 or greater not including
>                     Python 3.x, which is not supported.</para></listitem>=
 diff --git
>a/documentation/ref-manual/migration.xml b/documentation/ref-
>manual/migration.xml
>index 7cefa5e..1b63571 100644
>--- a/documentation/ref-manual/migration.xml
>+++ b/documentation/ref-manual/migration.xml
>@@ -598,7 +598,7 @@
>             <itemizedlist>
>                 <listitem><para>Python 2.7.3+</para></listitem>
>                 <listitem><para>Tar 1.24+</para></listitem>
>-                <listitem><para>Git 1.7.5+</para></listitem>
>+                <listitem><para>Git 1.7.8+</para></listitem>
>                 <listitem><para>Patched version of Make if you are using
>                     3.82.
>                     Most distributions that provide Make 3.82 use the pat=
ched diff --git
>a/documentation/yocto-project-qs/yocto-project-qs.xml
>b/documentation/yocto-project-qs/yocto-project-qs.xml
>index 5ffe674..31babd1 100644
>--- a/documentation/yocto-project-qs/yocto-project-qs.xml
>+++ b/documentation/yocto-project-qs/yocto-project-qs.xml
>@@ -210,7 +210,7 @@
>             distribution that has the following versions for Git, tar, an=
d
>             Python.
>             <itemizedlist>
>-                <listitem><para>Git 1.7.5 or greater</para></listitem>
>+                <listitem><para>Git 1.7.8 or greater</para></listitem>
>                 <listitem><para>tar 1.24 or greater</para></listitem>
>                 <listitem><para>Python 2.7.3 or greater excluding Python
>                    3.x, which is not supported.</para></listitem>
>--
>1.9.1
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

