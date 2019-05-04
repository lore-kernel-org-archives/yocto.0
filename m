Return-Path: <tech@domaigne.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 71B10E00ADB; Sat,  4 May 2019 10:31:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [80.237.132.122 listed in list.dnswl.org]
Received: from wp115.webpack.hosteurope.de (wp115.webpack.hosteurope.de
	[80.237.132.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38A25E00A5C
	for <yocto@yoctoproject.org>; Sat,  4 May 2019 10:31:34 -0700 (PDT)
Received: from app08-neu.ox.hosteurope.de ([92.51.170.142]); authenticated
	by wp115.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:ECDHE_RSA_AES_256_CBC_SHA1:256)
	id 1hMyVX-0002Dv-Mq; Sat, 04 May 2019 19:31:31 +0200
Date: Sat, 4 May 2019 19:31:31 +0200 (CEST)
From: =?UTF-8?Q?Lo=C3=AFc_Domaign=C3=A9?= <tech@domaigne.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	"Westermann, Oliver" <Oliver.Westermann@cognex.com>
Message-ID: <1404879235.516464.1556991091636@ox.hosteurope.de>
In-Reply-To: <alpine.LFD.2.21.1905031321120.7995@localhost.localdomain>
References: <BN6PR06MB3138577A7F834F2A120297A286350@BN6PR06MB3138.namprd06.prod.outlook.com>
	<alpine.LFD.2.21.1905031250300.4226@localhost.localdomain>
	<alpine.LFD.2.21.1905031321120.7995@localhost.localdomain>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev51
X-Originating-Client: open-xchange-appsuite
X-bounce-key: webpack.hosteurope.de;tech@domaigne.com;1556991095;4a28b008;
X-HE-SMSGID: 1hMyVX-0002Dv-Mq
Cc: yocto@yoctoproject.org
Subject: Re: Defining group of machines
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
X-List-Received-Date: Sat, 04 May 2019 17:31:36 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Bonsoir,

> > > We=E2=80=99ve a product group with different devices, each having the=
ir
> > > machine-conf, eg
> > >
> > > Device_a
> > >
> > > Device_a_mini
> > >
> > > Device_b
> > >
> > > Device_b_mini <- Upcoming
> > >
> > > Device_c <- Upcoming

<snip>

> >   i know i did this once upon a time using the MACHINEOVERRIDES
> > variable to "insert" a machine family into the sequence of machine
> > definitions. as long as there is (i believe) a strictly hierarchical
> > grouping of machines you want to define, i'm pretty sure
> > MACHINEOVERRIDES is what you want.
> >
> >   let me see if i can find where i did that once.
>=20
>   yeah, i'm pretty sure you want MACHINEOVERRIDES:
>=20
> https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-M=
ACHINEOVERRIDES
>=20
> which has a nice example of how to invent a new "machine" category
> (qemuall) that subsumes a number of actual qemu machines. is that what
> you were after?

override is the first thing that crossed my mind...  =20

In addition to override, include file (xxx.inc) and use of require/include =
directive might help wrt. to configuration files.

--
Cheers!
Loic

