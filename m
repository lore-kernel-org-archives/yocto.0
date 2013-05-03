Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C84FE00498
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 05:25:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 03 May 2013 05:25:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,604,1363158000"; d="scan'208";a="236364501"
Received: from unknown (HELO helios.localnet) ([10.255.12.224])
	by AZSMGA002.ch.intel.com with ESMTP; 03 May 2013 05:25:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 03 May 2013 13:25:45 +0100
Message-ID: <2109913.gzGz2H4P05@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAHUNapTFABWCNOLf4=iiBuTEMtxim-KZAbMVbstW+u3925X_8Q@mail.gmail.com>
References: <5181AF9F.8040702@gmail.com> <2435942.LYTrJQCOfG@helios>
	<CAHUNapTFABWCNOLf4=iiBuTEMtxim-KZAbMVbstW+u3925X_8Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: bash specific syntax in bbclass files
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
X-List-Received-Date: Fri, 03 May 2013 12:25:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 03 May 2013 07:40:24 Trevor Woerner wrote:
> If every other distribution, over the next year, switched to python-3
> as their default, but (instead of updating) future versions of Ubuntu
> installed a symlink called python-3 pointing back to python-2, would
> that hold back Yocto from adopting python-3-isms too?

That's not quite the same situation and I don't think they would do that. They 
might however (as I guess they do now) point the standard python binary at 
python2 and then expect those using python3 scripts to explicitly request 
python3.

> It's sad how Ubuntu has so effectively killed the adoption of all
> features of bash (the default shell on many Linux distributions)
> introduced in the last 10 years by masquerading their crippled shell
> as "bash". And it's even sadder to see how so many projects, in
> response, have simply said "let's write all our shell scripts in
> original Bourne shell syntax" as a result.

Well, that is one way of looking at it; the change to dash in Ubuntu has 
indeed been quite a painful road (not so much for us but for the Linux 
ecosystem in general). On the other hand, it's not that dash is masquerading 
as bash, it's selected as providing /bin/sh. If you have written a shell 
script that starts with #!/bin/sh and then proceeds to use bash-specific 
syntax, sure it might well work on most systems because they're using bash, 
but the script started with something that wasn't true - it's not in fact a 
standard Unix Bourne-compatible shell script, it's a bash script.

It's also worth mentioning that we have had some benefit out of these changes, 
in that the scripts that have been fixed that end up running on the target will 
now more likely run when /bin/sh is provided by ash (i.e. busybox).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

