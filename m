Return-Path: <ingo.flaschberger@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3E75E00DD1; Tue,  9 Jan 2018 10:28:13 -0800 (PST)
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
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39785E00C78
	for <yocto@yoctoproject.org>; Tue,  9 Jan 2018 10:28:11 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id g1so4371330wmg.2
	for <yocto@yoctoproject.org>; Tue, 09 Jan 2018 10:28:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=G5dDzlqJwYH1X2X5ajinlzimg4CLZvfRnbksGGELERE=;
	b=c51azaQGY3/CF6P+6KVA0Nqmn+Q0UtCV9WHvl8Srfg57n1FIICida0AWLtjCVEzzaQ
	ouy1N2j9VfAPIg2Q7ZXUatL1H59Bc4x1dTps3LjMBEs85z/VTmVWXD1LOrfAjJ9sOyFK
	8Z1d1TF4MX1LcHJAPdw0DPnbU+vg7I0JxjgDfON0P4GNliwOXbgLQbGRpNg8CvOAZT4J
	EMVoJvqJLHIj1InQLv1A4/XfPTBLRskDpCvUdeUA9NFA8+R8MvkIL06HkWGEEb76jTq5
	M3LbUp3ilR4A7fkV0c6+ATMNUMy6MnivOwILngERTp7cyc2rQ4u5l58WqHt89zDmi+1N
	bSNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=G5dDzlqJwYH1X2X5ajinlzimg4CLZvfRnbksGGELERE=;
	b=Oon1if8F2qDCC3cGxVdQBZ8Ctvcu4DPkrMCYPupPE/tp1f1KXhQH61ND3q7mjBw7DH
	TKmNErQuFIvuT856yq4d9dmaSH6vTRlsLVwQbLYI0CSZPinu0Yvyx0yL+4ta3wQxASaf
	agTFSL16FMK0awEO+kMdI3DPb63AYpcQSel9dDoR0hdOtAfBfH42qS1ysxysQameNH0R
	9HyVB/bFtw7V7sf8sJ6FxzFDB61gLeM4gx/aFZ0l7rNLFSnsLY/eS6DHFKCGE8NFNPyd
	QRVUfNdP6717Dd7FklkR3kzCtjK2U72ubxIVYt0zp2D0+ZmQBjHqEBWwir4+EgpIglnV
	4u5w==
X-Gm-Message-State: AKGB3mKEYQR/QXe3kmMX/bRJJu0VUB71w6/sYTTcQ3PePp36v8R6n2mF
	Xg61Npvnax+Nc33YxltccASw6D9Q
X-Google-Smtp-Source: ACJfBotfpdnjI5zU7zKoQwikMtt2Om7b+hy5MnuMxleayvInwxCPtkNgNd4zmPd2A4Wj1Hcaxgabow==
X-Received: by 10.28.66.15 with SMTP id p15mr13528849wma.51.1515522490856;
	Tue, 09 Jan 2018 10:28:10 -0800 (PST)
Received: from [192.168.10.100] (80-110-71-214.cgn.dynamic.surfer.at.
	[80.110.71.214]) by smtp.gmail.com with ESMTPSA id
	o18sm14935100wrg.59.2018.01.09.10.28.09
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Jan 2018 10:28:10 -0800 (PST)
To: Patrick Ohly <patrick.ohly@intel.com>, yocto@yoctoproject.org
References: <1513785034.5979.256.camel@intel.com>
	<20171220155058.8961-1-patrick.ohly@intel.com>
	<8524e767-204b-2e4f-9971-d0c51862de0c@gmail.com>
	<1515517050.6718.15.camel@intel.com>
From: Ingo Flaschberger <ingo.flaschberger@gmail.com>
Message-ID: <4e7d3d4d-12b5-3e5c-94be-084fbbc22daf@gmail.com>
Date: Tue, 9 Jan 2018 19:28:07 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
In-Reply-To: <1515517050.6718.15.camel@intel.com>
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
X-List-Received-Date: Tue, 09 Jan 2018 18:28:13 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: de-AT

Dear Patrick,

it works if you replace:
     manager.add_password(None, parsed_url, parsed_url.username, 
parsed_url.password)
with:
      manager.add_password(None, new_url, parsed_url.username, 
parsed_url.password)

Kind regards,
     Ingo Flaschberger

Am 09.01.2018 um 17:57 schrieb Patrick Ohly:
> On Thu, 2017-12-21 at 00:18 +0100, Ingo Flaschberger wrote:
>> Dear Patrick,
>>
>> this doesn't work:
>>        0162:    """
>>        0163:    parsed_url = urllib.parse.urlsplit(url)
>>        0164:    if parsed_url.username != None:
>>        0165:        # Use the netloc with just the hostname, without
>> username/password.
>>    *** 0166:        parsed_url.netloc = parsed_url.hostname
>>        0167:        # The username/password are installed permanently
>> in
>> the urllib.request module
>>        0168:        # for future use with all URLs beneath url.
>>        0169:        manager =
>> urllib.request.HTTPPasswordMgrWithDefaultRealm()
>>        0170:        manager.add_password(None, parsed_url,
>> parsed_url.username, parsed_url.password)
>> Exception: AttributeError: can't set attribute
> Looks like netloc is a read-only attribute. That means one has to
> construct a new urllib.parse.SplitResult instead of updating the old
> one.
>
>> Using hostname as netloc will also remove an additional portnumber -
>> could this be a problem?
> Yes, that's also something that needs to be fixed.
>
> Can you update the patch as shown below, test it, and it if works send
> the final version to the list? Obviously I am not doing a good job with
> posting code that I can't test :-/
>
> Am 20.12.2017 um 16:50 schrieb Patrick Ohly:
>>> Downloading content and version information via HTTP may need a
>>> username/password for basic authentication. To support this,
>>> SWUPD_VERSION_URL and SWUPD_CONTENT_URL can now contain URLs of the
>>> form http(s)://<user>:<password>@<host>/.
>>>
>>> Original patch from: Ingo Flaschberger <ingo.flaschberger@gmail.com
>>> Signed-off-by: Patrick Ohly <patrick.ohly@intel.com>
>>> ---
>>>    lib/swupd/bundles.py | 26 ++++++++++++++++++++++++--
>>>    1 file changed, 24 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/lib/swupd/bundles.py b/lib/swupd/bundles.py
>>> index e1eec5a..48c7455 100644
>>> --- a/lib/swupd/bundles.py
>>> +++ b/lib/swupd/bundles.py
>>> @@ -5,6 +5,7 @@ import subprocess
>>>    import shutil
>>>    import urllib.request
>>>    import urllib.error
>>> +import urllib.parse
>>>    from bb.utils import export_proxies
>>>    from oe.package_manager import RpmPM
>>>    from oe.package_manager import OpkgPM
>>> @@ -153,6 +154,27 @@ def copy_bundle_contents(d):
>>>        for bndl in bundles:
>>>            stage_empty_bundle(d, bndl)
>>>    
>>> +def handle_plain_auth(url):
>>> +    """
>>> +    Check for special urls with username/password (as in http://us
>>> er:password@host/),
>>> +    extract those and install an auth handler which will provide
>>> them
>>> +    to the HTTP server when needed. Returns the URL that is to be
>>> instead of the original one.
>>> +    """
>>> +    parsed_url = urllib.parse.urlsplit(url)
>>> +    if parsed_url.username != None:
>>> +        # Use the netloc with just the hostname, without
>>> username/password.
>>> +        parsed_url.netloc = parsed_url.hostname
> Instead:
>
> netloc = parsed_url.hostname
> if parsed_url.port is not None:
>      netloc += ":%d" % parsed_url.port
> new_url = urllib.parse.SplitResult(parsed_url.scheme, netloc, parsed_url.path, parsed_url.query, parsed_url.fragment)
>
>>> +        # The username/password are installed permanently in the
>>> urllib.request module
>>> +        # for future use with all URLs beneath url.
>>> +        manager = urllib.request.HTTPPasswordMgrWithDefaultRealm()
>>> +        manager.add_password(None, parsed_url,
>>> parsed_url.username, parsed_url.password)
>>> +        authHandler = urllib.request.HTTPBasicAuthHandler(manager)
>>> +        opener = urllib.request.build_opener(authHandler)
>>> +        urllib.request.install_opener(opener)
>>> +        return urllib.parse.urlunsplit(new_source)
> Instead:
>
> return urllib.parse.urlunsplit(new_url)
>
>


