Return-Path: <tim.bird@am.sony.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe006.messaging.microsoft.com [213.199.154.209])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C80B2E00348
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 16:48:01 -0700 (PDT)
Received: from mail119-am1-R.bigfish.com (10.3.201.251) by
	AM1EHSOBE003.bigfish.com (10.3.204.23) with Microsoft SMTP Server id
	14.1.225.23; Wed, 18 Jul 2012 23:47:59 +0000
Received: from mail119-am1 (localhost [127.0.0.1])	by
	mail119-am1-R.bigfish.com (Postfix) with ESMTP id D9FC7402FA	for
	<yocto@yoctoproject.org>; Wed, 18 Jul 2012 23:47:59 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.228; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail01v.am.sony.com; RD:mail01.sonyusa.com;
	EFVD:NLI
X-SpamScore: -1
X-BigFish: VPS-1(zz14ffIzz1202hzzz2fh2a8h668h839hd25hf0ah107ah)
Received-SPF: pass (mail119-am1: domain of am.sony.com designates
	160.33.194.228 as permitted sender) client-ip=160.33.194.228;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail01v.am.sony.com ; .am.sony.com ; 
Received: from mail119-am1 (localhost.localdomain [127.0.0.1]) by mail119-am1
	(MessageSwitch) id 1342655277723733_23847;
	Wed, 18 Jul 2012 23:47:57 +0000 (UTC)
Received: from AM1EHSMHS007.bigfish.com (unknown [10.3.201.231])	by
	mail119-am1.bigfish.com (Postfix) with ESMTP id ADE8B4A00D2	for
	<yocto@yoctoproject.org>; Wed, 18 Jul 2012 23:47:57 +0000 (UTC)
Received: from usculsndmail01v.am.sony.com (160.33.194.228) by
	AM1EHSMHS007.bigfish.com (10.3.207.107) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Wed, 18 Jul 2012 23:47:56 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
	[146.215.230.103])	by usculsndmail01v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q6INlsZj032174
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Wed, 18 Jul 2012 23:47:55 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail.sgo.in.sel.sony.com
	[43.130.1.112])	by usculsndmail12v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q6INlrqL018912
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Wed, 18 Jul 2012 23:47:54 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q6INlh7I011383	for <yocto@yoctoproject.org>;
	Wed, 18 Jul 2012 23:47:43 GMT
Message-ID: <50074BA9.5050506@am.sony.com>
Date: Wed, 18 Jul 2012 16:50:01 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-OriginatorOrg: am.sony.com
Subject: Manually fetching files (and disabling the sanity-checker)
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
X-List-Received-Date: Wed, 18 Jul 2012 23:48:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

Hi all,

I've given up trying to work around Sony's firewall.  After repeated attempts
I still can't get any 'git:'-based URLS to work through the firewall.

I vaguely recall the last time I worked on this (about 5.0 timeframe) there
was a mirror where tarballs could be downloaded, if the git fetch didn't work.

Is this mirror still available?  If not, is there any way to disable
the sanity-checker, and have bitbake tell me what repositories it's
looking for, so I can manually construct a local mirror for yoctoproject
to work off of?

Is there any way to extract the tarballs from a build appliance image?

Any advice or pointers would be appreciated.

 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================



