Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4749.1581170530001529908
 for <yocto@lists.yoctoproject.org>;
 Sat, 08 Feb 2020 06:02:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qevq2zfp;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jonatan.p@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83147E016EC; Sat,  8 Feb 2020 06:02:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jonatan.p[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com [209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4A21E015FA
	for <yocto@yoctoproject.org>; Sat,  8 Feb 2020 06:02:08 -0800 (PST)
Received: by mail-io1-f44.google.com with SMTP id c16so2695384ioh.6
        for <yocto@yoctoproject.org>; Sat, 08 Feb 2020 06:02:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PLcyBc5HutoJc3Um/ovqxeKkUKrimb6qDspFL0Rv4VU=;
        b=Qevq2zfpDsAQfjHGf3RhpZjuYtTqib+8Qv8j4ZIP9i4XD/5tktcBqmpjB4KaO22Wt1
         8nQaYlmM2s7iqpGc8JkqgMzZyqxZvr/3KP/Wk7Vf5NJdUeTD9rHbWkKow2RnmVHxRNJ6
         6bfsYhzMhl2X/OXgP+ZrgdO+bm+vwC4EMOUL7uGFsjZAtQlue82C7WiGw1lfG9Hcvlct
         7F8Vk3MdeRYmyxGxScns28PBYjVeKQM6yjBHxwtlpSFpEMuSkan218fu5c2WcyX1pXEc
         3ofVtnOOk7Kw/kd+gUppweaydbdgTyFeqxs3oVlI340/1cpc/ERBsbjy4FwlpswVUckW
         wbHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PLcyBc5HutoJc3Um/ovqxeKkUKrimb6qDspFL0Rv4VU=;
        b=ElaSMEXyYGVq5Ad3u2baoD7MyipKYP+m3yJc2RgtuLvUUZGnioY8UexcDZbHxv/kri
         k/G5w3nMssihq+CM9csyc1qEJsTE6LVpFM7zEWQkWhiQRQMgDLWffB6iE+JU5HzeK4PK
         0/UwJHEe2UsPgYoCUG2vpsBuo3wlp5E5vakc1yAMCnDna3LT88W7lkgqGxJhGl7GOuWd
         x2SOWuHQTZVlgVEES8wZ8ZCu93iqoOIcMJZIDgw27Ig0xh/RieWCjaviGD9TVZpcPR/D
         JgHUDa3LccxFLwybNZ2fFugbmufEIPGH0j5argdIJwRpwhFYVcNOuWApiGfx30z6m+WL
         8I9g==
X-Gm-Message-State: APjAAAWNk/T6DAyJjPh+4TD6x4x2cgwBcVLegIZ9Vree5uJRvfHByvEF
	kLoNnr7FaB7BPGU+GU8/Ti/uZrWWWOQHIGIaLDyE9bbYTp4=
X-Google-Smtp-Source: APXvYqwmeKS1Dy/S6Yc6Vjox6NlpgkUYt7+ATr8khmWCJeo4FSYvz62AqrbFEn9BcWv0qZ70m0XGqsRGESwtQJqc438=
X-Received: by 2002:a6b:4e13:: with SMTP id c19mr2675895iob.58.1581170528237;
 Sat, 08 Feb 2020 06:02:08 -0800 (PST)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2002080611100.2136874@localhost.localdomain> <CAMjhiJh7Q7NNhw_LnTOr86mOEtBz2K7rGBHvCPYxCV7vm=YYBQ@mail.gmail.com>
In-Reply-To: <CAMjhiJh7Q7NNhw_LnTOr86mOEtBz2K7rGBHvCPYxCV7vm=YYBQ@mail.gmail.com>
From: =?UTF-8?B?Sm9uYXRhbiBQw6Vsc3Nvbg==?= <jonatan.p@gmail.com>
Date: Sat, 8 Feb 2020 15:01:44 +0100
Message-ID: <CAKm+giNpqiOwQfjtAwnmqF_6kXOgb4Re11UT90A9cKmdo6w=TQ@mail.gmail.com>
Subject: Re: [yocto] clarifying "PROVIDES =" versus "PROVIDES +=" (pedantic stuff)
To: Leon Woestenberg <leon@sidebranch.com>
Cc: "rpjday@crashcourse.ca" <rpjday@crashcourse.ca>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Robert & Leon,

> So I think it might be harmful to replace it with "=", as it would no
> longer provide libpcre.

I had a look at the variable expansions bitbake -e. Here are two
examples. The vim recipe uses "PROVIDES = xxd" (which would cause
weird effects if = simply overwrote any existing ${PN} value), and the
libpcre2 recipe uses "PROVIDES += pcre2", as already mentioned.

vim:
# $PROVIDES [4 operations]
#   set ... /poky/meta/conf/bitbake.conf:275
#     ""
#   _prepend ... /poky/meta/conf/bitbake.conf:276
#     "${PN} "
#   set ... /poky/meta/conf/documentation.conf:335
#     [doc] "A list of aliases that a recipe also provides. ... SNIP ...
#   set ... /poky/meta/recipes-support/vim/vim_8.2.bb:3
#     "xxd"
# pre-expansion value:
#   "${PN} xxd"
PROVIDES="vim xxd"

libpcre2:
# $PROVIDES [4 operations]
#   set ... /poky/meta/conf/bitbake.conf:275
#     ""
#   _prepend ... /poky/meta/conf/bitbake.conf:276
#     "${PN} "
#   set ... /poky/meta/conf/documentation.conf:335
#     [doc] "A list of aliases that a recipe also provides. ... SNIP ....
#   append ... /poky/meta/recipes-support/libpcre/libpcre2_10.33.bb:24
#     "pcre2"
# pre-expansion value:
#   "${PN}  pcre2"
PROVIDES="libpcre2  pcre2"

My understanding is that ${PN} is always _prepend'ed to PROVIDES, and
due to evaluation order of the different assignment operators,
_prepend will be executed *after* = and +=. This means both
assignments are "harmless". += will give you an extra space though.
See the bottom example here:
https://www.yoctoproject.org/docs/3.1/bitbake-user-manual/bitbake-user-manual.html#variable-interaction-worked-examples

Cheers,
Jonatan
