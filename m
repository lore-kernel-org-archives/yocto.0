Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32E6FE009E4; Wed, 17 Jun 2015 05:24:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C717E009B8
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 05:24:57 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 17 Jun 2015 05:24:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,632,1427785200"; d="scan'208";a="729173633"
Received: from orsmsx105.amr.corp.intel.com ([10.22.225.132])
	by fmsmga001.fm.intel.com with ESMTP; 17 Jun 2015 05:24:57 -0700
Received: from orsmsx112.amr.corp.intel.com (10.22.240.13) by
	ORSMSX105.amr.corp.intel.com (10.22.225.132) with Microsoft SMTP Server
	(TLS) id 14.3.224.2; Wed, 17 Jun 2015 05:24:57 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.217]) by
	ORSMSX112.amr.corp.intel.com ([169.254.12.27]) with mapi id
	14.03.0224.002; Wed, 17 Jun 2015 05:24:57 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "leonardo.sandoval.gonzalez@linux.intel.com"
	<leonardo.sandoval.gonzalez@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [PATCH] dev-manual: Include biosfilename runqemu option
Thread-Index: AQHQqHpmQQYpCRDAzkipKM2GFRWS0J2wn97g
Date: Wed, 17 Jun 2015 12:24:56 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB123798D2042AF@ORSMSX101.amr.corp.intel.com>
References: <1434460637-46540-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
In-Reply-To: <1434460637-46540-1-git-send-email-leonardo.sandoval.gonzalez@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: [PATCH] dev-manual: Include biosfilename runqemu option
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
X-List-Received-Date: Wed, 17 Jun 2015 12:24:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Leonardo,=20

I have applied this patch.  You can see the change at http://www.yoctoproje=
ct.org/docs/1.9/dev-manual/dev-manual.html#qemu-using-the-runqemu-command. =
=20

Thanks,=20
Scott

>-----Original Message-----
>From: leonardo.sandoval.gonzalez@linux.intel.com
>[mailto:leonardo.sandoval.gonzalez@linux.intel.com]
>Sent: Tuesday, June 16, 2015 6:17 AM
>To: yocto@yoctoproject.org
>Cc: Rifenbark, Scott M; Leonardo Sandoval
>Subject: [PATCH] dev-manual: Include biosfilename runqemu option
>
>From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
>
>Poky's commit edde3e58da00adf9ef3a8cc687268f6e24294c7c included the
>biosfilename option on the runqemu script.
>
>Signed-off-by: Leonardo Sandoval
><leonardo.sandoval.gonzalez@linux.intel.com>
>---
> documentation/dev-manual/dev-manual-qemu.xml | 3 +++
> 1 file changed, 3 insertions(+)
>
>diff --git a/documentation/dev-manual/dev-manual-qemu.xml
>b/documentation/dev-manual/dev-manual-qemu.xml
>index 4d95fbd..ccc915f 100644
>--- a/documentation/dev-manual/dev-manual-qemu.xml
>+++ b/documentation/dev-manual/dev-manual-qemu.xml
>@@ -171,6 +171,9 @@
>                     Establishes a custom directory for BIOS, VGA BIOS and
>                     keymaps.
>                     </para></listitem>
>+                <listitem><para><filename>biosfilename</filename>:
>+                    Establishes a custom BIOS name.
>+                    </para></listitem>
>
><listitem><para><filename>qemuparams=3D\"<replaceable>xyz</replaceable>
>\"</filename>:
>                     Specifies custom QEMU parameters.
>                     Use this option to pass options other than the simple
>--
>1.8.4.5


