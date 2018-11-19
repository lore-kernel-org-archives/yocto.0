Return-Path: <chin.huat.ang@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CA07E00B43; Sun, 18 Nov 2018 18:53:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6864DE00AD8
	for <yocto@yoctoproject.org>; Sun, 18 Nov 2018 18:53:56 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	18 Nov 2018 18:53:55 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.56,250,1539673200"; d="scan'208";a="281080198"
Received: from kmsmsx155.gar.corp.intel.com ([172.21.73.106])
	by fmsmga005.fm.intel.com with ESMTP; 18 Nov 2018 18:53:55 -0800
Received: from pgsmsx110.gar.corp.intel.com ([169.254.13.219]) by
	KMSMSX155.gar.corp.intel.com ([169.254.15.132]) with mapi id
	14.03.0415.000; Mon, 19 Nov 2018 10:53:54 +0800
From: "Ang, Chin Huat" <chin.huat.ang@intel.com>
To: Armin Kuster <akuster808@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "srifenbark@gmail.com" <srifenbark@gmail.com>
Thread-Topic: [yocto] [[yocto-docs][thud][PATCH] ref-system-requirements:
	sync	with thud poky.conf
Thread-Index: AQHUf63PuZP6nuFmmUidEs9npKRzR6VWZl1C
Date: Mon, 19 Nov 2018 02:53:53 +0000
Message-ID: <08E361F78D55674EADC52186A78684A534DC385E@PGSMSX110.gar.corp.intel.com>
References: <1542593711-13820-1-git-send-email-akuster808@gmail.com>
In-Reply-To: <1542593711-13820-1-git-send-email-akuster808@gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.3.86.139]
MIME-Version: 1.0
Subject: Re: [[yocto-docs][thud][PATCH] ref-system-requirements: sync	with thud poky.conf
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
X-List-Received-Date: Mon, 19 Nov 2018 02:53:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

There's a minor typo where Ubuntu 16.10 is not LTS.=0A=
=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on be=
half of Armin Kuster [akuster808@gmail.com]=0A=
Sent: Monday, November 19, 2018 10:15 AM=0A=
To: akuster808@gmail.com; yocto@yoctoproject.org; srifenbark@gmail.com=0A=
Subject: [yocto] [[yocto-docs][thud][PATCH] ref-system-requirements: sync  =
     with thud poky.conf=0A=
=0A=
poky.conf=0A=
    ubuntu-16.04=0A=
    ubuntu-16.10=0A=
    ubuntu-17.04=0A=
    fedora-26=0A=
    centos-7=0A=
    debian-8=0A=
    debian-9=0A=
    opensuse-42.1=0A=
    opensuse-42.2=0A=
=0A=
Signed-off-by: Armin Kuster <akuster808@gmail.com>=0A=
---=0A=
 documentation/ref-manual/ref-system-requirements.xml | 20 ++++++++++++----=
----=0A=
 1 file changed, 12 insertions(+), 8 deletions(-)=0A=
=0A=
diff --git a/documentation/ref-manual/ref-system-requirements.xml b/documen=
tation/ref-manual/ref-system-requirements.xml=0A=
index 9298e84..0abc47e 100644=0A=
--- a/documentation/ref-manual/ref-system-requirements.xml=0A=
+++ b/documentation/ref-manual/ref-system-requirements.xml=0A=
@@ -93,19 +93,22 @@=0A=
                 <listitem><para>Ubuntu 11.10</para></listitem>=0A=
                 <listitem><para>Ubuntu 12.04 (LTS)</para></listitem>=0A=
                 <listitem><para>Ubuntu 13.10</para></listitem>=0A=
-                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem> -->=
=0A=
+                <listitem><para>Ubuntu 14.04 (LTS)</para></listitem>=0A=
                 <listitem><para>Ubuntu 14.10</para></listitem>=0A=
                 <listitem><para>Ubuntu 15.04</para></listitem>=0A=
-                <listitem><para>Ubuntu 15.10</para></listitem>=0A=
+                <listitem><para>Ubuntu 15.10</para></listitem> -->=0A=
                 <listitem><para>Ubuntu 16.04 (LTS)</para></listitem>=0A=
+                <listitem><para>Ubuntu 16.10 (LTS)</para></listitem>=0A=
+                <listitem><para>Ubuntu 17.04 </para></listitem>=0A=
 <!--                <listitem><para>Fedora 16 (Verne)</para></listitem>=0A=
                 <listitem><para>Fedora 17 (Spherical)</para></listitem>=0A=
                 <listitem><para>Fedora release 19 (Schr=F6dinger's Cat)</p=
ara></listitem>=0A=
-                <listitem><para>Fedora release 20 (Heisenbug)</para></list=
item> -->=0A=
+                <listitem><para>Fedora release 20 (Heisenbug)</para></list=
item>=0A=
                 <listitem><para>Fedora release 22</para></listitem>=0A=
                 <listitem><para>Fedora release 23</para></listitem>=0A=
-<!--                <listitem><para>Fedora release 24</para></listitem>=0A=
-                <listitem><para>CentOS release 5.6 (Final)</para></listite=
m>=0A=
+                <listitem><para>Fedora release 24</para></listitem> -->=0A=
+                <listitem><para>Fedora release 26</para></listitem>=0A=
+<!--                <listitem><para>CentOS release 5.6 (Final)</para></lis=
titem>=0A=
                 <listitem><para>CentOS release 5.7 (Final)</para></listite=
m>=0A=
                 <listitem><para>CentOS release 5.8 (Final)</para></listite=
m>=0A=
                 <listitem><para>CentOS release 6.3 (Final)</para></listite=
m>=0A=
@@ -121,13 +124,14 @@=0A=
                 <listitem><para>Debian GNU/Linux 7.4 (Wheezy)</para></list=
item>=0A=
                 <listitem><para>Debian GNU/Linux 7.5 (Wheezy)</para></list=
item>=0A=
                 <listitem><para>Debian GNU/Linux 7.6 (Wheezy)</para></list=
item> -->=0A=
-<!--                <listitem><para>openSUSE 11.4</para></listitem>=0A=
+<!--                <listitem><para>openSUSE 11.4</para></listitem>=0A=
                 <listitem><para>openSUSE 12.1</para></listitem>=0A=
                 <listitem><para>openSUSE 12.2</para></listitem>=0A=
                 <listitem><para>openSUSE 12.3</para></listitem>=0A=
-                <listitem><para>openSUSE 13.1</para></listitem> -->=0A=
-                <listitem><para>openSUSE 13.2</para></listitem>=0A=
+                <listitem><para>openSUSE 13.1</para></listitem>=0A=
+                <listitem><para>openSUSE 13.2</para></listitem> -->=0A=
                 <listitem><para>openSUSE 42.1</para></listitem>=0A=
+                <listitem><para>openSUSE 42.2</para></listitem>=0A=
             </itemizedlist>=0A=
         </para>=0A=
=0A=
--=0A=
2.7.4=0A=
=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

