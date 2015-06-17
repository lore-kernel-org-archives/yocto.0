Return-Path: <florian@fnbk.cc>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B36C8E009E4; Wed, 17 Jun 2015 06:28:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64E61E009B8
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 06:28:02 -0700 (PDT)
Received: by igboe5 with SMTP id oe5so79539360igb.1
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 06:28:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=58hQbqwl6davzxz4NGwyjPi+SyxQbi8R3qEQuTSqW7A=;
	b=AVvYaqL6I4W22THEuLUNKcoKY3rtcK3HMTUmSQfw1Lf3G+U++nHYyToheZAsh+7FDb
	av/0+Zy4xzsEpNvOrF6EhhbHHIm2Wh6ju1vteBfuliFa8l1PqHDwbShEWmEQwauhPwWV
	j/QizwjjSl2BYVz7Bv0Zq38hOl3o3cyRL9ZS9d/4xH3QFVUCspNkRtYheILXGisVNpfj
	vyHl4dxoxu/bV/19oImdaC3azIPm257sarxWT/eYe/+oTxTCcCKBC8DMXFPjVl3KKjfX
	Ghs/egWFivYd/sGKpA+zM1LXGazREBrwANH6RJ1jTKwDi8aLAT2AvIwb5AIS0jle3g75
	NwTg==
X-Gm-Message-State: ALoCoQlAeG5s8LIEITcf38KEtDcMs7tODSYEqk3Ep7+0UdKlE1Lp4/SLEfT61x35tFXLPiGAuBdP
MIME-Version: 1.0
X-Received: by 10.107.34.85 with SMTP id i82mr8359408ioi.6.1434547682282; Wed,
	17 Jun 2015 06:28:02 -0700 (PDT)
Received: by 10.79.116.145 with HTTP; Wed, 17 Jun 2015 06:28:02 -0700 (PDT)
In-Reply-To: <CALgoR9N55VS2D+UzMmdShBUmQBes_tEj8KqTi7Ff9UtO8pV7Mw@mail.gmail.com>
References: <CALgoR9NG-nVj7qaSSbAVjmhEWSpWaq_oGqFvA0yq+YM9nisF_g@mail.gmail.com>
	<55807507.1080906@windriver.com>
	<CALgoR9N55VS2D+UzMmdShBUmQBes_tEj8KqTi7Ff9UtO8pV7Mw@mail.gmail.com>
Date: Wed, 17 Jun 2015 15:28:02 +0200
Message-ID: <CALgoR9PzNjuOWnhC6cH0XLaPu9Winx0_m6nRM21ou4mPcB0JhA@mail.gmail.com>
From: Florian Boehmak <florian@fnbk.cc>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [prelink-cross] error while loading shared libraries: ld-linux.so.3
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
X-List-Received-Date: Wed, 17 Jun 2015 13:28:08 -0000
Content-Type: text/plain; charset=UTF-8

> The error indicates that it found a library required called 'ld-linux.so.3', but
> could not find that in the "path".  (The path generally being the sysroot path
> passed to the rtld.)
>
> What command did you use to run the prelinker?  And does your sysroot contain
> the /lib/ld-linux.so.3?

Hey, now I understand it :-) Thank you!

I need to specify the sysroot and explicitly tell prelink which
libraries to prelink:

PATH=/usr/local/sbin prelink --verbose
--root=/home/developer/workspace/eclipse/prelink-cross-example/arm-2012.03/arm-none-linux-gnueabi/libc
--cache-file=/etc/cache/prelink.cache --config-file=/etc/prelink.conf
--ld-library-path="/usr/local/lib;/lib;" -h /usr/local/bin/hello
/lib/libc.so.6 /lib/libgcc_s.so.1 /lib/ld-2.15.so


This will produce the following output:

Assigned virtual address space slots for libraries:
/lib/ld-linux.so.3                                           41000000-4102a968
/lib/libc.so.6                                               41030000-41181968
/lib/libgcc_s.so.1                                           41188000-411af748
/usr/local/lib/libworld.so                                   411b8000-411c06d0
Prelinking /lib/ld-2.15.so
Prelinking /lib/libc-2.15.so
Prelinking /lib/libgcc_s.so.1
Prelinking /usr/local/lib/libworld.so
Prelinking /usr/local/bin/hello


I put all the code on github, in case somebody has the same issues
(make sure to checkout both branches 'master' and 'shared-library'):
https://github.com/fnbk/prelink-cross-example

Thank you for the great help.

Cheers
Florian

