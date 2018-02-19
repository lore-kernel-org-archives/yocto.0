Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67676E00EC0; Mon, 19 Feb 2018 12:59:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F6B7E00823
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 12:59:18 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	19 Feb 2018 12:59:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,536,1511856000"; d="scan'208";a="18814481"
Received: from ypsusan-mobl3.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.165.15])
	by fmsmga007.fm.intel.com with ESMTP; 19 Feb 2018 12:59:15 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: =?ISO-8859-1?Q?Iv=E1n?= Castell <icastell@nayarsystems.com>
Date: Tue, 20 Feb 2018 09:59:11 +1300
Message-ID: <3938142.OxtRUscMjn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <b0964351-08e1-952a-84c6-2bd99c996161@linux.intel.com>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
	<CAALXFYy7nN1ZahoR_+mCLeD4U7z4zEoiNwv+mzwT8dEf+e-pmg@mail.gmail.com>
	<b0964351-08e1-952a-84c6-2bd99c996161@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Mon, 19 Feb 2018 20:59:19 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"

On Monday, 19 February 2018 11:21:20 PM NZDT Alexander Kanavin wrote:
> On 02/19/2018 10:35 AM, Iv=E1n Castell wrote:
> > I have tried breaking apart packagegroup-core-boot, making a copy in my=
=20
> > custom layer, removing the line referencing busybox:
> >=20
> >      ## VIRTUAL-RUNTIME_login_manager ?=3D "busybox"
> >=20
> > But now bitbake complains with an error message:
> >=20
> >      ERROR: Nothing RPROVIDES '${VIRTUAL-RUNTIME_login_manager}'
>=20
> You need to remove the reference to VIRTUAL-RUNTIME_login_manager from=20
> the list of packages to be installed, not the definition that points to=20
> busybox. If the resulting image breaks, you get to keep the pieces. I'm=20
> not sure what function busyybox performs here, but oe-core does not have=
=20
> an alternative now - you are welcome to provide one.

I think the more full-featured alternative would be the "login" implementat=
ion=20
provided by shadow, so you would set:

VIRTUAL-RUNTIME_login_manager =3D "shadow"

Cheers,
Paul

=2D-=20

Paul Eggleton
Intel Open Source Technology Centre



