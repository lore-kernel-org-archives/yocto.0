Return-Path: <B29882@freescale.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe006.messaging.microsoft.com [216.32.180.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5EC6CE01476
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 20:37:59 -0800 (PST)
Received: from mail25-co1-R.bigfish.com (10.243.78.220) by
	CO1EHSOBE001.bigfish.com (10.243.66.64) with Microsoft SMTP Server id
	14.1.225.23; Wed, 16 Jan 2013 04:37:58 +0000
Received: from mail25-co1 (localhost [127.0.0.1])	by mail25-co1-R.bigfish.com
	(Postfix) with ESMTP id 91FBFC000DF;
	Wed, 16 Jan 2013 04:37:58 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(z3d0Iz98dI9371Izz1ee6h1de0h1202h1e76h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3h947hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bh15d0h162dh1631h1758hbe9i1155h)
Received: from mail25-co1 (localhost.localdomain [127.0.0.1]) by mail25-co1
	(MessageSwitch) id 1358311077286973_8360;
	Wed, 16 Jan 2013 04:37:57 +0000 (UTC)
Received: from CO1EHSMHS012.bigfish.com (unknown [10.243.78.200])	by
	mail25-co1.bigfish.com (Postfix) with ESMTP id 3A52BAC004C;
	Wed, 16 Jan 2013 04:37:57 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO1EHSMHS012.bigfish.com
	(10.243.66.22) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 16 Jan 2013 04:37:57 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.77]) by
	039-SN1MMR1-005.039d.mgd.msft.net ([::1]) with mapi id 14.02.0318.003;
	Wed, 16 Jan 2013 04:37:56 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Thread-Topic: [yocto] Weekly build availability.
Thread-Index: AQHN84YiMxLzqJnzwk+Y6Gm/yzyz75hLX1qA
Date: Wed, 16 Jan 2013 04:37:55 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A83C8B0@039-SN1MPN1-001.039d.mgd.msft.net>
References: <CAPhnLPDoOkB=-mzUQ55cdT998oqGev+hkOiLV9vEGNUqcSXj=g@mail.gmail.com>
In-Reply-To: <CAPhnLPDoOkB=-mzUQ55cdT998oqGev+hkOiLV9vEGNUqcSXj=g@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Weekly build availability.
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
X-List-Received-Date: Wed, 16 Jan 2013 04:37:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <64D5523A19F7044CB7B2B186027679C0@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 15, 2013 at 7:09 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> - p1022ds failed due to a libxml2_2.8.0 failure. it is also throwing
> warnings about missing patches.

I've got a master-next branch I'm testing now and should be on master
soon. I'm also debugging the oprofile issues from nightly-ppc as well.

-M=


