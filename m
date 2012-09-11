Return-Path: <B29882@freescale.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe004.messaging.microsoft.com [213.199.154.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49A9AE00344
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 12:30:15 -0700 (PDT)
Received: from mail70-db3-R.bigfish.com (10.3.81.242) by
	DB3EHSOBE002.bigfish.com (10.3.84.22) with Microsoft SMTP Server id
	14.1.225.23; Tue, 11 Sep 2012 19:30:00 +0000
Received: from mail70-db3 (localhost [127.0.0.1])	by mail70-db3-R.bigfish.com
	(Postfix) with ESMTP id 7A9B73E0095;
	Tue, 11 Sep 2012 19:30:00 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz17326ah8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail70-db3 (localhost.localdomain [127.0.0.1]) by mail70-db3
	(MessageSwitch) id 1347391798193222_5819;
	Tue, 11 Sep 2012 19:29:58 +0000 (UTC)
Received: from DB3EHSMHS013.bigfish.com (unknown [10.3.81.233])	by
	mail70-db3.bigfish.com (Postfix) with ESMTP id 287803C0136;
	Tue, 11 Sep 2012 19:29:58 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by DB3EHSMHS013.bigfish.com
	(10.3.87.113) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 11 Sep 2012 19:29:53 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0309.003;
	Tue, 11 Sep 2012 14:29:52 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Saul Wold <saul.wold@intel.com>
Thread-Topic: [yocto] Milestone 4, RC2 Build
Thread-Index: AQHNj9IjEa5p/Ta500SY9/REDeqe+ZeF27EA
Date: Tue, 11 Sep 2012 19:29:52 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A67015B@039-SN1MPN1-001.039d.mgd.msft.net>
References: <504EB798.60904@intel.com>
In-Reply-To: <504EB798.60904@intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "Purdie, Richard" <richard.purdie@intel.com>,
	Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Milestone 4, RC2 Build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Sep 2012 19:30:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <24E3B9CEDA96D140AF7957B89E319387@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 10, 2012 at 11:01 PM, Saul Wold <saul.wold@intel.com> wrote:
>
> Folks,
>
> Given the issues we had with the Eclipse and ADT installer during the RC1
> build and we decided to forgo the existing RC1 build and restart with an
> RC2.  There have been no changes to the Poky RC1 branch, but we moved
> Eclipse forward to pick up some changes.
>
> The current Autobuilder build artifacts are located at
> http://autobuilder.yoctoproject.org/pub/nightly/20120910-5/
>
> This includes the Eclipse plugin and adt-installer, there should be 2
> versions of the installer if I understood Beth correct, please use the on=
e
> marked adt-installer-QA when it's populated.
>
> I have seen 3 build failures, all related to libowl-av and sato rootfs, t=
hey
> are in Atom-pc, qemuppc and mpc8315 targets.  I am going attempt a rebuil=
d
> of the nightly-ppc standalone.  There was also a failure in the p1022, wh=
ich
> I think Matthew is aware of.

This should be fixed for master in meta-fsl-ppc.

-M

> All major repos have been have been Branched and we are using the 1.3_M4
> branch, git hash dd3edc9fbb674682947e8218202fdbeef8635dd5
>
> Thanks for your support in checking out these milestone.
>
> Sau!
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


