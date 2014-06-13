Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E8C8E00AFD; Fri, 13 Jun 2014 07:07:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.176 listed in list.dnswl.org]
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7689E0073D
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 07:07:31 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ik5so2301812vcb.21
	for <yocto@yoctoproject.org>; Fri, 13 Jun 2014 07:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Ti55Q0cVtUx5nkVD+t8/BloFWVtXhsiCKl0xBPxX6qs=;
	b=lgwF+h7rqzF4lShs9DF1hQ2RFn6I535tQZTUKK3N4H5WULaZi4lMFiBSvZEEEv7Noj
	eamFHypqNgxhJFQIlhJ/YWBEbfh+fg0glCKH6BzQ6482Opcm6oVhHxxKm3jhoKyJ6+YE
	vrn5OddqO0cmA5uQ5gVHWdoRaLHEOyOByRPl0fEnKEO/lEt2F/Na0zuKBR6+8FL2nnmh
	LT2zHUnZfp/OfXeqbYh/alnwZJWfXVbA1UsBpv7YfAzytSNorRMzzQDPcDqsrq4Mtrfd
	vRmM90r8cSqwNB6w28RmaEJHBIiXBtCtUYh+HMm2cb3miMVOHeo1YBgJEIJ4hwgpTLI1
	XIYw==
X-Received: by 10.58.106.104 with SMTP id gt8mr1144540veb.46.1402668450520;
	Fri, 13 Jun 2014 07:07:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Fri, 13 Jun 2014 07:07:00 -0700 (PDT)
In-Reply-To: <539B0100.5090603@mlbassoc.com>
References: <CAF_dkJB9T4VWSOma0sTeaec8js4-Bp58=s4AKRxT0JryCHp8NA@mail.gmail.com>
	<539B0100.5090603@mlbassoc.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 13 Jun 2014 10:07:00 -0400
Message-ID: <CAF_dkJDSGM_CF34KF-+McY7S=ZvM+htzD1k0HMUDhRZHsdaOvQ@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to specify a default value for a variable in a recipe
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
X-List-Received-Date: Fri, 13 Jun 2014 14:07:36 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 13, 2014 at 9:47 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> If this is in the gstxbac recipe itself, use the much simpler
>   SRCREV ?= "${AUTOREV}"

Even better!  While I like that solution best of all, that opens up a
whole new world of hurt for me.

How does

SRCREV_default_pn-gstxbac = "${AUTOREV}"

work?  When would I use that over the much simpler solution you proposed?

I am thinking that if I used your solution, I might place

SRCREV_pn-gstxbac = "123" (or a git hash, or whatever)

in my local.conf?  in my BSP layer.conf?

I guess I could put

SRCREV_default_pn-gstxbac = "123" in my BSP layer.conf, and then,
later on, on some other project that used the same board, I might put

SRCREV_pn-gstxbac = "${AUTOREV}" in my local.conf, or maybe in a
.bbappend file for my BSP?

How/where does the _pn suffix (middlex?) come into play?

At this point, I like your solution tremendously, as it makes sense to
me.  But I sure would like to understand more about all the myriad
capabilities offered by bitbake.

--wpd

