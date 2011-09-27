Return-Path: <B29882@freescale.com>
Received: from TX2EHSOBE005.bigfish.com (tx2ehsobe003.messaging.microsoft.com
	[65.55.88.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 90F70E004DD
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2011 14:58:20 -0700 (PDT)
Received: from mail128-tx2-R.bigfish.com (10.9.14.254) by
	TX2EHSOBE005.bigfish.com (10.9.40.25) with Microsoft SMTP Server id
	14.1.225.22; Tue, 27 Sep 2011 21:58:18 +0000
Received: from mail128-tx2 (localhost.localdomain [127.0.0.1])	by
	mail128-tx2-R.bigfish.com (Postfix) with ESMTP id 2B3A47D81F9;
	Tue, 27 Sep 2011 21:58:18 +0000 (UTC)
X-SpamScore: -6
X-BigFish: VS-6(zz9371K98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 0,
Received: from mail128-tx2 (localhost.localdomain [127.0.0.1]) by mail128-tx2
	(MessageSwitch) id 131716067379051_15294;
	Tue, 27 Sep 2011 21:57:53 +0000 (UTC)
Received: from TX2EHSMHS043.bigfish.com (unknown [10.9.14.250])	by
	mail128-tx2.bigfish.com (Postfix) with ESMTP id E8E819E0051;
	Tue, 27 Sep 2011 21:57:52 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS043.bigfish.com
	(10.9.99.143) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Tue, 27 Sep 2011 21:57:49 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.230]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0323.007; Tue, 27 Sep 2011 16:57:49 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Liu, Song" <song.liu@intel.com>
Thread-Topic: [yocto] Minutes: Yocto Technical Team Meeting - (Tuesday,
	September 20,
	2011 8:00 AM-9:00 AM (UTC-08:00) Pacific Time (US & Canada))
Thread-Index: AQHMeB+rhnKuivjYw06YVrGpVSRzXZVYVR2AgAgGUQCAABYvAIABstaA
Date: Tue, 27 Sep 2011 21:57:48 +0000
Message-ID: <CAEsOVNes-qkt7Qx7orP+4cNm2GkASBvGQum=_pxxctJ7Ui-3rA@mail.gmail.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A16EBA481@FMSMSX151.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F23FE4@ORSMSX101.amr.corp.intel.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F2402C@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNe=sDsEHP20YbbXpzC2uFOwES20-uFJ+mWBQnea5Lby=g@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F24543@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNc4xWAoE4Y0j=0sdqfDZHQu-27q=-j35qgE2LhQhU1d9g@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A16F27CFD@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <7E680CB2A76BB8438D08CF13C09FC53A16F27CFD@ORSMSX101.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Wold,
	Saul" <saul.wold@intel.com>
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
X-List-Received-Date: Tue, 27 Sep 2011 21:58:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <BD01D9506C66A849812A41B3892D6B03@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 26, 2011 at 3:01 PM, Liu, Song <song.liu@intel.com> wrote:
> Hi Saul/Mark, would you guys please help clarifying this? We also need to=
 document this in the release note.

The conclusion here was that prelink is working in other 64bit
machines, so the powerpc64 issue is specific to that arch. Bug has
been filed to track the issue!

http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1531

-M=


