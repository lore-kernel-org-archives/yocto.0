Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0AFFCE00BC4; Tue, 20 Jun 2017 00:19:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.229 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from securemail.kostal.com (securemail.kostal.com [193.22.205.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36614E00B05
	for <yocto@yoctoproject.org>; Tue, 20 Jun 2017 00:19:33 -0700 (PDT)
Received: from DEBEMAIL001.kostal.int ([10.20.2.181]) by 
	securemail.kostal.com (8.14.7/8.14.7) with ESMTP id v5K7JLlI002132 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL); Tue, 20 
	Jun 2017 09:19:22 +0200
Received: from DEBEMAIL002.kostal.int (10.20.2.182) by DEBEMAIL001.kostal.int 
	(10.20.2.181) with Microsoft SMTP Server (TLS) id 15.0.1263.5; Tue, 
	20 Jun 2017 09:19:21 +0200
Received: from DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb]) by 
	DEBEMAIL002.kostal.int ([fe80::e135:11a6:577e:23bb%12]) with mapi id 
	15.00.1263.000; Tue, 20 Jun 2017 09:19:21 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] useradd and one sysroot per recipe in pyro
Thread-Index: AdLkX2KZGZ+uxj15QrG2mWY7ds6aFgAslx6AAAWA4mAAHgmeAAD9ZCLg
Date: Tue, 20 Jun 2017 07:19:21 +0000
Message-ID: <ba0870f641d54bfd8deeb25702680232@DEBEMAIL002.kostal.int>
References: <c683cf9b78e04d5e912e0c0a8a0a59b4@DEBEMAIL002.kostal.int> 
	<20170614152552.GA18997@mbabyjoh-desk.ger.corp.intel.com> 
	<273d47d96cf74bb98bb7b5c46693b0e2@DEBEMAIL002.kostal.int> 
	<20170615082332.GC19437@mbabyjoh-desk.ger.corp.intel.com>
In-Reply-To: <20170615082332.GC19437@mbabyjoh-desk.ger.corp.intel.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
X-OriginalId: qfv5K7JLlI002132
Subject: Re: useradd and one sysroot per recipe in pyro
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
X-List-Received-Date: Tue, 20 Jun 2017 07:19:37 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Maxin,

> > Do I have to add shadow-native in all these recipes or is it a bug / re=
gression in
> pyro?
>=20
> It is one of those "known" limitations which fell through the cracks.
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D8078
>=20
> Thanks for bringing this up. We need to address this for pyro/master.

okay, thanks, so I am adding shadow-native as a workaround for the moment.

Regards
Christian

KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Axel Zimmermann, Dipl.-Ing. Marwin Kinzl, Dipl.-Oec. =
Andreas Kostal


