Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEE21E005B9; Tue, 12 May 2015 23:57:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60790E0027F
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 23:57:15 -0700 (PDT)
Received: by laat2 with SMTP id t2so22457145laa.1
	for <yocto@yoctoproject.org>; Tue, 12 May 2015 23:57:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=aFxelZwBmyP7fu33UvKDvvZ/RnG6/vZBtmHM27n7MFY=;
	b=lcCH+d3FaIJR3Od9wmBw/DcWMg71qwBGM/qEhP+Z5rrtZuowS5NpbHzBSUq/8utrSA
	qJRKTAiLSgfuTniMD0QdGYTAx7ImcjUXCeKOa7OSPjQsAIgSZ4ZIHnMTEk9dtcvyn/2P
	KeJg5qpuBqN3WIKtvXTcSDbKUjYKsfNpQVvoMbp5rzIBxj3UfPd/toIGuO+lofCFsRBw
	z0lkr8U4/EaJk22APj1ErGnr7/3171dxJe/8PepB3+3YMRs4P10+6mAes6btBnsFOQ6h
	g4v8TRDCunwGrEApXkiR0PvnXsYcDn7bTQf0RNSws7XLbKid1rFe7hNff1RS3EGT0tcj
	57Og==
X-Gm-Message-State: ALoCoQlmutyW0ml3/zFaNTinMg8aFWYvvPgJzmv4EP6IKuxIIcwOlvNbDqsBJRweLIP8Xq3OcB7n
X-Received: by 10.153.11.163 with SMTP id ej3mr14735723lad.105.1431500233802; 
	Tue, 12 May 2015 23:57:13 -0700 (PDT)
Received: from ad.chargestorm.se (h83-209-191-235.dynamic.se.alltele.net.
	[83.209.191.235])
	by mx.google.com with ESMTPSA id 7sm4626431lax.44.2015.05.12.23.57.12
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 May 2015 23:57:12 -0700 (PDT)
Date: Wed, 13 May 2015 08:57:11 +0200
From: Anders Darander <anders@chargestorm.se>
To: SMITH Peter T <peter.t.smith@alstom.com>
Message-ID: <20150513065711.GA6356@ad.chargestorm.se>
Mail-Followup-To: SMITH Peter T <peter.t.smith@alstom.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <92BAB684D31DCD4A8F623A7EE7FD8C06013EE91D@041-DB3MPN1-092.041d.mgd.msft.net>
MIME-Version: 1.0
In-Reply-To: <92BAB684D31DCD4A8F623A7EE7FD8C06013EE91D@041-DB3MPN1-092.041d.mgd.msft.net>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Why does my bitbake build hang fetching linux-yocto-3.14.git
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
X-List-Received-Date: Wed, 13 May 2015 06:57:20 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* SMITH Peter T <peter.t.smith@alstom.com> [150512 17:25]:
> Fairly new to Yocto, trying to build Wind River's Linux distro
> (https://github.com/WindRiver-OpenSourceLabs). Everything goes to plan
> until bitbake gets round to fetching a clone of linux-yocto-3.14 (see
> output below), when bitbake just hangs forever (I left it overnight).

> If however I try to clone manually with "git -c
> core.fsyncobjectfiles=0 clone --bare --mirror
> http://git.yoctoproject.org/git/linux-yocto-3.14.git
> /home/user/wr-core/build-xilinx-zynq/downloads/git2/git.yoctoproject.org.git.linux-yocto-3.14.git"
> which seems to be the command line executed by bitbake, everything
> works as expected.

If it works for you, when running it manually at the same computer (with
the same network), it shouldn't at least be any firewall issues. Does it
help to re-run the fetch task? (Thinking of temporary network issues
together with something stalling).

> Can anyone point me in the right direction?

Just a couple of questions.

Does the log.do_fetch reveal anything?
If you enable the debug flags for bitbake, do you get anything that
makes sense when re-running the fetch task?

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

