Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFD02E00A94
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 13:22:42 -0800 (PST)
Received: by mail-ie0-f176.google.com with SMTP id rd18so1758182iec.35
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 13:22:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=SjvgR4tzRVQnC0tfStzLroCqlH4MENpl49d3dZWiKpQ=;
	b=hD0r6Dj+fT4nd5JoDqqEiuy7VBX1qjTGiBSlpg5OXve45trADJonVcVpld86FiFuTW
	9/2O6e3B8tqB8Pkc9xLNmdwJYghQjqGCSuXVZHyL1qumC00e2gPIcIBc9zFTogOliXAv
	xmlFHZdPu8l5p3I6rzUWEknYbRYQWcj6DjXWDkznK0P/dA0YWosvd73ednXpJEQSefV7
	RdzqLNOmKZMweyWMC8DAYe1Ve2nqLPsqPgYc2vZUf/EucXIdIVbMwmoU1vV73RHyQZod
	ZMmJzdgIdYeQFCHgsb+OQov+NgTNqkBkSkAGgLltxo+eW+7+tlYrom6dox8CVFPH2R4y
	q+xQ==
X-Received: by 10.50.43.170 with SMTP id x10mr11778690igl.20.1394054562061;
	Wed, 05 Mar 2014 13:22:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.136 with HTTP; Wed, 5 Mar 2014 13:22:12 -0800 (PST)
In-Reply-To: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>
References: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Mar 2014 13:22:12 -0800
Message-ID: <CAMKF1srG1Ksh+kgzZqChw29QRh2VKc6wSFy3yosyFrJJnvzi3Q@mail.gmail.com>
To: ratheesh kannoth <ratheesh.ksz@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error on building
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
X-List-Received-Date: Wed, 05 Mar 2014 21:22:46 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 5, 2014 at 12:01 AM, ratheesh kannoth
<ratheesh.ksz@gmail.com> wrote:
> ERROR: QA Issue: non -staticdev package contains static .a library:
> sf-test path '/work/x86_64-wrs-linux/sf/1.0-r0/packages-split/sf-test/lib/snort_dynamicengine/libsf_engine.a'

for this you have to adjust packaging FILES_${PN}-staticdev +=
"${base_libdir}/snort_dynamicengine/libsf_engine.a"

> ERROR: QA Issue: sf-test:
> /work/x86_64-wrs-linux/sf/1.0-r0/packages-split/sf-test/lib/snort_dynamicengine/libsf_engine.so.0.0.0
> contains probably-redundant RPATH /usr/lib64

This is a bit harder one, you need to look into build system of sf and
see if it using wrong version of libtool or somesuch
where its not setting up -rpath or -rpath-link or -rpath-dynamic
properly relative to sysroot.

