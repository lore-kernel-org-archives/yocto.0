Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 837B4E00D7C; Wed, 20 Dec 2017 07:50:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f174.google.com (mail-wr0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5496BE00D7C
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 07:50:37 -0800 (PST)
Received: by mail-wr0-f174.google.com with SMTP id l41so10485992wre.11
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 07:50:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=s2roeO8tLJj4pYuyya1kAyiZpXm0fPDzYkZQ4lbwZ1E=;
	b=RXwIjGH66yJAVqYomu7I9wQmvPXDgcL8RitDzqzPC6vLgcheYUUeV3Iq6qtBAB6fsf
	B6AOlvQXRcJYEtPpprdJLE1A/tARHGHD3oatbKMLi3dttIem3PHv3UXy62AigR2c95qR
	BbpwSzPEIuBYW2ZZ0qznAalqOflb/Ix9mC8BRCdpO5q7ExpBT8K9yBhoHbaOXHw0Lun0
	qMxkK3jnLF/rEnIIpEp44CbtiAQBJqKDMjoaa86bID6zrhJ66IqOZsscMcZlK86TCuRj
	p9W2DfMCUhcH6aBX3zARPOuuB9kAcRD3JjY/1g7jg2Y42koh24z7CevKAiNqJ75zqxur
	8idw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=s2roeO8tLJj4pYuyya1kAyiZpXm0fPDzYkZQ4lbwZ1E=;
	b=NEhn/XtDMcC3P6wCHFDqpCXJCoscSVm/ha3rwWoq67I271CS2ve4939qL7PM4dAUDC
	WbTAqigKxnZyiUBog9rPJ6qWaRUIAqx4tbWgcEb6lKMJdEOIqjidfZImrzr4p5zKksfb
	OPLP3v7eUurhO5Aq4IuYaW53D4VlK9I6UvYP8ZFOlestPwA0b+OHx57fZwg9A6EVEq1/
	gcUEYT6ptr8KIf4cEGaHZY7BfnYhpeJfOJBda4EtsOhZg31H0GTvA8uO1oJ3c6xqCTe8
	drAL0x9I1R/CB54qOv4a1gZTxd1m2AX1hJWbWa8PeKtTxpM+KUEdNm2wf3tuUQDwL1fH
	/zSA==
X-Gm-Message-State: AKGB3mIgmXE849DVg7FeyZBInoPNUY5mAf8Rw8fWW9hXVdJDtRS0fDeq
	pmGVjLH6WqLcB0AtRgmJKFJj
X-Google-Smtp-Source: ACJfBouUk9AxvnV6/AcUXTPzxBH9FHJ6/7GLgGXZHgUVVOMzHfJyH3Pfv/wXqjfxi9PQsFK8Whn7Ig==
X-Received: by 10.223.150.108 with SMTP id c41mr8808369wra.119.1513785036394; 
	Wed, 20 Dec 2017 07:50:36 -0800 (PST)
Received: from pohly-mobl1 (p54BD58F7.dip0.t-ipconnect.de. [84.189.88.247])
	by smtp.gmail.com with ESMTPSA id
	i65sm13288260wme.20.2017.12.20.07.50.35
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Wed, 20 Dec 2017 07:50:35 -0800 (PST)
Message-ID: <1513785034.5979.256.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Ingo Flaschberger <ingo.flaschberger@gmail.com>
Date: Wed, 20 Dec 2017 16:50:34 +0100
In-Reply-To: <6ed440d1-6667-bd18-c9e2-58ac1461b571@gmail.com>
References: <edfa3cda-2c3e-d8d0-aeb8-c2ce30931ce4@gmail.com>
	<1490346252.6396.262.camel@intel.com>
	<6ed440d1-6667-bd18-c9e2-58ac1461b571@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd] allow username/password encoded in SWUPD_VERSION_URL and SWUPD_CONTENT_URL
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
X-List-Received-Date: Wed, 20 Dec 2017 15:50:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hello Ingo!

Sorry for the late reply. There were quite a few things in the patch
that needed further discussion, so I kept postponing dealing with it.
That, and I am not sure due to staffing questions whether I am really
supposed to maintain meta-swupd at the moment :-/

Right now I refrain from applying patches to it until that gets
clarified.

On Sat, 2017-03-25 at 21:14 +0100, Ingo Flaschberger wrote:
> requested patch attached

Instead of attaching patches, please use "git send-email" to send the
patch directly. I needs a proper commit message, too:
https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines#Patch_Headers_and_Commit_Messages

> From f2526a7ed47b3f3c8f0cb893eadb5e6981255d4c Mon Sep 17 00:00:00
> 2001
> From: ingo <ingo.flaschberger@gmail.com>
> Date: Sat, 25 Mar 2017 21:13:33 +0100
> Subject: [PATCH] bundles.py: allow username/password encoded into
> HTTP server
>  URLs example: https://user:password@server/path
> 
> ---
>  lib/swupd/bundles.py | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/lib/swupd/bundles.py b/lib/swupd/bundles.py
> index b4c6f49..223fd3c 100644
> --- a/lib/swupd/bundles.py
> +++ b/lib/swupd/bundles.py
> @@ -4,6 +4,8 @@ import subprocess
>  import shutil
>  import urllib.request
>  import urllib.error
> +import urllib.parse
> +import re
>  from bb.utils import export_proxies
>  from oe.package_manager import RpmPM
>  from oe.package_manager import OpkgPM
> @@ -164,6 +166,15 @@ def download_manifests(content_url, version,
> component, to_dir):
>      base_versions = set()
>      if not os.path.exists(target):
>          bb.debug(1, 'Downloading %s -> %s' % (source, target))
> +        parsed_source = urllib.parse.urlsplit(source)
> +        if( parsed_source.username != None):
> +            new_source = ( parsed_source.scheme, re.sub( re.escape(
> parsed_source.username+':'+parsed_source.password+'@'),
> '',parsed_source.netloc), parsed_source.path, parsed_source.query,
> parsed_source.fragment)

Wouldn't it be simpler to do this?
   parsed_source.netloc = parsed_source.hostname

We want the original URL, just with a simpler netloc part. Mucking
around with a regex to achieve that seems overly complicated when
urllib.parse() has already done the parsing for us.

> +            source = urllib.parse.urlunsplit( new_source)
> +            manager =
> urllib.request.HTTPPasswordMgrWithDefaultRealm()
> +            manager.add_password(None, new_source,
> parsed_source.username, parsed_source.password)
> +            authHandler =
> urllib.request.HTTPBasicAuthHandler(manager)
> +            opener = urllib.request.build_opener(authHandler)
> +            urllib.request.install_opener(opener)

This opener gets installed over and over again, each time some URL
derived from content_url is used. Isn't it enough to check content_url
once and then use a simpler version of it for constructing URLs?

>          response = urllib.request.urlopen(source)
>          archive = response.read()
>          bb.utils.mkdirhier(to_dir)
> @@ -228,6 +239,15 @@ def download_old_versions(d):
>      for format in range(3, current_format + 1):
>          try:
>              url = '%s/version/format%d/latest' % (content_url,
> format)
> +            parsed_url = urllib.parse.urlsplit(url)
> +            if( parsed_url.username != None):
> +                new_url = ( parsed_url.scheme, re.sub( re.escape(
> parsed_url.username+':'+parsed_url.password+'@'),
> '',parsed_url.netloc), parsed_url.path, parsed_url.query,
> parsed_url.fragment)
> +                url = urllib.parse.urlunsplit( new_url)
> +                manager =
> urllib.request.HTTPPasswordMgrWithDefaultRealm()
> +                manager.add_password(None, new_url,
> parsed_url.username, parsed_url.password)
> +                authHandler =
> urllib.request.HTTPBasicAuthHandler(manager)
> +                opener = urllib.request.build_opener(authHandler)
> +                urllib.request.install_opener(opener)

Cut-and-paste... this should be in a helper function.

I tried to come up with a cleaner patch that implements the same
behavior. But I don't have a way to test it. Can you perhaps try out
the patch that I will post as a followup?

Note that it applies cleanly only on top of
https://github.com/pohly/meta-swupd/tree/master

You can also check out the patch from
https://github.com/pohly/meta-swupd/tree/basic_auth

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



