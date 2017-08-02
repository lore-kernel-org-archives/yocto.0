Return-Path: <c.andersen@kostal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B6D9E00C9E; Wed,  2 Aug 2017 02:56:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [193.22.205.227 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from debemgw001.kostal.com (securemail.kostal.com [193.22.205.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BE95E00C19
	for <yocto@yoctoproject.org>; Wed,  2 Aug 2017 02:56:35 -0700 (PDT)
Received: from DEBEMAIL002.kostal.int ([10.20.2.182]) by 
	debemgw001.kostal.com (8.14.7/8.14.7) with ESMTP id v729uVjL004377 
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL) for 
	<yocto@yoctoproject.org>; Wed, 2 Aug 2017 11:56:31 +0200
Received: from DEBEMAIL001.kostal.int (10.20.2.181) by DEBEMAIL002.kostal.int 
	(10.20.2.182) with Microsoft SMTP Server (TLS) id 15.0.1293.2;
	Wed, 2 Aug 2017 11:56:31 +0200
Received: from DEBEMAIL001.kostal.int ([fe80::709d:54a:e7ef:38eb]) by 
	DEBEMAIL001.kostal.int ([fe80::709d:54a:e7ef:38eb%12]) with mapi id 
	15.00.1293.004; Wed, 2 Aug 2017 11:56:31 +0200
From: "Andersen, Christian" <c.andersen@kostal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] postinstall intercept hooks fail because of missing 
	qemuwrapper
Thread-Index: AdMLcG4rnYX7FD19RKSJOkSo1XZxbf//4zQA///Z64A=
Date: Wed, 2 Aug 2017 09:56:31 +0000
Message-ID: <ca14488af82146bd826b3e121ffa0eb5@DEBEMAIL001.kostal.int>
References: <45217eb6b5da40db93f9a86af0436077@DEBEMAIL001.kostal.int> 
	<3dvct001bm9re2v7@debemgw001.kostal.com>
In-Reply-To: <3dvct001bm9re2v7@debemgw001.kostal.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.20.2.192]
MIME-Version: 1.0
x-msw-jemd-newsletter: false
Subject: Re: postinstall intercept hooks fail because of missing qemuwrapper
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
X-List-Received-Date: Wed, 02 Aug 2017 09:56:37 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Markus,

thanks for the hint. In my image recipe I was setting some other dependenci=
es for wic using DEPENDS=3D"...". So the dependency for qemuwrapper-cross, =
which is provided by image.bbclass, was overwritten. After changing my depe=
ndencies to DEPENDS_append it is working now.

Regards
Christian


> -----Urspr=FCngliche Nachricht-----
> Von: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.or=
g]
> Im Auftrag von Markus Volk
> Gesendet: Mittwoch, 2. August 2017 11:36
> An: yocto@yoctoproject.org
> Betreff: Re: [yocto] postinstall intercept hooks fail because of missing
> qemuwrapper
>=20
> hi,
>=20
> this could be fixed by adding "qemuwrapper-cross" to the depends of your
> image.bb
>=20
> regards
> Markus
>=20
> On Wed, 2 Aug 2017 09:24:06 +0000
> "Andersen, Christian" <c.andersen@kostal.com> wrote:
>=20
> > Hello,
> >
> > we are using the current version of pyro. When building an image recipe=
 we get
> some warnings, that some postinstall intercept hooks failed. The log-file=
 of
> do_rootfs shows:
> >
> >(...)
> >
> > So qemuwrapper is missing. How can I fix this?
> >
> > Kind regards
> > Christian

KOSTAL Industrie Elektrik GmbH - Sitz L=FCdenscheid, Registergericht Iserlo=
hn HRB 3924 - USt-Id-Nr./Vat No.: DE 813742170
Postanschrift: An der Bellmerei 10, D-58513 L=FCdenscheid * Telefon: +49  2=
351 16-0 * Telefax: +49  2351 16-2400
Werksanschrift: Lange Eck 11, D-58099 Hagen * Tel. +49 2331 8040-601 * Fax =
+49 2331 8040-602
Gesch=E4ftsf=FChrung: Dr.-Ing. Dipl.-Wirt.Ing. Manfred Gerhard, Dipl.-Ing. =
Marwin Kinzl, Dipl.-Oec. Andreas Kostal


