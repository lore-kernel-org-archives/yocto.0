Return-Path: <B29882@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe001.messaging.microsoft.com [216.32.181.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3194E0120F
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 08:49:45 -0700 (PDT)
Received: from mail101-ch1-R.bigfish.com (216.32.181.171) by
	CH1EHSOBE008.bigfish.com (10.43.70.58) with Microsoft SMTP Server id
	14.1.225.22; Fri, 2 Sep 2011 15:49:45 +0000
Received: from mail101-ch1 (localhost.localdomain [127.0.0.1])	by
	mail101-ch1-R.bigfish.com (Postfix) with ESMTP id 2A9FE1828141;
	Fri,  2 Sep 2011 15:49:45 +0000 (UTC)
X-SpamScore: -12
X-BigFish: VS-12(zz9371K1432N98dKzz1202hzz8275bh8275dhz2dh2a8h668h839h8e2h8e3h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null);
	IPVD:NLI; H:mail.freescale.net; RD:none; EFVD:NLI
Received: from mail101-ch1 (localhost.localdomain [127.0.0.1]) by mail101-ch1
	(MessageSwitch) id 131497855834763_17850;
	Fri,  2 Sep 2011 15:49:18 +0000 (UTC)
Received: from CH1EHSMHS006.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.244])	by mail101-ch1.bigfish.com (Postfix) with ESMTP id
	08972F4806E;	Fri,  2 Sep 2011 15:49:12 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS006.bigfish.com
	(10.43.70.6) with Microsoft SMTP Server (TLS) id 14.1.225.22;
	Fri, 2 Sep 2011 15:49:10 +0000
Received: from 039-SN1MPN1-003.039d.mgd.msft.net ([169.254.3.205]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.01.0323.002; Fri, 2 Sep 2011 10:49:09 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Chris Tapp <opensource@keylevel.com>
Thread-Topic: [yocto] Splitting processor and target in BSPs
Thread-Index: AQHMaYfa7CaogJeg+Ee0Gy5TKhtawA==
Date: Fri, 2 Sep 2011 15:49:09 +0000
Message-ID: <CAEsOVNd2i3Mn4zPdW5c1jRjKVwURUv9fYD3c_ghy+9gqsNgnsQ@mail.gmail.com>
References: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>
In-Reply-To: <B1028606-FA51-475C-A6D5-6EBC31929292@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [99.47.177.27]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Splitting processor and target in BSPs
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
X-List-Received-Date: Fri, 02 Sep 2011 15:49:45 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <C4283A5CC3345B448272739A426E415C@freescale.net>
Content-Transfer-Encoding: quoted-printable

On Fri, Sep 2, 2011 at 2:26 AM, Chris Tapp <opensource@keylevel.com> wrote:
> However, kernel configuration becomes a little bit more complicated as th=
is
> is done by machine name. A kernel recipe will be needed for each machine
> (e.g. for the different sound drivers), but I can't work out how to do th=
is
> using a base configuration for the SoCs that are shared and then adding
> machine specific parts. I can do it using (for example) a .defconfig for
> each machine, but that would require updates to multiple files to change =
the
> SoC configuration.
>
> I guess what I'm really asking is, is it possible to have a base CPU
> configuration and add a machine configuration to this ?
>
> I've recently seen discussion of .cfg kernel fragment files. Are these wh=
at
> I should be looking at? Are these available in the releases or only in th=
e
> development branch?

I think this is a good solution for you. It's a little confusing to
find were this work is but you can look in the linux-yocto kernel tree
- then the actual cfg fragment stuff on different branches.

http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.0/

meta branch contains meta/ which contains a lot of the cfg fragments,
and patches, etc. There is also a document in the git repo as well
which is worth a look.

-M=


