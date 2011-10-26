Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE007.bigfish.com (tx2ehsobe004.messaging.microsoft.com
	[65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A61DE005BB
	for <yocto@yoctoproject.org>; Tue, 25 Oct 2011 19:16:24 -0700 (PDT)
Received: from mail146-tx2-R.bigfish.com (10.9.14.252) by
	TX2EHSOBE007.bigfish.com (10.9.40.27) with Microsoft SMTP Server id
	14.1.225.22; Wed, 26 Oct 2011 02:16:18 +0000
Received: from mail146-tx2 (localhost.localdomain [127.0.0.1])	by
	mail146-tx2-R.bigfish.com (Postfix) with ESMTP id 677BBA68092;
	Wed, 26 Oct 2011 02:16:20 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail146-tx2 (localhost.localdomain [127.0.0.1]) by mail146-tx2
	(MessageSwitch) id 1319595379310203_14875;
	Wed, 26 Oct 2011 02:16:19 +0000 (UTC)
Received: from TX2EHSMHS044.bigfish.com (unknown [10.9.14.240])	by
	mail146-tx2.bigfish.com (Postfix) with ESMTP id 2EEE5EE805F;
	Wed, 26 Oct 2011 02:16:19 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS044.bigfish.com
	(10.9.99.144) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Wed, 26 Oct 2011 02:16:13 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.150]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0339.002; Tue, 25 Oct 2011 21:16:18 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Martin Jansa <martin.jansa@gmail.com>
Thread-Topic: [yocto] [PATCH 7/7] Add proper deps for nfs-utils, util-linux,
	and strace
Thread-Index: AQHMiNdjLeXu1UqgjU6Y1Hrxbu+h4JWNHVuAgAEvKoA=
Date: Wed, 26 Oct 2011 02:16:18 +0000
Message-ID: <CAEsOVNf-eWcAnqjoMf2=e4B6OP+=9yhvRQYQo8dLe-RvhQ5=Hg@mail.gmail.com>
References: <1317275552-19908-1-git-send-email-msm@freescale.com>
	<1317275552-19908-7-git-send-email-msm@freescale.com>
	<CA+chaQerLbLcFTuuHZs_KimTQmqOHkhyFUCx-7FzTZfKHFkMgQ@mail.gmail.com>
	<CA+chaQfYyHq5urZwLty9=Na_CM53xmvLV7tURK6DeZ6ZWkE65A@mail.gmail.com>
In-Reply-To: <CA+chaQfYyHq5urZwLty9=Na_CM53xmvLV7tURK6DeZ6ZWkE65A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 7/7] Add proper deps for nfs-utils, util-linux, and strace
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
X-List-Received-Date: Wed, 26 Oct 2011 02:16:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <E0026E6180086545AF3D64E24CAB9DB5@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 25, 2011 at 3:10 AM, Martin Jansa <martin.jansa@gmail.com> wrot=
e:
> PING
>
> I've fixed nfs_utils, could you please fix util-linux and strace as sugge=
sted?

This is still on my list but I'm not sure when I will be able to get to it.

-M=


