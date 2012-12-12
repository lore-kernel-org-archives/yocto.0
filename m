Return-Path: <tim.bird@am.sony.com>
Received: from db3outboundpool.messaging.microsoft.com
	(db3ehsobe001.messaging.microsoft.com [213.199.154.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44B1CE00294
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 12:31:36 -0800 (PST)
Received: from mail103-db3-R.bigfish.com (10.3.81.238) by
	DB3EHSOBE001.bigfish.com (10.3.84.21) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Dec 2012 20:31:34 +0000
Received: from mail103-db3 (localhost [127.0.0.1])	by
	mail103-db3-R.bigfish.com (Postfix) with ESMTP id D04332001D7;
	Wed, 12 Dec 2012 20:31:34 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.229; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail02v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1de0h1202h1e76h1d1ah1d2ahzzz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1758h1765h1155h)
Received-SPF: pass (mail103-db3: domain of am.sony.com designates
	160.33.194.229 as permitted sender) client-ip=160.33.194.229;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail02v.am.sony.com ; .am.sony.com ; 
Received: from mail103-db3 (localhost.localdomain [127.0.0.1]) by mail103-db3
	(MessageSwitch) id 1355344292710006_18706;
	Wed, 12 Dec 2012 20:31:32 +0000 (UTC)
Received: from DB3EHSMHS012.bigfish.com (unknown [10.3.81.245])	by
	mail103-db3.bigfish.com (Postfix) with ESMTP id A85F9A004B;
	Wed, 12 Dec 2012 20:31:32 +0000 (UTC)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
	DB3EHSMHS012.bigfish.com (10.3.87.112) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Wed, 12 Dec 2012 20:31:31 +0000
Received: from usculsndmail14v.am.sony.com (usculsndmail14v.am.sony.com
	[146.215.230.105])	by usculsndmail02v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qBCKVTZ2021492;
	Wed, 12 Dec 2012 20:31:29 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail.bc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail14v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qBCKVScE027978
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Wed, 12 Dec 2012 20:31:29 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qBCKVRf2025458;	Wed, 12 Dec 2012 20:31:27 GMT
Message-ID: <50C8EA1C.9070804@am.sony.com>
Date: Wed, 12 Dec 2012 12:33:32 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1212121421340.13445@oneiric>
	<50C8DE31.6000703@am.sony.com>
	<alpine.DEB.2.02.1212121448150.13689@oneiric>
In-Reply-To: <alpine.DEB.2.02.1212121448150.13689@oneiric>
X-OriginatorOrg: am.sony.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: might it be worth explaining BBMASK more comprehensively?
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
X-List-Received-Date: Wed, 12 Dec 2012 20:31:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 12/12/2012 11:53 AM, Robert P. J. Day wrote:
> On Wed, 12 Dec 2012, Tim Bird wrote:
>> I don't know if the .= with leading bar is the optimal
>> way to append on to BBMASK, but it seems fairly straightforward
>> to me.  I sometimes use the leading ".*" and sometimes not.
> 
>   it doesn't seem like the leading ".*" makes any difference but
> that's the sort of detail that might confuse a reader and should be
> explained.
> 
>> In my setup it seems to not be required, but maybe for flexibility
>> it should be used.  I'm not sure -- it would depend on whether
>> python re.match or re.search is used for the regex.

Just to answer my own question...

In bitbake in poky-danny-8.0,
(poky-danny-8.0/bitbake/lib/bb/cooker.py)
bbmask_compiled.search() is used, which means that
the leading ".*" is unnecessary.  A python re.search()
can match anywhere in the string, while a python re.match()
must match at the beginning of a string.  Maybe previous
versions of bitbake used re.match()??

In any event, I would think that it should be considered
best practice to NOT include the leading ".*" in BBMASK
regex fragments.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


