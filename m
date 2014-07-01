Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5496EE00547; Tue,  1 Jul 2014 08:25:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [91.207.212.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx08-00178001.pphosted.com (mx08-00178001.pphosted.com
	[91.207.212.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D10B7E00342
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 08:24:48 -0700 (PDT)
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
	by mx08-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	s61FM5GA031717
	for <yocto@yoctoproject.org>; Tue, 1 Jul 2014 17:24:46 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx08-00178001.pphosted.com with ESMTP id 1mukn242t8-1
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 01 Jul 2014 17:24:46 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4DE3259
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 15:24:46 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas4.st.com [10.75.90.69])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id ECB7A5A1D2
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 15:24:45 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.28]) by Safex1hubcas4.st.com
	([10.75.90.69]) with mapi; Tue, 1 Jul 2014 17:24:45 +0200
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 1 Jul 2014 17:24:44 +0200
Thread-Topic: Can't add shared libraries into final image
Thread-Index: Ac+VQGK+LzWJYufJRxazt/x4gcS9vQ==
Message-ID: <888B7DC5D4899F46A9721989283666969C1E50ABAF@SAFEX1MAIL5.st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.14,
	0.0.0000
	definitions=2014-07-01_06:2014-07-01, 2014-07-01,
	1970-01-01 signatures=0
Subject: Can't add shared libraries into final image
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
X-List-Received-Date: Tue, 01 Jul 2014 15:25:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello guys,

I'm in front of an issue that I really don't understand. I wrote a quite si=
mple recipe to integrate an RPM package.
At the end of compilation/install/packaging/rootfs, I saw my shared librari=
es were not part of the final image.
I understood quickly after checking  FILES_${PN}-dev. Since my shared libra=
ries are .so (and not .so.X) , all of them fall into -dev package.

Thus I naively add FILES_${PN} + =3D" ${libdir}/lib*.so " into my recipe ..=
. I was sure this would solve my issue, but don't .
Instead my shared libraries still remain in -dev package.

Does anyone can't tell me why ? or point me out my mistake ?

Thanks in advance.





