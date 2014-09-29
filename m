Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1AAEAE0079E; Mon, 29 Sep 2014 14:36:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8EDFE006DB
	for <yocto@yoctoproject.org>; Mon, 29 Sep 2014 14:36:25 -0700 (PDT)
Received: from [109.224.171.0] (port=3373 helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1XYicF-002E0w-Go
	for yocto@yoctoproject.org; Mon, 29 Sep 2014 22:36:21 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <221FE6F5-8350-467B-9744-402B89707FAF@keylevel.com>
Date: Mon, 29 Sep 2014 22:36:21 +0100
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: Fetcher question
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
X-List-Received-Date: Mon, 29 Sep 2014 21:36:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've been working on a bbappend to update bash for Danny in response to =
'shellshock'.

Looking at the patches at http://ftp.gnu.org/gnu/bash/bash-4.2-patches/, =
you can see that bash42-049 is now dated after bash42-050.

My initial bbappend only included up to bash42-049 as 050 wasn't yet out =
and 049 originally had an earlier date.

How would the fetcher handle the file changing after it had already been =
downloaded and passed a checksum test? Would the change have been =
detected?

I would run a test, but I had done a 'cleanall' before I spotted the =
date change. The file definitely changed as I had to update the checksum =
for the 049 patch.

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!








