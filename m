Return-Path: <tim.bird@am.sony.com>
Received: from co1outboundpool.messaging.microsoft.com
	(co1ehsobe004.messaging.microsoft.com [216.32.180.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC2C4E00283
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 10:43:41 -0700 (PDT)
Received: from mail188-co1-R.bigfish.com (10.243.78.231) by
	CO1EHSOBE011.bigfish.com (10.243.66.74) with Microsoft SMTP Server id
	14.1.225.23; Tue, 17 Jul 2012 17:43:42 +0000
Received: from mail188-co1 (localhost [127.0.0.1])	by
	mail188-co1-R.bigfish.com (Postfix) with ESMTP id 7229B3C0270	for
	<yocto@yoctoproject.org>; Tue, 17 Jul 2012 17:43:41 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:160.33.194.228; KIP:(null); UIP:(null);
	IPV:NLI; H:usculsndmail01v.am.sony.com; RD:mail.sonyusa.com;
	EFVD:NLI
X-SpamScore: -6
X-BigFish: VPS-6(zzbb2dI98dI9371I1432I1447I14ffIzz1202hzz8275bh8275dhz2fh2a8h668h839h93fhd25hf0ah107ah)
Received-SPF: pass (mail188-co1: domain of am.sony.com designates
	160.33.194.228 as permitted sender) client-ip=160.33.194.228;
	envelope-from=tim.bird@am.sony.com;
	helo=usculsndmail01v.am.sony.com ; .am.sony.com ; 
Received: from mail188-co1 (localhost.localdomain [127.0.0.1]) by mail188-co1
	(MessageSwitch) id 1342547020478774_28483;
	Tue, 17 Jul 2012 17:43:40 +0000 (UTC)
Received: from CO1EHSMHS005.bigfish.com (unknown [10.243.78.228])	by
	mail188-co1.bigfish.com (Postfix) with ESMTP id 72AC74C004A;
	Tue, 17 Jul 2012 17:43:40 +0000 (UTC)
Received: from usculsndmail01v.am.sony.com (160.33.194.228) by
	CO1EHSMHS005.bigfish.com (10.243.66.15) with Microsoft SMTP Server
	(TLS) id 14.1.225.23; Tue, 17 Jul 2012 17:43:40 +0000
Received: from usculsndmail14v.am.sony.com (usculsndmail14v.am.sony.com
	[146.215.230.105])	by usculsndmail01v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q6HHhcPd026184
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 17 Jul 2012 17:43:39 GMT
Received: from mail1x.sjc.in.sel.sony.com (mail2.sjc.in.sel.sony.com
	[43.134.1.112])	by usculsndmail14v.am.sony.com
	(Sentrion-MTA-4.2.2/Sentrion-MTA-4.2.2) with ESMTP id q6HHhbLG031686
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=FAIL);
	Tue, 17 Jul 2012 17:43:38 GMT
Received: from [43.135.148.222] ([43.135.148.222])	by
	mail1x.sjc.in.sel.sony.com (Switch-3.4.2/Switch-3.4.2) with ESMTP id
	q6HHhQlJ005236;	Tue, 17 Jul 2012 17:43:27 GMT
Message-ID: <5005A4C6.9000007@am.sony.com>
Date: Tue, 17 Jul 2012 10:45:42 -0700
From: Tim Bird <tim.bird@am.sony.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <5004AA76.9010404@am.sony.com>
	<CAEsOVNfN90wh4Mfn_gYC5B0Q7LVDQYANboJ72QVZvSxaRNhZQw@mail.gmail.com>
In-Reply-To: <CAEsOVNfN90wh4Mfn_gYC5B0Q7LVDQYANboJ72QVZvSxaRNhZQw@mail.gmail.com>
X-OriginatorOrg: am.sony.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: denzil firewall problems
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
X-List-Received-Date: Tue, 17 Jul 2012 17:43:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On 07/16/2012 08:56 PM, McClintock Matthew-B29882 wrote:
> On Mon, Jul 16, 2012 at 6:57 PM, Tim Bird <tim.bird@am.sony.com> wrote:
>> Hi all,
>>
>> I'm trying to take Denzil out for a spin, and when I do bitbake, from inside
>> Sony (behind our corporate firewall) I get this:
>>
>> (I was doing 'bitbake poky-image-sato')
>> -------------
>> ...
>> ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
>>     Either fix the cause of this error or at your own risk disable the checker (see sanity.conf).
>>     Following is the list of potential problems / advisories:
>>
>>     Failed to fetch test data from the network. Please ensure your network is configured correctly.
>>
>> ERROR: Execution of event handler 'check_sanity_eventhandler' failed
>> -------------
>>
>> I tried to follow the instructions at:
>> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
>> but nothing worked.  These look like instructions for SOCKS proxies.
>> I only have access to HTTP proxies.
>>
>> Here's what I got from 'bitbake -DDD -v poky-image-sato', after configuring an 'nc'-based git-proxy:
>> -------------
>> DEBUG: Fetcher accessed the network with the command git ls-remote git://git.yoctoproject.org/yocto-firewall-test HEAD
>> DEBUG: Running export HOME="/a/home/tbird"; export SSH_AGENT_PID="1822"; export SSH_AUTH_SOCK="/tmp/keyring-9qrJm0/ssh"; export no_proxy="localhost,127.0.0.0/8"; export
>> ftp_proxy="http://www-west.sony.com:80"; export http_proxy="http://www-west.sony.com:80"; export GIT_CONFIG="/a/home/tbird/work/yocto/poky-7.0-build/tmp/sysroots/x86_64-linux/etc/gitconfig"; export
>> GIT_PROXY_COMMAND="/usr/local/bin/git-proxy"; export
>> PATH="/a/home/tbird/work/yocto/poky-denzil-7.0/bitbake/bin/:/a/home/tbird/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/a/home/tbird/bin/:/a/home/tbird/work/yocto/poky-denzil-7.0/scripts";
>> git ls-remote git://git.yoctoproject.org/yocto-firewall-test HEAD
>  
> Can you run that command outside of the yocto build and it works OK?
No.  Both inside and outside of yocto build the 'git ls-remote ...' fails.

Note that git using http: URL for a project works.

> 
> Did you set GIT_PROXY_COMMAND in your local.conf? I recall that
> git-proxy script on the wiki page not working all that well. (I've
> gone through all the same problems with our proxy as well). There is a
> connect-proxy utility available on most distros, and then I've been
> using this script:
> 
> $ cat ../scripts/git-proxy
> #!/bin/sh
> 
> if [[ "$@" =~ "$GIT_PROXY_IGNORE" ]]
> then
> 	nc $@
> else
> 	/usr/bin/connect-proxy -S wwwgate0.freescale.net:1090 $@
> fi
> 
> Not 100% sure how it evolved to this point though.

I tried this, and it didn't work for me.  I used it with
a couple of different http proxies and got:

$ git ls-remote git://git.yoctoproject.org/yocto-firewall-test HEAD
FATAL: failed to begin relaying via HTTP.
fatal: The remote end hung up unexpectedly

Thanks for the help, but I don't know if it's going to work.

Does anyone have a yocto mirror that's accessible via http?
 -- Tim

=============================
Tim Bird
Architecture Group Chair, CE Workgroup of the Linux Foundation
Senior Staff Engineer, Sony Network Entertainment
=============================




