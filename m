Return-Path: <john.williams@xilinx.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe005.messaging.microsoft.com [216.32.181.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9945E013A7
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 15:38:28 -0700 (PDT)
Received: from mail107-ch1-R.bigfish.com (10.43.68.234) by
	CH1EHSOBE010.bigfish.com (10.43.70.60) with Microsoft SMTP Server id
	14.1.225.23; Wed, 3 Apr 2013 22:38:27 +0000
Received: from mail107-ch1 (localhost [127.0.0.1])	by
	mail107-ch1-R.bigfish.com (Postfix) with ESMTP id BEEAA200F3;
	Wed,  3 Apr 2013 22:38:27 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:149.199.60.83; KIP:(null); UIP:(null); IPV:NLI;
	H:xsj-gw1; RD:unknown-60-83.xilinx.com; EFVD:NLI
X-SpamScore: 1
X-BigFish: VPS1(zzzz1f42h1fc6h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ahzz8275bhz2fh95h668h839h944hd24hf0ah119dh1220h1288h12a5h12a9h12bdh137ah13b6h1441h14ddh1504h1537h153bh162dh1631h1758h18e1h1946h19b5h1b0ah906i1155h)
Received-SPF: pass (mail107-ch1: domain of xilinx.com designates 149.199.60.83
	as permitted sender) client-ip=149.199.60.83;
	envelope-from=john.williams@xilinx.com; helo=xsj-gw1 ;
	helo=xsj-gw1 ; 
Received: from mail107-ch1 (localhost.localdomain [127.0.0.1]) by mail107-ch1
	(MessageSwitch) id 136502870652278_17170;
	Wed,  3 Apr 2013 22:38:26 +0000 (UTC)
Received: from CH1EHSMHS031.bigfish.com (snatpool2.int.messaging.microsoft.com
	[10.43.68.234])	by mail107-ch1.bigfish.com (Postfix) with ESMTP id
	F3CF5420069;	Wed,  3 Apr 2013 22:38:25 +0000 (UTC)
Received: from xsj-gw1 (149.199.60.83) by CH1EHSMHS031.bigfish.com
	(10.43.70.31) with Microsoft SMTP Server id 14.1.225.23; Wed, 3 Apr 2013
	22:38:25 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]
	helo=xsj-smtp1.xilinx.com)	by xsj-gw1 with esmtp (Exim
	4.63)	(envelope-from <john.williams@xilinx.com>)	id 1UNWK1-0005Fs-Bd;
	Wed, 03 Apr 2013 15:38:25 -0700
From: John Williams <john.williams@xilinx.com>
To: "Saridakis, Dean   (US SSA)" <dean.saridakis@baesystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Easy one: fetch fails
Thread-Index: Ac4wmirKzG7I/3HMQzqAt5Om3ArUVAAIYXsw
Date: Wed, 3 Apr 2013 22:38:22 +0000
References: <20130403191633.1B258E0156B@yocto-www.yoctoproject.org>
In-Reply-To: <20130403191633.1B258E0156B@yocto-www.yoctoproject.org>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.16.162.69]
MIME-Version: 1.0
X-RCIS-Action: ALLOW
Message-ID: <43b08ff8-289c-431b-9e82-44d4655d1076@CH1EHSMHS031.ehs.local>
X-OriginatorOrg: xilinx.com
Cc: John Williams <jwilliams@xilinx.com>
Subject: Re: Easy one: fetch fails
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
X-List-Received-Date: Wed, 03 Apr 2013 22:38:29 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> I'm starting w/ an SDK based on yocto & am trying to add canutil to the b=
uild.
> There's already a recipe in meta-oe, but unfortunately I can't get throug=
h my
> corporate firewall w/ the git protocol. However I can w/ http. So I added=
 a layer
> w/ a bbppend to change the SRC_URI

Alternatively just use corkscrew to tunnel git via your company's http prox=
y:

https://gforge.ti.com/gf/project/omapandroid/wiki/?pagename=3DGit+Firewall

John



