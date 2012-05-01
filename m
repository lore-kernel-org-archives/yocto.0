Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-gy0-f176.google.com (mail-gy0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3E0CE0030B
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 12:21:01 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so2829306ghb.35
	for <yocto@yoctoproject.org>; Tue, 01 May 2012 12:21:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=kJnb2p+87uxmVL5QiFe40ijh6BcpuWHLBOPdi9ejqXc=;
	b=Ce9/4PyQRhVSzgVAtgo6cU6q0h3PmMu87tnU0KpMxMWAJ9PPLUTOQxTv0Yf7MX24lx
	nyEg7/wJwao0DvcZhKKQkpk4Uxtc91op+dLxXXQvfhj5E2W8iSPGO4fOE67FYLpxAqOK
	+L7Whraqhg3VvwZhbCuXoylZtO0rbdDXUYv33P47Oa4M5kGb/F5kzf93m42a9Zcbe/vm
	9hAK5Gzl8uRn9FMkzk1crnuDT9Q+bzkx0dm7JdWQVfMGAN8SDprSNSkPUHyJb9AuyDQ6
	WiLGWl00dNhDUjorrsTFmMjvD4D/SQeCwBB44aXqbe6vdw7OsO9HKqzLOmKf17tyA6WI
	nXyA==
MIME-Version: 1.0
Received: by 10.68.223.165 with SMTP id qv5mr5754568pbc.31.1335900060502; Tue,
	01 May 2012 12:21:00 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 1 May 2012 12:21:00 -0700 (PDT)
In-Reply-To: <4F9FF7E2.7010308@gmail.com>
References: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
	<4F9FF7E2.7010308@gmail.com>
Date: Tue, 1 May 2012 21:21:00 +0200
Message-ID: <CACW_hTagO1jCa4OSL+VYb=LMXrRh3M2y-9++y0k3hsAvjP0_Yw@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: bsp experiences
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 01 May 2012 19:21:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

2012/5/1 Khem Raj <raj.khem@gmail.com>:
> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA1
>
> On 05/01/2012 07:21 AM, Frans Meulenbroeks wrote:
>
>>
>> Tried to use yocto-bsp with the standard 7.0 setup (where there is
>> a poky-denzil-7.0-build dir adjacent to the soruce dir). yocto-bsp
>> when invoked complained with: IOError: [Errno 2] No such file or
>> directory:
>> '/home/frans/poky-denzil-7.0/scripts/../build/conf/bblayers.conf'
>>
>
> Did you use the environment script (oe-init-build-env) to initialize
> your build env ?
>

Yes.
I used the quick start guide to make sure I did not miss any step.

I did:
    $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/poky-denzil-7.0.tar.bz2
     $ tar xjf poky-denzil-7.0.tar.bz2
     $ source poky-denzil-7.0/oe-init-build-env poky-denzil-7.0-build
as suggested by the manual.

In order to have yocto-bsp work without problem it might have been
better to do something like
source poky-denzil-7.0/oe-init-build-env poky-denzil-7.0/build

Not sure if the yocto-bsp script could be improved or the manual.

Frans

