Return-Path: <B29882@freescale.com>
Received: from AM1EHSOBE001.bigfish.com (am1ehsobe001.messaging.microsoft.com
	[213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89B56E0054C
	for <yocto@yoctoproject.org>; Fri,  9 Dec 2011 07:47:05 -0800 (PST)
Received: from mail6-am1-R.bigfish.com (10.3.201.249) by
	AM1EHSOBE001.bigfish.com (10.3.204.21) with Microsoft SMTP Server id
	14.1.225.23; Fri, 9 Dec 2011 15:46:50 +0000
Received: from mail6-am1 (localhost [127.0.0.1])	by mail6-am1-R.bigfish.com
	(Postfix) with ESMTP id 081496801BB;
	Fri,  9 Dec 2011 15:47:04 +0000 (UTC)
X-SpamScore: -20
X-BigFish: VS-20(zz9371I936eK1432N98dK14ffOzz1202hzz8275dhz2dh2a8h668h839h8e2h8e3h)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-FB-SS: 13,
Received: from mail6-am1 (localhost.localdomain [127.0.0.1]) by mail6-am1
	(MessageSwitch) id 1323445623948382_8401;
	Fri,  9 Dec 2011 15:47:03 +0000 (UTC)
Received: from AM1EHSMHS005.bigfish.com (unknown [10.3.201.248])	by
	mail6-am1.bigfish.com (Postfix) with ESMTP id E46F7340042;
	Fri,  9 Dec 2011 15:47:03 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by AM1EHSMHS005.bigfish.com
	(10.3.207.105) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 9 Dec 2011 15:46:49 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.83]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.01.0339.002; Fri, 9 Dec 2011 09:46:48 -0600
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Thread-Topic: [yocto] meta-oe branch for edison?
Thread-Index: AQHMteQwytOI18ogW0meDZb20Uyq2ZXTyoEAgABBtYA=
Date: Fri, 9 Dec 2011 15:46:47 +0000
Message-ID: <CAEsOVNexQiXQkWQH8hEBq+4JFGihda7_azWPrxeTG9J+M3wgvw@mail.gmail.com>
References: <CAEsOVNeYZ4hwvV8dXMadkzchyA_nRHeZ63_s-XgJBzaEymUKdg@mail.gmail.com>
	<1323431474.5309.128.camel@ted>
In-Reply-To: <1323431474.5309.128.camel@ted>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-oe branch for edison?
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
X-List-Received-Date: Fri, 09 Dec 2011 15:47:07 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <4A446C3D38FB1148B291BBB22DF92F06@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 9, 2011 at 5:51 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Thu, 2011-12-08 at 20:01 +0000, McClintock Matthew-B29882 wrote:
>> Hi all,
>>
>> Can we create a meta-oe repo in git.yoctoproject.org?
>
> This might create a little friction with the OE community. What would be
> the reason for the repository?
>
>> =A0I'd like to also
>> create a branh within the repo that tracks a valid version of the repo
>> for specific Yocto releases.
>>
>> (I can add that in my investigation so far -
>> f78f3f31c06c669006fcb567c8f503d4dbec68da looks like a good starting
>> commit for edison)
>
> I'd certainly be happy to see such a branch. It might be more
> appropriate to call it 2011-1 which corresponds to the OE-Core branch
> name that is edison in the poky repo.

Well I don't particularly care if we create a repo or not. I just want
a place to go for a working meta-oe for all future releases of Yocto.
I had to figure this out on my own, but I'm can imagine others will
attempt similar things.

-M=


