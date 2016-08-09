Return-Path: <jan.lindaker@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EEFDE0086E; Tue,  9 Aug 2016 07:27:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20EB7E006C6
	for <yocto@yoctoproject.org>; Tue,  9 Aug 2016 07:27:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 9997D2E151;
	Tue,  9 Aug 2016 16:27:16 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id CIthLLWh-Ail; Tue,  9 Aug 2016 16:27:16 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 00A452E095;
	Tue,  9 Aug 2016 16:27:16 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id DF3681980;
	Tue,  9 Aug 2016 16:27:15 +0200 (CEST)
Received: from seth.se.axis.com (seth.se.axis.com [10.0.2.172])
	by boulder.se.axis.com (Postfix) with ESMTP id D44651776;
	Tue,  9 Aug 2016 16:27:15 +0200 (CEST)
Received: from XBOX02.axis.com (xbox02.axis.com [10.0.5.16])
	by seth.se.axis.com (Postfix) with ESMTP id D268548B;
	Tue,  9 Aug 2016 16:27:15 +0200 (CEST)
Received: from XBOX01.axis.com (10.0.5.15) by XBOX02.axis.com (10.0.5.16) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Tue, 9 Aug 2016 16:27:15 +0200
Received: from XBOX01.axis.com ([fe80::29b8:9a78:62b3:f680]) by
	XBOX01.axis.com ([fe80::29b8:9a78:62b3:f680%22]) with mapi id
	15.00.1156.000; Tue, 9 Aug 2016 16:27:15 +0200
From: =?iso-8859-1?Q?Jan_Lind=E5ker?= <jan.lindaker@axis.com>
To: jags gediya <jags.gediya@gmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "meta-freescale@yoctoproject.org"
	<meta-freescale@yoctoproject.org>
Thread-Topic: [yocto] How to build yocto as a root user?
Thread-Index: AQHR8kL8LRF+ZriyU0WX3mRHCoKMk6BAgOiAgAAuZRU=
Date: Tue, 9 Aug 2016 14:27:15 +0000
Message-ID: <1470752835429.85250@axis.com>
References: <CAP3RZogR+2vLi6RZi+muT_R1V82KF7RcfAfYmRBC3cTJQ1XZsA@mail.gmail.com>,
	<1abab03c-09df-8ee1-3472-d3219c225d1f@balister.org>
In-Reply-To: <1abab03c-09df-8ee1-3472-d3219c225d1f@balister.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Subject: Re: How to build yocto as a root user?
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
X-List-Received-Date: Tue, 09 Aug 2016 14:27:22 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Philip Balister <philip@balister.org>=0A=
Sent: Tuesday, August 9, 2016 15:39=0A=
To: jags gediya; yocto@yoctoproject.org; meta-freescale@yoctoproject.org=0A=
Subject: Re: [yocto] How to build yocto as a root user?=0A=
=0A=
On 08/09/2016 09:32 AM, jags gediya wrote:=0A=
> > I am facing issues while build yocto as root user on ubuntu 14.04.=0A=
> > How can i build as a root user?=0A=
> =0A=
> Do not do this, it is a terrible idea. Create a user account and build=0A=
> there.=0A=
> =0A=
> Philip=0A=
=0A=
You are right Philip, for building with yocto/bitbake it is a bad idea. I o=
nly read the part with becoming root, and forgot that I do not build as roo=
t.=0A=
=0A=
However,  to be able to build a usable file system that installs on target =
I think installing fakeroot is necessary:=0A=
$ sudo apt-get install fakeroot =0A=
$ man fakeroot=0A=
=0A=
/BR Jan=0A=
=0A=
>=0A=
>=0A=
>=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

