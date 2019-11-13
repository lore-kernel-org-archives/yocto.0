Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32F74E00DFC; Wed, 13 Nov 2019 09:05:50 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87D1DE00DAF
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 09:05:49 -0800 (PST)
Received: by mail-pl1-f194.google.com with SMTP id w8so1321902plq.5
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 09:05:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:user-agent:mime-version:content-transfer-encoding;
	bh=wPdCgi70wEz24r98jgqISr3Q506VKg0DJCXXPJFl65w=;
	b=ZMn0L00L7GUv+XN2KLAtIxKP1zDDtHPD06dUCmSwOwIlfBdK+aJcjL1hAPQBJaeetL
	WgmHuPzb/QDArluZ5rqLqLb629Zo+euFZs9cweDdHSa6dn2QEgrNKGGcacFXHprKn8rj
	iC7tbTdPwMGrK7kf6Z0AjsXOgy2/WHdtHaLEh2M9/HVKe8u9y19yF/jNily3JqDMynHR
	nx8gmMPOqD/wdCWNrhkhxVhZ/d/TUfcmfiDIKACPuu82dFp1AGoNwzJemfCocquQ8XPJ
	ARUJECwh6h2LFQZUimH8JIogwcQYGdi7yGVRgj9JDDTXy4zT8IMOJZSN+4MMHgmXPN4d
	BLSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:user-agent:mime-version
	:content-transfer-encoding;
	bh=wPdCgi70wEz24r98jgqISr3Q506VKg0DJCXXPJFl65w=;
	b=mlakBIHnPZiQIpvmxmVIQ4rdGrXvvs/3Z3S2Uvv1wkQER07QUAsUvg4M9JLFTIa1r5
	Ppx3yx7/GoqfpJ9MuPJzyMhmzFrG3QAZZ6CfRv9AvL/6Vd9s9c4DcjJqMRteGbQL2jIu
	uCcmCz0r3YDllvtML6fF/M+RzD1yT3RKLndhvnBLvCWTouxL+WHqGO9nRkV9f8b/CgcF
	Px5qX7RO9At+8KcPjndaJmywzRFi1duvUccvSApg8I7zYyYRa59gJt8tr6ppx8ApbuKi
	sKv0P+TA4KLnU4Oise2CeUUw1Eryo9DbYVfJ8mPiduNrmaPoGH9A6xq+coIfVJNRRNvP
	HRBA==
X-Gm-Message-State: APjAAAUpkqR4zAo8594eJqbtFFuFcG4Rq1OfyNDjllQu9lgH9XrAtQL8
	NhtEtrtlSRzsDfigZHKZV77d0wnjew0=
X-Google-Smtp-Source: APXvYqwocnzY/sYWQzOXaIRucGVXBnQ50cT47WQoL9YvojfIn+6r/ERElO8NCxoTA1RbQtrWOJ20lg==
X-Received: by 2002:a17:902:8692:: with SMTP id
	g18mr4980903plo.39.1573664748479; 
	Wed, 13 Nov 2019 09:05:48 -0800 (PST)
Received: from apollo ([2601:646:8500:1c20::30e8])
	by smtp.gmail.com with ESMTPSA id
	a25sm3357021pff.50.2019.11.13.09.05.47
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Wed, 13 Nov 2019 09:05:48 -0800 (PST)
Message-ID: <209718cf01e176ba2e1ec5c57fafa8c99eacaf91.camel@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Matt Schepers <mschepers@telspandata.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Wed, 13 Nov 2019 09:05:42 -0800
In-Reply-To: <DM6PR16MB266559B45615FC4236E9561CB0760@DM6PR16MB2665.namprd16.prod.outlook.com>
References: <DM6PR16MB266559B45615FC4236E9561CB0760@DM6PR16MB2665.namprd16.prod.outlook.com>
Organization: HIMVIS LLC
User-Agent: Evolution 3.34.1 
MIME-Version: 1.0
Subject: Re: bitbake <image> -c populate_sdk generates locale error
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
X-List-Received-Date: Wed, 13 Nov 2019 17:05:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2019-11-13 at 16:12 +0000, Matt Schepers wrote:
> Hi,
> 
> When I run 'bitbake <image> -c populate_sdk' I get an error about the
> locale not being found. I have tried setting the locale in local.conf
> but that didn't seem to help. The odd thing is that 'bitbake <image>'
> works just fine.
> 
> Respectfully,
> Matt Schepers
> 
> ERROR: telspan-dh3-1.0-r0 do_populate_sdk: Error executing a python
> function in exec_python_func() autogenerated:
> 
> The stack trace of python calls that resulted in this
> exception/failure was:
> File: 'exec_python_func() autogenerated', lineno: 2, function:
> <module>
>      0001:
>  *** 0002:do_populate_sdk(d)
>      0003:
> File:
> '/home/mschepers/dh3_yocto/yocto/build/../meta/poky/meta/classes/popu
> late_sdk_base.bbclass', lineno: 152, function: do_populate_sdk
>      0148:
>      0149:    populate_sdk(d)
>      0150:
>      0151:fakeroot python do_populate_sdk() {
>  *** 0152:    populate_sdk_common(d)
>      0153:}
>      0154:SSTATETASKS += "do_populate_sdk"
>      0155:SSTATE_SKIP_CREATION_task-populate-sdk = '1'
>      0156:do_populate_sdk[cleandirs] = "${SDKDEPLOYDIR}"
>      ....
>      ....
>      ....
> File:
> '/home/mschepers/dh3_yocto/yocto/build/../meta/poky/meta/lib/oe/sdk.p
> y', lineno: 45, function: generate_locale_archive
>      0041:    # Need to set this so cross-localedef knows where the
> archive is
>      0042:    env = dict(os.environ)
>      0043:    env["LOCALEARCHIVE"] = oe.path.join(localedir, "locale-
> archive")
>      0044:
>  *** 0045:    for name in os.listdir(localedir):
>      0046:        path = os.path.join(localedir, name)
>      0047:        if os.path.isdir(path):
>      0048:            try:
>      0049:                cmd = ["cross-localedef", "--verbose"]
> Exception: FileNotFoundError: [Errno 2] No such file or directory:
> '/home/mschepers/dh3_yocto/yocto/build/tmp/work/dh3a10-poky-linux-
> gnueabi/telspan-dh3/1.0-r0/sdk/image/opt/poky/2.5.2/sysroots/x86_64-
> telspan-linux/usr/lib/locale'
> 

this means the locales on sdk host are not installed properly, so
perhaps just renstalling locales on SDK host might help. since you seem
to be on 2.5 release check if you have nativesdk-glibc recipe
available, if you do then perhaps adding something like 

SDK_DEPENDS += "nativesdk-glibc-locale"

in local.conf or preferably meta/classes/populate_sdk_base.bbclass
might help. But I must also note that a bit of work has gone into SDK
host locale issue since 2.5 release so you might have to do a bit of
digging to see needed patches to get it going on 2.5

> ERROR: telspan-dh3-1.0-r0 do_populate_sdk: Function failed:
> do_populate_sdk
> ERROR: Logfile of failure stored in:
> /home/mschepers/dh3_yocto/yocto/build/tmp/work/dh3a10-poky-linux-
> gnueabi/telspan-dh3/1.0-r0/temp/log.do_populate_sdk.27826
> ERROR: Task (/home/mschepers/dh3_yocto/yocto/build/../meta/meta-
> telspan/recipes-core/images/telspan-dh3.bb:do_populate_sdk) failed
> with exit code '1'


