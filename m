Return-Path: <tim.bird@am.sony.com>
Received: from am1outboundpool.messaging.microsoft.com
	(am1ehsobe001.messaging.microsoft.com [213.199.154.204])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21D24E0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 11:52:20 -0700 (PDT)
Received: from mail40-am1-R.bigfish.com (10.3.201.233) by
	AM1EHSOBE001.bigfish.com (10.3.204.21) with Microsoft SMTP Server id
	14.1.225.23; Fri, 28 Sep 2012 18:52:17 +0000
Received: from mail40-am1 (localhost [127.0.0.1])	by mail40-am1-R.bigfish.com
	(Postfix) with ESMTP id E9DD1480160;
	Fri, 28 Sep 2012 18:52:16 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.230; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail03v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1202h1d1ah1d2ahzzz2fh2a8h668h839h93fhd25hf0ah107ah1288h12a5h12a9h12bdh137ah13b6h1155h)
Received-SPF: pass (mail40-am1: domain of am.sony.com designates
	160.33.194.230 as permitted sender) client-ip=160.33.194.230;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail03v.am.sony.com ; .am.sony.com ; 
Received: from mail40-am1 (localhost.localdomain [127.0.0.1]) by mail40-am1
	(MessageSwitch) id 1348858334864100_1489;
	Fri, 28 Sep 2012 18:52:14 +0000 (UTC)
Received: from AM1EHSMHS018.bigfish.com (unknown [10.3.201.231])	by
	mail40-am1.bigfish.com (Postfix) with ESMTP id CCE384C0080;
	Fri, 28 Sep 2012 18:52:14 +0000 (UTC)
Received: from usculsndmail03v.am.sony.com (160.33.194.230) by
	AM1EHSMHS018.bigfish.com (10.3.207.156) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Fri, 28 Sep 2012 18:52:13 +0000
Received: from usculsndmail11v.am.sony.com (usculsndmail11v.am.sony.com
	[146.215.230.102])	by usculsndmail03v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q8SIq9k1032495;
	Fri, 28 Sep 2012 18:52:10 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail2.sgo.in.sel.sony.com
	[43.130.1.112])	by usculsndmail11v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q8SIq8IX017334
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 28 Sep 2012 18:52:09 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q8SIq7p6025383;	Fri, 28 Sep 2012 18:52:08 GMT
Message-ID: <5065F2F3.70209@am.sony.com>
Date: Fri, 28 Sep 2012 11:56:51 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Rudolf Streif <rudolf.streif@linux.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
	<31384487.oKEco2inpj@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A73111@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-qgU=6MHF4T+U1uU1qjVOGBq6pVsbbrTvwZUnYcBeBy=g@mail.gmail.com>
In-Reply-To: <CA+gsK-qgU=6MHF4T+U1uU1qjVOGBq6pVsbbrTvwZUnYcBeBy=g@mail.gmail.com>
X-OriginatorOrg: am.sony.com
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 18:52:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 09/28/2012 11:44 AM, Rudolf Streif wrote:
> I am not advocating changing the variable names. I know that this is a huge undertaking and prone to many problems. This probably one of the many legacy things people will have to live with and
> understand. In most cases recipe name and version exactly reflect the name and version of the package it is intended to build which to some extend mitigates the issue.
> 
> As far as the Terms section in the manuals is concerned, I see that you already changed the describing text for the variables. That's sufficient, I think.

(I answered Scott privately by mistake - here's some feedback on-list)

I'm in favor of mentioning the history somewhere, because the names
do have a 'P' in them, and this is confusing otherwise.

Overall, I think the new wording is worthwhile.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


