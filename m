Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5304.1576078801133816410
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2019 07:40:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I9d32Qvl;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B039DE00F02; Wed, 11 Dec 2019 07:40:00 -0800 (PST)
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
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f41.google.com (mail-qv1-f41.google.com [209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE5ACE00E0D
	for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 07:39:59 -0800 (PST)
Received: by mail-qv1-f41.google.com with SMTP id p2so5893271qvo.10
        for <yocto@yoctoproject.org>; Wed, 11 Dec 2019 07:39:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=bvaXyevt0vF8k9RjI9iLzJxHYh8D79bGKGBf0b2m1To=;
        b=I9d32QvltVapEsUtaWgyF/dGU/XUQoxyxjHxz9iKEKPg1TDcHrKDDyfLvhQbDzOJ5/
         cSnVOSYM0v/xZE6K8KsevxSGnv03t0Q6Zq2+7TVoMokPXv/9LOjbDEgDazNlJOyI6Rgt
         F+12dnGLW87xXv0dcnu8F7BM+F8wxQ0Yy1JHUO4mlews3Z6FXjKRem7XfHqtCjarxVHD
         6GiiIeDqeWlyNZv8RFpsVQhkoKgNW3VMQLr4HHsLU7/7EEVLm5vHiXNIIiNywg0d+M14
         FY+urtva6NebYP0WnpU6rWTm25bdYt8h0S9fnOqotph5sju/b01sIJn/jojXaXkv/L1i
         YIdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=bvaXyevt0vF8k9RjI9iLzJxHYh8D79bGKGBf0b2m1To=;
        b=mol/ZksTorcqDe5mGG6XeHOOD0Z9r6rNydTVALBMG7Jb3EPbZARljRKk8CP8Fy6Q5P
         wOygJXDV5NZ4NGcaNKYVxY5sQJbUr3z8oG27JPRMtk6ckkcPH78+audvOVQxS3VA0YF+
         1AY0ZW01uCM3NcDUqi+tJIo7a1P+pH5HsxADveC6x9wW4RjGLi7xUDTnb61bswUDRMmd
         P2ZYG2lABqysBqGoEV+MMnqYaWW5u37G7hCNmFsDVqfF4E91NSCUJkG0vX/23lISglN2
         KleBKPfMXwbch4RPRKn1GhGwCDaQZ0SErxOVsEJ26AwIieWDLcz3ViSMQTkf5tj0iHXi
         7E9w==
X-Gm-Message-State: APjAAAWvf3Zb3tYEFajMjakSyydHXYX9iOzRfIzxooYaFrWdt2gRpyO9
	qt739JPcqFar8tVB7p5zVvc=
X-Google-Smtp-Source: APXvYqxzWEysa0DpRxN8OMOM6wexf+jxEhN4qNoE5e8ANbJXLLCrYMe4x70HDxoSwijhtvIsmC/0GA==
X-Received: by 2002:a0c:aacc:: with SMTP id g12mr3608495qvb.217.1576078799000;
        Wed, 11 Dec 2019 07:39:59 -0800 (PST)
Received: from linux-uys3 ([206.248.190.95])
        by smtp.gmail.com with ESMTPSA id b7sm761641qkh.106.2019.12.11.07.39.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Dec 2019 07:39:58 -0800 (PST)
Date: Wed, 11 Dec 2019 10:39:55 -0500
From: "Trevor Woerner" <twoerner@gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [yocto] variable and task/function timing
Message-ID: <20191211153955.GA5676@linux-uys3>
References: <20191211071807.GA32639@linux-uys3>
 <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAP71Wjz6BvcW5Ct1o2tHJyzND5ZtYfwMz6Vhmdk7prsbm=27ZA@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2019-12-11 @ 11:06:44 AM, Nicolas Dechesne wrote:
> On Wed, Dec 11, 2019 at 8:18 AM Trevor Woerner <twoerner@gmail.com> wrote:
> >
> > Is there a document, or better yet a diagram, showing the order in which
> > various config files, recipes, tasks, etc are parsed?
> >
> > Figuring out the order of the config files is easy enough (bitbake.conf), but
> > trying to figure out when various other parts are processed is just a guess
> > for me right now.
> 
> well the easiest way to visualize it is to think about all variables
> being in a large array. Each variable (each row) having a different
> 'value' for each 'column' and each column representing a recipe. When
> bitbake references a variable it is always in the context of a given
> recipe, so you are looking at a specific 'column'. Initially this
> array is filled with default values resulting from the parsing of all
> global .conf files, as you noticed the list of conf files and the
> order is set in bitbake.conf (which itself is hardcoded in bitbake,
> and the first file to parse).
>
> then bitbake will parse each recipe, one by one, and update each
> variable's value in that array (in the relevant column). At the end of
> the parsing, you have all variables which are known.
> 
> you can use bitbake -e to print variables value:
> 
> bitbake -e | grep ^MESON_BUILDTYPE
> 
> it will show you the default value (if it is set) outside the context
> of any recipe.
> 
> bitbake -e <bar> | grep ^MESON_BUILDTYPE
> 
> will give you the value of this variable as it is set in <bar> recipe

Ooh, I like this already! Your row/column concept is a good mental map of the
process. Your explanation cleared up the "bitbake -e" vs "bitbake -e <bar>"
case for me too!

> The content of the class is parsed when it is inherited. So you need
> to initialize class variables *before* you inherit the class. e.g.
> 
> MESA_BUILD_TYPE ?= "release"
> ...
> inherit meson
> 
> in your case is very different from
> inherit meson
> ...
> MESA_BUILD_TYPE ?= "release"
> 
> >         +python do_check_build_type() {
> >         +    _buildtype = d.getVar('MESA_BUILD_TYPE')
> >         +    if _buildtype not in ['release', 'debug']:
> >         +        bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
> >         +    if _buildtype == 'debug':
> >         +        d.setVar('MESON_BUILDTYPE', 'debugoptimized')
> >         +        bb.plain("setting meson build type to debugoptimized")
> >         +}
> >         +addtask check_build_type before do_configure
> >         +
> >          EXTRA_OEMESON = " \
> >              -Dshared-glapi=true \
> >              -Dgallium-opencl=disabled \

Whether I move the above to before or after the "inherit meson..." line makes
no difference. Probably because the variable is being set by a task (which, I
assume, is too late to have any effect, which is a large part of why I wrote
this email: when do these tasks get called with respect to how variable are
being set by all the different ways they're being set?)

> You are
> mixing BUILD_TYPE and BUILDTYPE in your email.. maybe you are mixing
> that in your testing as well? What is set in local.conf will be parsed
> first, so if you set a variable there, it will be 'set' when you parse
> the recipe, so when you use ?= it should be a no-op.

Notice, though, that I'm using two different variables:

1) MESA_BUILD_TYPE: which can be set to "debug" or "release"
2) MESON_BUILDTYPE: which can be set to "plain" or "debugoptimized"

MESA_BUILD_TYPE is how the user tweaks the MESON_BUILDTYPE from the mesa
recipe. Given what you've said above, however, I can see now that (as you say)
setting:

	MESON_BUILDTYPE_pn-mesa = ...

in conf/local.conf will do what I want since this variable is recipe-specific
and setting it in one recipe this way won't affect it in others.

I'm sure some will say "there's your solution, do it that way, problem
solved". However, I think "debug/release" are much more natural than
"plain/debugoptimized". I can't change the MESON_BUILDTYPE strings,
they have to be one of those two, so I introduced MESA_BUILD_TYPE as a
level-of-indirection above MESON_BUILDTYPE to allow the user to use the more
natural "debug/release" wording.

So my real question is (and maybe I'm just yak shaving at this point): given
the row/column view of variable setting, how do we factor in the element of
time? For example, *when* do the variables referenced by anonymous python
functions and by tasks get set?

This works (but doesn't allow me the space for nice error checking):

	MESON_BUILDTYPE = "${@bb.utils.contains('MESA_BUILD_TYPE', 'debug', 'debugoptimized', 'plain', d)}"

and this doesn't:

	python do_check_build_type() {
	    _buildtype = d.getVar('MESA_BUILD_TYPE')
	    if _buildtype not in ['release', 'debug']:
	        bb.fatal("unknown build type (%s), please set to either 'release' or 'debug'" % _buildtype)
	    if _buildtype == 'debug':
	        d.setVar('MESON_BUILDTYPE', 'debugoptimized')
	        bb.plain("setting meson build type to debugoptimized")
	}
	addtask check_build_type before do_configure
