Return-Path: <tim.bird@am.sony.com>
Received: from AM1EHSOBE004.bigfish.com (am1ehsobe004.messaging.microsoft.com
	[213.199.154.207])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4713EE005BB
	for <yocto@yoctoproject.org>; Tue, 11 Oct 2011 16:50:18 -0700 (PDT)
Received: from mail74-am1-R.bigfish.com (10.3.201.254) by
	AM1EHSOBE004.bigfish.com (10.3.204.24) with Microsoft SMTP Server id
	14.1.225.22; Tue, 11 Oct 2011 23:50:15 +0000
Received: from mail74-am1 (localhost.localdomain [127.0.0.1])	by
	mail74-am1-R.bigfish.com (Postfix) with ESMTP id 153D81AB02CA;
	Tue, 11 Oct 2011 23:50:15 +0000 (UTC)
X-SpamScore: -13
X-BigFish: VPS-13(zzbb2dK9371K98dK4015Lzz1202hzzz2fh668h839h93fh61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:160.33.98.74; KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received-SPF: pass (mail74-am1: domain of am.sony.com designates 160.33.98.74
	as permitted sender) client-ip=160.33.98.74;
	envelope-from=tim.bird@am.sony.com; helo=mail7.fw-bc.sony.com ;
	-bc.sony.com ; 
Received: from mail74-am1 (localhost.localdomain [127.0.0.1]) by mail74-am1
	(MessageSwitch) id 1318377014806468_4767;
	Tue, 11 Oct 2011 23:50:14 +0000 (UTC)
Received: from AM1EHSMHS015.bigfish.com (unknown [10.3.201.245])	by
	mail74-am1.bigfish.com (Postfix) with ESMTP id BDDEBCA8050;
	Tue, 11 Oct 2011 23:50:14 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by AM1EHSMHS015.bigfish.com
	(10.3.207.153) with Microsoft SMTP Server id 14.1.225.22;
	Tue, 11 Oct 2011 23:50:13 +0000
Received: from mail1x.sjc.in.sel.sony.com (smtp.cul.am.sony.com
	[43.134.1.112])	by mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp)
	with ESMTP id p9BNoCLI026671;	Tue, 11 Oct 2011 23:50:13 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	p9BNo1xZ020567;	Tue, 11 Oct 2011 23:50:02 GMT
Message-ID: <4E94D624.1020107@am.sony.com>
Date: Tue, 11 Oct 2011 16:49:56 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: Darren Hart <dvhart@linux.intel.com>
References: <4E933C41.4000207@linux.intel.com>
In-Reply-To: <4E933C41.4000207@linux.intel.com>
X-OriginatorOrg: am.sony.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: RFC: User configurable recipe features
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 11 Oct 2011 23:50:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 10/10/2011 11:41 AM, Darren Hart wrote:
> As part of working on meta-tiny, I've come across a need (want?) to
> present users with the ability to select some set of features in a local
> configuration file that will impact the build of the image and a set of
> recipes.

Can you tell me more about meta-tiny?  this is the first I've heard
about this (sorry if discussion went by on the mailing list and I
missed it), and I'm very interested.

I'm currently doing some size-related work for Sony (including
some work to support 4K stacks).

Thanks,
 -- Tim
=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


