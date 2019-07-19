Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F53AE00D89; Fri, 19 Jul 2019 05:49:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
	[209.85.160.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88C3DE00C09
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 05:49:22 -0700 (PDT)
Received: by mail-qt1-f172.google.com with SMTP id h21so30726328qtn.13
	for <yocto@yoctoproject.org>; Fri, 19 Jul 2019 05:49:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=/tDu/K3sNx1w4Dc7YkUa42WbTNrAE0tTMhy0Ay66WWI=;
	b=XVEF6k8WQXolUmMOC4YubhcJ5fKqgb5I+esjhFH7O/JA7y6Ryym5Ykn1kK+9cemL03
	Ar2aMugoG37g918j4C1N8lH0hTu7X7MQaC8OL6TRiobeTW6r1yd0uYGjGbJPijgkQbZ6
	TTz9YFV1HTc5zgcBhz4o2ZnmqauW++ItYixxFkAw+VTHoibtrg99sTd1YBmRryATjjEL
	SGuya9R/rdhhaz7+SoYoZI95NV9wWWaPpU73exzUgV15FGCvqw74leiW/zB2xur/va0C
	V4U9R0g6bVki9o+TV3pvsWoNl0HBJybJZu2td788S8YDsefJup1FWVuK27rD+dqJs8pG
	GCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=/tDu/K3sNx1w4Dc7YkUa42WbTNrAE0tTMhy0Ay66WWI=;
	b=Td5+v1g1zMgozuqu35OONiarYqPGLz13SXyc3S7mFvNuxOu8Rpbs3SqrQ5ZDc1mjyx
	FACdHhZffKjbrYuPY8jFxUIaQdHoXhFUyqFmoulrbdnWa00aQAb6WV9XDz5eiRDN7cZL
	jWHmsBbH8qhPVmvOglnSJ1m7goJBnHXxG0n+zROAb1Ax0ybK9SwxfuTVesgFDtnodBtK
	PuHU8silsGZ7QO6AMg3ayp88PWqIW86Z4m49twqcKvZJFWeWxea0CCMFrn8ODpzXKss+
	5do8oMDwNTzxpSfJyZB7Nd8ivl1jS0gnE6T52BRUeOn3ILKP70crEXp1BLVvizNhnG6h
	Ns3A==
X-Gm-Message-State: APjAAAX6CAKLKLBIvwvv4kLVe7891sYORR6VkD9y6PTWXmZ6CHNizgrk
	l3PwhvjuKycVPLcNrIIWtSQ+jbMejGuW7e4KYMo=
X-Google-Smtp-Source: APXvYqyqH6CBEqouiiDgrARmoAF4SzzsvCnxzso4iw/yFXliMUvVvbXHxm+RDf5+2KBKzJfVvoVo/DT3g+ENoHwfJDg=
X-Received: by 2002:ac8:30c4:: with SMTP id w4mr35575944qta.314.1563540561910; 
	Fri, 19 Jul 2019 05:49:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJDbqR8yPWRYX_2wT+Pk1+cuNcntWizg3hhZnA_vVVwnaA@mail.gmail.com>
	<CAAx3WaDTteqencYsxrb+1a_TgR8cazNUJ7-3VX9VxeePQkmRoQ@mail.gmail.com>
In-Reply-To: <CAAx3WaDTteqencYsxrb+1a_TgR8cazNUJ7-3VX9VxeePQkmRoQ@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Fri, 19 Jul 2019 08:48:55 -0400
Message-ID: <CAF_dkJB=p0EWosdL6cTe1YN+38KN8Qb8LuYoOvF06URR96oQCw@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to specify a different kernel for an image
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
X-List-Received-Date: Fri, 19 Jul 2019 12:49:23 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 19, 2019 at 1:58 AM Gabriele Zampieri
<gabbla.malist@gmail.com> wrote:
>
> Hi,
>
> you could define two machines, where the manufacturing one is just an ove=
rlay of the production one. If the two kernels differs only for their confi=
g, you can specify different defconfig based on machine. If you need a comp=
letely different kernel, just specify  PREFERRED_PROVIDER_virtual/kernel in=
 manufacturing overlay

Hi Gabriele,
I wondered about that, but I get confused about the MACHINE concept in
Yocto/OE/bitbake...

1. If I define a new machine, but I have a lot of recipes conditioned
on the old machine, how do I say "This is the same as machine A, but
with these differences"?  I have defined a machine now ("mymachine")
and have recipes and .bbappend files with things like this in them:

SRC_URI_mymachine +=3D "file:/blah/blah/blah"
do_install_append_mymachine() {
  do_stuff()
}

Do I have to replicate (and maintain) all of the references to
mymachine to also refer to my newly defined "installationmachine"?  Or
can I tell Bitbake that "installationmachine" is the same as
"mymachine", and just add/change new stuff for "installationmachine"?

I hope my confusion here makes sense, but since it's confusion, it's
tough to tell :-)

2. My new image going to be used as an installation image for my
production image.  So I need to include the production image (for
MACHINE=3D"mymachine")) deploy products in the image for my installation
image.  How can I do that if I define a new MACHINE for the production
image?

Thank you so much for the suggestion... it confirms that I am looking
in the right places and thinking about the right things... I just
don't know how to solve this problem.

I'm also surprised that it's not a more general problem... which leads
me to believe that I must be thinking about this the wrong way.

Thanks again.

--wpd

