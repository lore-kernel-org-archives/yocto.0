Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBD03E007BA; Fri,  7 Nov 2014 11:33:05 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81D99E0076C
	for <yocto@yoctoproject.org>; Fri,  7 Nov 2014 11:33:01 -0800 (PST)
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	sA7JFDvc017107; Fri, 7 Nov 2014 20:32:58 +0100
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 1qg85sfhkn-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 07 Nov 2014 20:32:58 +0100
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2031D5D;
	Fri,  7 Nov 2014 19:32:27 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas1.st.com [10.75.90.14])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 47435B52CE;
	Fri,  7 Nov 2014 19:32:56 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.28]) by SAFEX1HUBCAS1.st.com
	([10.75.90.14]) with mapi; Fri, 7 Nov 2014 20:32:55 +0100
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 7 Nov 2014 20:32:54 +0100
Thread-Topic: [yocto] Build issue with daisy branch
Thread-Index: Ac/6k/9M5RGauGQ0T5Cei1ThyDZPRgALS89Q
Message-ID: <2C73D3E46744804E888EDCCD6FBE4FD0896167994F@SAFEX1MAIL5.st.com>
References: <2C73D3E46744804E888EDCCD6FBE4FD089616794EE@SAFEX1MAIL5.st.com>
	<4884585.vGdbtxCfvM@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <4884585.vGdbtxCfvM@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.28,
	0.0.0000
	definitions=2014-11-07_08:2014-11-07, 2014-11-07,
	1970-01-01 signatures=0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build issue with daisy branch
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
X-List-Received-Date: Fri, 07 Nov 2014 19:33:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Thanks !
I'm going to check that.

In the meantime, I had a quick look on the "openembedded-core" folder but I=
 didn't see any meaningful commits from the branch that could solve this is=
sue.
Can you just give more insight on how it has been fixed ?

Thanks  in advance

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> Sent: vendredi 7 novembre 2014 09:05
> To: Pierre Yves MORDRET
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Build issue with daisy branch
>=20
> On Thursday 06 November 2014 16:01:44 Pierre Yves MORDRET wrote:
> > Recently I came across a build issue when using daisy branch.
> >
> >    ports/linux/xattr/portdefs.h:1:24: fatal error: attr/xattr.h: No
> > such file or directory #include <attr/xattr.h>
> >
> >     ERROR: Function failed: do_compile (log file is located at
> > .../tmp-eglibc/work/x86_64-nativesdk-oesdk-linux/nativesdk-pseudo/1.6.
> > 2-r0/
> > temp/log.do_compile.26354)
> >
> > I saw an upgrade in daisy branch related to pseudo.
> > Do you know which package is supposed to provide "attr/xattr.h"
>=20
> This has been subsequently fixed in the daisy branch - if you pull again =
you
> should get the fix.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

