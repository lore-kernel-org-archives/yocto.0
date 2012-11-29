Return-Path: <tim.bird@am.sony.com>
Received: from tx2outboundpool.messaging.microsoft.com
	(tx2ehsobe004.messaging.microsoft.com [65.55.88.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C483E00294
	for <yocto@yoctoproject.org>; Thu, 29 Nov 2012 10:48:30 -0800 (PST)
Received: from mail53-tx2-R.bigfish.com (10.9.14.245) by
	TX2EHSOBE008.bigfish.com (10.9.40.28) with Microsoft SMTP Server id
	14.1.225.23; Thu, 29 Nov 2012 18:48:28 +0000
Received: from mail53-tx2 (localhost [127.0.0.1])	by mail53-tx2-R.bigfish.com
	(Postfix) with ESMTP id BB02220020A;
	Thu, 29 Nov 2012 18:48:28 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.230; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail03v.am.sony.com; RD:mail03.sonyusa.com;
	EFVD:NLI
X-SpamScore: -4
X-BigFish: VPS-4(zzbb2dI98dI9371I1432Izz1de0h1202h1d1ah1d2ahzz177df4h17326ah8275dhz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1155h)
Received-SPF: pass (mail53-tx2: domain of am.sony.com designates
	160.33.194.230 as permitted sender) client-ip=160.33.194.230;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail03v.am.sony.com ; .am.sony.com ; 
Received: from mail53-tx2 (localhost.localdomain [127.0.0.1]) by mail53-tx2
	(MessageSwitch) id 1354214906144659_3562;
	Thu, 29 Nov 2012 18:48:26 +0000 (UTC)
Received: from TX2EHSMHS009.bigfish.com (unknown [10.9.14.249])	by
	mail53-tx2.bigfish.com (Postfix) with ESMTP id 1F6C0220115;
	Thu, 29 Nov 2012 18:48:26 +0000 (UTC)
Received: from usculsndmail03v.am.sony.com (160.33.194.230) by
	TX2EHSMHS009.bigfish.com (10.9.99.109) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Thu, 29 Nov 2012 18:48:22 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
	[146.215.230.103])	by usculsndmail03v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qATImL9N025436;
	Thu, 29 Nov 2012 18:48:21 GMT
Received: from mail1x.sgo.in.sel.sony.com (mail3.bc.in.sel.sony.com
	[43.130.1.112])	by usculsndmail12v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qATImKxF024891
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Thu, 29 Nov 2012 18:48:21 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sgo.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qATImJkA011299;	Thu, 29 Nov 2012 18:48:19 GMT
Message-ID: <50B7AE45.1070301@am.sony.com>
Date: Thu, 29 Nov 2012 10:49:41 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1211291032530.27333@oneiric>
In-Reply-To: <alpine.DEB.2.02.1211291032530.27333@oneiric>
X-OriginatorOrg: am.sony.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: chris larson's cool "bitbake-env" utility
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
X-List-Received-Date: Thu, 29 Nov 2012 18:48:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 11/29/2012 07:34 AM, Robert P. J. Day wrote:
> 
>   possibly prompted by my incessant whining, chris larson wrote a
> nifty utility called "bitbake-env"; i wrote a quick page about it
> here:
> 
> http://www.crashcourse.ca/wiki/index.php/OE_bitbake-env_utility
> 
> this is going to be more than a little useful in my courses.

Yeah - this looks great.

I put a link to your page on my bitbake cheat sheet page at:
http://elinux.org/Bitbake_Cheat_Sheet

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


