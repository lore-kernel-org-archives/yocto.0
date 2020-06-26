Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web12.1254.1593197125989427277
 for <yocto@lists.yoctoproject.org>;
 Fri, 26 Jun 2020 11:45:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@intel.onmicrosoft.com header.s=selector2-intel-onmicrosoft-com header.b=L/RStO5y;
 spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: vineela.tummalapalli@intel.com)
IronPort-SDR: zblrSUB6euDM8GhWady5gHfoQ8FmZYMAIRjHQDe05lSb69CvwdquzRY9gpeEbfZHx2uqe1ZWW8
 kkPRMBHOwcHA==
X-IronPort-AV: E=McAfee;i="6000,8403,9664"; a="210516941"
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; 
   d="scan'208";a="210516941"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 26 Jun 2020 11:45:24 -0700
IronPort-SDR: kysRqRIBWhhUF0L35B/e89HSRbvqrWcDRP8i6zRIwSBU+m3JpBkDzvJB5iS4a2l+Z6mz3VFkF+
 puGA16++MXWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,284,1589266800"; 
   d="scan'208";a="453450553"
Received: from orsmsx108.amr.corp.intel.com ([10.22.240.6])
  by orsmga005.jf.intel.com with ESMTP; 26 Jun 2020 11:45:23 -0700
Received: from ORSEDG001.ED.cps.intel.com (10.7.248.4) by
 ORSMSX108.amr.corp.intel.com (10.22.240.6) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Fri, 26 Jun 2020 11:45:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.44) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Fri, 26 Jun 2020 11:45:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=n50oxBGdEh0MIyylqGDGbBUkiPcZz39D0JlWUoUChBs0LNHXVNQ1F+XQMu3V2GSN6pWUeCeiPhs0eeiURGmMVO22bvxVj0tfB6GHVyKmDDWZa5x2eAIHDE85vm6zLqV83HOPg7Sy/e3pUAGQQzlBLwhwrImABVqhRsVHRYoFROzw1Ae5vhJfnNYuhMpHa50zM19YAxAq+BQXCCCQvKl1K82B1Gy6d1VArleyA/P0IMVAWOUyVZp1/JxeJ1tUqDxJatIOkBLw0eOiiQDh5zs0Yq0gzORH4w2Iz7nNNmxzKOy76G/aqrefVGVaZWFsHYWURT8nLtTFB972mYiYxaPoCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qVPtJSxPe13D/1y4XNxp1mujoBARUD3Pmf22Ixh/OMw=;
 b=DDZVt6qXmFqSLweZCD5Lji0sXvxNRQk2rnpIYphjPCimNRdVLRlHlYeNyMqZal2ylySNvzoCIBfpKIYpRebSzBSkazKrSlfMDxKDn0te9FYwjOsqlSHWVVcqy9T1ZJ021XsMSq+mJH6g3gP+DYVYAcgP7ZoXaCCFedPpRqJFwl+S1UsXNhxip1gCkgMG3j91x2xSvflFcKog7rupKgbIgwrpIlMHzddty2Z8khRdYFPCjQwqDDEYmDyWY4XSej5K1rEDtfOyw58SSzQbJSlA814X/wGIEO1Lyo8pnYDIhvOJUMQIjmgIEypDcK1ws3MEwzOh+k3BllibtbMvUKXYmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com;
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qVPtJSxPe13D/1y4XNxp1mujoBARUD3Pmf22Ixh/OMw=;
 b=L/RStO5y63EHZfcJpo2kv8NOjIGtrGvZsa+fk9gjkEF+kPyKgg/TJmK7alGSaDIp/Ptunl6KscpZ94MXde3nX1PBB7pExikeNcO46dSGceT8D6qrRgUAWW1wHKx/KT632fjRT4fi3g4s55NXxXlgZD/6BO+Yh7b3EQeC1GnF+Nk=
Received: from BYAPR11MB2790.namprd11.prod.outlook.com (2603:10b6:a02:c4::29)
 by BYAPR11MB2759.namprd11.prod.outlook.com (2603:10b6:a02:c8::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.21; Fri, 26 Jun
 2020 18:45:22 +0000
Received: from BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46]) by BYAPR11MB2790.namprd11.prod.outlook.com
 ([fe80::9473:76f0:c189:bd46%3]) with mapi id 15.20.3131.025; Fri, 26 Jun 2020
 18:45:22 +0000
From: "Vineela" <vineela.tummalapalli@intel.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: [yocto-autobuilder-helper][PATCH]scripts/utils.py: Convert md5sum to sha256sum for layer tarballs
Thread-Topic: [yocto-autobuilder-helper][PATCH]scripts/utils.py: Convert
 md5sum to sha256sum for layer tarballs
Thread-Index: AdZL6V4TZBuRc2THTQSypMf3nHd3bg==
Date: Fri, 26 Jun 2020 18:45:22 +0000
Message-ID: <BYAPR11MB27904ED962D7392249CC3C2B88930@BYAPR11MB2790.namprd11.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-reaction: no-action
dlp-product: dlpe-windows
authentication-results: lists.yoctoproject.org; dkim=none (message not signed)
 header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=intel.com;
x-originating-ip: [73.41.250.65]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a6bf8b3b-b479-4bc6-cdfa-08d81a01152c
x-ms-traffictypediagnostic: BYAPR11MB2759:
x-microsoft-antispam-prvs: <BYAPR11MB275986A7DB8DC15E0A0E4B3D88930@BYAPR11MB2759.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:215;
x-forefront-prvs: 0446F0FCE1
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O3ikzFie32bJnZjqISBYe8zkPCHPy0l/ct1ZKrj6LcaQQcJewUZCR0z2gP/flk5uV9x7hHj5wrEBL7qgjQ+vw6uzVkqS5IL84Zumb3bVJG1SuFttqAOCiSjxxjxEqns7n0jsFTxYR2Eo3xAUOTbNyolKgEz8/TOAVyXSEjNxWumCBqBvvNyUJDk3/gOCgkCCNed7zl6urhxj0mu+5E93tcdpsMFH1SLASKn8K1ZYiH16Elw6f8T9/zu9eNoaGRH7CmOzB7TZc5sCPA16GeVcKpH7+LUL38GalbS+r3XI/j7T8WCLnLnT/dxN+bjuycqNEjvTKEuZ9+JRyVi5Q6y+yyrBRxDe3kQWDJjQsLjsQpakPhVVPyf9YbXKTodIrD9V1q8OiwQCH37wQaJPcr0g9g==
x-forefront-antispam-report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:BYAPR11MB2790.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(366004)(396003)(39860400002)(376002)(136003)(346002)(316002)(7696005)(52536014)(478600001)(26005)(186003)(33656002)(71200400001)(4744005)(83380400001)(5660300002)(6916009)(8676002)(2906002)(55016002)(86362001)(76116006)(9686003)(6506007)(8936002)(66446008)(66556008)(66476007)(64756008)(66946007)(42413003)(32563001);DIR:OUT;SFP:1102;
x-ms-exchange-antispam-messagedata: y6aEoV5NscJt9glS+DkEQBeP5i9zkkkn6vuSVrazhcglpM/2f86fPmptD8E5dafvW2pZRmtlVzr+ZWjDLoyjc0gqyez9aFZgJxgQk9CkSqoSd2DzaSZaEbzKq5Wl6EjVQBrDdi0GK3Jemgporf3GERa87EKYM53j8EVWqQQV8oTk/mqS+wGOb8RKlbNzGmmAicFBojPriQgcoq9JigQLPLXGL7eMf8DXLNTDu277BI08xyfCgKOGUcBsOB0dAGxKJ2yB10IQy0JQH/VTglI3DLx3gsgDNE0IccWLptKwkxIYzdhUv8YdAqeHYIxDyZamn6r0sncZV6OKS+/NK90vJhlAaca2d/VJCIdTLZ9xypv2jbS0Iqgo7CDJiP6xW1sgb4zZlV7iqQXOSGYkGfheTUWUaqX3OUC1MXSYTQSfGh4luIpPEgdDOpBHegSxHtaHwhAGOAg1rRV0W0nSzzerwSjkRXrv/IB7Ee8yHgzp4ZI=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a6bf8b3b-b479-4bc6-cdfa-08d81a01152c
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Jun 2020 18:45:22.4593
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 4dKwcifcwXYfxSKdoYxS8orRIgGpz2rJTMQe7h5QzoIe6WccN7mc6MfstAzn3FAj3YsJzvQi1OYnL1iKbn8567BKX7nKzDEA+J4JVMcQNQI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB2759
Return-Path: vineela.tummalapalli@intel.com
X-OriginatorOrg: intel.com
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Signed-off-by: Vineela Tummalapalli <vineela.tummalapalli@intel.com>
---
 scripts/utils.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index d7b9ae7..ec43832 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -251,7 +251,7 @@ def publishrepo(clonedir, repo, publishdir):
     revision =3D subprocess.check_output(["git", "rev-parse", "HEAD"], cwd=
=3Dsharedrepo).decode('utf-8').strip()
     archive_name =3D repo + "-" + revision + ".tar.bz2"
     subprocess.check_call("git archive --format=3Dtar HEAD --prefix=3D" + =
repo + "/ | bzip2 -c > " + archive_name, shell=3DTrue, cwd=3Dsharedrepo)
-    subprocess.check_call("md5sum " + archive_name + " >> " + archive_name=
 + ".md5sum", shell=3DTrue, cwd=3Dsharedrepo)
+    subprocess.check_call("sha256sum " + archive_name + " >> " + archive_n=
ame + ".sha256sum", shell=3DTrue, cwd=3Dsharedrepo)
     mkdir(publishdir)
     subprocess.check_call("rsync -av " + archive_name + "* " + publishdir,=
 shell=3DTrue, cwd=3Dsharedrepo)

--
2.7.4
