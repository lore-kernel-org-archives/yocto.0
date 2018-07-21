Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77EB3E00D00; Sat, 21 Jul 2018 10:35:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0404BE006B4
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 10:35:05 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id c15-v6so13050222qtp.0
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 10:35:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=+Oav+avpQepqKUBIFK4lJNV5EPKcYKNek8DzxhTowFs=;
	b=iTIDFyGSyzvQ8FjbFVsPQiuhrL0tuzZHMmh7W/OK4eN3XaLn8RJUZ0PwXwjLGOzbW3
	1PKUIw2DScJecW0CtJveIaP3IARDJ6Q5ygBovcdFTFgo6r2rZ4nWEh5OzN9u+Hbkx/+I
	PdU6dUVNiQFZ9sL+wivv60kp3JGoBrIK+GMKZIQ/bNwi+Y5OB4lEoH9i5tLtumgW2hHp
	rH13LD3xnoHOpMqCqxpFKzb4PUrTVXAAUstRHNWKumdi7ZIvvLs2IgqDLgfbVp9H2KuZ
	7W7oIUFLvbf/lgWwMDdu/PzTIxpmvf05nws0Hu43w/z0rENSdJMqixbDGFLG5ZzRRscP
	zwvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=+Oav+avpQepqKUBIFK4lJNV5EPKcYKNek8DzxhTowFs=;
	b=BZXNE10WH7kXqm+0SuZKwbJH/pviasusKikFDbM693MuI6Oh1jGUxKM66+UfB0WVPB
	2KEOfsENdZI++HdyHty9xHfolxdgCXC9OwbEL/MsnhQWWPN5/bTnnq9LL01RGKK/xGsd
	c9RPfxAk+wsog1lMIec3rGJwbntvIgLfccdCDhM7qIYXWS5BLZDJ0iSu7b22pVuUftb9
	4YVsASzn98QQs5s0Q1wsyQjEUaDmV4/2gqu0byIi37ySvzYftCtRv52kfWWl4wjdpHyo
	I42U/N+fKPbA7aW0Rr3nlXYy7EkAU6c2JuHtKnffADkpUjseFkeukT3ZbM/FrO2pwy4h
	Riaw==
X-Gm-Message-State: AOUpUlGWukVi+eEiMUfa42tk0n2XeraLTmoejDftGG2lc3qDs0DlT17k
	ITlMHnS6Kya/i1RLG27qtlfxDRrIpWZ3fbDdLGE=
X-Google-Smtp-Source: AAOMgpe97Zg1sl5lkEI4QPKkPaGMXxPY1vKAt6WrmNE74nF90Cv5OwsatwwwZryDW3KnOjrwGOtMn6WIZxY4/By3TTY=
X-Received: by 2002:ac8:2ad8:: with SMTP id
	c24-v6mr6386363qta.117.1532194505251; 
	Sat, 21 Jul 2018 10:35:05 -0700 (PDT)
MIME-Version: 1.0
References: <16C5EFE1-1FE0-4E48-9797-EEC5E54033AB@comcast.net>
In-Reply-To: <16C5EFE1-1FE0-4E48-9797-EEC5E54033AB@comcast.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 21 Jul 2018 10:34:39 -0700
Message-ID: <CAMKF1so968sUsO8bdbvndD=VyVO_rxriC3kssO_K4V875M-byg@mail.gmail.com>
To: RUSSELL PETERSON <bluehills7@comcast.net>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: SDK and out of tree modules
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
X-List-Received-Date: Sat, 21 Jul 2018 17:35:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 21, 2018 at 6:20 AM Russell Peterson <bluehills7@comcast.net> w=
rote:
>
> Hello,
>
> I have been building some modules using the SDK for a while now.  This is=
 mostly for development flow purposes but we have had a few customers doing=
 this as well.  To get this to work we always need to run =E2=80=9Cmake sil=
entoldconfig scripts=E2=80=9D inside the RFS of the SDK on the build host. =
 Many folks forget to do this this and thus many, many questions come my wa=
y about the SDK being broken and they can=E2=80=99t build their modules (no=
t all users are kernel experts or even intermediates=E2=80=A6 they just wan=
t to apply a patch and quickly move on to their app).  Is there a way to do=
 this auto-magically during the installation of the SDK by adding some type=
 of scripts etc=E2=80=A6 to the recipe?  I assume it needs to be done at in=
stall time since while the build host is x86=E2=80=A6 the exact linux distr=
o is not known until then (or does that matter?).
>

are you using extensible SDK ? in that case I think do_make_scripts
from module-base.bbclass should be helpful

> =E2=80=94Russ
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

