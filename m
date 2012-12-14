Return-Path: <tim.bird@am.sony.com>
Received: from co9outboundpool.messaging.microsoft.com
	(co9ehsobe003.messaging.microsoft.com [207.46.163.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 214D1E00294
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 11:41:40 -0800 (PST)
Received: from mail181-co9-R.bigfish.com (10.236.132.230) by
	CO9EHSOBE030.bigfish.com (10.236.130.93) with Microsoft SMTP Server id
	14.1.225.23; Fri, 14 Dec 2012 19:41:39 +0000
Received: from mail181-co9 (localhost [127.0.0.1])	by
	mail181-co9-R.bigfish.com (Postfix) with ESMTP id 30CB73E01E3	for
	<yocto@yoctoproject.org>; Fri, 14 Dec 2012 19:41:39 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.231; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail04v.am.sony.com; RD:mail04.sonyusa.com;
	EFVD:NLI
X-SpamScore: 0
X-BigFish: VPS0(zzzz1de0h1202h1e76h1d1ah1d2ahzzz2fh2a8h668h839h947hd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h1765h1155h)
Received-SPF: pass (mail181-co9: domain of am.sony.com designates
	160.33.194.231 as permitted sender) client-ip=160.33.194.231;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail04v.am.sony.com ; .am.sony.com ; 
Received: from mail181-co9 (localhost.localdomain [127.0.0.1]) by mail181-co9
	(MessageSwitch) id 1355514097241042_22571;
	Fri, 14 Dec 2012 19:41:37 +0000 (UTC)
Received: from CO9EHSMHS005.bigfish.com (unknown [10.236.132.246])	by
	mail181-co9.bigfish.com (Postfix) with ESMTP id 3368780045	for
	<yocto@yoctoproject.org>; Fri, 14 Dec 2012 19:41:37 +0000 (UTC)
Received: from usculsndmail04v.am.sony.com (160.33.194.231) by
	CO9EHSMHS005.bigfish.com (10.236.130.15) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Fri, 14 Dec 2012 19:41:36 +0000
Received: from usculsndmail14v.am.sony.com (usculsndmail14v.am.sony.com
	[146.215.230.105])	by usculsndmail04v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id
	qBEJfZIw018169	for
	<yocto@yoctoproject.org>; Fri, 14 Dec 2012 19:41:35 GMT
Received: from mail1x.sjc.in.sel.sony.com (mailx.bc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail14v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qBEJfXrs000626
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Fri, 14 Dec 2012 19:41:34 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qBEJfXCs010585	for <yocto@yoctoproject.org>;
	Fri, 14 Dec 2012 19:41:33 GMT
Message-ID: <50CB8173.4030801@am.sony.com>
Date: Fri, 14 Dec 2012 11:43:47 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: What is GMAE?
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
X-List-Received-Date: Fri, 14 Dec 2012 19:41:40 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

I was reading in the adt manual about using the cross-toochain tarball,
and I came across this sentence:

"If you need GMAE, you should use the bitbake meta-toolchain-gmae command. The resulting installation script when run will support such development. However, if you are not concerned with GMAE, you
can generate the toolchain installer using bitbake meta-toolchain."

After googling a bit, I figured out that GMAE stands for Gnome Mobile and Embedded.

It might be good to put this acronym somewhere in the manual.
(I'm still not sure if I need GMAE or not...)

 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


