Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64AEAE006B5; Mon, 28 Jul 2014 12:34:30 -0700 (PDT)
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
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 882D7E00547
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 12:34:19 -0700 (PDT)
Received: by mail-ie0-f177.google.com with SMTP id at20so7188146iec.36
	for <yocto@yoctoproject.org>; Mon, 28 Jul 2014 12:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=69TdKfDoIDPVY3Mjysn+gFLmH7pHt5fAJqNHXHNsM50=;
	b=hLgVE3JEqTHD5zra64gkKgS5tGzUnVbfZUA4TckFbKFYQUdeePKFlBsoBHCaxVLuMC
	i0NKTGSd+bWgBJby9cdQiBI6xK4orjkTUzXd5OjJKcV6jcUx43c32SC+a48hz9ujvblj
	9NGYsTn5h3jE0Ku7VC4+BTJs0hEyJ4JY/zS4q4Z65+Yj6AUNwW/AzKFgsNS7qsl2xEs3
	/Qprmlh9N+Jzj7hBTHI8Qv9kymaPgDc/+28rbdbARWtSTalWMBtndSmclGA8xi8nt8jW
	NZX42Lp2WvmPF8FW9M2ow8BaKeLWiVHMADLxyu+LGc2Nw63W8qcI+gKkMVwrVx5gmhos
	xvfQ==
X-Received: by 10.50.43.134 with SMTP id w6mr35430676igl.17.1406576058412;
	Mon, 28 Jul 2014 12:34:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Mon, 28 Jul 2014 12:33:48 -0700 (PDT)
In-Reply-To: <1406574672.5096.19.camel@kihei.inmotion.gotdns.com>
References: <1406568010.2490.20.camel@kihei.inmotion.gotdns.com>
	<CAMKF1soKE=vPNMZMeH7n4gThR7Kb5GNo1w1HHWV3xEcC2yNOmg@mail.gmail.com>
	<1406574672.5096.19.camel@kihei.inmotion.gotdns.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 28 Jul 2014 12:33:48 -0700
Message-ID: <CAMKF1srAu376FhYwHFqA9BzKXv8u6gKULqeaakML8J7eK6U7Mw@mail.gmail.com>
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
X-List-Received-Date: Mon, 28 Jul 2014 19:34:30 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 28, 2014 at 12:11 PM, Darcy Watkins
<darcy.watkins@inmotiontechnology.com> wrote:
> The patch appears to have worked to get me past binutils-native into the
> rest of the build.  I have placed it with a bbappend file in a hotfix
> section of my layer.
>
> Please let me know once this fix makes it way into the poky/daisy
> branch.

If you can please submit the patch to OE-Core mailing list as well for
master and also a backport to daisy please.

