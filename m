Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFE36E00769; Thu,  7 Aug 2014 07:24:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0011]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
X-Greylist: delayed 1484 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Aug 2014 07:24:43 PDT
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67A7CE002A9
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 07:24:42 -0700 (PDT)
Received: from pps.filterd (m0046670.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	s77DijjP027976
	for <yocto@yoctoproject.org>; Thu, 7 Aug 2014 15:59:58 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 1njsxb07p4-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <yocto@yoctoproject.org>; Thu, 07 Aug 2014 15:59:58 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CE05C38
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 13:59:51 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas1.st.com [10.75.90.14])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 1FC7959B00
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 13:59:56 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.28]) by SAFEX1HUBCAS1.st.com
	([10.75.90.14]) with mapi; Thu, 7 Aug 2014 15:59:55 +0200
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 7 Aug 2014 15:59:54 +0200
Thread-Topic: Installing Application Development SDK hangs when using "screen"
Thread-Index: Ac+yR9Q5o2V6fumaSXqThj99C9Csgg==
Message-ID: <888B7DC5D4899F46A9721989283666969C1E56EE1B@SAFEX1MAIL5.st.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.27,
	0.0.0000
	definitions=2014-08-07_04:2014-08-06, 2014-08-07,
	1970-01-01 signatures=0
Subject: Installing Application Development SDK hangs when using "screen"
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
X-List-Received-Date: Thu, 07 Aug 2014 14:24:46 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi there,

I have a tricky issue to sort out. I'm using a build server(Ubuntu 12.04 LT=
S) for building my Yocto project and Application Dev SDK (bitbake -c popula=
te_sdk).
On this build server I 'm used to using "screen" tool. Using "screen" and b=
itbake at the same time seems to have no issues.=20

However when installing the App. Dev. SDK via self-installer, it hangs ever=
y time after a while. The culprit seems to be "screen".
If I am IN a "screen" session OR I am OUT "screen" session but there is a r=
unning screen session that belongs to me, it hangs.

Did someone experience such trouble ? Any ideas ?

Thanks in advance
Pierre-Yves






