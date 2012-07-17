Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe003.messaging.microsoft.com [216.32.180.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E994E002A8
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 07:57:56 -0700 (PDT)
Received: from mail198-va3-R.bigfish.com (10.7.14.247) by
	VA3EHSOBE010.bigfish.com (10.7.40.12) with Microsoft SMTP Server id
	14.1.225.23; Tue, 17 Jul 2012 14:57:56 +0000
Received: from mail198-va3 (localhost [127.0.0.1])	by
	mail198-va3-R.bigfish.com (Postfix) with ESMTP id 842678033F;
	Tue, 17 Jul 2012 14:57:55 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202hzz8275bhz2dh2a8h668h839h8e2h8e3hf0ah107ah10d2hbe9i)
Received: from mail198-va3 (localhost.localdomain [127.0.0.1]) by mail198-va3
	(MessageSwitch) id 1342537073762673_23227;
	Tue, 17 Jul 2012 14:57:53 +0000 (UTC)
Received: from VA3EHSMHS023.bigfish.com (unknown [10.7.14.238])	by
	mail198-va3.bigfish.com (Postfix) with ESMTP id B56244800EA;
	Tue, 17 Jul 2012 14:57:53 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS023.bigfish.com
	(10.7.99.33) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Tue, 17 Jul 2012 14:57:52 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.109]) by
	039-SN1MMR1-003.039d.mgd.msft.net ([10.84.1.16]) with mapi id
	14.02.0298.005; Tue, 17 Jul 2012 09:57:52 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] 1.1.2 Full Pass consolidated Test Report
Thread-Index: AQHNY5/hbr5cKoixskGHFMBAm7dmyJctRywAgAAF0YCAAJiNgA==
Date: Tue, 17 Jul 2012 14:57:51 +0000
Message-ID: <CAEsOVNcY1xBk83MeYaXLdjE+V4Bp1EruOR9LVTs=jAcWjHa8HQ@mail.gmail.com>
References: <E16513A01CAAFF40B65178C63CE45EEC19154E26@IRSMSX102.ger.corp.intel.com>
	<CAEsOVNdtHsAaJX9NdtiWSa70aRcK+Q+dvUgV7FWXu_tEkSEQYg@mail.gmail.com>
	<CAEsOVNcas4rN6sRaZSOLjy-xNTONdRXaepTiANkpjVh9jr0P_A@mail.gmail.com>
	<CAMKF1srAY+iyR+oRTsCfWqEsHaBKV4OTFFhHQr7Reaha6p_--A@mail.gmail.com>
In-Reply-To: <CAMKF1srAY+iyR+oRTsCfWqEsHaBKV4OTFFhHQr7Reaha6p_--A@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.1.2 Full Pass consolidated Test Report
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
X-List-Received-Date: Tue, 17 Jul 2012 14:57:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <318DD953F425A34A9AFB985BF0F1C94C@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 17, 2012 at 12:51 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On Mon, Jul 16, 2012 at 10:31 PM, McClintock Matthew-B29882
> <B29882@freescale.com> wrote:
>> }
>> -       rm -rf ${SSTATE_BUILDDIR}
>> +       strace rm -rf ${SSTATE_BUILDDIR}
>
> strace is probably eating the return value

And you would be right....

I want to point out running the
./tmp/work/ppc603e-poky-linux/eglibc-locale-2.13-r16/temp/run.sstate_create=
_package.17463
generated script directly does not fail (without the strace
modification)

-M=


