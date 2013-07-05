Return-Path: <B19537@freescale.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE90DE0140D
	for <yocto@yoctoproject.org>; Fri,  5 Jul 2013 01:49:02 -0700 (PDT)
Received: from mail196-ch1-R.bigfish.com (10.43.68.244) by
	CH1EHSOBE013.bigfish.com (10.43.70.63) with Microsoft SMTP Server id
	14.1.225.22; Fri, 5 Jul 2013 08:49:01 +0000
Received: from mail196-ch1 (localhost [127.0.0.1])	by
	mail196-ch1-R.bigfish.com (Postfix) with ESMTP id 16E29260E99;
	Fri,  5 Jul 2013 08:49:01 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -1
X-BigFish: VS-1(zz9371I542I1432I1453I1447I853kzz1f42h1ee6h1de0h1fdah2073h1202h1e76h1d1ah1d2ah1fc6hzz8275dhz2dh2a8h668h839h8e2h8e3h944hd25hf0ah1220h1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh15d0h162dh1631h1758h18e1h1946h19b5h1ad9h1b0ah1d0ch1d2eh1d3fh1dfeh1dffh1e1dhbe9i1155h)
Received: from mail196-ch1 (localhost.localdomain [127.0.0.1]) by mail196-ch1
	(MessageSwitch) id 1373014139824730_30604;
	Fri,  5 Jul 2013 08:48:59 +0000 (UTC)
Received: from CH1EHSMHS018.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.230])	by mail196-ch1.bigfish.com (Postfix) with ESMTP id
	C608D200054;	Fri,  5 Jul 2013 08:48:59 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by CH1EHSMHS018.bigfish.com
	(10.43.70.18) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Fri, 5 Jul 2013 08:48:59 +0000
Received: from 039-SN2MPN1-022.039d.mgd.msft.net ([169.254.2.148]) by
	039-SN1MMR1-001.039d.mgd.msft.net ([10.84.1.13]) with mapi id
	14.02.0328.011; Fri, 5 Jul 2013 08:48:59 +0000
From: Luo Zhenhua-B19537 <B19537@freescale.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
Thread-Topic: [yocto] Another in a seemingly infinite chain of errors
Thread-Index: Ac55QwUeat5KrLe1TDKEXTuxEmXHNAAAJ+KQAACP5yAABSpIEA==
Date: Fri, 5 Jul 2013 08:48:58 +0000
Message-ID: <CA452391058F6D4E9715FB2C29D9312A015D3241@039-SN2MPN1-022.039d.mgd.msft.net>
References: <91F05D61B900467F8FB43D4ACE5DF0F2@PAULD>
	<CA452391058F6D4E9715FB2C29D9312A015D2FE9@039-SN2MPN1-022.039d.mgd.msft.net>
	<E8B4C4D9890F4CDF8C8EE768634ED6C3@PAULD>
In-Reply-To: <E8B4C4D9890F4CDF8C8EE768634ED6C3@PAULD>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.192.208.134]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Another in a seemingly infinite chain of errors
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 05 Jul 2013 08:49:03 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> -----Original Message-----
> From: Paul D. DeRocco [mailto:pderocco@ix.netcom.com]
> Sent: Friday, July 05, 2013 2:20 PM
>=20
> > From: Zhenhua-B19537
> >
> > FILES_${PN}_append =3D " xxx" should useful, xxx is the file which is
> > listed in the "were installed but not shipped" message.
> >
> > More info of FILES can be found in
> >
> https://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-
> manual.ht
> ml#var-FILES
>=20
> Thanks for the quick response.
>=20
> The problem is that every directory that I create in this one recipe is
> in that list, not just the files. This includes things like
> /lib/systemd/system.
[Luo Zhenhua-B19537] Seems like the similar issue as https://bugzilla.yocto=
project.org/show_bug.cgi?id=3D4309

> I have another recipe, which is basically the same as the hello.c example=
,
> except that it is a real program. It works fine without a FILES_${PN}
> variable. So what is it about my failing recipe that makes it need a
> FILES_${PN} variable? It has no do_compile, just a do_install script with
> a bunch of install and ln commands.
[Luo Zhenhua-B19537] Generally "were installed but not shipped" means those=
 files are installed into ${D}, but not placed in any resulting package. FI=
LES can solve it. If the folder is empty, you can remove it directly.=20

> By the way, I also notice it says to use things like ${bindir} for
> standard directories. Is there a comprehensive list of these anywhere? I
> don't find them in the Yocto Dev Manual or Ref Manual.
[Luo Zhenhua-B19537] I am not sure whether such variables are documented in=
 a unified doc, I always check it in meta/conf/bitbake.conf or "bitbake -e =
| grep xxx".=20


Best Regards,

Zhenhua


