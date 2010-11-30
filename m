Return-Path: <tim.bird@am.sony.com>
Received: from TX2EHSOBE002.bigfish.com (tx2ehsobe001.messaging.microsoft.com
	[65.55.88.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id E228D4C80815
	for <yocto@yoctoproject.org>; Tue, 30 Nov 2010 15:18:25 -0600 (CST)
Received: from mail81-tx2-R.bigfish.com (10.9.14.241) by
	TX2EHSOBE002.bigfish.com (10.9.40.22) with Microsoft SMTP Server id
	14.1.225.8; Tue, 30 Nov 2010 21:18:25 +0000
Received: from mail81-tx2 (localhost.localdomain [127.0.0.1])	by
	mail81-tx2-R.bigfish.com (Postfix) with ESMTP id 771D3CA01E3	for
	<yocto@yoctoproject.org>; Tue, 30 Nov 2010 21:18:25 +0000 (UTC)
X-SpamScore: 0
X-BigFish: VPS0(z36e9n3e0bmz14ffO4015Lzz1202hzz8275dhz2fh2a8h691h637h668h67dh62h)
X-Spam-TCS-SCL: 1:0
X-Forefront-Antispam-Report: KIP:(null); UIP:(null); IPVD:NLI;
	H:mail7.fw-bc.sony.com; RD:mail7.fw-bc.sony.com; EFVD:NLI
Received: from mail81-tx2 (localhost.localdomain [127.0.0.1]) by mail81-tx2
	(MessageSwitch) id 1291151905299627_30553;
	Tue, 30 Nov 2010 21:18:25 +0000 (UTC)
Received: from TX2EHSMHS049.bigfish.com (unknown [10.9.14.251])	by
	mail81-tx2.bigfish.com (Postfix) with ESMTP id 3CAA61860054	for
	<yocto@yoctoproject.org>; Tue, 30 Nov 2010 21:18:25 +0000 (UTC)
Received: from mail7.fw-bc.sony.com (160.33.98.74) by TX2EHSMHS049.bigfish.com
	(10.9.99.149) with Microsoft SMTP Server (TLS) id 14.1.225.8;
	Tue, 30 Nov 2010 21:18:24 +0000
Received: from mail1x.sjc.in.sel.sony.com ([43.134.1.112])	by
	mail7.fw-bc.sony.com (Switch-3.4.2/Switch-3.3.2mp) with ESMTP id
	oAULIMN7030756	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for <yocto@yoctoproject.org>; Tue, 30 Nov 2010 21:18:23 GMT
Received: from timdesk.am.sony.com ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	oAULHX4o001620	for <yocto@yoctoproject.org>;
	Tue, 30 Nov 2010 21:18:12 GMT
Message-ID: <4CF569E8.2000307@am.sony.com>
Date: Tue, 30 Nov 2010 13:17:28 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.12) Gecko/20100907 Fedora/3.0.7-1.fc12 Thunderbird/3.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: fetch problem during build
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
X-List-Received-Date: Tue, 30 Nov 2010 21:18:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hi all,

I am trying out yocto, and I get the following error during an initial build:

ERROR: Task failed: Fetch failed: Unable to fetch URL git://git.pokylinux.org/linux-2.6-windriver.git;protocol=git;fullclone=1;branch=common_pc-standard;name=machine from any source.
NOTE: package linux-wrs-2.6.34+git0+b67e060194a38c6331da1532bd06446087a42b3b_0+0431115c9d720fee5bb105f6a7411efb4f851d26-r12: task do_fetch: Failed
ERROR: Task 476 (/a/home/tbird/work/yocto/poky-laverne-4.0/meta/recipes-kernel/linux/linux-wrs_git.bb, do_fetch) failed with 1

I don't have git access through my corporate firewall, except to kernel.org.
I presume this is the source of the problem.  I read that someone else had problems
with fetching source in CVS.  I suspect that will be a problem as well, since
I don't have CVS access through my corporate firewall either.

I tried the instructions at: https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
(for the git-proxy), but this didn't work. I suspect I don't have a SOCKS
proxy.

In the CVS case above, there appeared to be a workaround to directly download
some files.

Is this possible with the kernel source as well?

Also, I presume I could substitute my own kernel
source, if I wanted to?  Maybe some pointers about how to do what
would be good as well.

Any assistance would be appreciated.

Thanks,
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Linux Forum
Senior Staff Engineer, Sony Network Entertainment
=============================


