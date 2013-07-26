Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0030E01567
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 08:49:46 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 52B6BF811FF; Fri, 26 Jul 2013 09:49:46 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id DA511F81205;
	Fri, 26 Jul 2013 09:49:42 -0600 (MDT)
Message-ID: <51F29A98.4030006@mlbassoc.com>
Date: Fri, 26 Jul 2013 09:49:44 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: It's a [PERL] lie...
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
X-List-Received-Date: Fri, 26 Jul 2013 15:49:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

After three weeks, I've finally figured out why my PERL based
programs (Amanda in particular) don't run on my Poky/Yocto system.

I have my own distribution, derived from Poky, with some minor
tweaks.  In particular, I have some reduced DISTRO_FEATURES(*).
One of them that I had removed, 'largefile', was the root cause
of my PERL problems.  It turns out that PERL is the only package
that cares about this DISTRO_FEATURE and it builds incorrectly
if it's left out :-(  Adding this feature back into my settings
made PERL build properly and now Amanda runs as well.

My point/query is that if this setting is only used by PERL *and*
leaving it out breaks things anyway, shouldn't it just be removed
and the PERL recipes changed to assume that it was set?

* Note: I made these changes years ago, when I was new to OE/Poky
and still quite naive, and I don't recall why I removed 'largefile'.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

