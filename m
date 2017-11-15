Return-Path: <otavio.salvador@ossystems.com.br>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E02A8E00CD4; Wed, 15 Nov 2017 12:46:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13744E00C11
	for <yocto@yoctoproject.org>; Wed, 15 Nov 2017 12:46:16 -0800 (PST)
Received: by mail-oi0-f67.google.com with SMTP id a75so11325078oib.1
	for <yocto@yoctoproject.org>; Wed, 15 Nov 2017 12:46:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ossystems-com-br.20150623.gappssmtp.com; s=20150623;
	h=from:mime-version:in-reply-to:references:date:message-id:subject:to
	:cc; bh=5x/urOXMnKEayrzWAVwmWOBcT0+L6jCH8oELDKo6/vE=;
	b=bsJUVnACpUNGl12aINjlmt1JsOpHukKwBd53xtkz23XdiaG4B4bNX+dje06cbKz+P4
	S4LpT3tzZ7ArIRRSUMEZgZMYPyUoO1wechLnEGtckGKa7vuL/q8VRkKmOjZYOZvfWL65
	Ld/WU0OYMNJlcGgUiptXh33/5Wzx3Lb96evIs+hUxXnl98DpPMxht++XOaiFQU8JOxJz
	XaTN32wmejs7SQdE5IKC6vcfj6hl1u4Rdh5uIdLrSngxbgPjkyAKeGaw2uVtraYlb2Io
	Qk/e+GPapefaKGtjxCZOAqo1mO+xRNwI/EaqcMng5JMJTi916mtemjQc39gVh7w5sFWk
	a3oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:mime-version:in-reply-to:references:date
	:message-id:subject:to:cc;
	bh=5x/urOXMnKEayrzWAVwmWOBcT0+L6jCH8oELDKo6/vE=;
	b=uZHzQi3I4rwharctHU/UN8Cubu/aPnMEuFMDiYJhGP9f2mDVTwKd8G7ekR+ssfB5Ma
	8sGhslW2Va8uXQ32WZ6M5A1JOqpmVk2XCfgd9jtcbztPe7JODfdwI/hW7NUzjufga+tV
	aN3rV1f3LWOELFaePzYPUu4MPwqwZk1VqxhJcZ0AYiIM8b99Rw02hvGCi4iO8wGMGF6n
	xkLPqsCRijoLfXFPF/+hXCvNEbK879cOb1i5Jl1wowkI8+ctIDPa0LfIEoeCyPAVZwz7
	NjuhJQwMImic8jZRZ54OXwcbvLkY2Uz/crdfO+wbeRbWl34n5RzJsKvzAaumKW0h/QSe
	5MbA==
X-Gm-Message-State: AJaThX4Ub6FsFkL1qSbTZymrxpyuu+1XhMKnlwXRj0LPodkJDISlKjrm
	s+7aYeZKk9ZjYpVA2VsKZja/WAmy
X-Google-Smtp-Source: AGs4zMaqT46ieYOA6enwVJK4uuQtb9Pt8ukdphgD/cztJDQYVJjyHbDyR1Be8Ib2vjfDILxBDsZo5w==
X-Received: by 10.202.64.130 with SMTP id n124mr9596200oia.202.1510778775725; 
	Wed, 15 Nov 2017 12:46:15 -0800 (PST)
Received: from mail-ot0-f178.google.com (mail-ot0-f178.google.com.
	[74.125.82.178]) by smtp.gmail.com with ESMTPSA id
	g3sm10729103otc.10.2017.11.15.12.46.14 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 15 Nov 2017 12:46:14 -0800 (PST)
From: Otavio Salvador <otavio.salvador@ossystems.com.br>
X-Google-Original-From: Otavio Salvador <otavio@ossystems.com.br>
Received: by mail-ot0-f178.google.com with SMTP id v15so11544034ote.6
	for <yocto@yoctoproject.org>; Wed, 15 Nov 2017 12:46:14 -0800 (PST)
X-Received: by 10.157.41.10 with SMTP id d10mr11555770otb.284.1510778773900;
	Wed, 15 Nov 2017 12:46:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.17.210 with HTTP; Wed, 15 Nov 2017 12:46:13 -0800 (PST)
In-Reply-To: <1510758646-19268-1-git-send-email-martyn.welch@collabora.co.uk>
References: <1510758646-19268-1-git-send-email-martyn.welch@collabora.co.uk>
Date: Wed, 15 Nov 2017 18:46:13 -0200
X-Gmail-Original-Message-ID: <CAP9ODKq5HO3MtsCsJ+3o4cicrQD+9H-=yGf=TjE0i3riy+oK4w@mail.gmail.com>
Message-ID: <CAP9ODKq5HO3MtsCsJ+3o4cicrQD+9H-=yGf=TjE0i3riy+oK4w@mail.gmail.com>
To: Martyn Welch <martyn.welch@collabora.co.uk>
Cc: yocto <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [PATCH v3 1/2] image.bbclass: add prohibited-paths QA test
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
X-List-Received-Date: Wed, 15 Nov 2017 20:46:18 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 15, 2017 at 1:10 PM, Martyn Welch
<martyn.welch@collabora.co.uk> wrote:
> Sometimes we wish to ensure that files or directories are not installed
> somewhere that may prove detrimental to the operation of the system. For
> example, this may be the case if files are placed in a directory that is
> utilised as a mount point at run time, thus making them inaccessible once
> when the mount point is being utilised.
>
> Implement the prohibited paths QA test, which enables such locations to be
> specified in a "PROHIBITED_PATHS" variable. This implementation allows for
> a colon separated list of paths to be provided. Shell style wildcards can
> be used.
>
> Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
> ---
> Changes since v1:
>  - Correcting author and SOB.
>
> Changes since v2:
>  - Reimplemented as image rather than package level QA test.
>  - Changed variable from PROHIBITED_PATH to PROHIBITED_PATHS to better
>    reflect its use.
>
>  meta/classes/image.bbclass | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
> index d93de02..bebb363 100644
> --- a/meta/classes/image.bbclass
> +++ b/meta/classes/image.bbclass
> @@ -296,6 +296,26 @@ python do_image_complete_setscene () {
>  }
>  addtask do_image_complete_setscene
>
> +python image_check_prohibited_paths () {
> +    import glob
> +    from oe.utils import ImageQAFailed
> +
> +    rootfs = d.getVar('IMAGE_ROOTFS')
> +
> +    path = d.getVar('PROHIBITED_PATHS')

path = (d.getVar('PROHIBITED_PATHS') or "")

I'd use IMAGE_QA_PROHIBITED_PATHS as variable name. It makes easier to
know what it relates to.

> +    if path != None and path != "":

If can die.

> +        for p in path.split(':'):
> +            if p[0] != '/':

if not p.startswith('/'):

> +                raise ImageQAFailed("PROHIBITED_PATHS \"%s\" must be an absolute path" % p, image_check_prohibited_paths)
> +
> +            match = glob.glob("%s%s" % (rootfs, p))
> +            if match:

I'd use:

if glob.glob(...):

It is a single use so not sure it is worth the extra variable.

> +                loc = ", ".join(item.replace(rootfs, '') for item in match)
> +                raise ImageQAFailed("Match(es) for PROHIBITED_PATHS \"%s\": %s" % (p, loc), image_check_prohibited_paths)
> +}

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

