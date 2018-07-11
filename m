Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 01BD7E00C4B; Wed, 11 Jul 2018 00:11:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF827E00A48
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 00:11:53 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w6B7BkKH010750
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 11 Jul 2018 08:11:48 +0100
Message-ID: <a4bbc2555cb61b8c3b6aea33fcc2e31b874f0b7f.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Burton, Ross"
	<ross.burton@intel.com>, "Eggleton, Paul" <paul.eggleton@intel.com>
Date: Wed, 11 Jul 2018 08:11:46 +0100
In-Reply-To: <AA9B40170ABA1047B45E714CB2B866B7068FFB22@PGSMSX103.gar.corp.intel.com>
References: <1531193077-10652-1-git-send-email-aaron.chun.yew.chan@intel.com>
	,<0c6dfc5e97f24bd90f6b3ff573a637eb2ec12915.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7068FF63C@PGSMSX103.gar.corp.intel.com>
	<e93986c0d370dee8918b51d0743907ef8c34ce28.camel@linuxfoundation.org>
	<AA9B40170ABA1047B45E714CB2B866B7068FFB22@PGSMSX103.gar.corp.intel.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [PATCH] [yocto-autobuilder] init: Fix the import module yoctoabb & yocto_console_view
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
X-List-Received-Date: Wed, 11 Jul 2018 07:11:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2018-07-11 at 02:23 +0000, Chan, Aaron Chun Yew wrote:
> It appears that your using virtualenv (switch to python3) to startup
> your buildbot processes and not using the default python from host
> distribution.
> I am aware that you can switch interpreter to python2/3 in
> virtualenv. Shouldn’t we handle these for both in events users uses
> the default host distribution as default python2 and still make it
> worked? What is the best practices here and should all the buildbot-
> workers start in
> virtualenv defaults to python3 as well ? I am little lost right here,
> please advise.

There are multiple ways to achieve this, you can make /usr/bin/python
point at python3 too, or simply not install python2 on the controller.
Using virtualenv was just a simple way to illustrate how you can use
it.

My worry about trying to support both python versions is that as you've
found out, there are problems that can occur in one that don't occur in
the other, which then means twice as much testing. Since python2 is an
official "dead end" and as a project we're trying hard to use python3
everywhere, it doesn't seem to make sense to try and support python2 on
new code such as the autobuilder?

Cheers,

Richard

