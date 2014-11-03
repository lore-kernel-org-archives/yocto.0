Return-Path: <vmartin@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC761E008EA; Mon,  3 Nov 2014 06:00:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AFBE008BA
	for <yocto@yoctoproject.org>; Mon,  3 Nov 2014 06:00:43 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AhcFAO+JV1SHCzIm/2dsb2JhbABcgmsjgSwE1VMCgSEWAQEBAQEBfIQCAQEBAQMSKD8MBAIBCA0IAwoUCQcyFBEBAQQOBQgaiB8BqGGefAEBAQEBAQEDAQEBAQEBAQEBGZBfMQeDLYEeBZIalAWOMoN4bAGBR4EDAQEB
X-IronPort-AV: E=Sophos;i="5.07,308,1413259200"; d="scan'208";a="79123109"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	03 Nov 2014 09:00:42 -0500
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-US1EXHC01.global.avaya.com) ([135.11.85.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	03 Nov 2014 09:00:41 -0500
Received: from AZ-US1EXMB03.global.avaya.com ([fe80::a5d3:ad50:5be9:1922]) by
	AZ-US1EXHC01.global.avaya.com ([135.11.85.12]) with mapi id
	14.03.0174.001; Mon, 3 Nov 2014 09:00:40 -0500
From: "Vuille, Martin (Martin)" <vmartin@avaya.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Thread-Topic: [yocto] Change in packagegroup doesn't cause image rebuild
Thread-Index: Ac/169fEpys/cgB4QeibK0g04m8dOABq6HiAAApyAwA=
Date: Mon, 3 Nov 2014 14:00:40 +0000
Message-ID: <30C2D590D16A5C46ADFE6521910377984115848C@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE65219103779841151E36@AZ-US1EXMB03.global.avaya.com>
	<1744349.PzvLt5pE90@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1744349.PzvLt5pE90@peggleto-mobl5.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.11.85.49]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Change in packagegroup doesn't cause image rebuild
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
X-List-Received-Date: Mon, 03 Nov 2014 14:00:58 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Paul,

> -----Original Message-----
> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>=20
> Hi Martin,
>=20
> On Saturday 01 November 2014 15:57:34 Vuille, Martin wrote:
> > Yocto 1.6.1 / daisy
> >
> > I'm making the transition from denzil/1.2 to daisy.
> >
> > I have converted tasks from 1.2 to packagegroups.
> >
> > Something is not working properly, and perhaps I am doing something
> > wrong, or perhaps my expectations are incorrect.
> >
> > My image recipes refer to my package groups in IMAGE_INSTALL.
> > My packagegroup recipes list the packages in each group in
> > RDEPENDS_${PN}.
> >
> > After a recent build, I made a change to one of the packagegroups by
> > adding a package.
> >
> > I then rebuilt the images that include this packagegroup, but bitbake
> > didn't do anything.
> >
> > I then bumped the PR in the packagegroup recipe, but that didn't make
> > bitbake rebuild anything either.
>=20
> This last thing suggests to me that perhaps you aren't changing the same
> metadata that the build system is building, because changing PR absolutel=
y
> should trigger a recipe being rebuilt. Silly question, but you don't by c=
hance
> have two copies of the metadata or two packagegroup recipes with the
> same name?
>=20

I don't think so.

I ended up wiping-out my "build" directory and rebuilding from scratch.

I am converting from Poky 1.2/denzil to Poky 1.6.1/daisy and there are a lo=
t
of recipe changes, updating package versions for bbappends, converting task=
s
to packagegroups, etc.

And, on top of that, I am relatively inexperienced with Yocto, so perhaps
I am doing something wrong, I can never be sure.

But I don't recall any problems like this on denzil whereas I am seeing thi=
s
all the time on daisy (see other recent emails from me).

MV

