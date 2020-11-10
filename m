Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.21685.1604971149457678284
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 17:19:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@windriversystems.onmicrosoft.com header.s=selector2-windriversystems-onmicrosoft-com header.b=BE06quCY;
 spf=softfail (domain: windriver.com, ip: 198.145.29.25, mailfrom: yi.zhao@windriver.com)
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (mail-bn7nam10on2074.outbound.protection.outlook.com [40.107.92.74])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8BED238C0865
	for <yocto@yoctoproject.org>; Mon,  9 Nov 2020 17:19:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BPUiinKbxuN6X1DOnsgaFBxcBsd9RPE3GE4QkLU2JzB/8Vy5dBUkqFKLyRBm6N1UJvH4bfOgXQyMOruY7YnUZmGhlrseSd5MbT+/rE+4pPSB03/6F9up6G3+DX7N2EqWbgUDWIXSmkBykBzxn+qIkoT1gPMLFh/8ey5jwO4M5Qw7EqILlwOt2aqnj2ePtjy6j8i71HM7DGZI7RkfhzSGIpie8oHyUzuqkdpX8oe/rdxXB6vjT/K+4av/GcALX4mfzs1SnPO5mFtWpcYfqoA4ih7ssWgPQ1YVDb2/+eytXk1iTZeJGDLnz1SqELdkW5kvDGRiA7VNEdtRZDTTZDEtdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lZzMgQq7hVrayjvvFhPwoPaabOAj19eisFUhIYdkfpA=;
 b=g0u7X/LW7GkOUW6k5X2CSKwOZn+Um7et3YFgjV/vOaepOV9QeFC+6Yzg0mgUUya+qOuEYoYsl6LA97BORuLmdUtvruhufwo8GbFbkqcUiFSX9iUpb4S6XzmKdvduY4AL4UFhFg2bU8YaqNWIY8LHQ3nc4uD460nk1FK2dykpXtxSiCP9gSOf1K84Sfq0jYSzKs2ksPkof56J6k6nqmg9MZtNoQUN/xK2YE+mb4hW40wz9/gS2sf1JVJQIlgX70cFQGsl7YA8hjF9RM7A7f322l+O3ARVYAXQ9IpZhXZZJzgx7vY37OMSSv+fHhny/+PbeM6DCaDfN8L2lGPnEkTY/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=windriver.com; dmarc=pass action=none
 header.from=windriver.com; dkim=pass header.d=windriver.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=windriversystems.onmicrosoft.com;
 s=selector2-windriversystems-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lZzMgQq7hVrayjvvFhPwoPaabOAj19eisFUhIYdkfpA=;
 b=BE06quCY2s7jQnqcZO1pey2MOr1hDvpBa66nEXHaX0Ux2qzwokdRwgTv3I5taDm+O2RRBQN9tTc7FPsHzUeztFzcLQEy9e12ab1z+jhzKMeMztW9J1kczSvo6YtH0HUP0IhyjkYo93fAzBsWASsZWcI8c8xfoTqhcs8LJp2aA1M=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
 header.d=none;yoctoproject.org; dmarc=none action=none
 header.from=windriver.com;
Received: from CO1PR11MB4867.namprd11.prod.outlook.com (2603:10b6:303:9a::13)
 by CO1PR11MB5076.namprd11.prod.outlook.com (2603:10b6:303:90::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3541.22; Tue, 10 Nov
 2020 01:19:07 +0000
Received: from CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98]) by CO1PR11MB4867.namprd11.prod.outlook.com
 ([fe80::d844:ac89:6b05:ed98%6]) with mapi id 15.20.3541.023; Tue, 10 Nov 2020
 01:19:07 +0000
From: "Yi Zhao" <yi.zhao@windriver.com>
To: yocto@yoctoproject.org,
	Joe_MacDonald@mentor.com
Subject: [meta-selinux][PATCH] setools: fix build with Python 3.9
Date: Tue, 10 Nov 2020 09:18:40 +0800
Message-Id: <20201110011840.13164-1-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
X-Originating-IP: [60.247.85.82]
X-ClientProxiedBy: HKAPR03CA0020.apcprd03.prod.outlook.com
 (2603:1096:203:c9::7) To CO1PR11MB4867.namprd11.prod.outlook.com
 (2603:10b6:303:9a::13)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from pek-yzhao1-d1.wrs.com (60.247.85.82) by HKAPR03CA0020.apcprd03.prod.outlook.com (2603:1096:203:c9::7) with Microsoft SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3564.13 via Frontend Transport; Tue, 10 Nov 2020 01:19:06 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3d20ebe5-6bd3-497f-201e-08d885169e99
X-MS-TrafficTypeDiagnostic: CO1PR11MB5076:
X-Microsoft-Antispam-PRVS: 
	<CO1PR11MB5076C1A18001E96DB413DD28F9E90@CO1PR11MB5076.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	N28qBRFn9YiopUFU6YwXpXk2eLiwW5H2oMRYqpCcNxroAwQMHqLYKCv8nq52jkhGffTMqjyziQMBfVmZwLBmxC92pfOo0MIyDV6O15TXBO2aFmonNC6xVNh5ycZxgG5I8o9AiJWmeSYE4JWhNrTVf07MGM81tAHLeIGo9b/N5LC2YZcYi3avXkvIh59bT2geebC/9wykyQsizTo3nqosiFR7Nfmxkvpgw9H7J3md2V8EMAXXoPlSJUWeTi/HCaEFHtsspA0GHkZ3RjYhKo69WYgse6qvTY11CNPm04Yg+/2bGAr/N+46W4bopeCX/jqrLPU7OsM5S6NiSHCtHz+bwHlwi9JfKes7CI/QHKBr5vrqq+k9vNBZiq672vzw5zQgOatTXY+6Mn182dex7PSrfA==
X-Forefront-Antispam-Report: 
	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:CO1PR11MB4867.namprd11.prod.outlook.com;PTR:;CAT:NONE;SFS:(4636009)(136003)(366004)(39850400004)(346002)(376002)(396003)(6512007)(26005)(478600001)(2906002)(6666004)(52116002)(66476007)(966005)(6506007)(316002)(83380400001)(66946007)(6486002)(1076003)(8676002)(44832011)(66556008)(5660300002)(36756003)(8936002)(186003)(956004)(2616005)(86362001)(16526019);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData: 
	5T7HIP4wFIhMr0JwQJr0VCp5ECmbPOtGxqiv7M1xrObT2d4jXh9ExKj+zrRTz+Kz7steGcGVN6ZTLH/FD+gzdkXq0A+koIUQqWHXMhonwLhX90MKKQ6M89CAOJW4se+tTSqa6ySe1y/gtzEpcRGYUoshWt+IOjJUJ4pYL+q5qj1Ey3Sy41jqaXLgiO/hLZTKMIqbaKP9JGyybJMrIlSYZ4w/GNBhqw4ocIRM70PFEIykhgvYZXJlQSroG8Y5FuBr9Lm8N9CMdP0WKoz8ojsgjl37batar6Su4H7qBT2XXlxZb3SPmdaaXR5cHzaXrSuoxXwna/C5jLAslbX8sduqWmVdYApVTuBjIRPL9Bkcl06bEdBinHxM+LR0ezgU+rr9/hyHAsm4tFkb3p+yGvn2J/brNXQtD9ceFNf2ZOPNi2BNivbCDd4qv8SYZycexFRe3XtVvEtR+aVwTmdgbaqOCd1CTR3urm8cVRS49wqV0bdok6anbcdKkT54ydu+KQfuI/e4fidwlT4PsOtO2NvGaByeZAIjWMf15L0Y0Su6cIzVQ7OLc8AJOjtcVg1aqRl22l2DcvhvG4HyLX32bedXh+bp3ut4Rl8WJgqyFrVnngtjQSmrTvJbYRfwFKmysa3IFplqYnJh2MJiXRMr7nh9bg==
X-OriginatorOrg: windriver.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d20ebe5-6bd3-497f-201e-08d885169e99
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4867.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2020 01:19:07.0889
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 8ddb2873-a1ad-4a18-ae4e-4644631433be
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: l1cPVUeWd+4Q3FItsKeYllNVDcI3oMNUia7IhniWG9jlDBtJJofSMBQS3MzH8qnAHjKzOwhuFo7aSebdVMHnAw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5076
Content-Type: text/plain

The Py_UNICODE_COPY, Py_UNICODE_FILL, PyUnicode_WSTR_LENGTH,
PyUnicode_FromUnicode(), PyUnicode_AsUnicode(), _PyUnicode_AsUnicode,
and PyUnicode_AsUnicodeAndSize() are marked as deprecated in Python 3.9.
(See: https://docs.python.org/3/whatsnew/3.9.html). But the current
python3-cython (0.29.21) hasn't adapt it yet.
Append '-Wno-deprecated-declarations' in CFLAGS as a workaround to fix
the build issue.

Fixes:
In file included from
/build/tmp-glibc/work/corei7-64-wrs-linux/setools/4.3.0-r0/recipe-sysroot/usr/include/python3.9/unicodeobject.h:1026,
    from /build/tmp-glibc/work/corei7-64-wrs-linux/setools/4.3.0-r0/recipe-sysroot/usr/include/python3.9/Python.h:97,
    from setools/policyrep.c:49:
/build/tmp-glibc/work/corei7-64-wrs-linux/setools/4.3.0-r0/recipe-sysroot/usr/include/python3.9/cpython/unicodeobject.h:446:26:
note: declared here
  446 | static inline Py_ssize_t _PyUnicode_get_wstr_length(PyObject *op) {
      |                          ^~~~~~~~~~~~~~~~~~~~~~~~~~
setools/policyrep.c:97302:3: error: 'PyUnicode_AsUnicode' is deprecated [-Werror=deprecated-declarations]

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 recipes-security/setools/setools_4.3.0.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/setools/setools_4.3.0.bb b/recipes-security/setools/setools_4.3.0.bb
index 8fdeeb0..0f166c8 100644
--- a/recipes-security/setools/setools_4.3.0.bb
+++ b/recipes-security/setools/setools_4.3.0.bb
@@ -30,6 +30,8 @@ RDEPENDS_${PN} += "python3-networkx python3-decorator python3-setuptools \
 
 RDEPENDS_${PN}_class-native = ""
 
+CFLAGS_append = " -Wno-deprecated-declarations"
+
 RPROVIDES_${PN} += "${PN}-console"
 
 inherit setuptools3
-- 
2.17.1

