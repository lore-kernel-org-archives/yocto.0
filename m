Return-Path: <ratheesh.ksz@gmail.com>
Received: from mail-yk0-f178.google.com (mail-yk0-f178.google.com
	[209.85.160.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85C30E00A42
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 09:03:37 -0800 (PST)
Received: by mail-yk0-f178.google.com with SMTP id 79so3391181ykr.9
	for <yocto@yoctoproject.org>; Wed, 05 Mar 2014 09:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Qxa1byG2ZsanZPkZWFFuBhhdwXPD4/kbrYHIUirqojM=;
	b=beXX/t1UrBbmhaF+4pwLozEWlHPK9LxAmWug3V8qwJP283FgXESRQPLOA0a+1Egvlt
	lY3Fg/BOk9KtkakpfrJsCJ7RgjSlbqzPHu5NYBPSt9rBT3R7Tx5Be/b0NId1mjpuxYdg
	V7pZEPUiY0rjsGpujFCEjTObDMm0cGTk1IOyCo8u84zU3RkwQw5xAsEZcFZdqk/wvJKL
	4UAkQ2lVgOYx73uDPt50x2QtgcF5k9cNWl5spXHdWp1VskgpG5HORhV0aRbDDWybQkL+
	UzC+V8CnbJsweIeOtotpCz72VSJpXhE8g3hPSlKjUbT6lWA0jMB2Jj+UGIwUp+gMGkcF
	b7hA==
MIME-Version: 1.0
X-Received: by 10.236.189.202 with SMTP id c50mr2449467yhn.139.1394039016316; 
	Wed, 05 Mar 2014 09:03:36 -0800 (PST)
Received: by 10.170.125.23 with HTTP; Wed, 5 Mar 2014 09:03:36 -0800 (PST)
In-Reply-To: <53175857.9040702@dynamicdevices.co.uk>
References: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>
	<5316ED96.8030403@dynamicdevices.co.uk>
	<CAGZFCEGhHTJam1bjAnOa_s=TAkeZe0-UcWH-1f0QNk5Cr9TaTg@mail.gmail.com>
	<531752DA.70108@dynamicdevices.co.uk>
	<CAGZFCEE5knYLDPR7WDNdW2Z6JwPoouM_dSfUN563DSxMNdkj7w@mail.gmail.com>
	<53175857.9040702@dynamicdevices.co.uk>
Date: Wed, 5 Mar 2014 22:33:36 +0530
Message-ID: <CAGZFCEEM6ChF0+HNG9dRN9JVnbeH_BXHcc+qCY4psQ3KQo9Kuw@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Mar 2014 17:03:37 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Mar 5, 2014 at 10:31 PM, Alex J Lennon
<ajlennon@dynamicdevices.co.uk> wrote:
>
> On 05/03/2014 16:54, ratheesh kannoth wrote:
>> On Wed, Mar 5, 2014 at 10:07 PM, Alex J Lennon
>> <ajlennon@dynamicdevices.co.uk> wrote:
>>> On 05/03/2014 16:15, ratheesh kannoth wrote:
>>>> On Wed, Mar 5, 2014 at 2:55 PM, Alex J Lennon
>>>> <ajlennon@dynamicdevices.co.uk> wrote:
>>>>> Ratheesh, I believe you would need to ensure that any static libraries
>>>>> built are either removed or packaged appropriately so as not to trigger
>>>>> the Q/A error.
>>>>>
>>>>> One approach is to modify the recipe to add the static library to the
>>>>> -staticdev package, i.e. to add
>>>>>
>>>>> FILES_${PN}-staticdev += " path\to\static\library\libsf_engine.a"
>>>>>
>>>>> What recipe are you trying to build?
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Alex
>>>> Alex,
>>>> Thanks. I am trying  to compile snort package.  I could easily get
>>>> around these problems using  INSANE_SKIP.  But a new problem popped
>>>> up. I have compiled  libdnet with out  a SONAME. So snort binary
>>>> contains , ( ldd shows ) a full path to the library.  So rootfs build
>>>> fails with
>>>> following error.
>>>>
>>>> Computing transaction...error: Can't install sf-test-1.0-r0.6@x86_64:
>>>> no package provides
>>>> /workspace/linux/wrlinux/bitbake_build/tmp/sysroots/intel-x86-64/usr/lib64/libdnet()(64bit)
>>>>
>>>> I can rebuild libdnet with  SONAME ( linker flag ) and solve this
>>>> problem  OR  I can put SKIP_FILEDEPS = "1" in  sf  recipe file. But
>>>> SKIP_FILEDEPS  will skip every check  in all recipes. I am looking
>>>> something similar  option like  INSANE_SKIP_${PN} += "dev-so" ??
>>> That's interesting Ratheesh. Is there a reason for not including the
>>> soname attribute in libdnet?
>>>
>>> I would have thought that in a situation like that where there's no
>>> soname the snort binary shared library path should be fixed up to the
>>> target path, a relative path, rather than an absolute host path?
>>>
>>> Cheers,
>>>
>>> Alex
>>>
>>>> -Ratheesh
>> I removed soname by mistake.
>>
>> I would like to know about workarounds  if such problem comes in yocto. Could u
>> enlighten me
>
> I'm no expert I'm afraid Ratheesh. I try to avoid the workarounds
> as they usually cause me problems down the road, but I'd probably
> look at the same thing as you with INSANE_SKIP_
>
> ...
>
> Hunting around a little it does look as though you can do per-recipe dep
> skips though,
> and indeed per-package skips
>
> http://patches.openembedded.org/patch/43457/
>
>
>> -Ratheesh
>

This wont work. I dont think this patch ever went into pain.

