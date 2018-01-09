Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B9EAE00DC6; Tue,  9 Jan 2018 08:57:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C13F8E00C78
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 08:57:32 -0800 (PST)
Received: by mail-wr0-f179.google.com with SMTP id w50so5597981wrc.11
	for <yocto@yoctoproject.org>; Tue, 09 Jan 2018 08:57:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:mime-version:content-transfer-encoding;
	bh=v8c/GuKt001SpwlDCYPpSSckP+Jkm5fLbHWrPx2Tv24=;
	b=x8GijtkQW0Q037fFaVUKqeTn45D5zC4sG9eNW/HCU4F9doIY8ZF3keB8cB+THpauYm
	m2OOV5aRxbA/NiJXZnHeAhLLuJKoUe5qx2wOKgLopr8XBEmRmLpllpziPxOv9lxhg7z7
	80I/nx4sVd6TZ9xiShRTuNvRmUDyMHIJwCCUr1wrmZYFKiIKHjsSzx5RL1MtgQrNVRVr
	+cADl43AhHZRil8lN884hrvGwiA7S0eDzAYzm2nv1yj66o9/b8mHvZH+GmUC81BIW/G6
	F0G03FCYOxqeHnKm6bzkMsFteIEUIeq9sI4tqyBqm0i6H+JqQafR/4s8M1JjDi87eWRi
	rySA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=v8c/GuKt001SpwlDCYPpSSckP+Jkm5fLbHWrPx2Tv24=;
	b=dX+Izg4jISFLY/9OsKwYVttD5W9bYfzhlxAg8rasA/VTQF+/T19vdTh/oDCWdO2J8A
	Ihxa5ytSk+YWTvqOe8m5yxuvpcwbG8ncbpLMgV/8Bh0oB0rgLPUCphbHZDgo48qYm5oq
	83aVr7ZE55uyH0e+Y9Hpnd1HBH32YOVv9RJGErFdyNFZaWt1zo0FxPBV6t52HYEbrliz
	Y/jWWgFx4N2Lx7YfhE+SwxSM1HzHn8kO7QhqyKsGKNaeCR0aAIcAihYiWkoUj103Io5P
	+xBcZbVqqsRlHpg7dzIhd9hlsaRMGgrgRxSAa7dBJ/vcw/hL6jlH/6jMcSpg38ZA+MvF
	7J3w==
X-Gm-Message-State: AKGB3mLHQZgyGPm/AbomLRaBCt4QLFybux5Obzb9XxiVAabzv9/pBjC6
	LdakM3W8fsQoaxPO6xhcFFoH
X-Google-Smtp-Source: ACJfBouUxUttDFvRjzF2oZ1gKGVHVretlCbgBa0+xzSxAFHMwAHDxc9ypUg14f9haqFh7ps6EdENLg==
X-Received: by 10.223.139.24 with SMTP id n24mr5831556wra.23.1515517051543;
	Tue, 09 Jan 2018 08:57:31 -0800 (PST)
Received: from pohly-mobl1 (p54BD55C5.dip0.t-ipconnect.de. [84.189.85.197])
	by smtp.gmail.com with ESMTPSA id
	o107sm25731011wrc.63.2018.01.09.08.57.30
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 09 Jan 2018 08:57:30 -0800 (PST)
Message-ID: <1515517050.6718.15.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Ingo Flaschberger <ingo.flaschberger@gmail.com>, yocto@yoctoproject.org
Date: Tue, 09 Jan 2018 17:57:30 +0100
In-Reply-To: <8524e767-204b-2e4f-9971-d0c51862de0c@gmail.com>
References: <1513785034.5979.256.camel@intel.com>
	<20171220155058.8961-1-patrick.ohly@intel.com>
	<8524e767-204b-2e4f-9971-d0c51862de0c@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH 1/1] bundles.py: allow username/password encoded in URLs
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
X-List-Received-Date: Tue, 09 Jan 2018 16:57:34 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-12-21 at 00:18 +0100, Ingo Flaschberger wrote:
> Dear Patrick,
> 
> this doesn't work:
>       0162:    """
>       0163:    parsed_url = urllib.parse.urlsplit(url)
>       0164:    if parsed_url.username != None:
>       0165:        # Use the netloc with just the hostname, without 
> username/password.
>   *** 0166:        parsed_url.netloc = parsed_url.hostname
>       0167:        # The username/password are installed permanently
> in 
> the urllib.request module
>       0168:        # for future use with all URLs beneath url.
>       0169:        manager = 
> urllib.request.HTTPPasswordMgrWithDefaultRealm()
>       0170:        manager.add_password(None, parsed_url, 
> parsed_url.username, parsed_url.password)
> Exception: AttributeError: can't set attribute

Looks like netloc is a read-only attribute. That means one has to
construct a new urllib.parse.SplitResult instead of updating the old
one.

> Using hostname as netloc will also remove an additional portnumber - 
> could this be a problem?

Yes, that's also something that needs to be fixed.

Can you update the patch as shown below, test it, and it if works send
the final version to the list? Obviously I am not doing a good job with
posting code that I can't test :-/

Am 20.12.2017 um 16:50 schrieb Patrick Ohly:
> > Downloading content and version information via HTTP may need a
> > username/password for basic authentication. To support this,
> > SWUPD_VERSION_URL and SWUPD_CONTENT_URL can now contain URLs of the
> > form http(s)://<user>:<password>@<host>/.
> > 
> > Original patch from: Ingo Flaschberger <ingo.flaschberger@gmail.com
> > >
> > 
> > Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
> > ---
> >   lib/swupd/bundles.py | 26 ++++++++++++++++++++++++--
> >   1 file changed, 24 insertions(+), 2 deletions(-)
> > 
> > diff --git a/lib/swupd/bundles.py b/lib/swupd/bundles.py
> > index e1eec5a..48c7455 100644
> > --- a/lib/swupd/bundles.py
> > +++ b/lib/swupd/bundles.py
> > @@ -5,6 +5,7 @@ import subprocess
> >   import shutil
> >   import urllib.request
> >   import urllib.error
> > +import urllib.parse
> >   from bb.utils import export_proxies
> >   from oe.package_manager import RpmPM
> >   from oe.package_manager import OpkgPM
> > @@ -153,6 +154,27 @@ def copy_bundle_contents(d):
> >       for bndl in bundles:
> >           stage_empty_bundle(d, bndl)
> >   
> > +def handle_plain_auth(url):
> > +    """
> > +    Check for special urls with username/password (as in http://us
> > er:password@host/),
> > +    extract those and install an auth handler which will provide
> > them
> > +    to the HTTP server when needed. Returns the URL that is to be
> > instead of the original one.
> > +    """
> > +    parsed_url = urllib.parse.urlsplit(url)
> > +    if parsed_url.username != None:
> > +        # Use the netloc with just the hostname, without
> > username/password.
> > +        parsed_url.netloc = parsed_url.hostname

Instead:

netloc = parsed_url.hostname
if parsed_url.port is not None:
    netloc += ":%d" % parsed_url.port
new_url = urllib.parse.SplitResult(parsed_url.scheme, netloc, parsed_url.path, parsed_url.query, parsed_url.fragment)

> > +        # The username/password are installed permanently in the
> > urllib.request module
> > +        # for future use with all URLs beneath url.
> > +        manager = urllib.request.HTTPPasswordMgrWithDefaultRealm()
> > +        manager.add_password(None, parsed_url,
> > parsed_url.username, parsed_url.password)
> > +        authHandler = urllib.request.HTTPBasicAuthHandler(manager)
> > +        opener = urllib.request.build_opener(authHandler)
> > +        urllib.request.install_opener(opener)
> > +        return urllib.parse.urlunsplit(new_source)

Instead:

return urllib.parse.urlunsplit(new_url)


-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



