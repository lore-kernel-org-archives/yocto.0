Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 228D0E004AB
	for <yocto@yoctoproject.org>; Tue, 11 Sep 2012 13:47:34 -0700 (PDT)
Received: from mail194-tx2-R.bigfish.com (10.9.14.238) by
	TX2EHSOBE006.bigfish.com (10.9.40.26) with Microsoft SMTP Server id
	14.1.225.23; Tue, 11 Sep 2012 20:47:33 +0000
Received: from mail194-tx2 (localhost [127.0.0.1])	by
	mail194-tx2-R.bigfish.com (Postfix) with ESMTP id 55A8E2E0082;
	Tue, 11 Sep 2012 20:47:33 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz17326ah8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail194-tx2 (localhost.localdomain [127.0.0.1]) by mail194-tx2
	(MessageSwitch) id 1347396451676306_9540;
	Tue, 11 Sep 2012 20:47:31 +0000 (UTC)
Received: from TX2EHSMHS019.bigfish.com (unknown [10.9.14.241])	by
	mail194-tx2.bigfish.com (Postfix) with ESMTP id 95B6E22008B;
	Tue, 11 Sep 2012 20:47:31 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS019.bigfish.com
	(10.9.99.119) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 11 Sep 2012 20:47:29 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0309.003; Tue, 11 Sep 2012 15:47:28 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] Milestone 4, RC2 Build
Thread-Index: AQHNj9IjEa5p/Ta500SY9/REDeqe+ZeF27EAgAAP7QCAAAXDgA==
Date: Tue, 11 Sep 2012 20:47:27 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A67062A@039-SN1MPN1-001.039d.mgd.msft.net>
References: <504EB798.60904@intel.com>
	<70CC66F5C30A414DADDA6973E4CA391A67015B@039-SN1MPN1-001.039d.mgd.msft.net>
	<CAPhnLPCj_NV0-6UagcjUcjhtQpJh53=2F8xqqE=ry-QTPr_19Q@mail.gmail.com>
In-Reply-To: <CAPhnLPCj_NV0-6UagcjUcjhtQpJh53=2F8xqqE=ry-QTPr_19Q@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>, "Purdie,
	Richard" <richard.purdie@intel.com>, Saul Wold <saul.wold@intel.com>,
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
X-List-Received-Date: Tue, 11 Sep 2012 20:47:34 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <1FB4F162FADA27439C9B1F82972E49ED@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 11, 2012 at 3:26 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
>
>
> On Tue, Sep 11, 2012 at 12:29 PM, McClintock Matthew-B29882
> <B29882@freescale.com> wrote:
>>
>> On Mon, Sep 10, 2012 at 11:01 PM, Saul Wold <saul.wold@intel.com> wrote:
>> >
>> > Folks,
>> >
>> > Given the issues we had with the Eclipse and ADT installer during the
>> > RC1
>> > build and we decided to forgo the existing RC1 build and restart with =
an
>> > RC2.  There have been no changes to the Poky RC1 branch, but we moved
>> > Eclipse forward to pick up some changes.
>> >
>> > The current Autobuilder build artifacts are located at
>> > http://autobuilder.yoctoproject.org/pub/nightly/20120910-5/
>> >
>> > This includes the Eclipse plugin and adt-installer, there should be 2
>> > versions of the installer if I understood Beth correct, please use the
>> > one
>> > marked adt-installer-QA when it's populated.
>> >
>> > I have seen 3 build failures, all related to libowl-av and sato rootfs=
,
>> > they
>> > are in Atom-pc, qemuppc and mpc8315 targets.  I am going attempt a
>> > rebuild
>> > of the nightly-ppc standalone.  There was also a failure in the p1022,
>> > which
>> > I think Matthew is aware of.
>>
>> This should be fixed for master in meta-fsl-ppc.
>
>
> Matthew, Can you branch meta-fsl-ppc into 1.3_M4? When that's done, I'll
> rebuild that part and put it into rc2

Branch created.

-M

>
> -b
>
>>
>>
>> -M
>>
>> > All major repos have been have been Branched and we are using the 1.3_=
M4
>> > branch, git hash dd3edc9fbb674682947e8218202fdbeef8635dd5
>> >
>> > Thanks for your support in checking out these milestone.
>> >
>> > Sau!
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


