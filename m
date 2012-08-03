Return-Path: <tim.bird@am.sony.com>
Received: from ch1outboundpool.messaging.microsoft.com
	(ch1ehsobe002.messaging.microsoft.com [216.32.181.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13576E01447;
	Fri,  3 Aug 2012 10:04:16 -0700 (PDT)
Received: from mail143-ch1-R.bigfish.com (10.43.68.243) by
	CH1EHSOBE018.bigfish.com (10.43.70.68) with Microsoft SMTP Server id
	14.1.225.23; Fri, 3 Aug 2012 17:04:16 +0000
Received: from mail143-ch1 (localhost [127.0.0.1])	by
	mail143-ch1-R.bigfish.com (Postfix) with ESMTP id 0F1772002BB;
	Fri,  3 Aug 2012 17:04:16 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.230; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail03v.am.sony.com; RD:mail03.sonyusa.com;
	EFVD:NLI
X-SpamScore: -5
X-BigFish: VPS-5(zzbb2dI98dI9371I1432I14ffIzz1202hzz8275dhz2fh2a8h668h839h93fhd25hf0ah107ah)
Received-SPF: pass (mail143-ch1: domain of am.sony.com designates
	160.33.194.230 as permitted sender) client-ip=160.33.194.230;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail03v.am.sony.com ; .am.sony.com ; 
Received: from mail143-ch1 (localhost.localdomain [127.0.0.1]) by mail143-ch1
	(MessageSwitch) id 1344013454222208_19971;
	Fri,  3 Aug 2012 17:04:14 +0000 (UTC)
Received: from CH1EHSMHS008.bigfish.com (snatpool1.int.messaging.microsoft.com
	[10.43.68.254])	by mail143-ch1.bigfish.com (Postfix) with ESMTP id
	2AABA340059;	Fri,  3 Aug 2012 17:04:14 +0000 (UTC)
Received: from usculsndmail03v.am.sony.com (160.33.194.230) by
	CH1EHSMHS008.bigfish.com (10.43.70.8) with Microsoft SMTP Server (TLS)
	id 14.1.225.23; Fri, 3 Aug 2012 17:04:13 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
	[146.215.230.103])	by usculsndmail03v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q73H4CBG018538
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 3 Aug 2012 17:04:12 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail.sgo.in.sel.sony.com
	[43.134.1.112])	by usculsndmail12v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q73H4Bxp003630
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Fri, 3 Aug 2012 17:04:12 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q73H40Oq017085;	Fri, 3 Aug 2012 17:04:00 GMT
Message-ID: <501C0529.2050803@am.sony.com>
Date: Fri, 3 Aug 2012 10:06:49 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <50074BA9.5050506@am.sony.com> <50075331.9010007@linux.intel.com>
In-Reply-To: <50075331.9010007@linux.intel.com>
X-OriginatorOrg: am.sony.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Manually fetching files (and disabling the sanity-checker)
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
X-List-Received-Date: Fri, 03 Aug 2012 17:04:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 07/18/2012 05:22 PM, Saul Wold wrote:
> On 07/18/2012 04:50 PM, Tim Bird wrote:
>> Hi all,
>>
>> I've given up trying to work around Sony's firewall.  After repeated attempts
>> I still can't get any 'git:'-based URLS to work through the firewall.
>>
>> I vaguely recall the last time I worked on this (about 5.0 timeframe) there
>> was a mirror where tarballs could be downloaded, if the git fetch didn't work.
>>
>> Is this mirror still available?  If not, is there any way to disable
>> the sanity-checker, and have bitbake tell me what repositories it's
>> looking for, so I can manually construct a local mirror for yoctoproject
>> to work off of?
>>
> To disable the sanity check you can set CONNECTIVITY_CHECK_URIS to "" 
> and that will cause it to be skipped.
> 
> Regarding the mirroring, have you tried to just set the PREMIRRORS to 
> use only http* and ftp in your local.conf:
> PREMIRRORS = "\
> ftp://.*/.*      http://downloads.yoctoproject.org/mirror/sources/ \n \
> http://.*/.*     http://downloads.yoctoproject.org/mirror/sources/ \n \
> https://.*/.*    http://downloads.yoctoproject.org/mirror/sources/ \n"
> 
> I am not sure, but this might force protocols. You could try a "bitbake 
> -c fetchall universe"
> 
> I am going have Michael H. get you the information about where the the 
> Downloads are.
> 
> Let me know how it goes.

Just to report back, I successfully used this and the instructions Michael
Halstead provided, from https://lists.yoctoproject.org/pipermail/yocto/2012-May/008966.html
to work around my non-working Sony proxy issue.

So thank you both very much!  I completed several builds in the past week,
and am looking forward to doing some experimentation with my
own custom distribution, for some research I'm doing.

I should note that this is independent of the work being done by Sony's
internal distribution team, who have been working to migrate Sony's internal
Linux distribution to the Yocto Project for a few months now.

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================


