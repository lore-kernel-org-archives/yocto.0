Return-Path: <tim.bird@am.sony.com>
Received: from AM1EHSOBE002.bigfish.com (am1ehsobe002.messaging.microsoft.com
	[213.199.154.205])
	by mx1.pokylinux.org (Postfix) with ESMTP id 669F14C8009A
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 22:29:25 -0500 (CDT)
Received: from mail20-am1-R.bigfish.com (10.3.201.254) by
	AM1EHSOBE002.bigfish.com (10.3.204.22) with Microsoft SMTP Server id
	14.1.225.22; Thu, 4 Aug 2011 03:29:24 +0000
Received: from mail20-am1 (localhost.localdomain [127.0.0.1])	by
	mail20-am1-R.bigfish.com (Postfix) with ESMTP id C219F1802F9;
	Thu,  4 Aug 2011 03:29:24 +0000 (UTC)
X-SpamScore: -26
X-BigFish: VPS-26(zz14e0Mbb2dK9371K146fK103dK1432N98dKzz1202hzz8275dhz2fh668h839h61h)
X-Spam-TCS-SCL: 0:0
X-Forefront-Antispam-Report: CIP:160.33.98.74; KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received-SPF: pass (mail20-am1: domain of am.sony.com designates 160.33.98.74
	as permitted sender) client-ip=160.33.98.74;
	envelope-from=tim.bird@am.sony.com; helo=mail7.fw-bc.sony.com ;
	-bc.sony.com ; 
Received: from mail20-am1 (localhost.localdomain [127.0.0.1]) by mail20-am1
	(MessageSwitch) id 1312428564510476_22811;
	Thu,  4 Aug 2011 03:29:24 +0000 (UTC)
Received: from AM1EHSMHS005.bigfish.com (unknown [10.3.201.249])	by
	mail20-am1.bigfish.com (Postfix) with ESMTP id 6E4EE1B3804B;
	Thu,  4 Aug 2011 03:29:24 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by AM1EHSMHS005.bigfish.com
	(10.3.207.105) with Microsoft SMTP Server id 14.1.225.22;
	Thu, 4 Aug 2011 03:29:24 +0000
Received: from mail1x.sjc.in.sel.sony.com (smtp.cul.am.sony.com
	[43.134.1.112])	by mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp)
	with ESMTP id p743TMrb013108;	Thu, 4 Aug 2011 03:29:23 GMT
Received: from [43.148.60.182] ([43.133.110.2])	by mail1x.sjc.in.sel.sony.com
	(Switch-3.4.2/Switch-3.4.2) with ESMTP id p743TBNU022939;
	Thu, 4 Aug 2011 03:29:12 GMT
Message-ID: <4E3A1206.8030800@am.sony.com>
Date: Wed, 3 Aug 2011 20:29:10 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.18) Gecko/20110616 Thunderbird/3.1.11
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <4E39E30B.3080206@am.sony.com> <4E39E383.9080507@am.sony.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4F9@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B260B53A4F9@orsmsx501.amr.corp.intel.com>
X-OriginatorOrg: am.sony.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Build failure on recent yocto download
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
X-List-Received-Date: Thu, 04 Aug 2011 03:29:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 8/3/2011 5:33 PM, Stewart, David C wrote:
>
> The current release is http://autobuilder.yoctoproject.org/downloads/poky/poky-bernard-5.0.1.tar.bz2 - so I would hope you might try 5.0.1 instead of 5.0.
OK - I'll see if I have time to try again.

I was following the instructions at:
http://www.yoctoproject.org/docs/yocto-quick-start/yocto-project-qs.html
You might want to update that, or add instructions there for checking 
for the latest version.

> The other thing is that we could use a little more detail on what distro&  version you are trying this on and what problem you had...  Thanks. :-)
I'm guessing you missed my first message.  But I should have added my 
distro.
It is Fedora 12 (which is old, I know, but I've prepared it for Yocto 
use previously). Anyway, I think Joshua's response should resolve the 
issue.  Thanks! :-)
  -- Tim



