Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8069DE00EE0; Sun, 15 Jul 2018 03:38:11 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DC3CE0086E
	for <yocto@yoctoproject.org>; Sun, 15 Jul 2018 03:38:08 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w6FAc4OI022242
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sun, 15 Jul 2018 11:38:05 +0100
Message-ID: <823e9e2b6aac4afad307982d4757494e91a481db.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Uwe Geuder <jrswdnan22@snkmail.com>, yocto@yoctoproject.org
Date: Sun, 15 Jul 2018 11:38:04 +0100
In-Reply-To: <87va9jw1me.fsf@snkmail.com>
References: <87va9jw1me.fsf@snkmail.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: Why can diffsigs take sometimes really looooong?
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
X-List-Received-Date: Sun, 15 Jul 2018 10:38:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-07-13 at 19:18 +0300, Uwe Geuder wrote:
> At times I find the diffsigs command useful/educational to understand
> what is going on in my build.
> 
> $ bitbake-diffsigs -t myimage do_image
> 
> Often the result is shown in no time. However, recently I got some
> cases were it takes 150 (!) minutes to show a simple difference (1
> line
> changed in do_install of systemd).
> 
> In comparision building after that change (with sstate) takes some 10
> minutes. And building everything from scratch (no sstate) takes just
> a
> bit over 50 minutes on the same machine.
> 
> Of course the build can make good use of my 8 cores / 16 threads,
> whereas diffsigs seems to run in only 1 core. Still, shouldn't every
> build calculate all the dependencies, so running diffsigs should only
> be
> a small fraction of that work?
> 
> Is there a natural explanation why diffsigs can sometimes be so slow?
> Just curious to understand what is going on there.
> 
> I am on Rocko 2.4.3 if that makes a difference.

Is your sstate directory on something slow like NFS?

Cheers,

Richard


