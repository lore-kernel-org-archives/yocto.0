Return-Path: <peter.kjellerstedt@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A126E00BB6; Tue,  3 Apr 2018 10:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6569BE008BF
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2018 10:33:53 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 9486E18420;
	Tue,  3 Apr 2018 19:33:52 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id KsRsd-O7775L; Tue,  3 Apr 2018 19:33:51 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id C7FE61837B;
	Tue,  3 Apr 2018 19:33:51 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 9FC521E075;
	Tue,  3 Apr 2018 19:33:51 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 93A711E070;
	Tue,  3 Apr 2018 19:33:51 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Tue,  3 Apr 2018 19:33:51 +0200 (CEST)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by thoth.se.axis.com (Postfix) with ESMTP id 876EA9E6;
	Tue,  3 Apr 2018 19:33:51 +0200 (CEST)
Received: from XBOX02.axis.com (10.0.5.16) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Tue, 3 Apr 2018 19:33:51 +0200
Received: from XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776]) by
	XBOX02.axis.com ([fe80::50c3:4d2f:4507:7776%21]) with mapi id
	15.00.1263.000; Tue, 3 Apr 2018 19:33:51 +0200
From: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, Scott Rifenbark
	<srifenbark@gmail.com>
Thread-Topic: [yocto] [PATCH] ref-manual: Document the task feature of
	BUILDHISTORY_FEATURES
Thread-Index: AdO8ZybnsA7bD3G7SgK1vraf61ygNgPCdiYA
Date: Tue, 3 Apr 2018 17:33:51 +0000
Message-ID: <df6a1cff71b44f89b44bdd1f5890c416@XBOX02.axis.com>
References: <7200737df0d045678110b093571c1362@XBOX02.axis.com>
In-Reply-To: <7200737df0d045678110b093571c1362@XBOX02.axis.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
Cc: Kristi Rifenbark <kristi@buzzcollectivemarketing.com>
Subject: Re: [PATCH] ref-manual: Document the task feature of BUILDHISTORY_FEATURES
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
X-List-Received-Date: Tue, 03 Apr 2018 17:33:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Anything preventing this from being added to the manual?

//Peter

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Peter Kjellerstedt
> Sent: den 15 mars 2018 15:09
> To: yocto@yoctoproject.org; Scott Rifenbark <srifenbark@gmail.com>
> Subject: Re: [yocto] [PATCH] ref-manual: Document the task feature of BUI=
LDHISTORY_FEATURES
>=20
> Ping?
>=20
> //Peter
>=20
> > -----Original Message-----
> > From: yocto-bounces@yoctoproject.org [mailto:yocto-
> > bounces@yoctoproject.org] On Behalf Of Peter Kjellerstedt
> > Sent: den 29 januari 2018 19:58
> > To: yocto@yoctoproject.org; Scott Rifenbark <srifenbark@gmail.com>
> > Subject: [yocto] [PATCH] ref-manual: Document the task feature of BUILD=
HISTORY_FEATURES
> >
> > Signed-off-by: Peter Kjellerstedt <peter.kjellerstedt@axis.com>
> > ---
> >  documentation/ref-manual/ref-variables.xml | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> >
> > diff --git a/documentation/ref-manual/ref-variables.xml b/documentation=
/ref-manual/ref-variables.xml
> > index 521eaeaed2..70e5e3428b 100644
> > --- a/documentation/ref-manual/ref-variables.xml
> > +++ b/documentation/ref-manual/ref-variables.xml
> > @@ -1927,8 +1927,8 @@
> >                  </para>
> >
> >                  <para>
> > -                    You can specify three features in the form of a
> > -                    space-separated list:
> > +                    You can specify features in the form of a space-se=
parated
> > +                    list:
> >                      <itemizedlist>
> >                          <listitem><para><emphasis>image:</emphasis>
> >                              Analysis of the contents of images, which
> > @@ -1942,12 +1942,17 @@
> >                              Analysis of the contents of the software
> >                              development kit (SDK).
> >                              </para></listitem>
> > +                        <listitem><para><emphasis>task:</emphasis>
> > +                            Save output file signatures for sstate tas=
ks.  This
> > +                            saves a file per task listing the SHA-256 =
checksums
> > +                            for each file staged, i.e., the output of =
the task.
> > +                            </para></listitem>
> >                      </itemizedlist>
> >                  </para>
> >
> >                  <para>
> >                      By default, the <filename>buildhistory</filename> =
class
> > -                    enables all three features:
> > +                    enables the following features:
> >                      <literallayout class=3D'monospaced'>
> >       BUILDHISTORY_FEATURES ?=3D "image package sdk"
> >                      </literallayout>
> > --
> > 2.12.0


