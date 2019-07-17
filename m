Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70A69E00D46; Wed, 17 Jul 2019 06:05:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A443E00D1C
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 06:05:43 -0700 (PDT)
Received: by mail-lf1-f68.google.com with SMTP id b29so9171934lfq.1
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 06:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=yB46JYNiVsvpZ/p9sj3WuH6tbgxPpRmEw+5pYS9+rLQ=;
	b=JYJfgv8YRZaH4iQTb9zzG05k1TE5trBrVjyUeX3W0GlplRrTkukmkWwiNgSVu7jTHW
	dRYPZ8tVzuxNWfx+OpVaWo+bag0X+zfH1El5nGE9agQBq/ZHVn/6XFxw+F7X37feUwVd
	LP2A/CfmOLbzDejz+DtBsUxXX++E1mcb8Hu2kEb9/qgheU3P0N15Imn3loK1GdtxZSbC
	3VnSwx8Do/0kGJQcXvy0EV8VCJFdK0lyCy4W/54B884ii6bZwkB0DO8ktXlCg5YlDFSL
	dEycX4I4GxC1VxiS0EevcPvWEmIiqevEkIZZyzj2ktORJWyYhPXzZBKYny/rh/mkthEE
	k+hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=yB46JYNiVsvpZ/p9sj3WuH6tbgxPpRmEw+5pYS9+rLQ=;
	b=Rd6pmVdnISbG1doOV02r99WUj8Qy/9F9EfeZA2HtYih+Sm1k3iZ0g1GSn3XnmkfWKF
	Q9pr5BRgk5m34bXQYPwK8sgbflFNkuagK44wLtCIEPwlt/fKSwDAYeyokOoP3aCGinLc
	ZEhRSXLl0jhVSx5py78OJiA3bBOp+XRcqu6Pt3aRuMnNzc9KUDW3PmuVCnWcQSxKKg4i
	m1VEZJBss/70yaURae03F4azQ1ssrG2VRmMtGUXqvADI7G65vXtVLUdcxGoAsvo+Yp9C
	6t0OhmeVFNP2w4HIkIwQ5FdZa3z/O2xBJBwcnHYMUXP3joIvfiaPuoQNPLPMSFZro7Fk
	4kfA==
X-Gm-Message-State: APjAAAUBcnKMYcZmPA+PtWNfnjqi/pESavR1XgcfvnMGIidlS05gDptt
	V1oiC1hRB/1dfRi67oardM7Cv7qtyNfepSfNmK0=
X-Google-Smtp-Source: APXvYqxbAK3mdbLCb3g200coHqZ24kCMOtkp7WF4gYuUgSY1mmkbKq+MqqwV2nQQYMG63xTSFNNrZDDoXKRYErjx+9A=
X-Received: by 2002:ac2:46ef:: with SMTP id q15mr18230293lfo.63.1563368742457; 
	Wed, 17 Jul 2019 06:05:42 -0700 (PDT)
MIME-Version: 1.0
References: <CA+pXca1VC_m+5VgUtE4MqTXBMhJ=aL8cJZfk43FxJwgnN-2gQA@mail.gmail.com>
In-Reply-To: <CA+pXca1VC_m+5VgUtE4MqTXBMhJ=aL8cJZfk43FxJwgnN-2gQA@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Wed, 17 Jul 2019 09:05:31 -0400
Message-ID: <CADkTA4NFOnri8x1D557SQUJY_1AJvGxQEU6ue0CaSW0D+iFLQQ@mail.gmail.com>
To: praveen vattipalli <praveen.vatt@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: getting error in "make-mod-scripts-1.0-r0" while building meta-altera kernel as local source
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
X-List-Received-Date: Wed, 17 Jul 2019 13:05:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 17, 2019 at 7:43 AM praveen vattipalli
<praveen.vatt@gmail.com> wrote:
>
> Hi All,
> we are upgrading Yocto from Krogath to Sumo version.
> while using meta-altera kernel source as local source,
>
> if i use  EXTERNALSRC_BUILD variable
> EXTERNALSRC = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files/kernel-source"
> EXTERNALSRC_BUILD = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files/kernel-source"

Have you tried making these different directories ? The error you are
seeing is telling you that you
are trying to build in an already configured/dirty source directory.
Not having a split source and
build is one easy way to get into the state that you are seeing.

> getting make-mod-scripts-1.0-r0 error.
>
> if i comment EXTERNALSRC_BUILD = "${TOPDIR}/../meta-altera/recipes-kernel/linux/files/kernel-source" i could able to build the image.

See my above comment. By default the externalsrc class does a split
source and build directory,
which is why it works.

Bruce

>
> any suggestion, if i miss anything.
> Thanks in advance
>
> logs:
> ERROR: make-mod-scripts-1.0-r0 do_configure: oe_runmake failed
>
>  Using /home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/kernel-source as source for kernel
> |   /home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/kernel-source is not clean, please run 'make mrproper'
> |   in the '/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/kernel-source' directory.
> | /home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/meta-altera/recipes-kernel/linux/files/kernel-source/Makefile:1064: recipe for target 'prepare3' failed
> | make[1]: *** [prepare3] Error 1
> | make[1]: Leaving directory '/home/pkumar/tp4100_sumo/sumo/yocto_platform/platform/build/tmp/work-shared/cyclone5/kernel-build-artifacts'
> | Makefile:146: recipe for target 'sub-make' failed
> | make: *** [sub-make] Error 2
>
> Thanks,
> Praveen
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II

