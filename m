Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A43DE00A48; Sat,  7 Jul 2018 03:17:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f42.google.com (mail-oi0-f42.google.com
	[209.85.218.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B1E0E00A48
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 03:17:14 -0700 (PDT)
Received: by mail-oi0-f42.google.com with SMTP id 13-v6so27952978ois.1
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2018 03:17:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8b3sy17YDvH1Q563CS7m7AJdef+BpNxAScZCsssNeoA=;
	b=iN+wDBtZQjT7Sj2QR1mWr+TsaoG7pMFLqgKGD1fkeZK7DjP0sLsKzz2GUug2j0kLS7
	NM+3ad/gCs6/Jy3HEEX+NbYjcN3mc55DiYY2+b+1meGZeCqmafTFeRNG5W2mD5yMghD2
	UQjMZ54ztY8nxV1rOysGA5W4/fCqknet7NzuLdqm0DRzcXi2iM0ReqsI+rV5kjayKsW4
	/pOobmk+WRfRTa9SOdo+WJFW82ayhhmFNCQ3yu0jiqht8L5PmmDOq7Rfk5095MkVS6mW
	64X0+M+SYClInLooSWPseZY4WkQS1ZhFmwzExhVucntMXcAaf0P97yigOYetRDXnaxhl
	M22g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8b3sy17YDvH1Q563CS7m7AJdef+BpNxAScZCsssNeoA=;
	b=S6z2pzrNkrRRwAVXfOSCuhwvAN6PMJFl60kbCjlk9N/63sO0c8trbnDRWjNrtLsUOV
	HOn5QYKqxBANJzygbecdo3pdg5WHoBugNdemgJNHiFuBGbRg7Isb4P2nNfc7Idk+5D8U
	VF6LOrWfLA1KMICn5/CNhWpdzu5EfRnMfZZ7Jh9zmev99h1Hj1rp/Ii8T9ggPUuodwz0
	cqL5k8Nk4hRZLLb1iCxYXtBDQWItErwev+VRqeju8JsO4Fy1c9bTQFDysZYrIOPwPYU1
	Cek+6u6tyO5Q/G6JVrHyKl7jgCIVvHUIXeTayPt7QXWbp4B45QWgAjA1y0naNvbUnCWF
	YxJQ==
X-Gm-Message-State: APt69E25wOKh4lgo+l9CBuzVH1tYvfqqevglhPsGUYHbh4gEUrr/HryO
	TZvYy1z0bKnhbhrtprq+a7RCgJFyYcWVQMwmzPs=
X-Google-Smtp-Source: AAOMgpebulWbqwVhnWWyEHSJTm596VGltac7wk51h71nlwL4GknBdxQh4NgU9NBFVKrlTshE/mhkNlzI/XjHz1O+QOo=
X-Received: by 2002:aca:3d4:: with SMTP id
	203-v6mr13908433oid.321.1530958634310; 
	Sat, 07 Jul 2018 03:17:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP;
	Sat, 7 Jul 2018 03:17:13 -0700 (PDT)
In-Reply-To: <79b2d102-5cf4-f5ff-1bff-68fe260ffd41@timmedia.de>
References: <79b2d102-5cf4-f5ff-1bff-68fe260ffd41@timmedia.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sat, 7 Jul 2018 12:17:13 +0200
Message-ID: <CANNYZj_ub7Lf2NXPScOY-BMH7G5LRx1zYNTv53h+KjvgUZbVzw@mail.gmail.com>
To: Timm <timm@timmedia.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Building gutenprint recipe
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
X-List-Received-Date: Sat, 07 Jul 2018 10:17:15 -0000
Content-Type: text/plain; charset="UTF-8"

How to do this is specific to each project. Generally, you want the
target recipe to depend on the native recipe (so that the necessary
native tools show up in the target sysroot), and then you need to
study the build system of the upstream component project (makefiles
etc.) to see how it can be instructed to use the tool installed in the
system, instead of building and using it's own version. Then patch the
source code accordingly from the recipe.

Alex

2018-07-07 12:02 GMT+02:00 Timm <timm@timmedia.de>:
> There was a gutenprint recipe back in OE-Classic:
> https://layers.openembedded.org/layerindex/oe-classic/recipe/12076/
>
> But currently there is no gutenprint available for Yocto.
>
> I tried to build my own recipe. But I got stuck at the stage where the
> build process wants to call some generated binaries:
>
>     | ./extract-strings `cat xml-stamp | sed -e
> 's;^;../../../gutenprint-5.2.11/src/xml/;'` > xmli18n-tmp.h.tmp
>     | /lib/ld-linux-armhf.so.3: No such file or directory
>
> So, I introduced a "native" recipe, which just compiles the
> "extract-strings" for me:
>
> ----------------------------------------------------------------------------------------------------------
>
> SECTION = "libs"
> require gutenprint_${PV}.bb
> DEPENDS = "gettext-native"
> inherit native autotools
>
> EXTRA_OECONG = "\
>         --disable-libgutenprintui2 \
>             --disable-samples \
>         --without-gimp2 \
>         --without-doc \
>         --disable-nls \
>         --disable-nls-macos \
>         --without-foomatic \
>         --without-foomatic3 \
>         --disable-escputil \
>         --disable-test \
>         --disable-testpattern \
>         --without-cups \
>                "
>
> do_compile() {
>     oe_runmake -C src/xml/ extract-strings
> }
>
> -----------------------------------------------------------------------------------------------------------------
>
> The next step is quite unclear for me? How can I tell the build system
> not to generate the extract-strings again and use the native instead?
>
> As reference I used the build scripts from openwrt and buildroot. But
> I'm not able to translate this build steps to Yocto.
>
> https://github.com/FranciscoBorges/openwrt-printing-packages/blob/master/net/gutenprint/Makefile
>
> https://github.com/buildroot/buildroot/blob/master/package/gutenprint/gutenprint.mk
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

