Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6875CE00FD8; Tue, 23 Aug 2016 05:55:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2126E00F9F
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2016 05:55:28 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id 45C502E246;
	Tue, 23 Aug 2016 14:55:27 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id IwFSi6ztsZkP; Tue, 23 Aug 2016 14:55:26 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 70EE82E20A;
	Tue, 23 Aug 2016 14:55:26 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 5BD161B18;
	Tue, 23 Aug 2016 14:55:26 +0200 (CEST)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 50E1987D;
	Tue, 23 Aug 2016 14:55:26 +0200 (CEST)
Received: from XBOX01.axis.com (xbox01.axis.com [10.0.5.15])
	by thoth.se.axis.com (Postfix) with ESMTP id 4ED08316;
	Tue, 23 Aug 2016 14:55:26 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX01.axis.com (10.0.5.15) with
	Microsoft SMTP Server (TLS) id 15.0.1156.6;
	Tue, 23 Aug 2016 14:55:26 +0200
Received: from XBOX02.axis.com ([fe80::d00f:cb52:1b56:20d]) by XBOX02.axis.com
	([fe80::d00f:cb52:1b56:20d%21]) with mapi id 15.00.1156.000;
	Tue, 23 Aug 2016 14:55:26 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: Andre McCurdy <armccurdy@gmail.com>, Takashi Matsuzawa
	<tmatsuzawa@uievolution.com>
Thread-Topic: [yocto] BBMASK issue
Thread-Index: AQHR/ODLzU+cZtHRnkGcb9k9zyc8N6BV3quAgACfqSA=
Date: Tue, 23 Aug 2016 12:55:26 +0000
Message-ID: <ad10b75b2a73413bac5b6b1bdf20b17f@XBOX02.axis.com>
References: <CY1PR0101MB1594A8354DB33AC3CC1A3A6CD7EB0@CY1PR0101MB1594.prod.exchangelabs.com>
	<CAJ86T=UU06z69pPN5GE6=Ua7hmzn8NvG3kBWh=gmafmLjTcRCw@mail.gmail.com>
In-Reply-To: <CAJ86T=UU06z69pPN5GE6=Ua7hmzn8NvG3kBWh=gmafmLjTcRCw@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BBMASK issue
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
X-List-Received-Date: Tue, 23 Aug 2016 12:55:33 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.o=
rg] On Behalf Of Andre McCurdy
> Sent: den 23 augusti 2016 07:13
> To: Takashi Matsuzawa
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] BBMASK issue
>=20
> On Mon, Aug 22, 2016 at 6:50 PM, Takashi Matsuzawa <tmatsuzawa@uievolutio=
n.com> wrote:
> > Hello Yocto.
> >
> > Now I am trying to customize an existing BSP to my need.
> > For this, I am adding following to my local.conf so that some of=20
> > the recipes in the BSP to be ignored.
> >
> > (local.conf)
> > BBMASK =3D "aaa|bbb|ccc"
> > BBMASK .=3D "|ddd|eee"
> >
> > However, it does not work since BSP itself has lines like below in
> > its layer.
> >
> > (somelayer.conf)
> > BBMASK =3D "xxx|yyy|xxx"
> >
> > The BSP definition of BBMASK seems to be overwriting my BBMASK
> > definition in my local.conf.
> > I wonder what is the best way so that the both definition are
> > effective.
> >
> > I confirmed modifying BSP's definition as below works, but not sure
> > if this can be recommended as practice to everyone who provides=20
> > layers for their BSPs.
> >
> > BBMASK .=3D "|xxx|yyy|xxx"
>=20
> This isn't safe. It will only work if a default value for BBMASK is
> set elsewhere. If not, then you end up with a BBMASK which begins with
> "|", which effectively masks _every_ recipe.

Please note that BBMASK was changed in Krogoth to allow multiple regular=20
expressions (see commit a948f5252 in Poky). Basically, with Krogoth and=20
later you can do:

BBMASK =3D "aaa bbb ccc"=09
BBMASK +=3D "ddd eee"
BBMASK_append =3D " fff ggg"

as with most other BitBake variables taking multiple values. Of course,=20
it is still possible to use | as before if you really want to, but I=20
recommend to avoid it if possible because of the problems mentioned=20
above.

//Peter


