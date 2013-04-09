Return-Path: <tim.bird@am.sony.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe001.messaging.microsoft.com [65.55.88.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 144C3E00AFC
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 10:37:30 -0700 (PDT)
Received: from mail38-tx2-R.bigfish.com (10.9.14.248) by
	TX2EHSOBE004.bigfish.com (10.9.40.24) with Microsoft SMTP Server id
	14.1.225.23; Tue, 9 Apr 2013 17:37:29 +0000
Received: from mail38-tx2 (localhost [127.0.0.1])	by mail38-tx2-R.bigfish.com
	(Postfix) with ESMTP id 6AF9F200E9	for <yocto@yoctoproject.org>;
	Tue,  9 Apr 2013 17:37:29 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.231; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail04v.am.sony.com; RD:mail04.sonyusa.com;
	EFVD:NLI
X-SpamScore: -3
X-BigFish: VPS-3(zzbb2dI98dI9371Izz1f42h1fc6h1ee6h1de0h1fdah1202h1e76h1d1ah1d2ahzzz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h1765h18e1h190ch1946h19b4h19c3h1b0ah1155h)
Received-SPF: pass (mail38-tx2: domain of am.sony.com designates
	160.33.194.231 as permitted sender) client-ip=160.33.194.231;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail04v.am.sony.com ; .am.sony.com ; 
Received: from mail38-tx2 (localhost.localdomain [127.0.0.1]) by mail38-tx2
	(MessageSwitch) id 1365529047133711_3426;
	Tue,  9 Apr 2013 17:37:27 +0000 (UTC)
Received: from TX2EHSMHS041.bigfish.com (unknown [10.9.14.238])	by
	mail38-tx2.bigfish.com (Postfix) with ESMTP id 1BD0240004D	for
	<yocto@yoctoproject.org>; Tue,  9 Apr 2013 17:37:27 +0000 (UTC)
Received: from usculsndmail04v.am.sony.com (160.33.194.231) by
	TX2EHSMHS041.bigfish.com (10.9.99.141) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Tue, 9 Apr 2013 17:37:26 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
	[146.215.230.103])	by usculsndmail04v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id
	r39HbP4T025653	for
	<yocto@yoctoproject.org>; Tue, 9 Apr 2013 17:37:25 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail4.bc.in.sel.sony.com
	[43.130.1.112])	by usculsndmail12v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id r39HbN5L016538
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256
	verify=FAIL)	for
	<yocto@yoctoproject.org>; Tue, 9 Apr 2013 17:37:25 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	r39HbMES015748	for <yocto@yoctoproject.org>;
	Tue, 9 Apr 2013 17:37:22 GMT
Message-ID: <516452DF.3050605@am.sony.com>
Date: Tue, 9 Apr 2013 10:41:51 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130308 Thunderbird/17.0.4
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <alpine.DEB.2.02.1304090833380.5655@oneiric>
	<alpine.DEB.2.02.1304090906420.6611@oneiric>
In-Reply-To: <alpine.DEB.2.02.1304090906420.6611@oneiric>
X-OriginatorOrg: am.sony.com
Subject: Patch version gotchas (was Re: i think the list of "required software" needs to be clarified)
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
X-List-Received-Date: Tue, 09 Apr 2013 17:37:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 04/09/2013 06:10 AM, Robert P. J. Day wrote:
> SANITY_REQUIRED_UTILITIES ?= "patch diffstat makeinfo git bzip2 tar
> gzip gawk chrpath wget cpio"

This is just a generic warning on the subject of native patch.
We recently had a discussion on the LTSI-dev mailing list about
patch.  It seems that some patches produced by git now require
a later version of patch than was shipped in relatively recent
platforms(e.g. Ubuntu 12.04 shipped with patch 2.6.1)

Based on this, at Sony we intended to switch over to patch 2.7
(which has explicit support for "diff --git" format)
Unfortunately, we found that some of our patches were not compatible
with this version of patch, and thus found ourselves in
a pickle.  We now have to switch between patch versions, depending
on the project and set of patches we're working on.

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


