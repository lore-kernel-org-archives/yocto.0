Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1412E00A39; Fri, 21 Jul 2017 06:08:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.173 listed in dnsbl.sorbs.net]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E791E0090A
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 06:08:35 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id m88so13616583iod.2
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 06:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=g72XrPLuTwfTyK6+OA4xkgWDSmPLuouBxc+Anc4DFb8=;
	b=YyL9dPi6QrjwKudMZ0FgV3veuFi69Z4rGr9kJk6Z6rASFMQeFZueCzdX5LDbPEHVKY
	DndjZLNmmlpwKEipbjDCx1ms3sVVxCBWD83QOtyAvC4pTvEiX0Lb9G/IyV6lmAfCdkYe
	jS3KZnhQUzBxmUTSJp1T3lk2ribWHD/J4ZCTmDx+NWqah4gvfrFFJa91QeinDABFTyOY
	4DM+bkBKf8EOErWNxqBtxXf9NKI0GTLT0dQ0xic+ZIk0DORLqTVsPLb8GSQXJ5T6kIBk
	qO3zM2htHRVuqSw/xCRVcQSGAp8gacX07EsKre37MCvlT4eJH5NLHdO4zJD2Yr5ChjqU
	IOvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=g72XrPLuTwfTyK6+OA4xkgWDSmPLuouBxc+Anc4DFb8=;
	b=tFaZG0JccxywRB5AHJZiR/KXFYZsfC9VN8dzUs2Jw4FE/SDtULG6FDM0CNcTtUn6R8
	3FKZ0gheI/RQ8Z1gsodjUoye0ZKej6gpsQM2e8gH5zf6nKmRs4l65Lay5lM/6/KP7yJn
	DG2ERUX9LU3gFWRgXKmM+c+dLwawnADryFqrokegD6KSH+gccCZzgugBhInKO/YCfCjE
	EQDookUZrOCQtwhLPvLlDNZ9oxSJjgsiQ/wRFhWGmddFNJ7qW/4stVIJJvFz+gOqnrPN
	nhhV2YeRZ0mFnsDM7mKsFEBAELu3ewbGS7468f8tvhkmRKJZRMa/7n6lzA3a3VibTbuU
	iWwg==
X-Gm-Message-State: AIVw110HDFbDPy35Zojrfoj01OzB1TqgsPs1+A5zxQJoAXcYoDoHH0fr
	XP8VvLuDOuFUOQ==
X-Received: by 10.107.63.214 with SMTP id m205mr6720060ioa.87.1500642514828;
	Fri, 21 Jul 2017 06:08:34 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	r186sm2270192iod.64.2017.07.21.06.08.33
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 21 Jul 2017 06:08:33 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1500642513.30630.1.camel@gmail.com>
To: Florian Doersch <florian.doersch@iis.fraunhofer.de>, 
	yocto@yoctoproject.org
Date: Fri, 21 Jul 2017 08:08:33 -0500
In-Reply-To: <5971A44E.9090106@iis.fraunhofer.de>
References: <5971A44E.9090106@iis.fraunhofer.de>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: correct approach to set up utf-8 locales?
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
X-List-Received-Date: Fri, 21 Jul 2017 13:08:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-07-21 at 08:50 +0200, Florian Doersch wrote:
> Hi,
> 
> I recently trying to set up a raspberry pi with yocto.
> The basic image with meta-raspberrypi works, but I cant get locales 
> working correctly. I always only have "posix" keyboard.
> 
> I tried setting
> 
> GLIBC_GENERATE_LOCALES="de_DE.UTF-8"
> IMAGE_LINGUAS="de-de"
> 
> I also installed the packages
> 
> glibc-utils locales localedef
> 
> into my image, but that seems not to change anything.
> 
> $ locale -a
> 
> does have a "de_DE" (but not the UTF-8 one ...)

I noticed something similar while trying to get locale.aliases to work
(see https://bugzilla.yoctoproject.org/show_bug.cgi?id=11815). I don't
know why the .utf8 suffixes to do not appear, but it might be related
(perhaps some configuration in glibc is incorrect?). Based on a little
bit of testing I did, I think that the utf8 locale might be present as
you can do setlocale(LC_ALL, "de_DE.utf8") in C and it should work (you
might want to check this yourself). Perhaps the locale program just
isn't showing it?


> 
> but its still unset:
> 
> $ locale
> always outputs "POSIX"

I think you would need to set $LANG to actually change the language,
i.e.

$ LANG="de_DE.UTF8" locale

> 
> 
> Also the (usb) keyboard layout does not change.
> 
> What do I have to set so the getty has the correct default language?
> 
> I also have yocto on a zynq board, where I also can't figure out how
> to 
> set the correct locale.
> 
> Thank you very much
> 
> Florian


