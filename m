Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C3E3E002AB
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2012 12:05:12 -0700 (PDT)
Received: from mail143-ch1-R.bigfish.com (10.43.68.238) by
	CH1EHSOBE016.bigfish.com (10.43.70.66) with Microsoft SMTP Server id
	14.1.225.23; Thu, 16 Aug 2012 19:05:11 +0000
Received: from mail143-ch1 (localhost [127.0.0.1])	by
	mail143-ch1-R.bigfish.com (Postfix) with ESMTP id B401A2001FC;
	Thu, 16 Aug 2012 19:05:10 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -10
X-BigFish: VS-10(zzbb2dI98dI9371Ic89bh1b0aL936eI1432I1447I14ffIzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail143-ch1 (localhost.localdomain [127.0.0.1]) by mail143-ch1
	(MessageSwitch) id 1345143907843228_24627;
	Thu, 16 Aug 2012 19:05:07 +0000 (UTC)
Received: from CH1EHSMHS028.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.240])	by mail143-ch1.bigfish.com (Postfix) with ESMTP id
	C1E94340046;	Thu, 16 Aug 2012 19:05:07 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS028.bigfish.com
	(10.43.70.28) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Thu, 16 Aug 2012 19:05:06 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.41]) by
	039-SN1MMR1-004.039d.mgd.msft.net ([::1]) with mapi id 14.02.0298.005;
	Thu, 16 Aug 2012 14:04:57 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Raul Rosetto Munoz <munoz0raul@gmail.com>
Thread-Topic: [yocto] Re-Build virtual/kernel
Thread-Index: AQHNe93NM1yjYfBZSUOVm/HUM8Yf6pddH1AAgAAAugA=
Date: Thu, 16 Aug 2012 19:04:57 +0000
Message-ID: <CAEsOVNfRQeD24cqyPGJh7G_fLRVrj+bWmKmm0K6ORy=Gaek7KQ@mail.gmail.com>
References: <CANmVirjvYNf0kedcpWP1zhNuu9_4_f-Zr-LR8aQS=1JBpUPJLQ@mail.gmail.com>
	<CAEsOVNdLwWySAnOc9J8umOU75oV1S8f-9RWJFxHV2n1e4Q=MqA@mail.gmail.com>
	<CANmViri9CS7CHj_p9emS8dFTZNOXeKDLYxLaznsLasX+sb_FBg@mail.gmail.com>
In-Reply-To: <CANmViri9CS7CHj_p9emS8dFTZNOXeKDLYxLaznsLasX+sb_FBg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Re-Build virtual/kernel
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
X-List-Received-Date: Thu, 16 Aug 2012 19:05:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <77569FAE85A1A24182887ACA80427F58@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

What about the -f?

-M

On Thu, Aug 16, 2012 at 2:02 PM, Raul Rosetto Munoz
<munoz0raul@gmail.com> wrote:
> I did all de comands with -c and do not work!
>
> Some one no some thing that I can try to update de uImage file?
>
> Thanks for the sugestion.
>
>
>
> 2012/8/16 McClintock Matthew-B29882 <B29882@freescale.com>
>>
>> On Thu, Aug 16, 2012 at 7:11 AM, Raul Rosetto Munoz
>> <munoz0raul@gmail.com> wrote:
>> > Hello All,
>> >
>> > I'm use yocto to create a linux for imx28, with meta-fsl-arm and
>> > meta-openembedded.
>> >
>> > Until now, every thing is ok, I Have a
>> > core-image-minimal-imx28evk.sdcard
>> > that working in the machine.
>> >
>> > My problem is that when I try to add some things in the kernel
>> > configuration, I feel like the system build dont generate a new uImage
>> > file
>> > or the thing that I selected in the Kernel dont be atached in the
>> > core-image-minimal-imx28evk.sdcard!
>> >
>> > What I did is:
>> >
>> > ...tmp/deploy/images$ ls
>> > -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
>> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
>> > lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.bin
>> > ->
>> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
>> >
>> > then:
>> >
>> > bitbake -c menuconfig virtual/kernel
>> > bitbake -c patch virtual/kernel
>> > bitbake -c compile virtual/kernel
>> > bitbake  virtual/kernel
>>
>> Try
>>
>> bitbake -c compile virtual/kernel -f
>>
>> -M
>>
>> >
>> > and I'm looking again:
>> >
>> > ...tmp/deploy/images$ ls
>> > -rw-r--r--  1 raul raul   2511696 2012-08-15 16:23
>> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
>> > lrwxrwxrwx  1 raul raul        47 2012-08-15 16:23 uImage-imx28evk.bin
>> > ->
>> > uImage-2.6.35.3-r24-imx28evk-20120815191927.bin
>> >
>> > Some One can explain to me what is the correct way to re-build the
>> > virtual/kenel target?
>> >
>> > Thanks for all Help!
>> >
>> > --
>> > Raul Rosetto Mu=F1oz
>> >
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto
>> >
>
>
>
>
> --
> Raul Rosetto Mu=F1oz
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>=


