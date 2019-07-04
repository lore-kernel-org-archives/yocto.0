Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5D48E00D86; Thu,  4 Jul 2019 03:44:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
X-Greylist: delayed 338 seconds by postgrey-1.32 at yocto-www;
	Thu, 04 Jul 2019 03:44:28 PDT
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F56FE00C43
	for <yocto@yoctoproject.org>; Thu,  4 Jul 2019 03:44:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 918C0184C8;
	Thu,  4 Jul 2019 12:38:49 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id IeQVrY-x3Cns; Thu,  4 Jul 2019 12:38:48 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 5B28018415;
	Thu,  4 Jul 2019 12:38:48 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 3E01B1E093;
	Thu,  4 Jul 2019 12:38:48 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 325F61E092;
	Thu,  4 Jul 2019 12:38:48 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Thu,  4 Jul 2019 12:38:48 +0200 (CEST)
Received: from XBOX01.axis.com (xbox01.axis.com [10.0.5.15])
	by thoth.se.axis.com (Postfix) with ESMTP id 25A4C29B2;
	Thu,  4 Jul 2019 12:38:48 +0200 (CEST)
Received: from xbox11.axis.com (10.0.5.25) by XBOX01.axis.com (10.0.5.15) with
	Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Thu, 4 Jul 2019 12:38:47 +0200
Received: from xbox06.axis.com (10.0.15.176) by xbox11.axis.com (10.0.5.25)
	with Microsoft SMTP Server (TLS) id 15.0.1365.1;
	Thu, 4 Jul 2019 12:38:47 +0200
Received: from xbox06.axis.com ([fe80::59d2:4cb0:3900:3c35]) by
	xbox06.axis.com ([fe80::59d2:4cb0:3900:3c35%12]) with mapi id
	15.00.1395.000; Thu, 4 Jul 2019 12:38:47 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>, Thomas Roos
	<Thomas.Roos@industronic.de>, "Volosincu, Andreea S"
	<andreea.volosincu@windriver.com>
Thread-Topic: [yocto] yocto dev day ELCE 2019 Lyon ?
Thread-Index: AQHVMjBYqcJJtrYPZ0i4Yh8p48/xPKa54goAgABhzcA=
Date: Thu, 4 Jul 2019 10:38:47 +0000
Message-ID: <e31b617f50e44913a1bb0203e39527c4@xbox06.axis.com>
References: <OFDFFF8F9D.BA13B49C-ONC125842D.00221F33-C125842D.002264A7@INDUSTRONIC.DE>
	<CAP71Wjy4RwRpjFD31wA_b8CpZn5u+2wHHscwCvS7zFCp9pruoQ@mail.gmail.com>
In-Reply-To: <CAP71Wjy4RwRpjFD31wA_b8CpZn5u+2wHHscwCvS7zFCp9pruoQ@mail.gmail.com>
Accept-Language: en-US, sv-FI
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: yocto dev day ELCE 2019 Lyon ?
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
X-List-Received-Date: Thu, 04 Jul 2019 10:44:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org>
> On Behalf Of Nicolas Dechesne
> Sent: den 4 juli 2019 08:45
> To: Thomas Roos <Thomas.Roos@industronic.de>; Volosincu, Andreea S
> <andreea.volosincu@windriver.com>
> Cc: Yocto list discussion <yocto@yoctoproject.org>
> Subject: Re: [yocto] yocto dev day ELCE 2019 Lyon ?
>=20
> Hi Thomas,
>=20
> On Thu, Jul 4, 2019 at 8:18 AM Thomas Roos <Thomas.Roos@industronic.de>
> wrote:
> >
> > Hi,
> > are there any plans to organize a yocto dev day in October 2019,
> > Lyon. Embedded Linux Conference Europe?
> > cheers, Thomas
>=20
> Yes, in fact we are trying something new for the first time at ELC-E
> this year, see:
> https://lists.yoctoproject.org/pipermail/yocto/2019-May/045088.html
>=20
> There will be a 2-day "Yocto Project Summit" with a mix of
> presentations/talks, training classes and developers meetings,
> including a social event in the evening.
>=20
> cc'ing Andreea if there are more questions.

Will this replace OEDEM too?

//Peter


