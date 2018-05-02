Return-Path: <irving@irving-st.id.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B065CE00A6A; Wed,  2 May 2018 06:53:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AD58E00A1E
	for <yocto@yoctoproject.org>; Wed,  2 May 2018 06:53:31 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id j7-v6so8873874vkc.9
	for <yocto@yoctoproject.org>; Wed, 02 May 2018 06:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=irving-st.id.au; s=googledkim1;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=fqFbymK50kkVF3t+uR0PF9yi+9Xz3QwFrPNmsVH5rbs=;
	b=Lwka+kGcL6iDwzL2W0cTeYw9y2cYt6oiJD2z4vjwQuELJPN9E6q0AI/RzYwnHXE9Xi
	7gbiW42afromm99qPLkw/L6nwxCCK9U6I9oSo9xFX+yg3kupV52swg3MQALbFaLlLE8J
	lMln+exZMsJFvX/Tqi2XZ9p6ZwbgKKlw9CFc8=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ssfivy-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=fqFbymK50kkVF3t+uR0PF9yi+9Xz3QwFrPNmsVH5rbs=;
	b=KPYbmoFnyji+BnyVvZMeE2jGXBqQ9i65aQIHfKaSbh94HGztQR2lgxvAF4vdoKmhy2
	Frk8zg06pB9crCS52OpTw2nAx9Ntg6ksshK3FtMJQqYk6/EHE6xDXwSFOb9qFnAJqOGX
	5IS4e3wGkzcV+6r0b/zBULXkaQZDOSY02SYNwxZPP2TZhlyAPGWBGLvSD3aWbgGa23hh
	P2CMqWA6if9IeSpVmTDwvJDIih9pIT3CqdHn2ALkR1AuRbxOpoLIANrC6EFB+NFqF4gD
	w4eJjKKkkLn8U7KS9fPPBTjwUsS9xJgM7xtcrGoQXgx3FlMfthGyfPyUDIa78v6+GsiA
	bdXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=fqFbymK50kkVF3t+uR0PF9yi+9Xz3QwFrPNmsVH5rbs=;
	b=mePEpojjeewZTz7qBd2R5iBCUX17rbyUO8hZFnsF8R2mvtB1ZI4AoR8XwnyJQA9tYw
	TFij0vQI4SgcHp9S8i0rUeITsB1InaYjh3b/MNvi6wRprp4hmlkNzFnXdmWzjdav/Rz0
	4PyNV8hL8yyNJS9ecOwNdeL287e71Nt9cLI6acw8N6VRH5wavzsf+6lSQOTE8RnmYlI5
	IkzVypAdoZlbm1dR+Cec+i8YE7TNK8Q0jQiCgKnpogQQFAIG9QnG+XNVNKkK4CryCyG4
	BHAz5mArah7qx7hTV0BoE+3yEcg9DAfsTxOO5E2XzULNl4foyKwLQ4LMqI8rMDjcOQXB
	98XQ==
X-Gm-Message-State: ALQs6tDM/bzzrRvLe6J9b28JjYm8iUjREnekNHp2R5VZNGCnFizNOhSx
	T8qNRJQ0BdB3d6BsSegW1/+eMBYEFri4UCaR7mG3N49r
X-Google-Smtp-Source: AB8JxZpieQPNbCRiijYRFJny4M/3h+TZVRjms6U2H1jufiIiluCG7Dt6ICp+BW2grL8PvcJB22vixuxPQ3pWZhrYhEs=
X-Received: by 2002:a1f:9856:: with SMTP id
	a83-v6mr12217430vke.136.1525269210746; 
	Wed, 02 May 2018 06:53:30 -0700 (PDT)
MIME-Version: 1.0
Sender: irving@irving-st.id.au
Received: by 10.103.192.143 with HTTP; Wed, 2 May 2018 06:53:30 -0700 (PDT)
X-Originating-IP: [2001:44b8:3152:ab00:c98c:53a7:fc8a:d3e0]
In-Reply-To: <CAJTo0Lad=PmT4n70SMLu8J29aVnenqOjx_DznVrp2Pwro2ELgQ@mail.gmail.com>
References: <CAN--ZaVOR1dTDJMTJq=8B6bRMfKQ7eJEBie-_hzTRD+cJ8YzCg@mail.gmail.com>
	<30506956.aUxZm2NLWB@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=U15GmkmqcJD-NAAiV+ued8yG9SSEPA-P=VCeo7twFPLA@mail.gmail.com>
	<16228440.x8j5tLIZ7R@peggleto-mobl.ger.corp.intel.com>
	<CAJ86T=UE=B+v9-SOztXRB5j6C_QJudF8bJobnxMCEYB047GdPA@mail.gmail.com>
	<CAJTo0Lad=PmT4n70SMLu8J29aVnenqOjx_DznVrp2Pwro2ELgQ@mail.gmail.com>
From: Irving ST <irving@ssfivy.com>
Date: Wed, 2 May 2018 23:53:30 +1000
X-Google-Sender-Auth: 0jrfPOIv4zGHD2L_U2c1SlvO3tQ
Message-ID: <CAN--ZaU4p09_vVG8WRpCkmR3zm1Fzc3nFuE_PHebtXXnBMdkaw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Avoiding both GPLv3 and meta-gplv2 ?
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
X-List-Received-Date: Wed, 02 May 2018 13:53:34 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, May 2, 2018 at 7:01 PM, Burton, Ross <ross.burton@intel.com> wrote:
> On 2 May 2018 at 01:41, Andre McCurdy <armccurdy@gmail.com> wrote:
>> On Tue, May 1, 2018 at 4:59 PM, Paul Eggleton
>> <paul.eggleton@linux.intel.com> wrote:
>>> On Wednesday, 2 May 2018 11:54:00 AM NZST Andre McCurdy wrote:
>>>> On Tue, May 1, 2018 at 3:10 PM, Paul Eggleton
>>>> <paul.eggleton@linux.intel.com> wrote:
>>>> > On Wednesday, 2 May 2018 12:07:42 AM NZST Burton, Ross wrote:
>>>> >> The make dependencies come from the ptest packages, so if you disable
>>>> >> ptest in your DISTRO_FEATURES then those should disappear.
>>>> >>
>>>> >> Essentially doing a full build without any GPLv3 software *and* not
>>>> >> using old releases which are still GPLv2 is tricky.  I can only
>>>> >> suggest you don't use the meta-gpl2 layer (as you don't want the
>>>> >> recipes to be used) and use bbappends to disable pieces where
>>>> >> required.
>>>> >
>>>> > We probably need some sort of whitepaper on how to do that, it doesn't
>>>> > look like our manuals cover it in sufficient detail. Any volunteers ? ;)
>>>>
>>>> Does "Blacklist GPLv3, don't use meta-gplv2, fix any issues you may
>>>> run into" need a whitepaper? Or is there more to it than that?
>>>
>>> Apart from "disable ptest" as Ross pointed out, I would assume that's all
>>> there is to it - but right now aside from asking here there's really no way
>>> for someone to know that that's the best available way of handling it, so I
>>> think it's worth documenting somewhere.
>>
>> Yes, OK. I hadn't realised ptest is enabled by default in poky (!?!).
>>
>>   http://git.yoctoproject.org/cgit.cgi/meta-yocto/commit/?id=9381b2d2bddf9f67cf57b0718cf99e45805125fa
>
> Poky is primarily a vehicle for testing the Yocto Project software, so
> it follows that it enables ptest for QA purposes.
>
> Ross

Hi all,

Thank you for your help and explanations. Unfortunately just removing
ptest doesn't make it build.
This is the error when I tried bitbake core-image-minimal:

ERROR: Nothing PROVIDES 'readline' (but
/home/irving/srcgit/poky/meta/recipes-devtools/python/python3_3.5.5.bb
DEPENDS on or otherwise requires it)
readline was skipped: it has an incompatible license: GPLv3+
NOTE: Runtime target 'nativesdk-dnf' is unbuildable, removing...
Missing or unbuildable dependency chain was: ['nativesdk-dnf',
'nativesdk-librepo', 'nativesdk-python3', 'python3', 'readline']
NOTE: Runtime target 'nativesdk-packagegroup-sdk-host' is unbuildable,
removing...
Missing or unbuildable dependency chain was:
['nativesdk-packagegroup-sdk-host', 'nativesdk-dnf',
'nativesdk-librepo', 'nativesdk-python3', 'python3', 'readline']
ERROR: Required build target 'core-image-minimal' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-minimal',
'nativesdk-packagegroup-sdk-host', 'nativesdk-dnf',
'nativesdk-librepo', 'nativesdk-python3', 'python3', 'readline']


This is the error when I tried bitbake core-image-base:

ERROR: Nothing PROVIDES 'gdbm' (but
/home/irving/srcgit/poky/meta/recipes-devtools/python/python3_3.5.5.bb,
/home/irving/srcgit/poky/meta/recipes-devtools/perl/perl_5.24.1.bb
DEPENDS on or otherwise requires it)
gdbm was skipped: it has an incompatible license: GPLv3
NOTE: Runtime target 'gdb-cross-canadian-i586' is unbuildable, removing...
Missing or unbuildable dependency chain was:
['gdb-cross-canadian-i586', 'nativesdk-python3', 'python3', 'gdbm']
NOTE: Runtime target 'packagegroup-cross-canadian-qemux86' is
unbuildable, removing...
Missing or unbuildable dependency chain was:
['packagegroup-cross-canadian-qemux86', 'gdb-cross-canadian-i586',
'nativesdk-python3', 'python3', 'gdbm']
ERROR: Required build target 'core-image-base' has no buildable providers.
Missing or unbuildable dependency chain was: ['core-image-base',
'packagegroup-cross-canadian-qemux86', 'gdb-cross-canadian-i586',
'nativesdk-python3', 'python3', 'gdbm']

Since doing this seems trickier than I expected then I might have to
develop with meta-gplv2 for now and revisit this at a later date.

Regards,
Irving

