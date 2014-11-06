Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CE90E0084F; Thu,  6 Nov 2014 07:28:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0017]
X-Greylist: delayed 1577 seconds by postgrey-1.32 at yocto-www;
	Thu, 06 Nov 2014 07:28:05 PST
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5530E007BA
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 07:28:05 -0800 (PST)
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	sA6F1QIS015503
	for <yocto@yoctoproject.org>; Thu, 6 Nov 2014 16:01:47 +0100
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 1qg85s8wk0-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 06 Nov 2014 16:01:47 +0100
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5D98E34
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 15:01:19 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas2.st.com [10.75.90.16])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 922F95A517
	for <yocto@yoctoproject.org>; Thu,  6 Nov 2014 15:01:45 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.28]) by SAFEX1HUBCAS2.st.com
	([10.75.90.16]) with mapi; Thu, 6 Nov 2014 16:01:45 +0100
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 6 Nov 2014 16:01:44 +0100
Thread-Topic: Build issue with daisy branch
Thread-Index: Ac/5zuaKr79pFab9SCWdQMaMiSDChA==
Message-ID: <2C73D3E46744804E888EDCCD6FBE4FD089616794EE@SAFEX1MAIL5.st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.28,
	0.0.0000
	definitions=2014-11-06_05:2014-11-06, 2014-11-06,
	1970-01-01 signatures=0
Subject: Build issue with daisy branch
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
X-List-Received-Date: Thu, 06 Nov 2014 15:28:10 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi all,

Recently I came across a build issue when using daisy branch.

   ports/linux/xattr/portdefs.h:1:24: fatal error: attr/xattr.h: No such fi=
le or directory
   #include <attr/xattr.h>

    ERROR: Function failed: do_compile (log file is located at  .../tmp-egl=
ibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-pseudo/1.6.2-r0/temp/log.do=
_compile.26354)

I saw an upgrade in daisy branch related to pseudo.
Do you know which package is supposed to provide "attr/xattr.h"

Thanks in advance

