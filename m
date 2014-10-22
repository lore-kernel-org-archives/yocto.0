Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 970FBE007D6; Wed, 22 Oct 2014 12:59:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A269E00790
	for <yocto@yoctoproject.org>; Wed, 22 Oct 2014 12:59:46 -0700 (PDT)
Received: from durham.keylevel.com ([88.97.63.243]:20493
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>)
	id 1Xh24I-002RIi-F7; Wed, 22 Oct 2014 20:59:41 +0100
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <54457446.5090809@gmail.com>
Date: Wed, 22 Oct 2014 20:59:37 +0100
Message-Id: <6C4C72C1-9016-4C6B-80D5-16572BE7A9ED@keylevel.com>
References: <54457446.5090809@gmail.com>
To: nick <xerofoify@gmail.com>
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-3.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Cc: yocto@yoctoproject.org
Subject: Re: Time To Build Yocto
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
X-List-Received-Date: Wed, 22 Oct 2014 19:59:57 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On 20 Oct 2014, at 21:44, nick <xerofoify@gmail.com> wrote:

> I am wondering from your experience how long is the largest build you =
have ever seen and what was it building. I am=20
> considering a high powered build system for Yocto and want to known =
about build times in order to help me with
> purchasing decisions.

There was a recent thread discussing this - have a look at =
https://lists.yoctoproject.org/pipermail/yocto/2014-October/021808.html

You need to start by working out what you'll be spending most of your =
time doing - full image builds, incremental images, single recipes, etc.

My build system has an i7-3820 overclocked to 4.6 GHz with 16 GB RAM and =
SSDs. It takes about an hour to build an X11 image from scratch (no =
shared state, source already downloaded). I could reduce the build time =
to about 25 minutes by upgrading to a new CPU (12 core, 24 threads) for =
$2700 - once you have your use-case you can do the math to work out what =
the payback time will be ;-)

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


