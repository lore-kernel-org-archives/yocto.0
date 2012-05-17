Return-Path: <gizero@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9133E00746
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 12:34:46 -0700 (PDT)
Received: by qcsc21 with SMTP id c21so2002409qcs.35
	for <yocto@yoctoproject.org>; Thu, 17 May 2012 12:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=aciYh60XH0mJlIZUKBbuoO/pEKVVtOl1dQjRB5j+0N0=;
	b=tdNC0ja1cpsQSokACOpDfwXofPnQe8zpgCqC9ldqbqg0uoHvl6r0HB6C32oCVTfx1N
	cF52qwyeMdB0evrIEeLqM+2B6GO53CFvbNQLhN5NcGnBNgg+YFOG45FmPOy6wZzFtMHq
	vvCJzTdEJLl9wKs/kcmOmzd5fSiO7XbCMqO3J5NJaZd3jDL/YqpDiZ6gGjXPw+l9coFP
	qBfjM4CrjVTqO7I6eI8o9UYA8eyswVKAgYVXgpIVet0Tp3G9NZIRK0K9+Yq92CHldtNZ
	NKbwvH9eP73FczBn5NJ1yhbw4CtpmT92gahKaOI0LBCeCdT0W8FjmPF/s8x/EMpPDklf
	eM5A==
MIME-Version: 1.0
Received: by 10.224.176.148 with SMTP id be20mr18546004qab.64.1337283285950;
	Thu, 17 May 2012 12:34:45 -0700 (PDT)
Received: by 10.229.249.137 with HTTP; Thu, 17 May 2012 12:34:45 -0700 (PDT)
In-Reply-To: <4FB53CF1.7090504@linux.intel.com>
References: <CAC+thW11WFJcsJifYnzO3gQRivaCGjk_H+-kcMMQk+Weh4TcLg@mail.gmail.com>
	<4FB53CF1.7090504@linux.intel.com>
Date: Thu, 17 May 2012 21:34:45 +0200
Message-ID: <CAC+thW1-ir4bmjFn56h3mgCxi5=HQW64zOswZrbSigkzGnRVSA@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: Joshua Lock <josh@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: meta-toolchain-sdk fails in edison with package_ipk
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
X-List-Received-Date: Thu, 17 May 2012 19:34:47 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Joshua,

On Thu, May 17, 2012 at 8:01 PM, Joshua Lock <josh@linux.intel.com> wrote:
> Hello Andrea,
>
>
> On 17/05/12 01:21, Andrea Galbusera wrote:
>>
>> Hello,
>> Is there any known problem when building meta-toolchain-sdk target
>> with PACKAGE_CLASSES = "package_ipk" ?
>>
>> I have deterministic failure in do_populate_sdk with latest edison
>> metadata and default local.conf (other than changing PACKAGE_CLASSES
>> to ipk).
>> Don't have a denzil tree at hand, but I'm going to check if this is
>> reproducible with 1.2 too.
>>
>> To me it seem the failing task is trying to access host files on my
>> build system. Here is the first error I can see:
>>
>>> Installing libtelepathy-dbg (0.3.3-r3) to root...
>>> Downloading
>>> file:/scratch/gizero/edison-build-raid.orig/tmp/deploy/ipk/i586/libtelepathy-dbg_0.3.3-r3_i586.ipk.
>>> touch: cannot touch `/etc/shells': Permission denied
>>> mkdir: cannot create directory `/var/lib/opkg/alternatives': Permission
>>> denied
>>
>>
>> Here you can see the full log (few lines stripped to satisfy pastebin
>> size limits...):
>>
>> http://pastebin.com/Gim3DacX
>>
>> Build works when I switch to rpm instead of ipk, but I want ipk for my
>> target and, at moment, I need to switch back and forth the two formats
>> when I need to update either my images or my sdk. Is there a smarter
>> way to stay with rpm for the sdk and with ipk for the target images?
>
>
> I've discovered that this is fixed in Denzil

Thank you for your investigation! I ran out of time and could not test
with denzil today, but you anticipated results... ;-)

> https://bugzilla.yoctoproject.org/show_bug.cgi?id=1869
>
> http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=c4de612298266653130dd2e5b8378f62dda77e9f
>
> I tested here and can report that the issue is resolved with that patch
> applied.
>
> This patch has been applied to my josh/edison branch of the poky-contrib
> repository and should make it into the main edison branch, and a point
> release, in the near future.
>
> Thanks for the report,

Glad to hear edison too will benefit of the fix! I noticed another
strange behavior while experimenting with different configurations of
PACKAGE_CLASSES: but I'd prefer repeating my tests before reporting
issues.

Andrea

