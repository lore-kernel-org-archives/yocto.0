Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66CD7E01545; Sat, 21 Jul 2018 06:40:46 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3970E0086B
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 06:40:45 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id y5-v6so12707732qti.12
	for <yocto@yoctoproject.org>; Sat, 21 Jul 2018 06:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=1R++0UF6cAZVbL5z2h9mca8OPtUTbaU8ahdlIGf0AWk=;
	b=FB7rlsEzyLvXoZ2uQOand9KlpkF3x+FnJKSCYp45iaFF0J95Z1BjwcjN7yjnNsC2PM
	YBJ9xTjbwq/b2e5WjZFwtNUXN3IKm1bPa2iE4VrfmKLkK6GHKsvulszPZMsDk3NVCg0Z
	d9JKmhvPKZTF1VKtVl+i81LIa/3ZTv89pLpP32QKC7OJtjv7+qQ900VMGOTtkHjMNm0f
	RvatioRF9HcTAE6b6FccfLdBlXDTv4xwyjA5GbXoAd0VrwiWY7GD0bWy8VmD1DhS8YNE
	/UWFJe1C0uZjXUhFfBxxRy2PdwevE0eehj+4DkOM/rSlT2iv88CorjUJnlKO8b/rsGID
	7JrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=1R++0UF6cAZVbL5z2h9mca8OPtUTbaU8ahdlIGf0AWk=;
	b=BEqso0dsAnOWVnFMiFXSfHtYFM4CPFFVjZ4RCPBTH6ddvf4bZ+qsuiG7kADgP6ELVD
	bsVouxPEu7uxpoHMXazedSe+T0Z97r5eqkFlmuVFyqJBpmRDlHTYvrTObdHRuxUvZJrr
	euwzJAJMz1GxCQJrn6WUp78UPsgya42nZqx/miH+NFDuu3LRsggDDcRSrpNFSWsS6zoJ
	wPkGMeDesI/kJlKgCNsiLR35WB7QmhothIxknw5qA1kiw8ndzG/mcquFKi+u9G07dCuT
	xfU+2zwdnwLMnUGC9VlZjCNFLt1hJruyPZhLNg0DQXJP9IPVgGktJDFSPJArsRafqKTY
	oDGw==
X-Gm-Message-State: AOUpUlESFNocSa7f8F56JfzjRS2BmT8Mx0GTwGr4G4RZ6cVCdKTdfPjs
	1+szgyRUTifYGzU/+za2zJFK3Wm4IxTSeIKkxpit7N5c
X-Google-Smtp-Source: AAOMgpeybXwTdV1lL9BmJhfSd796dCJrN7DED+insg5hG5yKKNPjS1mZjrEdoFGCsw292GA8zfvk5jgOEIGpI2GgxO8=
X-Received: by 2002:ac8:70c5:: with SMTP id
	g5-v6mr5684097qtp.376.1532180444802; 
	Sat, 21 Jul 2018 06:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <53b38a65.2c07.164bb2b111f.Coremail.13824125580@163.com>
	<CAJTo0LZ_tPA1JwfMjZrpNduwRHZ8W-M-5-yJzNMYM4y=J7TC8A@mail.gmail.com>
In-Reply-To: <CAJTo0LZ_tPA1JwfMjZrpNduwRHZ8W-M-5-yJzNMYM4y=J7TC8A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 21 Jul 2018 06:40:18 -0700
Message-ID: <CAMKF1sq96XL1pE8X9VuNqtVXnWpzdh7LD4cd6fLSY8rKK_coCA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, 13824125580@163.com
Subject: Re: why compile "xserver-xorg" package on wayland projects?
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
X-List-Received-Date: Sat, 21 Jul 2018 13:40:46 -0000
Content-Type: text/plain; charset="UTF-8"

I have patches cooking see

http://git.openembedded.org/openembedded-core-contrib/log/?h=kraj/master
On Sat, Jul 21, 2018 at 5:27 AM Burton, Ross <ross.burton@intel.com> wrote:
>
> It shouldn't complain, what is the error?  The reason it's being built
> is because you've got X11 and Wayland enabled, so it's building
> xwayland.  When you add wayland to DISTRO_FEATURES, also remove x11.
>
> Ross
>
> On 21 July 2018 at 05:48, tugouxp <13824125580@163.com> wrote:
> > hi folks:
> >     i am working on project with "DISTRO_FEATURE" set to "wayalnd",  during
> > the compile procedure,  i saw the xserver pakage was compiled, which would
> > complain compile error and stop the process.
> >
> > i try to debug the dependciy, it seems the "weston" package bring the
> > xorg-server ,package in , so i try to change the default bb file of poky
> > poky/meta/recipes-graphics/wayland/weston_2.0.0.bb
> > and comment the following line
> > #RDEPENDS_${PN}-xwayland += "xserver-xorg-xwayland"
> > it seems work.
> > i dont know the reason and want to know if any elegant way to dealt with
> > this prolbems?
> >
> > thanks for your supply.
> >
> > NOTE: linux-tina: compiling from external source tree
> > /home/caozilong/WorkSpace/glibc/repo/lichee/linux-4.4
> > Currently  2 running tasks (2538 of 4483)  56%
> > |############################################################################################
> > |
> > 0: linux-tina-4.4.89-r0 do_compile - 0s (pid 1550)
> > 1: xserver-xorg-2_1.19.3-r0 do_configure - 0s (pid 1578)
> >
> >
> >
> >
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

