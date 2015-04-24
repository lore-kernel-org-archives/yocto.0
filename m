Return-Path: <matt.schuckmann@planar.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD6CFE00961; Fri, 24 Apr 2015 13:00:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [63.128.21.105 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from us-smtp-delivery-105.mimecast.com
	(us-smtp-delivery-105.mimecast.com [63.128.21.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76EA5E0086D
	for <yocto@yoctoproject.org>; Fri, 24 Apr 2015 13:00:00 -0700 (PDT)
Received: from msxbvt03.planar.net (199.244.171.48 [199.244.171.48]) by
	us-mta-18.us.mimecast.lan; Fri, 24 Apr 2015 15:59:59 -0400
Received: from MSXBEBVT12.planar.net ([::1]) by msxbvt03.planar.net ([::1])
	with mapi; Fri, 24 Apr 2015 12:59:58 -0700
From: Matt Schuckmann <Matt.Schuckmann@planar.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Fri, 24 Apr 2015 12:59:57 -0700
Thread-Topic: [yocto] Strange error trying to use externalsrc
Thread-Index: AdB+tj+VaUkifiq0QYCY2uPE7BdzDgAEpRbA
Message-ID: <4B07ADD556F70043925DA2E9C5D4346D2FDCA58C03@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FDCA58B01@MSXBEBVT12.planar.net>
	<2862088.RI0PdWmfLM@peggleto-mobl.ger.corp.intel.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FDCA58BA6@MSXBEBVT12.planar.net>
	<1457054.RBgOP8SWE8@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <1457054.RBgOP8SWE8@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-MC-Unique: lM0N6UeQQeKEYDRZnvoSdg-1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange error trying to use externalsrc
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
X-List-Received-Date: Fri, 24 Apr 2015 20:00:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable


http://www.yoctoproject.org/docs/1.4/dev-manual/dev-
> manual.html#buildi
> > ng-so
> > ftware-from-an-external-source
> > https://github.com/openembedded/oe-
> core/blob/dylan/meta/classes/extern
> > alsrc
> > .bbclass
>=20
> Ah, right, dylan - yes things were a bit different in that version.
> It's possible it didn't work very well in that version, I don't
> remember - strictly speaking we don't support dylan anymore.
>=20
> Cheers,
> Paul
>=20
> --
>=20
> Paul Eggleton
> Intel Open Source Technology Centre

Thanks Paul, more and more I regret my early decision to start out with TI'=
s released 7.0 SDK using Arago which is on Dylan.=20
It's taken them forever to create another release.=20
At the time I was new to the Sitara processor, OE and Bitbake and figured I=
 should stay with released code, now I see them error of my ways.=20

Thanks again,
Matt S.=20


