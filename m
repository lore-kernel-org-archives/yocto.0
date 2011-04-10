Return-Path: <raj.khem@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 9CCD14C80050
	for <yocto@yoctoproject.org>; Sat,  9 Apr 2011 21:13:45 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pwi14 with SMTP id 14so2516074pwi.35
	for <yocto@yoctoproject.org>; Sat, 09 Apr 2011 19:13:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:message-id:date:from:user-agent:mime-version:to
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=DuZYc8hFFOgttWwHI+rJjNqc+GVNp5bE6aRFUeFmmbw=;
	b=UfcnogUfEuOnXVpBOUAEDQY2GPHsbNTdW2hZ47kKA5HMZfOFbkYxpaLo1hAj+lS2Yy
	JWNf4D+Aa9qAeNQKQtimU5TJ5E050hsn8Pp9ugZpsoG6IBlv7opINsduIG3A6XIsldju
	3TQIsWoWLFYMvgx9NDNsQ4Ym3AImjo24nQo7k=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	b=W+mK+0zFcXNIsnsQNNeC/ueZ1rZMdvH6bdc/UaRRkvF2nga6VMt4SAx3qHvNieXDuq
	Ez4Tv5poeKQThnk97J6mE4nbnO5fhOneqB1Wlr87ymoO1t/wrOdf3No3CkreHBo9Ya/k
	K5hayLI1AJBaT3dp2+4Ts6TJJ3J2KEAyq5CgQ=
Received: by 10.142.186.5 with SMTP id j5mr3374558wff.328.1302401624887;
	Sat, 09 Apr 2011 19:13:44 -0700 (PDT)
Received: from [192.168.1.70] (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id s39sm5995853wfc.16.2011.04.09.19.13.42
	(version=SSLv3 cipher=OTHER); Sat, 09 Apr 2011 19:13:43 -0700 (PDT)
Message-ID: <4DA11257.103@gmail.com>
Date: Sat, 09 Apr 2011 19:13:43 -0700
From: Khem Raj <raj.khem@gmail.com>
User-Agent: Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US;
	rv:1.9.2.15) Gecko/20110303 Thunderbird/3.1.9
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <ineroa$hbp$1@dough.gmane.org>
In-Reply-To: <ineroa$hbp$1@dough.gmane.org>
Subject: Re: Change Endianess for MIPS build
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
X-List-Received-Date: Sun, 10 Apr 2011 02:13:45 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 4/5/2011 3:43 AM, Robert Berger wrote:
> Hi,
>
> I was wondering what needs to be done to build (at least) a little
> endian qemu root file system for MIPS.
>
> Yocto builds this:
>
> ELF 32-bit MSB executable, MIPS, MIPS64 version 1 (SYSV), dynamically
> linked (uses shared libs), not stripped
>
> I would need this:
>
> ELF 32-bit LSB executable, MIPS, MIPS64 version 1 (SYSV), dynamically
> linked (uses shared libs), not stripped
>
> I guess SITEINFO_ENDIANESS (endian-big, endian-little) needs to be
> changed to endian-little somewhere.
>
> Can you please point me to where this needs to be done?
>

mipsel is treated as a different machine. Its not supported (yet) in 
oe-core. Its on my todo list unless someone beats me to it. You need
to add machine support and infra support. You can look at classic 
openembedded as reference. Where it is supported.


> ... or maybe I'm completely wrong and it needs to be done elsewhere ...
>
> Regards,
>
> Robert
>
> ..."I'm afraid that I've seen too many people fix bugs by looking at
> debugger output, and that almost inevitably leads to fixing the symptoms
> rather than the underlying problems." --Linus
>
> My public pgp key is available at:
> http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


