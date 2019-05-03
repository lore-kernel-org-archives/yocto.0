Return-Path: <prvs=10264fc89e=Cyril.Jaquier@asyril.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D80ACE00D51; Fri,  3 May 2019 03:59:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [164.128.36.32 listed in list.dnswl.org]
Received: from mailout.ip-plus.net (mailout.ip-plus.net [164.128.36.32])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9251E00D3A
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 03:59:03 -0700 (PDT)
Received: from emailsecurity.cpa-group.local (unknown [217.193.198.243])
	by mailout.ip-plus.net (Postfix) with ESMTP id 1CC56207C4;
	Fri,  3 May 2019 12:59:03 +0200 (CEST)
Received: from emailsecurity.cpautomation.ch ([10.0.0.9])
	by emailsecurity.cpa-group.local ([10.0.0.3]) (SonicWall 9.1.1.3121)
	with ESMTP id o201905031059030064784-0; Fri, 03 May 2019 12:59:03 +0200
Received: from SRVEXCH2010.CPA-GROUP.LOCAL ([10.254.0.18]) by
	SRVEXCH2010.CPA-GROUP.LOCAL ([10.254.0.18]) with mapi id 14.03.0415.000;
	Fri, 3 May 2019 12:59:02 +0200
From: Jaquier Cyril <Cyril.Jaquier@asyril.com>
To: JH <jupiter.hce@gmail.com>
Thread-Topic: [yocto] Yocto concept and support for dual version firmware
	upgrad and boot
Thread-Index: AQHVAZDgCmfVBKSQoUKHSjfqBfmCnqZZOwS3
Date: Fri, 3 May 2019 10:59:02 +0000
Message-ID: <1B42944FBA87A746A9D8A2C7197FD39EBBC82F@SRVEXCH2010.CPA-GROUP.LOCAL>
References: <CAA=hcWQwNRM6M=vd82w=EbX2NGGyKcQ9tT-VC00A2a3KoQ_anw@mail.gmail.com>
	<1B42944FBA87A746A9D8A2C7197FD39EBBC758@SRVEXCH2010.CPA-GROUP.LOCAL>,
	<CAA=hcWSdQaUnsj6LvCY1J7M-=xwZrN3wgc-MgBNKTBrLPK2ZBA@mail.gmail.com>
In-Reply-To: <CAA=hcWSdQaUnsj6LvCY1J7M-=xwZrN3wgc-MgBNKTBrLPK2ZBA@mail.gmail.com>
Accept-Language: en-US, fr-CH
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [217.193.198.243]
MIME-Version: 1.0
X-Mlf-Version: 9.1.1.3121
X-Mlf-License: BS___A____
X-Mlf-UniqueId: o201905031059030064784
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Yocto concept and support for dual version firmware upgrad and boot
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
X-List-Received-Date: Fri, 03 May 2019 10:59:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Only on a Raspberry Pi 3 so far (uboot supported is already present for it)=
.=0A=
=0A=
=0A=
________________________________________=0A=
From: JH [jupiter.hce@gmail.com]=0A=
Sent: Friday, May 03, 2019 11:16=0A=
To: Jaquier Cyril=0A=
Cc: Yocto discussion list=0A=
Subject: Re: [yocto] Yocto concept and support for dual version firmware up=
grad and boot=0A=
=0A=
Thanks Jaquier, did you run mender in an embedded system?=0A=
=0A=
On 5/3/19, Jaquier Cyril <Cyril.Jaquier@asyril.com> wrote:=0A=
> Hi,=0A=
>=0A=
> I've been experimenting with mender a bit lately. Works great so far and=
=0A=
> it's fully integrated into yocto:=0A=
>=0A=
> https://mender.io/=0A=
>=0A=
> There are a few other solutions available for Yocto:=0A=
>=0A=
> https://wiki.yoctoproject.org/wiki/System_Update#Comparison=0A=
>=0A=
> Regards,=0A=
> Cyril=0A=
>=0A=
> ________________________________________=0A=
> From: yocto-bounces@yoctoproject.org [yocto-bounces@yoctoproject.org] on=
=0A=
> behalf of JH [jupiter.hce@gmail.com]=0A=
> Sent: Friday, May 03, 2019 03:55=0A=
> To: Yocto discussion list=0A=
> Subject: [yocto] Yocto concept and support for dual version firmware upgr=
ad=0A=
>    and boot=0A=
>=0A=
> Hi,=0A=
>=0A=
> Are there any Yocto recipes to support dual version control for=0A=
> firmware image upgrade and boot?=0A=
>=0A=
> The scenario is to make 2 partitions, one partition to install a work=0A=
> version of image, say v1.0, another partition to install a development=0A=
> version of image, say v1.1, the boot process should pick up the=0A=
> highest the version v1.1 first, if it fails to boot, it retreats back=0A=
> to boot old version v1.0.=0A=
>=0A=
> Appreciate any tips or reference for that implementation in Yocto.=0A=
>=0A=
> Thank you.=0A=
>=0A=
> Kind regards,=0A=
>=0A=
> - jupiter=0A=
> --=0A=
> _______________________________________________=0A=
> yocto mailing list=0A=
> yocto@yoctoproject.org=0A=
> https://lists.yoctoproject.org/listinfo/yocto=0A=
>=0A=

