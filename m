Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E215E00D4A; Tue, 25 Jun 2019 10:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0ACDCE00BAF
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 10:51:23 -0700 (PDT)
Received: by mail-qt1-f181.google.com with SMTP id i34so19372758qta.6
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 10:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XrNZb7eQfvVJI+LD26sby5p/5eCCDIRNGhR+gtrXctE=;
	b=L7USgh7mIekHkgvE8Nc5tC8UKjwjZt3Z3AdFRAS0h3QzhOt38rzG7nmhohJdXU3Arg
	cx1SDkUxjpisd+Wlugi5RnCAEUbmLkL9zvLgDrnCUW3jhRv3rWRw63+0BMgMkHn6FLOO
	ON7aJN4pU8m8mYRPS90Sa8X3/x8I0WI3BPjotS+dtOcy1Csz/Q3HHgZQ8tlR6W06SLLP
	AhyeULxqj3CELxYPGvmpkFtsMThQU0HJ31TgLwBsIodhcDlAJ3MFy10gLDitxOTe8Qcu
	6tDgqOtuWt3k5q6yqyBCuqSiBvh2tNwKAew6ibvJzsnj5NzppU2JSg1HI7F9BJ2Vg83r
	Pyrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XrNZb7eQfvVJI+LD26sby5p/5eCCDIRNGhR+gtrXctE=;
	b=N8uKba1ygQzJ487kamS18YvdCtKoUJFbgGt2O3m0IHlc2PZLXorI6BvJERCCRWsO6h
	eEmOgBeKH1pO1z+UTqjRzkq/P7FYERtK0OPrQM++dOY4gstA5y6V2fKoRAL1JkfUwZTe
	QfBaO4IgBZ3ajGo3paf96lkt9c3oSSj/UYjQr8cxNEE3LVru2GtBbG/tVSyBy2+fZ8LK
	i+PMOmcm2sjp4cg0hQrHNIXBr/GIznHmxeez0zrtlCnXI96g19r2x1AsjdPvTkFfaIrx
	A1VP4OHwVSfGhjzo4tLIcjctb0z3JNbfGkpPEHWbGzVws2+NB9CiU0fV5PENCim/JMq+
	5mKg==
X-Gm-Message-State: APjAAAXQHgjzMB2Ndb9NPfT9hGeZpMvTbTQm3dp1W1KZXJLq0Bxz8vZY
	JiF3vxBbkyjRsAi2Y7EOIAK7p5tUMWcfAmwL7/GttQ6Y3x0=
X-Google-Smtp-Source: APXvYqw/oQGWcBX7ryySWZDVYkXHQ3EqooDbvkXJI5uhvndlYOi2FxBTb0rJcN2ozFx2JQeSQy8O/cMeQCSmeAui7Cs=
X-Received: by 2002:ac8:2fce:: with SMTP id m14mr119550266qta.22.1561485083228;
	Tue, 25 Jun 2019 10:51:23 -0700 (PDT)
MIME-Version: 1.0
References: <189257CBB431F1479EBC576E65F28F0C17FF257C@NAEANRFKXM02V.nadsusea.nads.navy.mil>
In-Reply-To: <189257CBB431F1479EBC576E65F28F0C17FF257C@NAEANRFKXM02V.nadsusea.nads.navy.mil>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 25 Jun 2019 19:51:12 +0200
Message-ID: <CAGAf8LxX4Ea-TqDhBT=7jOGmtC5knPoy3q9=6aNG_VZk94z5Mw@mail.gmail.com>
To: "Elliott, Alexander L CIV USN NAVSURFWARCEN DAH VA (USA)"
	<alexander.l.elliott@navy.mil>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto recipe error
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
X-List-Received-Date: Tue, 25 Jun 2019 17:51:24 -0000
Content-Type: text/plain; charset="UTF-8"

 > alexander.l.elliott@navy.mil

One honest advise. Please. use alexander.l.elliott@gmail.com... Much
healthier/relaxed, don't you agree? ;-)

Thank you,
Zoran
_______

On Tue, Jun 25, 2019 at 6:47 PM Elliott, Alexander L CIV USN
NAVSURFWARCEN DAH VA (USA) <alexander.l.elliott@navy.mil> wrote:
>
> Hello,
>
> I am very new to Yocto and having some trouble building a recipe. I am trying to add a pre-built application to my Petalinux project.
>
> Here is my recipe:
> SUMMARY = "Simple evtest application"
> SECTION = "PEALINUX/apps"
> LICENSE = "MIT"
> LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302
>
> SRC_URI = "file://evtest"file://evtest"
>
> S = "${WORKDIR}"
>
> RDEPENDS_${PN} = "libgcc_s.so.1"
>
> do_install() {
> install -d ${D}/${bindir}
> install -m 0755 ${S}/evtest ${D}/${bindir}
> }
>
> I added the RDEPENDS_${PN} = "libgcc_s.so.1" because I got an error that said it depended on it; however, I'm still getting the same error even after adding that line which says:
> "ERROR: Nothing PROVIDES 'libgcc_s.so.1' (but /home/.../evtest.bb DEPENDS on or otherwise requires it)"
> and also I get
> "ERROR: Required build target 'petalinux-user-image' has no buildable providers. Missing or unbuildable dependency chain was : ['petalinux-user-image', 'evtest', 'libgcc_s.so.1']
>
> Thanks for your time,
>
> Alex
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

