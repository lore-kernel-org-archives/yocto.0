Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B4EFE00D36; Sun, 27 Sep 2015 02:52:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.86.89.70 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FAE6E006EA
	for <yocto@yoctoproject.org>; Sun, 27 Sep 2015 02:52:48 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Hf6L1kOuP7xme+94j+WQREAglp9X6yVBFW+lXw6/VpTDoHLwMseFULphAJq3YVQp;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1Zg8dO-0003Zi-AC; Sun, 27 Sep 2015 05:52:42 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Khem Raj'" <raj.khem@gmail.com>
References: <9442195A2002444AA4EDA23A47FEAE09@PAULD>
	<60B7F68D-8325-47A6-936B-6CE9DA574210@gmail.com>
In-Reply-To: <60B7F68D-8325-47A6-936B-6CE9DA574210@gmail.com>
Date: Sun, 27 Sep 2015 02:52:41 -0700
Message-ID: <88D02BC0E4774023AEAC272E942EFFB2@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: AdD4hU2ZPmIScQRAQyq/SXjzRUGq7QAgaQLA
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606889ccb10e2875f74daf27195cf528c71b8350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Cc: yocto@yoctoproject.org
Subject: Re: What's mounting this partition?
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
X-List-Received-Date: Sun, 27 Sep 2015 09:52:52 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Khem Raj [mailto:raj.khem@gmail.com] 
> 
> are you installing udev-extraconf into image? IIRC that was 
> doing it in my cases some time ago.

That adds some rules to /etc/udev/rules.d, including automounting. I had
that in there for a day or so, because I also need to access an external
flash drive sometimes, but it had some insoluble issues, so I took it out
again. So none of those rules are present now, nor is the mount.sh script.
There are a bunch more rules in /lib/udev/rules.d, but none have anything
to do with mounting, as far as I can see.

I wish there was a way I could see this mysterious mounting happen.
Nothing shows up in dmesg or in journalctl.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


