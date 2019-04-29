Return-Path: <tech@domaigne.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D6E4E00C93; Mon, 29 Apr 2019 14:33:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [80.237.132.122 listed in list.dnswl.org]
X-Greylist: delayed 1491 seconds by postgrey-1.32 at yocto-www;
	Mon, 29 Apr 2019 14:33:10 PDT
Received: from wp115.webpack.hosteurope.de (wp115.webpack.hosteurope.de
	[80.237.132.122])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DB70E0053F
	for <yocto@yoctoproject.org>; Mon, 29 Apr 2019 14:33:10 -0700 (PDT)
Received: from app13-neu.ox.hosteurope.de ([92.51.170.147]); authenticated
	by wp115.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:ECDHE_RSA_AES_256_CBC_SHA1:256)
	id 1hLDVZ-0003y3-Aq; Mon, 29 Apr 2019 23:08:17 +0200
Date: Mon, 29 Apr 2019 23:08:17 +0200 (CEST)
From: =?UTF-8?Q?Lo=C3=AFc_Domaign=C3=A9?= <tech@domaigne.com>
To: Richard Weinberger <richard.weinberger@gmail.com>,
	ChenQi <Qi.Chen@windriver.com>
Message-ID: <697136556.249140.1556572097267@ox.hosteurope.de>
In-Reply-To: <CAFLxGvwKfA2OSmFz-+gNSbke5DUwRHu5v5mE80VtcyAnbpV9Bw@mail.gmail.com>
References: <CAFLxGvxbeZvadxguGoGHZSzeF2EnZ9EkR0aLVOh4FnyNi6VGmw@mail.gmail.com>
	<df7617cf-b6cd-dbf4-c3b7-7d283ab950d6@windriver.com>
	<CAFLxGvwKfA2OSmFz-+gNSbke5DUwRHu5v5mE80VtcyAnbpV9Bw@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev54
X-Originating-Client: open-xchange-appsuite
X-bounce-key: webpack.hosteurope.de;tech@domaigne.com;1556573590;4816ac4f;
X-HE-SMSGID: 1hLDVZ-0003y3-Aq
Cc: yocto@yoctoproject.org
Subject: Re: Disabling sshd is harder than it should be
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
X-List-Received-Date: Mon, 29 Apr 2019 21:33:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Guten Abend Richard, 

> > When selecting systemd as the init manager, the following line is
> > recommended.
> > DISTRO_FEATURES_BACKFILL_CONSIDERED += "sysvinit"
> > Then you should only need: SYSTEMD_AUTO_ENABLE = "disable"
> 
> Thanks a lot for your suggestion!
> But doesn't this line imply that recipes which don't supply systemd servies
> files won't work since the init.d scipt fallback will be disabled?

As per Mega-manual (section "using systemd Exclusively"):
# switch to systemd init
DISTRO_FEATURES_append = " systemd"
VIRTUAL-RUNTIME_init_manager = "systemd" 

# The next 2 lines:
# -prevent sysvinit of being automatically added to the image (BACKFILL_CONSIDERED), 
# -remove the initscripts from the image (VIRTUAL-RUNTIME_initscripts) 
DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
VIRTUAL-RUNTIME_initscripts = ""

Now "pokying around" further in meta/ and meta-poky/, it turns out that that later variable might be what you're looking for. 

As far as I can see, it can be set to:
VIRTUAL-RUNTIME_initscripts = ""
VIRTUAL-RUNTIME_initscripts = "initscripts"
VIRTUAL-RUNTIME_initscripts = "systemd-compat-units"

Also using "+=" operator for BACKFILL_CONSIDERED as suggested by Qi sounds more generic to me than using a plain assignment.

Speaking of which... Additional findings (meta/conf/distro/include/maintainers.inc) let me also think that Qi is simply just the right address for these kind of questions ;-) 

Ah, and yes. If you are moving from sysvinit -> systemd for an existing project, you might need a clean build as DISTRO_FEATURES is changed.

Hope this helps!
Loic.

