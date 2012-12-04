Return-Path: <tim.bird@am.sony.com>
Received: from co9outboundpool.messaging.microsoft.com
	(co9ehsobe004.messaging.microsoft.com [207.46.163.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B9C9E006C6
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 17:05:36 -0800 (PST)
Received: from mail76-co9-R.bigfish.com (10.236.132.252) by
	CO9EHSOBE014.bigfish.com (10.236.130.77) with Microsoft SMTP Server id
	14.1.225.23; Tue, 4 Dec 2012 01:05:35 +0000
Received: from mail76-co9 (localhost [127.0.0.1])	by mail76-co9-R.bigfish.com
	(Postfix) with ESMTP id 87540602E7;
	Tue,  4 Dec 2012 01:05:35 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.231; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail04v.am.sony.com; RD:mail04.sonyusa.com;
	EFVD:NLI
X-SpamScore: -11
X-BigFish: VPS-11(zzbb2dI98dI9371I179dN1432I1418Izz1de0h1202h1d1ah1d2ahzz177df4h17326ah8275dhz2fh2a8h668h839h93fhd25hf0ah1288h12a5h12a9h12bdh137ah13b6h1441h1504h1537h153bh162dh1631h1155h)
Received-SPF: pass (mail76-co9: domain of am.sony.com designates
	160.33.194.231 as permitted sender) client-ip=160.33.194.231;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail04v.am.sony.com ; .am.sony.com ; 
Received: from mail76-co9 (localhost.localdomain [127.0.0.1]) by mail76-co9
	(MessageSwitch) id 1354583133317272_26538;
	Tue,  4 Dec 2012 01:05:33 +0000 (UTC)
Received: from CO9EHSMHS021.bigfish.com (unknown [10.236.132.228])	by
	mail76-co9.bigfish.com (Postfix) with ESMTP id 3AC7840165;
	Tue,  4 Dec 2012 01:05:33 +0000 (UTC)
Received: from usculsndmail04v.am.sony.com (160.33.194.231) by
	CO9EHSMHS021.bigfish.com (10.236.130.31) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Tue, 4 Dec 2012 01:05:32 +0000
Received: from usculsndmail13v.am.sony.com (usculsndmail13v.am.sony.com
	[146.215.230.104])	by usculsndmail04v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qB415VrA009942;
	Tue, 4 Dec 2012 01:05:31 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail4.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail13v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id qB415U5I010073
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 4 Dec 2012 01:05:31 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	qB415T74018534;	Tue, 4 Dec 2012 01:05:29 GMT
Message-ID: <50BD4CB3.6030302@am.sony.com>
Date: Mon, 3 Dec 2012 17:06:59 -0800
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
References: <alpine.DEB.2.02.1211291032530.27333@oneiric>
	<50B7AE45.1070301@am.sony.com>
	<alpine.DEB.2.02.1211300848590.1918@oneiric>
In-Reply-To: <alpine.DEB.2.02.1211300848590.1918@oneiric>
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
X-List-Received-Date: Tue, 04 Dec 2012 01:05:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 11/30/2012 05:53 AM, Robert P. J. Day wrote:
> On Thu, 29 Nov 2012, Tim Bird wrote:
> 
>> I put a link to your page on my bitbake cheat sheet page at:
>> http://elinux.org/Bitbake_Cheat_Sheet
> 
>   as someone who has never bothered to play with any of the UIs and is
> thus asking from a position of total ignorance, i have a couple
> questions about the "User interfaces" section of that cheat sheet.
> 
>   using stock oe-core, i followed your cheat sheet and tried this:
> 
> $ bitbake
> 
> and got:
> 
> ERROR: Timeout while attempting to communicate with bitbake server
> 
> so i need to start the server?  should that be mentioned there?

Hmmm.  With bitbake from poky-1.2-denzil I get:
"Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information."

I think that "bitbake <nothing>" is not really a valid invocation.
I've changed the page accordingly.

>   i then tried:
> 
> $ bitbake -u knotty2
> FATAL: Invalid user interface 'knotty2' specified.
> Valid interfaces: depexp, goggle, ncurses, hob, knotty [default].
> $

It looks like knotty2 was an experimental interface, with features
now folded into knotty in poky-1.3-danny.

I removed it from the page.

>   just pointing out that if i follow that cheat sheet to the letter, i
> run into problems.
Thanks very much for trying things out and reporting the problems.

I've altered the page to hopefully address the issues.

Maybe I should mention that I'm using the bitbake from the yocto project?
I didn't think they were diverged very far.
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


