Return-Path: <tim.bird@am.sony.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe003.messaging.microsoft.com [216.32.181.183])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD11E0141C
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 11:00:44 -0800 (PST)
Received: from mail176-ch1-R.bigfish.com (10.43.68.250) by
	CH1EHSOBE014.bigfish.com (10.43.70.64) with Microsoft SMTP Server id
	14.1.225.23; Tue, 20 Nov 2012 19:00:42 +0000
Received: from mail176-ch1 (localhost [127.0.0.1])	by
	mail176-ch1-R.bigfish.com (Postfix) with ESMTP id D306A3802A3;
	Tue, 20 Nov 2012 19:00:42 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.229; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail02v.am.sony.com; RD:mail02.sonyusa.com;
	EFVD:NLI
X-SpamScore: -6
X-BigFish: VPS-6(zzbb2dI98dI9371I1431J1432Izz1de0h1202h1d1ah1d2ahzz17326ahz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1155h)
Received-SPF: pass (mail176-ch1: domain of am.sony.com designates
	160.33.194.229 as permitted sender) client-ip=160.33.194.229;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail02v.am.sony.com ; .am.sony.com ; 
Received: from mail176-ch1 (localhost.localdomain [127.0.0.1]) by mail176-ch1
	(MessageSwitch) id 1353438040742594_3457;
	Tue, 20 Nov 2012 19:00:40 +0000 (UTC)
Received: from CH1EHSMHS012.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.247])	by mail176-ch1.bigfish.com (Postfix) with ESMTP id
	B01ABC00EA;	Tue, 20 Nov 2012 19:00:40 +0000 (UTC)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
	CH1EHSMHS012.bigfish.com (10.43.70.12) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Tue, 20 Nov 2012 19:00:39 +0000
Received: from usculsndmail14v.am.sony.com (usculsndmail14v.am.sony.com
	[146.215.230.105])	by usculsndmail02v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAKJ0cUx001949;
	Tue, 20 Nov 2012 19:00:38 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail2.sgo.in.sel.sony.com
	[43.130.1.112])	by usculsndmail14v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qAKJ0biR012562
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 20 Nov 2012 19:00:38 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qAKJ0aJF017801;	Tue, 20 Nov 2012 19:00:37 GMT
Message-ID: <50ABD395.3050704@am.sony.com>
Date: Tue, 20 Nov 2012 11:01:41 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1211200810060.4868@oneiric>
In-Reply-To: <alpine.DEB.2.02.1211200810060.4868@oneiric>
X-OriginatorOrg: am.sony.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: updated wiki page for using yocto to build for beagle xM (rev C)
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
X-List-Received-Date: Tue, 20 Nov 2012 19:00:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 11/20/2012 05:13 AM, Robert P. J. Day wrote:
> 
>   as part of some intro pages i'm going to be using in the future for
> teaching yocto, i updated one of my wiki pages this morning for using
> yocto to build and boot on a beagle xM.  nothing profound, just a
> verified recipe that should simply work for anyone:
> 
> http://www.crashcourse.ca/wiki/index.php/Yocto_Project_Quick_Start
> 
>   feedback welcome ... i updated it while not having had enough sleep
> so i fully expect it could use some polishing.  i just wanted to keep
> it simple.

It looks very useful.  I put a link to it from my elinux page on Yocto.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


