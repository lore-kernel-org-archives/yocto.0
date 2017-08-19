Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 295EFE00D1A; Sat, 19 Aug 2017 11:36:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout11.t-online.de (mailout11.t-online.de [194.25.134.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 493E6E00B49
	for <yocto@yoctoproject.org>; Sat, 19 Aug 2017 11:36:51 -0700 (PDT)
Received: from fwd09.aul.t-online.de (fwd09.aul.t-online.de [172.20.27.151])
	by mailout11.t-online.de (Postfix) with SMTP id 5B3954217C41;
	Sat, 19 Aug 2017 20:36:50 +0200 (CEST)
Received: from genericx86-64
	(STFSJcZf8h7NbQO2BhYawHn+F2uWlj41L+8MmpRgriCtizZZJLLAmeA9c6e0JbgQY4@[84.146.40.121])
	by fwd09.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1dj8c0-4Ct0pU0; Sat, 19 Aug 2017 20:36:44 +0200
Date: Sat, 19 Aug 2017 20:36:38 +0200
From: Markus Volk <f_l_k@t-online.de>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-Id: <20170819203638.db87037572140a0bbe8cb16d@t-online.de>
In-Reply-To: <1503064990.28682.24.camel@linux.intel.com>
References: <20170817100003.d378a00de6788f3d9e36724d@t-online.de>
	<20170818013458.da848df3fac10ac277be82bb@t-online.de>
	<1503064990.28682.24.camel@linux.intel.com>
X-Mailer: Sylpheed 3.6.0 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: STFSJcZf8h7NbQO2BhYawHn+F2uWlj41L+8MmpRgriCtizZZJLLAmeA9c6e0JbgQY4
X-TOI-MSGID: b036db94-fabd-4ca4-b1e4-f8b8ad68c822
Cc: yocto@yoctoproject.org
Subject: Re: some issues with current poky master
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
X-List-Received-Date: Sat, 19 Aug 2017 18:36:53 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

The problem here is, that 'stat -c %s' gives out a wrong value. The issue happens only, if /bin/stat is linked to /bin/stat.stat. If using /bin/stat.coreutils the filesize is displayed correctly


-- 
Markus Volk <f_l_k@t-online.de>

