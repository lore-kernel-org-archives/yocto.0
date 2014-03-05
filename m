Return-Path: <ratheesh.ksz@gmail.com>
Received: from mail-yh0-f53.google.com (mail-yh0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 224A2E009FD
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 08:15:37 -0800 (PST)
Received: by mail-yh0-f53.google.com with SMTP id v1so1217874yhn.40
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 08:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=38HtvOUGDC8Z63Ft+H2sFQ177a9PUOYNk6ril1UcR08=;
	b=GpqHyKocgwHF/rvT40AXDoxPlGBeQsFlfAOAYAssbaqh535lUXiv9/yVxrvvs0xFyI
	9JqsATO9iFvcRc6dpDz6zxNTn7qsUL/+u8gspOy+RQCZSFZjSrf1mpEvNAKZmBnCrTkx
	esuOog3SqZwZEMKFimjD8HkTIjHeJdWg/0g+WDaklEkIw81hFqbpMqaF9sOtVQXiuD4R
	EtZmMcjs+UBwQYzPIVSzQe8PawTmTD76eYlCrNdYrjJZNVk6hKP/7hDGRsNi7gOaFF+C
	bwgFuZejklfTp7S4dMaSSHMJYGJImtOQ0lZ4qsHzvRX5pKVsmQ/h3LRyJqYFiZzIVMze
	tcaQ==
MIME-Version: 1.0
X-Received: by 10.236.199.82 with SMTP id w58mr7917627yhn.57.1394036136952;
	Wed, 05 Mar 2014 08:15:36 -0800 (PST)
Received: by 10.170.125.23 with HTTP; Wed, 5 Mar 2014 08:15:36 -0800 (PST)
In-Reply-To: <5316ED96.8030403@dynamicdevices.co.uk>
References: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>
	<5316ED96.8030403@dynamicdevices.co.uk>
Date: Wed, 5 Mar 2014 21:45:36 +0530
Message-ID: <CAGZFCEGhHTJam1bjAnOa_s=TAkeZe0-UcWH-1f0QNk5Cr9TaTg@mail.gmail.com>
From: ratheesh kannoth <ratheesh.ksz@gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 05 Mar 2014 16:15:40 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Mar 5, 2014 at 2:55 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
> Ratheesh, I believe you would need to ensure that any static libraries
> built are either removed or packaged appropriately so as not to trigger
> the Q/A error.
>
> One approach is to modify the recipe to add the static library to the
> -staticdev package, i.e. to add
>
> FILES_${PN}-staticdev += " path\to\static\library\libsf_engine.a"
>
> What recipe are you trying to build?
>
> Cheers,
>
> Alex

Alex,
Thanks. I am trying  to compile snort package.  I could easily get
around these problems using  INSANE_SKIP.  But a new problem popped
up. I have compiled  libdnet with out  a SONAME. So snort binary
contains , ( ldd shows ) a full path to the library.  So rootfs build
fails with
following error.

Computing transaction...error: Can't install sf-test-1.0-r0.6@x86_64:
no package provides
/workspace/linux/wrlinux/bitbake_build/tmp/sysroots/intel-x86-64/usr/lib64/libdnet()(64bit)

I can rebuild libdnet with  SONAME ( linker flag ) and solve this
problem  OR  I can put SKIP_FILEDEPS = "1" in  sf  recipe file. But
SKIP_FILEDEPS  will skip every check  in all recipes. I am looking
something similar  option like  INSANE_SKIP_${PN} += "dev-so" ??

-Ratheesh

