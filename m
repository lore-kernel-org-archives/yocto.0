Return-Path: <seebs@seebs.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25341E009B8; Fri, 24 Feb 2017 07:11:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 385 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Feb 2017 07:11:43 PST
Received: from mail.plethora.net (mail.seebs.net [162.221.74.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E1FFE00995
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 07:11:43 -0800 (PST)
Received: from seebsdell (home.seebs.net [74.122.98.108])
	by mail.plethora.net (Postfix) with ESMTPSA id 46F4F2ADCE3;
	Fri, 24 Feb 2017 09:05:17 -0600 (CST)
Date: Fri, 24 Feb 2017 09:05:15 -0600
From: Seebs <seebs@seebs.net>
To: anton@advancedtelematic.com
Message-ID: <20170224090515.48425389@seebsdell>
In-Reply-To: <20170224144815.7243-1-anton@advancedtelematic.com>
References: <20170224144815.7243-1-anton@advancedtelematic.com>
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 24 Feb 2017 09:11:46 -0800
Cc: yocto@yoctoproject.org
Subject: Re: [pseudo][PATCH 1/1] Filter out erroneous POSIX ACLs
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
X-List-Received-Date: Fri, 24 Feb 2017 15:11:45 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 24 Feb 2017 15:48:15 +0100
anton@advancedtelematic.com wrote:

> From: Anton Gerasimov <anton@advancedtelematic.com>
> 
> The difference between what we see in pseudo and what happens without
> pseudo can be seen by typing:
> 
>     mkdir setfattr-test
>     setfattr -n system.posix_acl_default -v 0x02000000 setfattr-test
>     getfattr -n system.posix_acl_default setfattr-test
> 
> Under some kernel configurations this difference leads to annoying
> errors, e.g. directories copied with 'cp -a' get broken in a fancy
> way.

Can you expand on this? What is happening to make the "erroneous" ACLs?
What kernel configurations?

-s

