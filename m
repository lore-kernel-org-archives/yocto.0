Return-Path: <B29882@freescale.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 427C4E01476
	for <yocto@yoctoproject.org>; Tue, 15 Jan 2013 20:56:02 -0800 (PST)
Received: from mail23-tx2-R.bigfish.com (10.9.14.246) by
	TX2EHSOBE002.bigfish.com (10.9.40.22) with Microsoft SMTP Server id
	14.1.225.23; Wed, 16 Jan 2013 04:56:01 +0000
Received: from mail23-tx2 (localhost [127.0.0.1])	by mail23-tx2-R.bigfish.com
	(Postfix) with ESMTP id 5AB954800E2;
	Wed, 16 Jan 2013 04:56:01 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -4
X-BigFish: VS-4(z3d0Izbb2dI98dI9371I1432Izz1ee6h1de0h1202h1e76h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3h947hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bh15d0h162dh1631h1758hbe9i1155h)
Received: from mail23-tx2 (localhost.localdomain [127.0.0.1]) by mail23-tx2
	(MessageSwitch) id 1358312158284293_15761;
	Wed, 16 Jan 2013 04:55:58 +0000 (UTC)
Received: from TX2EHSMHS031.bigfish.com (unknown [10.9.14.238])	by
	mail23-tx2.bigfish.com (Postfix) with ESMTP id 3A4A210007F;
	Wed, 16 Jan 2013 04:55:58 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by TX2EHSMHS031.bigfish.com
	(10.9.99.131) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 16 Jan 2013 04:55:56 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.77]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0318.003; Wed, 16 Jan 2013 04:55:56 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Saul Wold <sgw@linux.intel.com>, "bogdan.a.marinescu@intel.com"
	<bogdan.a.marinescu@intel.com>
Thread-Topic: [yocto] Weekly build availability.
Thread-Index: AQHN84YiMxLzqJnzwk+Y6Gm/yzyz75hLX1qAgAAB5ICAAAMjgA==
Date: Wed, 16 Jan 2013 04:55:56 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A83C9F2@039-SN1MPN1-001.039d.mgd.msft.net>
References: <CAPhnLPDoOkB=-mzUQ55cdT998oqGev+hkOiLV9vEGNUqcSXj=g@mail.gmail.com>
	<70CC66F5C30A414DADDA6973E4CA391A83C8B0@039-SN1MPN1-001.039d.mgd.msft.net>
	<50F63023.80306@linux.intel.com>
In-Reply-To: <50F63023.80306@linux.intel.com>
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
X-List-Received-Date: Wed, 16 Jan 2013 04:56:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <9BED00DB6C390A47915452341112DDC7@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 15, 2013 at 10:44 PM, Saul Wold <sgw@linux.intel.com> wrote:
> On 01/15/2013 08:37 PM, McClintock Matthew-B29882 wrote:
>>
>> On Tue, Jan 15, 2013 at 7:09 PM, Flanagan, Elizabeth
>> <elizabeth.flanagan@intel.com> wrote:
>>>
>>> - p1022ds failed due to a libxml2_2.8.0 failure. it is also throwing
>>> warnings about missing patches.
>>
>>
>> I've got a master-next branch I'm testing now and should be on master
>> soon. I'm also debugging the oprofile issues from nightly-ppc as well.
>>
> There is a patch from Bogdan for this one, see "oprofile: set correct ker=
nel
> path", there is clearly more work needed here, but that will get us past
> this failure until we get the libpfm recipe in, which looks like it will =
be
> required also.

I made a recipe for libpfm3 and libpfm4 so let me submit those before
anyone else spends time on it.

-M=


