Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C697E00B1E; Sun, 25 Oct 2015 07:58:02 -0700 (PDT)
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
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CBDAE009C5
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 07:57:56 -0700 (PDT)
Received: by igbdj2 with SMTP id dj2so41937735igb.1
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 07:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=y3GgWRxQx4R4auKOxmb1JEHQ7Y81Higob4YTPGup/ww=;
	b=GYrkfxQEDjP2lyU8xf1MQBuwE+NO6mBx/1rr49LYrlxLa9lhjp78aI425sVcaiqy+3
	0zr2OisqlLL5jpXaoVQZddkRY8NA2LafEebE8D7tUOu8wKX8YrTWz5tCaE3nDnP/FXiX
	+NXUiHHhA6DLwK6MoyQKGRdZutwefrdKd0aw1Vlmg7gwVVBSNDIPxeRbg96KevttlLfK
	H8rYs1XvSyuTus3N6ytUdS1qk+Zq1hxIsNt6yVy2h6Suy7HG3Gznc6C2AGsUDn3sRx05
	qQzKE4mFWWiJiK9BTtc3uuRpQVFBIMKTcNsqMt8xcuEGfYoQFFzegC39FFHciGrt68qj
	jELQ==
X-Received: by 10.50.59.131 with SMTP id z3mr6155152igq.77.1445785075873; Sun,
	25 Oct 2015 07:57:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.133 with HTTP; Sun, 25 Oct 2015 07:57:26 -0700 (PDT)
In-Reply-To: <CAGF=AeRkNUv6zV=LyP6WvhSMd7BQgO8xD5jnyFop+RDf+G=v7Q@mail.gmail.com>
References: <CAGF=AeRkNUv6zV=LyP6WvhSMd7BQgO8xD5jnyFop+RDf+G=v7Q@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 25 Oct 2015 07:57:26 -0700
Message-ID: <CAMKF1spu3yuRDjogf7f4WXSjWAG1GX5qkuGXieqjMeg6ceJEbQ@mail.gmail.com>
To: Robert D Kocisko <rkocisko@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Turn off X screen blanking
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
X-List-Received-Date: Sun, 25 Oct 2015 14:58:02 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 23, 2015 at 10:43 AM, Robert D Kocisko <rkocisko@gmail.com> wrote:
> I am trying to disable screen blanking in X by default.  This bug talks
> about doing the same thing but it is not currently completed:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7278
>
> I am using "dizzy" for compatibility with the meta-amd layer.  I found the
> xserver-common recipe in meta-oe and I suppose I could add another patch
> like 0015-xserver-common-disable-TCP-connections.patch, but I'd rather do it
> using a .bbappend file in another layer.  My question is how I might go
> about doing that using a bbappend file?

add something like

/usr/bin/xset -dpms s off s noblank s 0 0 s noexpose

to rc.local or systemd service file whatever you are using.
ensure that X server has initialised fully before running this and ofcource
add xset to your image.

>
> Thanks,
> Bob Kocisko
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

