Return-Path: <B29882@freescale.com>
Received: from co9outboundpool.messaging.microsoft.com
	(co9ehsobe001.messaging.microsoft.com [207.46.163.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FD3CE0144A
	for <yocto@yoctoproject.org>; Fri, 21 Dec 2012 09:31:16 -0800 (PST)
Received: from mail91-co9-R.bigfish.com (10.236.132.235) by
	CO9EHSOBE013.bigfish.com (10.236.130.76) with Microsoft SMTP Server id
	14.1.225.23; Fri, 21 Dec 2012 17:31:15 +0000
Received: from mail91-co9 (localhost [127.0.0.1])	by mail91-co9-R.bigfish.com
	(Postfix) with ESMTP id C0A18B001EE;
	Fri, 21 Dec 2012 17:31:15 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -3
X-BigFish: VS-3(zz98dI9371I936eI1432Izz1de0h1202h1e76h1d1ah1d2ahzz8275bhz2dh2a8h668h839h8e2h8e3h947hd25hf0ah10d2h1288h12a5h12a9h12bdh137ah13b6h1441h1537h153bh15d0h162dh1631h1758hbe9i1155h)
Received: from mail91-co9 (localhost.localdomain [127.0.0.1]) by mail91-co9
	(MessageSwitch) id 1356111044116844_956; Fri, 21 Dec 2012 17:30:44 +0000
	(UTC)
Received: from CO9EHSMHS021.bigfish.com (unknown [10.236.132.252])	by
	mail91-co9.bigfish.com (Postfix) with ESMTP id 1A7EE78004F;
	Fri, 21 Dec 2012 17:30:44 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CO9EHSMHS021.bigfish.com
	(10.236.130.31) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 21 Dec 2012 17:30:43 +0000
Received: from 039-SN1MPN1-002.039d.mgd.msft.net ([169.254.2.21]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0318.003; Fri, 21 Dec 2012 17:30:42 +0000
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Chris Tapp <opensource@keylevel.com>
Thread-Topic: [yocto] I think my kernel image just went back in time...
Thread-Index: AQHN36Dm0/s4WWq5sUex7Ps4zgzqew==
Date: Fri, 21 Dec 2012 17:30:41 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A80FF7A@039-SN1MPN1-002.039d.mgd.msft.net>
References: <93700C12-76D8-4F46-9AAB-B66A9869D70C@keylevel.com>
In-Reply-To: <93700C12-76D8-4F46-9AAB-B66A9869D70C@keylevel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: I think my kernel image just went back in time...
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
X-List-Received-Date: Fri, 21 Dec 2012 17:31:16 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <061125FC298D674CB6F78087B421303D@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Sun, Dec 9, 2012 at 5:17 PM, Chris Tapp <opensource@keylevel.com> wrote:
> In tmp/deploy/images:
>
> 1) bzImage had a timestamp of 2012-12-09 21:49 and the file ended -201212=
09214459.bin
>
> 2) Cleaned the image and the task it contained (to pick up some changes o=
n rebuild) and deleted the image files (.hddimg, etc.) in tmp/deploy/images=
 making sure to leave the kernel files intact.
>
> 3) Rebuilt the image. The bzImage now has a timestamp of 2012-12-09 11:13=
 and the name ends -20121209105420.bin
>
> This looks to me like the kernel image has reverted to an earlier one! It=
 is certainly behaving as if this is the case, because a kernel option that=
 I added is no longer in the deployed image...

Did it redeploy from an older sstate-cache?

-M=


