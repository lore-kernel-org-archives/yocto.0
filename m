Return-Path: <ingo.flaschberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C38A8E00D9E; Wed, 20 Dec 2017 15:18:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ingo.flaschberger[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f52.google.com (mail-wm0-f52.google.com [74.125.82.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 063BAE008FB
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 15:18:23 -0800 (PST)
Received: by mail-wm0-f52.google.com with SMTP id f140so12652313wmd.2
	for <yocto@yoctoproject.org>; Wed, 20 Dec 2017 15:18:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=x42vr/Zc5wODzmcUP5iAmU5m2j3bUVZEAEI4gnvMyxQ=;
	b=K2xeolTo6Rgamp6eesgBzY7FRoya5o/QfFd9ypDfk6046799PeVRtoe73ixa0vfodl
	eDGnv0M3oerfIYm9XMtNvwyankjxWbL3+hlRigpWA96XgWbJIB8ZTHyMSSmvRWGXe0q7
	47Ian5pdjvnW2WuLYS+jtRtwnCyLGIpYsmAiac30mAFDqGnRZsh30shmPd10MwhI/QN5
	+sdj8w5Wn6/GGJvRmC93oogV2DFwdUgbRe++lmaCRbOunGnnl7jI0BIvX9rFNu8MYf0n
	Sw0FT3ZbxVOXC0vPxRhvorlHLwMgnVEv+RB4PkSwsfW4Usxv1dHbNHnZf33BkN0T/nCI
	HK2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=x42vr/Zc5wODzmcUP5iAmU5m2j3bUVZEAEI4gnvMyxQ=;
	b=dtNMDCEOPAllIJ2E8GbOl9wXTQZw9RDUACkLfKh5gsNTS9uWRWi7zKT8VpXem6QJZF
	FztC5Ne5nCebyGJ9xW2tmhedOq4WLcV73JbZtFvqud/YMp5soBA7P4VLl7QBczNHu5zJ
	hB5mWSHpzAJWsbFxbBXgR+YMc6vArF5KX7/y1Y11OiKa2WrgQiNr9iZ3i0gpkOiO9e9o
	6C4lP/mqJCMMAIY6wF/9Nqz8QD2bHilBsiIEMkOx77FMFB1PCBcR6CE17meKIeUNjOrl
	m1z5onwkK0MXxb/nxmV2KwMCE/GwdJQw1SSkW6H8oIW1ufl22h+PXe8eXkOi9ddK53ui
	vhlw==
X-Gm-Message-State: AKGB3mL8D0QuqBA5nGg11YiCZgkDZF9hN3ftQlmF2pB6McyZL1MbVIGk
	iZ/dk9ctvPj4ypWkn4mq7I61dX0J
X-Google-Smtp-Source: ACJfBouwvc5s4nVE4W4x5NdBv1yEl97d+2jfAbKoaCkGEKQt/0BvWHbD071w8HNFTcLaGrvTnKIMKw==
X-Received: by 10.80.164.241 with SMTP id x46mr7484939edb.247.1513811902728;
	Wed, 20 Dec 2017 15:18:22 -0800 (PST)
Received: from [192.168.10.100] (80-110-71-214.cgn.dynamic.surfer.at.
	[80.110.71.214]) by smtp.gmail.com with ESMTPSA id
	r15sm14386169edi.23.2017.12.20.15.18.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 20 Dec 2017 15:18:21 -0800 (PST)
To: Patrick Ohly <patrick.ohly@intel.com>, yocto@yoctoproject.org
References: <1513785034.5979.256.camel@intel.com>
	<20171220155058.8961-1-patrick.ohly@intel.com>
From: Ingo Flaschberger <ingo.flaschberger@gmail.com>
Message-ID: <8524e767-204b-2e4f-9971-d0c51862de0c@gmail.com>
Date: Thu, 21 Dec 2017 00:18:20 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20171220155058.8961-1-patrick.ohly@intel.com>
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
X-List-Received-Date: Wed, 20 Dec 2017 23:18:24 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: de-AT

Dear Patrick,

this doesn't work:
      0162:    """
      0163:    parsed_url = urllib.parse.urlsplit(url)
      0164:    if parsed_url.username != None:
      0165:        # Use the netloc with just the hostname, without 
username/password.
  *** 0166:        parsed_url.netloc = parsed_url.hostname
      0167:        # The username/password are installed permanently in 
the urllib.request module
      0168:        # for future use with all URLs beneath url.
      0169:        manager = 
urllib.request.HTTPPasswordMgrWithDefaultRealm()
      0170:        manager.add_password(None, parsed_url, 
parsed_url.username, parsed_url.password)
Exception: AttributeError: can't set attribute


Using hostname as netloc will also remove an additional portnumber - 
could this be a problem?

Bye,
     Ingo


Am 20.12.2017 um 16:50 schrieb Patrick Ohly:
> Downloading content and version information via HTTP may need a
> username/password for basic authentication. To support this,
> SWUPD_VERSION_URL and SWUPD_CONTENT_URL can now contain URLs of the
> form http(s)://<user>:<password>@<host>/.
>
> Original patch from: Ingo Flaschberger <ingo.flaschberger@gmail.com>
>
> Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
> ---
>   lib/swupd/bundles.py | 26 ++++++++++++++++++++++++--
>   1 file changed, 24 insertions(+), 2 deletions(-)
>
> diff --git a/lib/swupd/bundles.py b/lib/swupd/bundles.py
> index e1eec5a..48c7455 100644
> --- a/lib/swupd/bundles.py
> +++ b/lib/swupd/bundles.py
> @@ -5,6 +5,7 @@ import subprocess
>   import shutil
>   import urllib.request
>   import urllib.error
> +import urllib.parse
>   from bb.utils import export_proxies
>   from oe.package_manager import RpmPM
>   from oe.package_manager import OpkgPM
> @@ -153,6 +154,27 @@ def copy_bundle_contents(d):
>       for bndl in bundles:
>           stage_empty_bundle(d, bndl)
>   
> +def handle_plain_auth(url):
> +    """
> +    Check for special urls with username/password (as in http://user:password@host/),
> +    extract those and install an auth handler which will provide them
> +    to the HTTP server when needed. Returns the URL that is to be instead of the original one.
> +    """
> +    parsed_url = urllib.parse.urlsplit(url)
> +    if parsed_url.username != None:
> +        # Use the netloc with just the hostname, without username/password.
> +        parsed_url.netloc = parsed_url.hostname
> +        # The username/password are installed permanently in the urllib.request module
> +        # for future use with all URLs beneath url.
> +        manager = urllib.request.HTTPPasswordMgrWithDefaultRealm()
> +        manager.add_password(None, parsed_url, parsed_url.username, parsed_url.password)
> +        authHandler = urllib.request.HTTPBasicAuthHandler(manager)
> +        opener = urllib.request.build_opener(authHandler)
> +        urllib.request.install_opener(opener)
> +        return urllib.parse.urlunsplit(new_source)
> +    else:
> +        return url
> +
>   def download_manifests(content_url, version, component, to_dir):
>       """
>       Download one manifest file and recursively all manifests referenced by it.
> @@ -204,8 +226,8 @@ def download_old_versions(d):
>       a normal build and thus is not on the critical path.
>       """
>   
> -    content_url = d.getVar('SWUPD_CONTENT_BUILD_URL', True)
> -    version_url = d.getVar('SWUPD_VERSION_BUILD_URL', True)
> +    content_url = handle_plain_auth(d.getVar('SWUPD_CONTENT_BUILD_URL', True))
> +    version_url = handle_plain_auth(d.getVar('SWUPD_VERSION_BUILD_URL', True))
>       current_format = int(d.getVar('SWUPD_FORMAT', True))
>       deploy_dir = d.getVar('DEPLOY_DIR_SWUPD', True)
>       www_dir = os.path.join(deploy_dir, 'www')


