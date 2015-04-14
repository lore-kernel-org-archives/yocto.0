Return-Path: <oliver.staebler@bytesatwork.ch>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CCA3E0076B; Tue, 14 Apr 2015 09:13:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 500 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Apr 2015 09:13:02 PDT
Received: from bytesatwork.ch (bytesatwork.ch [91.135.72.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0069AE003A8
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 09:13:02 -0700 (PDT)
Received: from stanley.bytesatwork.ch (unknown [95.143.48.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested) (Authenticated sender: oliver)
	by bytesatwork.ch (Postfix) with ESMTPSA id AAC8A18001A5
	for <yocto@yoctoproject.org>; Tue, 14 Apr 2015 18:00:08 +0200 (CEST)
Date: Tue, 14 Apr 2015 18:04:44 +0200
From: Oliver =?utf-8?Q?St=C3=A4bler?= <oliver.staebler@bytesatwork.ch>
To: Yocto <yocto@yoctoproject.org>
Message-ID: <20150414160444.GA24453@stanley.bytesatwork.ch>
MIME-Version: 1.0
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Mount options for /dev/root
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
X-List-Received-Date: Tue, 14 Apr 2015 16:13:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi

I'm trying to add some mount options to / (/dev/root) such as
'nobarrier'.

What would be the best way to define this option?

I know two possible ways:
* rootflags boot paramenter, but I'd prefer it to be in userspace
* /etc/fstab, but these options are not passed to mount. The script
/etc/init.d/checkroot.sh does parse fstab and even saves the options
($rootopts), but these options are not passed to the mount command.
Other implementation, such as debians checkroot.sh, do pass these
options to mount. Is this by intention or a bug?

Thanks & Regards,
Oliver

-- 
bytes at work
Technoparkstrasse 7
CH-8406 Winterthur
Switzerland

phone: +41 52 213 79 79

