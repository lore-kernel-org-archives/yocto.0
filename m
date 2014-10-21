Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE6CBE008AE; Tue, 21 Oct 2014 13:53:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFF5EE00862
	for <yocto@yoctoproject.org>; Tue, 21 Oct 2014 13:53:45 -0700 (PDT)
Received: from durham.keylevel.com ([88.97.63.243]:17402
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1XggR1-004BFe-EZ
	for yocto@yoctoproject.org; Tue, 21 Oct 2014 21:53:41 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <4C4AA6E5-5FDF-4761-B245-30247B82EEF0@keylevel.com>
Date: Tue, 21 Oct 2014 21:53:41 +0100
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
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
Subject: Ubuntu 14.04 as a build host for "danny"
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
X-List-Received-Date: Tue, 21 Oct 2014 20:53:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I'm currently building with "danny" under Ubuntu 12.04 (which shows as a =
"supported platform" in the documentation).

However, I need to be able to use GStreamer 1.4, which means a need a =
later version of glib. This is easy for "danny", but I also develop and =
test my application on my development machine and that's not so easy!

The easiest way to go would be to upgrade to 14.04. Does anyone have any =
experience of using "danny" under 14.04?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


