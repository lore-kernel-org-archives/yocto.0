Return-Path: <Raghavendra.Kakarla@inedasystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19EB6E00959; Thu,  2 Apr 2015 23:04:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.invecas.com (mx2.invecas.com [112.133.222.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15834E0049A
	for <yocto@yoctoproject.org>; Thu,  2 Apr 2015 23:04:49 -0700 (PDT)
Received: from SOC-EXCH-01.invecas.local (10.0.30.8) by mail.invecas.com
	(10.0.30.132) with Microsoft SMTP Server (TLS) id 14.3.123.3;
	Fri, 3 Apr 2015 11:34:51 +0530
Received: from SOC-EXCH-02.invecas.local (10.0.30.9) by
	SOC-EXCH-01.invecas.local (10.0.30.8) with Microsoft SMTP Server (TLS)
	id 15.0.995.29; Fri, 3 Apr 2015 11:34:45 +0530
Received: from SOC-EXCH-02.invecas.local ([::1]) by SOC-EXCH-02.invecas.local
	([::1]) with mapi id 15.00.0995.028; Fri, 3 Apr 2015 11:34:44 +0530
From: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: Difference b/w yocto kernels and normal linux.org kernels
Thread-Index: AQHQWumtLWdXg6sbx0i8ugChGoeVpp0aECNO//+0KgCAISxvGQ==
Date: Fri, 3 Apr 2015 06:04:44 +0000
Message-ID: <1428041059351.3514@inedasystems.com>
References: <18041737.50.1422871220143.JavaMail.kraghavendra@Raghavendra>
	<1425961288367.52845@inedasystems.com>
	<1426234453004.44900@inedasystems.com>,
	<2800438.dQj2Pq3DsR@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <2800438.dQj2Pq3DsR@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US, en-IN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [192.168.42.88]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Difference b/w yocto kernels and normal linux.org kernels
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
X-List-Received-Date: Fri, 03 Apr 2015 06:04:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Paul Eggleton,=0A=
=0A=
I have some doubts on the SDK and build errors.=0A=
=0A=
Could you please clarify my doubts.=0A=
=0A=
1. Can we get the consolidated log/file for total installed packages for co=
rresponding SDK. If user wants to know what packages are included in the SD=
K.=0A=
=0A=
2. When trying to build the images always getting a error saying that clean=
 things in kernel path in build error log, then we goto that path run comma=
nd "make mrproper" then it is working fine. =0A=
=0A=
=0A=
Thanks and Regards,=0A=
Raghavendra K.=0A=
=0A=
=0A=
________________________________________=0A=
From: Paul Eggleton <paul.eggleton@linux.intel.com>=0A=
Sent: Friday, March 13, 2015 2:23 PM=0A=
To: Raghavendra Kakarla=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: Difference b/w yocto kernels and normal linux.org kernels=0A=
=0A=
On Friday 13 March 2015 08:14:13 Raghavendra Kakarla wrote:=0A=
> Is it kernel is must be a git repository code for building in the yocto?=
=0A=
>=0A=
> When i gave my custom kernel which is not a git repository code and it is=
 in=0A=
> my development PC, i got invalid SRCREV number error. But when give the=
=0A=
> same kernel from the git repository it is working. Can you please help me=
=0A=
> in resolving this error.=0A=
=0A=
If you want to use your own non-git sources you are moving further away fro=
m=0A=
how the linux-yocto recipe works. If you have not already I would suggest=
=0A=
using linux-yocto-custom as described in our kernel development manual:=0A=
=0A=
http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#working=
-with-your-own-sources=0A=
=0A=
Note that you must not have SRCPV included in the recipe's value of PV, or=
=0A=
you will get the error you mentioned.=0A=
=0A=
Cheers,=0A=
Paul=0A=
=0A=
--=0A=
=0A=
Paul Eggleton=0A=
Intel Open Source Technology Centre=0A=

