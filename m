Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE001.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EADE0E004E1
	for <yocto@yoctoproject.org>; Mon, 26 Sep 2011 11:43:11 -0700 (PDT)
Received: from mail188-tx2-R.bigfish.com (10.9.14.242) by
	TX2EHSOBE001.bigfish.com (10.9.40.21) with Microsoft SMTP Server id
	14.1.225.22; Mon, 26 Sep 2011 18:43:10 +0000
Received: from mail188-tx2 (localhost.localdomain [127.0.0.1])	by
	mail188-tx2-R.bigfish.com (Postfix) with ESMTP id 9047CCC0304;
	Mon, 26 Sep 2011 18:43:10 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bhz2dh2a8h668h839h8e2h8e3h62h)
X-Spam-TCS-SCL: 1:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail188-tx2 (localhost.localdomain [127.0.0.1]) by mail188-tx2
	(MessageSwitch) id 1317062526980604_3071;
	Mon, 26 Sep 2011 18:42:06 +0000 (UTC)
Received: from TX2EHSMHS023.bigfish.com (unknown [10.9.14.245])	by
	mail188-tx2.bigfish.com (Postfix) with ESMTP id CE876420074;
	Mon, 26 Sep 2011 18:42:06 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS023.bigfish.com
	(10.9.99.123) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Mon, 26 Sep 2011 18:42:04 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0323.007; Mon, 26 Sep 2011 13:42:04 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Liu, Song" <song.liu@intel.com>
Thread-Topic: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday,
	September 20,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMeB+rhnKuivjYw06YVrGpVSRzXZVYVR2AgAgGUQA=
Date: Mon, 26 Sep 2011 18:42:03 +0000
Message-ID: <CAEsOVNc4xWAoE4Y0j=0sdqfDZHQu-27q=-j35qgE2LhQhU1d9g@mail.gmail.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F23FE4@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F2402C@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNe=sDsEHP20YbbXpzC2uFOwES20-uFJ+mWBQnea5Lby=g@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F24543@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A16F24543@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Technical Team Meeting - (Tuesday, September 20, 2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
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
X-List-Received-Date: Mon, 26 Sep 2011 18:43:12 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D0B14EA5569E744682AEF3F4AF2337F8@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 21, 2011 at 11:08 AM, Liu, Song <song.liu@intel.com> wrote:
> Matthew, I believe Mark fixed this problem.
>
> Mark, would you please confirm that?

prelinking is not working on powerpc64 currently. Is it known to be
working well on other 64bit machines?

-M=


