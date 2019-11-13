Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD3E4E00E12; Wed, 13 Nov 2019 10:01:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.169 listed in list.dnswl.org]
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com
	[209.85.214.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FFBFE004F6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 10:01:29 -0800 (PST)
Received: by mail-pl1-f169.google.com with SMTP id az9so1375809plb.11
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 10:01:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:user-agent:mime-version:content-transfer-encoding;
	bh=uZ5CZi+9sh1KwEWG4QfexJuUGgRVzEWP16oBzjTnJEQ=;
	b=P6aCkSbSlef1DFA5uskLurfBFMtOnRiDxPtDbqdks2F1nQPaYYC2N9gUrAcr5DtpN/
	1jAmMuLph0/se0xSc3uOuyXCWrilQooOoRB5ejneMrCCgfqtRyQWk4sFcKTIJozhU/26
	4P+FfT/a1319bSFbWLnxRnTdcUT9gpBoRj/u9F4M12vhxjzhDNU93s9OZujVSE5J1ENO
	t4U+ewxPX2hVlnI97YJnGDP76bYjKPKrQDajHDrX9O6avvfeDdgOgzqHbuZpB2Fn/+i3
	3aDJkknIgSTnpX1bh1pMhSnXyT/dBn2eXHW4WLXMN25hGtf9H4cGGKCbxcpSF3eiRpzw
	m/mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:user-agent:mime-version
	:content-transfer-encoding;
	bh=uZ5CZi+9sh1KwEWG4QfexJuUGgRVzEWP16oBzjTnJEQ=;
	b=ED17pmV3DdAdxG/Ffi7QYb8KtXfJUpmAWngxuQX1mjYtQYKOBoj2uR2cMiA+gf52oN
	80nrw2x/6UK9E/GngSugG+68k1vbCOYPEICjIP33DNkmnYzcRprEn9BFRR0jyYYKJMXd
	zPfo6CsXSZf1mdWLugo1igiKUCCFRfJBiFpxegEom4Vbm+xybDcVdGVj8c+4g7W2vt0e
	EwJhgfauTYMIJmNO9Y4HlIL2K8bSoaTfGWShfdZLiP7J5DVekMEkHIt9ueMSMzj5sdHH
	+tMnvgZZVjWT055ecNu4VIjPoTzqziDGYSUgf6HVIX+H7KD5aFiN97jRAF/U20KoFg4G
	B5uA==
X-Gm-Message-State: APjAAAW9Lad0gn6QcAf2XFm5Xp6mv1631fOP9gZJrE7AxCJBzcwOfF6m
	vEDl7cWuKqNpJMznnpamIPE=
X-Google-Smtp-Source: APXvYqyzHgthxIYIosfwuVkG6GL6JYTv2gSoXH8jQSd0RtnjmsPYHqlTKZRYcP+Z8OnHc1uHecYpXw==
X-Received: by 2002:a17:902:8690:: with SMTP id
	g16mr5369187plo.194.1573668088600; 
	Wed, 13 Nov 2019 10:01:28 -0800 (PST)
Received: from apollo ([2601:646:8500:1c20::30e8])
	by smtp.gmail.com with ESMTPSA id
	u24sm3440557pfh.48.2019.11.13.10.01.27
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 13 Nov 2019 10:01:28 -0800 (PST)
Message-ID: <5b6ca06e2be7d9fd7d7859abba0a1772d03312e1.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Mark Hawthorne <markhawthorne172@gmail.com>, Yocto Project
	<yocto@yoctoproject.org>
Date: Wed, 13 Nov 2019 10:01:22 -0800
In-Reply-To: <CAEEV9O0woZBJiU9V1BAiHOUtvzVVG17N7aoky41-tEiy10oLyg@mail.gmail.com>
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
	<20191112214154.GA32308@localhost>
	<CAEEV9O3Qmpg0XJFp=wbRA7ADhCq2ZEMB_bKZ9TMCZf+OrshUbQ@mail.gmail.com>
	<CAMKF1spP__Ofnmo4Xrc9btVBu+=B9LWHJjQuwY5SwgUwUoLXGQ@mail.gmail.com>
	<CAEEV9O2=TTT0EYa9tRQV5o68GL7eR6EF8i6gCZe69pZzHGPN4w@mail.gmail.com>
	<CAEEV9O0jF==rmOmaOrOqtURghUyFZPnoSFgs7daeAhfKU2ohGg@mail.gmail.com>
	<CAMKF1sqOqNxrC_SXnzPHY_Uxs1esvWWT97XifVpke6ni5ckh=A@mail.gmail.com>
	<CAEEV9O3sg8CZUs1HvkpE+LT1B-16K1-R1W284fwMBF4cj5ko-Q@mail.gmail.com>
	<CAEEV9O0woZBJiU9V1BAiHOUtvzVVG17N7aoky41-tEiy10oLyg@mail.gmail.com>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
Subject: Re: pkg-config not found
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
X-List-Received-Date: Wed, 13 Nov 2019 18:01:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-11-13 at 11:43 -0600, Mark Hawthorne wrote:
> I figured out the problem. The call to AX_PTHREAD() was breaking
> PKG_PROG_PKG_CONFIG. I don't understand why, but it works once I
> remove that line.

Swap the order, let PKG_PROG_PKG_CONFIG appear before AX_PTHREAD

> 
> On Tue, Nov 12, 2019 at 8:24 PM Mark Hawthorne <
> markhawthorne172@gmail.com> wrote:
> > I added the lines you suggested and it indicates that PKG_CONFIG is
> > not set. What would cause this to fail in the bitbake environment?
> > It works for other packages such as pixman.
> > 
> > On Tue, Nov 12, 2019 at 6:38 PM Khem Raj <raj.khem@gmail.com>
> > wrote:
> > > On Tue, Nov 12, 2019 at 4:29 PM Mark Hawthorne
> > > <markhawthorne172@gmail.com> wrote:
> > > >
> > > > Khem,
> > > >
> > > > I found a recipe that you made a few years ago where you
> > > addressed this problem:
> > > >
> > > > 
> > > http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-extended/boinc/boinc-client_7.12.bb
> > > >
> > > > You solved it by exporting PKG_CONFIG
> > > >
> > > > export PKG_CONFIG = "${STAGING_BINDIR_NATIVE}/pkg-config"
> > > >
> > > > This seems like it may be the incorrect way to do it and there
> > > needs to be an update in the configure.ac file instead?
> > > 
> > > in configure.ac you can add something like this
> > > 
> > > PKG_PROG_PKG_CONFIG
> > > if test -z "$PKG_CONFIG"; then
> > >   AC_MSG_WARN([Cannot find pkg-config, make sure it is installed
> > > in your PATH])
> > > fi
> > > 
> > > >
> > > > On Tue, Nov 12, 2019 at 4:44 PM Mark Hawthorne <
> > > markhawthorne172@gmail.com> wrote:
> > > >>
> > > >> No, it did not help
> > > >>
> > > >> It appears from the config.log file that the PKG_CONFIG
> > > variable never gets set. I'm sorting through the bbclass files to
> > > figure out why this is not getting set...
> > > >>
> > > >> PKG_CONFIG=''
> > > >> PKG_CONFIG_LIBDIR='/home/mark/Documents/tisdk/build/arago-tmp-
> > > external-arm-toolchain/work/armv7at2hf-neon-linux-
> > > gnueabi/myprogram/1.0-r0/recipe-sysroot/usr/lib/pkgconfig'
> > > >> PKG_CONFIG_PATH='/home/mark/Documents/tisdk/build/arago-tmp-
> > > external-arm-toolchain/work/armv7at2hf-neon-linux-
> > > gnueabi/myprogram/1.0-r0/recipe-
> > > sysroot/usr/lib/pkgconfig:/home/mark/Documents/tisdk/build/arago-
> > > tmp-external-arm-toolchain/work/armv7at2hf-neon-linux-
> > > gnueabi/myprogram/1.0-r0/recipe-sysroot/usr/share/pkgconfig'
> > > >>
> > > >> On Tue, Nov 12, 2019 at 4:22 PM Khem Raj <raj.khem@gmail.com>
> > > wrote:
> > > >>>
> > > >>> On Tue, Nov 12, 2019 at 2:00 PM Mark Hawthorne
> > > >>> <markhawthorne172@gmail.com> wrote:
> > > >>> >
> > > >>> > Thank you. I have fixed this issue but the original pkg-
> > > config error still persists.
> > > >>> >
> > > >>>
> > > >>> do a clean build after above change
> > > >>>
> > > >>> bitbake -ccleanall <your-recipe>
> > > >>> bitbake <your-recipe>
> > > >>>
> > > >>> does that help ?
> > > >>>
> > > >>> > On Tue, Nov 12, 2019 at 3:41 PM Adrian Bunk <bunk@stusta.de
> > > > wrote:
> > > >>> >>
> > > >>> >> On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne
> > > wrote:
> > > >>> >> >...
> > > >>> >> > DEPENDS_${PN} = "libpng freetype glm libegl libgles2
> > > libspatialite"
> > > >>> >> >...
> > > >>> >>
> > > >>> >> DEPENDS, not DEPENDS_${PN}
> > > >>> >>
> > > >>> >> cu
> > > >>> >> Adrian
> > > >>> >>
> > > >>> >> --
> > > >>> >>
> > > >>> >>        "Is there not promise of rain?" Ling Tan asked
> > > suddenly out
> > > >>> >>         of the darkness. There had been need of rain for
> > > many days.
> > > >>> >>        "Only a promise," Lao Er said.
> > > >>> >>                                        Pearl S. Buck -
> > > Dragon Seed
> > > >>> >>
> > > >>> > --
> > > >>> > _______________________________________________
> > > >>> > yocto mailing list
> > > >>> > yocto@yoctoproject.org
> > > >>> > https://lists.yoctoproject.org/listinfo/yocto
> > > >
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto


