Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A3DCE00777; Sat,  8 Apr 2017 01:07:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_MED,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F465E00546
	for <yocto@yoctoproject.org>; Sat,  8 Apr 2017 01:07:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491638852; x=1523174852;
	h=from:to:subject:date:message-id:references:in-reply-to:
	content-transfer-encoding:mime-version;
	bh=WTW3uTkEWvJ0u6aIiVQX6+uNmUSL/2AHOGdMVKFNyBw=;
	b=JUykMqY5GyV7KdmEDSavF3SaLSIK2umWhzzylTh78Gr1lL0lESxK0JUc
	7EXZ8t68fVfsPSQhBsH7APxstk07Uw==;
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	08 Apr 2017 01:07:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,170,1488873600"; d="scan'208";a="843542898"
Received: from irsmsx102.ger.corp.intel.com ([163.33.3.155])
	by FMSMGA003.fm.intel.com with ESMTP; 08 Apr 2017 01:07:30 -0700
Received: from irsmsx103.ger.corp.intel.com ([169.254.3.241]) by
	IRSMSX102.ger.corp.intel.com ([169.254.2.153]) with mapi id
	14.03.0319.002; Sat, 8 Apr 2017 09:07:30 +0100
From: "John, Maxin" <maxin.john@intel.com>
To: Jaap de Jong <jpdjong@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] [meta-oracle-java][PATCH] oracle-jse-ejre: Fix jre path
Thread-Index: AQHSr/gfHKyCla+OV0i0JV5BlZGABKG7HjgQ
Date: Sat, 8 Apr 2017 08:07:29 +0000
Message-ID: <61C0517EAD808B429A1DE2DD9164D40030F8579E@IRSMSX103.ger.corp.intel.com>
References: <1491591843-6407-1-git-send-email-jaap.dejong@nedap.com>
In-Reply-To: <1491591843-6407-1-git-send-email-jaap.dejong@nedap.com>
Accept-Language: fi-FI, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 10.0.102.7
dlp-reaction: no-action
x-originating-ip: [163.33.239.182]
MIME-Version: 1.0
Subject: Re: [meta-oracle-java][PATCH] oracle-jse-ejre: Fix jre path
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
X-List-Received-Date: Sat, 08 Apr 2017 08:07:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Merged to master-next. Thanks!

-----Original Message-----
From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Jaap de Jong
Sent: Friday, April 7, 2017 10:04 PM
To: yocto@yoctoproject.org
Subject: [yocto] [meta-oracle-java][PATCH] oracle-jse-ejre: Fix jre path

Signed-off-by: Jaap de Jong <jaap.dejong@nedap.com>
---
 recipes-devtools/oracle-java/oracle-jse-ejre.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-devtools/oracle-java/oracle-jse-ejre.inc b/recipes-dev=
tools/oracle-java/oracle-jse-ejre.inc
index bea4a03..0af0b6b 100644
--- a/recipes-devtools/oracle-java/oracle-jse-ejre.inc
+++ b/recipes-devtools/oracle-java/oracle-jse-ejre.inc
@@ -19,7 +19,7 @@ LIC_FILES_CHKSUM =3D "\
 	"
=20
 do_compile() {
-	DEST=3D${S}/ejre${PV}_${PV_UPDATE}
+	DEST=3D${S}/ejre${PV}_${PV_UPDATE}/jre
 	rm -rf ${DEST}
 	JAVA_HOME=3D${STAGING_DIR_NATIVE}/${JDK_HOME} ejdk${PV}_${PV_UPDATE}/bin/=
jrecreate.sh --dest ${DEST}  }
--
2.7.4

Best Regards,
Maxin

