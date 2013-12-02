Return-Path: <nathan.rossi@xilinx.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe004.messaging.microsoft.com [216.32.180.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DCC9E0077B
	for <yocto@yoctoproject.org>; Sun,  1 Dec 2013 17:02:12 -0800 (PST)
Received: from mail94-co1-R.bigfish.com (10.243.78.237) by
	CO1EHSOBE021.bigfish.com (10.243.66.84) with Microsoft SMTP Server id
	14.1.225.22; Mon, 2 Dec 2013 01:02:11 +0000
Received: from mail94-co1 (localhost [127.0.0.1])	by mail94-co1-R.bigfish.com
	(Postfix) with ESMTP id 5A42CCC018F;
	Mon,  2 Dec 2013 01:02:11 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zz98dI9371I936eI542I1432Izz1f42h2148h208ch1ee6h1de0h1fdah2073h2146h1202h1e76h1d1ah1d2ah1fc6hzz1de098h17326ah8275bh8275dh1de097h186068hz2fh95h109h839h944hd24hf0ah119dh1220h1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah224fh1d0ch1d2eh1d3fh1dfeh1dffh1e1dh1fe8h1ff5h2216h2336h906i1155h)
Received-SPF: pass (mail94-co1: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=nathan.rossi@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail94-co1 (localhost.localdomain [127.0.0.1]) by mail94-co1
	(MessageSwitch) id 1385946129331057_12152;
	Mon,  2 Dec 2013 01:02:09 +0000 (UTC)
Received: from CO1EHSMHS031.bigfish.com (unknown [10.243.78.245])	by
	mail94-co1.bigfish.com (Postfix) with ESMTP id 4D1D520081;
	Mon,  2 Dec 2013 01:02:09 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by CO1EHSMHS031.bigfish.com
	(10.243.66.41) with Microsoft SMTP Server id 14.16.227.3;
	Mon, 2 Dec 2013 01:02:08 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-smtp1)	by
	xsj-gw1 with esmtp (Exim 4.63)	(envelope-from
	<nathan.rossi@xilinx.com>)	id
	1VnHto-0007rP-OS; Sun, 01 Dec 2013 17:02:08 -0800
From: Nathan Rossi <nathan.rossi@xilinx.com>
To: Gary Thomas <gary@mlbassoc.com>
Thread-Topic: [yocto] Very strange append issue
Thread-Index: AQHO7p4Bu6Ixqq4uzEOoYJuuPuatIZo+4n4AgAADmACAAAJcgIAABd0AgAEmnuA=
Date: Mon, 2 Dec 2013 01:02:06 +0000
References: <529B4140.2040801@mlbassoc.com>
	<CAP71Wjw=Zaf9n_yiXG1-=Fp5rNSPYV9xEsEN6HEwO841xwWneA@mail.gmail.com>
	<529B4CC6.8090501@mlbassoc.com>
	<CAP71Wjz9zTEczjEwyy-gpTo6YA3oju-LBVxvxXSx9aNyN+-wkw@mail.gmail.com>
	<529B53AC.3050309@mlbassoc.com>
In-Reply-To: <529B53AC.3050309@mlbassoc.com>
Accept-Language: en-AU, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.164.13]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <285d7595-af9a-41b3-9e4f-f7f083ae4be2@CO1EHSMHS031.ehs.local>
X-OriginatorOrg: xilinx.com
X-FOPE-CONNECTOR: Id%0$Dn%*$RO%0$TLS%0$FQDN%$TlsDn%
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Very strange append issue
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
X-List-Received-Date: Mon, 02 Dec 2013 01:02:13 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Gary,

Just a heads up. This issue should now be resolved in the current master of=
 poky. A patch went into bitbake to fix up the double appending of bbappend=
s.

http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3Df91a3f46a1ee586=
e330be0868e8fbc4d2e78d361

Regards,
Nathan

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Gary Thomas
> Sent: Monday, December 02, 2013 1:20 AM
> To: Nicolas Dechesne
> Cc: Yocto Project
> Subject: Re: [yocto] Very strange append issue
> =

> On 2013-12-01 07:59, Nicolas Dechesne wrote:
> >
> > On Sun, Dec 1, 2013 at 3:50 PM, Gary Thomas <gary@mlbassoc.com
> <mailto:gary@mlbassoc.com>> wrote:
> >
> >     Yes, I am using master: 937663bdeca6d6479e0db2a9578588__b1aa20222c
> >
> >     At least I am not hallucinating!
> >
> >
> > can you try to revert the same commit as in the other thread?
> >
> > commit 381d5920188398bc53b2454843054c8690bca243
> > Author: Saul Wold <s...@linux.intel.com <mailto:s...@linux.intel.com>>
> > Date:   Thu Nov 21 09:50:41 2013 -0800
> >
> >      bitbake: cooker: add support for using % as a wildcard in bbappend=

> filename
> >
> =

> Reverting that change does eliminate my problem.
> =

> Thanks
> =

> --
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



