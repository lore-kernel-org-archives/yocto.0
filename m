Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F1CCE006B5; Mon, 28 Jul 2014 10:53:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31DA1E00547
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 10:53:44 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h3so4011854igd.2
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 10:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=gbr0tpbfGuqWbiXyALa4V/ukKlvfq9uJOFcODw8Dzrw=;
	b=FCls9pJeaboY1oIxSkKNO7QSnsHQAl8rgLbXFwvZbw5Qquabj5va+w8zHzAA3Zwjvh
	1Qmev21kqCfZhih54Mf/CUcK48wmVT+mejfS9bfXcvmfOfC576eHnpaUXHegSQyKOy9Y
	giAlRC8pBDcmxHaIoDoSqP5SLXKoZF2dQ9ypvMsvVNbpkYNo4IViDBnWFSu5Ki33SSx6
	fvFzdUlP56TRH7ErU56WSm7qd0MMRfOisEGQIYWCNBKyOjYdHI0VE8BQeohjxGNPjjLn
	mpHgaHyQIvqFEyI4OfZOtDhSlxk/zlpTKsLm3wLYLmLG6+Iv9iN7+CfTsErZfQRxiNnH
	sloA==
X-Received: by 10.42.90.74 with SMTP id j10mr45270498icm.29.1406570023986;
	Mon, 28 Jul 2014 10:53:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Mon, 28 Jul 2014 10:53:13 -0700 (PDT)
In-Reply-To: <1406568010.2490.20.camel@kihei.inmotion.gotdns.com>
References: <1406568010.2490.20.camel@kihei.inmotion.gotdns.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Jul 2014 10:53:13 -0700
Message-ID: <CAMKF1soKE=vPNMZMeH7n4gThR7Kb5GNo1w1HHWV3xEcC2yNOmg@mail.gmail.com>
To: Darcy Watkins <darcy.watkins@inmotiontechnology.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: binutils-native 2.24 build broken
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
X-List-Received-Date: Mon, 28 Jul 2014 17:53:49 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 28, 2014 at 10:20 AM, Darcy Watkins
<darcy.watkins@inmotiontechnology.com> wrote:
>
> I use a layout much like Freescale Community BSP project that uses
> 'repo' to pull together the layers based on a manifest.
>
> I noticed this when a syncup triggered the toolchain to rebuild.
>
> Since I hadn't had anything trigger toolchain to rebuild since July 17,
> I tried 'git checkout' all my layers, oe layers and yocto layers to
> specific hashes to get back to the state I had in July 17.  I blew away
> the sstate-cache, cache and tmp and rebuilt from scratch.  Same thing.
>
> Are there floating git references related to the toolchain that could
> have updated independent of the meta data that could still go forward of
> Jul 17?
>
> In any case, it appears that my 64bit Fedora machine at home is not
> affected by this, but my 32bit CentOS 6 machine at work is affected by
> it.
>
> Anyone know what happened?


can you apply the following patch to binutils and retry

https://sourceware.org/git/gitweb.cgi?p=binutils-gdb.git;a=commit;h=f9c316c4d75be236bbaa8464ef803ed2d3859d6d

