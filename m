Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2A5FF4C80A73
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2011 16:56:33 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm7 with SMTP id 7so4463869fxm.35
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2011 14:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=7VvojZwYvzZ7ksp/MW3TpTPejZ7NZJI8VOqzpEq41+A=;
	b=b1AgDOFUwtb0unSrnNyMP1nHAQOtqoBzDqXfEsT/NyC1cCeEY97qjNyjSmgVg7vC+/
	o0w/PGNG/BkNo3lhipYbxeL1LveV3b32YXyd+Cun0MSMN4dcGCib6nTeHiaar+ehHaMJ
	LeO+zX2H8TKj6BIdJGr6l2wVPU9ohj7CuOgrs=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=cfRMsW7nTusP3caUUoFp9uvHpXvj7AAZuWFV+ROEElHAQA6QAvYR7TVR9ZPHRMSJ8s
	VIrPlREj93vuRy3pnGQcvZRgo8ycK6rovQCwSKwwpqPfki7ICrBrDr06m6nbNU6Om0lC
	NvRE+gXvmU45dlZBixAdOVImxxxvGmvnox5e8=
MIME-Version: 1.0
Received: by 10.223.106.78 with SMTP id w14mr1937651fao.35.1300139783402; Mon,
	14 Mar 2011 14:56:23 -0700 (PDT)
Received: by 10.223.156.193 with HTTP; Mon, 14 Mar 2011 14:56:23 -0700 (PDT)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA95305E97AD@orsmsx504.amr.corp.intel.com>
References: <AANLkTi=CS=_V1kd+RzzE6xMLmbd2kFt+6uCJb1JLvJmK@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95305E97AD@orsmsx504.amr.corp.intel.com>
Date: Mon, 14 Mar 2011 21:56:23 +0000
Message-ID: <AANLkTikyfLoA4LbHpNYvdHuGkskKdXY6yjS6DhUi57zr@mail.gmail.com>
From: Leon Woestenberg <leon.woestenberg@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Eclipse plug-in does not detect my target
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
X-List-Received-Date: Mon, 14 Mar 2011 21:56:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Jessica,

On Sun, Mar 13, 2011 at 12:55 AM, Zhang, Jessica
<jessica.zhang@intel.com> wrote:
> Leon Woestenberg wrote:
>> built, I wanted to test the Eclipse plug-in. After selecting Poky Tree
>> mode in the Yocto Tool configuration, I could not make it detect the
>> target; the drop down box remained empty.
>>
> Did you run "bitbake meta-ide-support", the eclipse plug-in will detect the
> target architecture based on the environment script file under the toolchain
> root location, e.g. build/tmp/environment-setup-i586-poky-linux.
>
No I didn't. I will continue to work on this end of this week. Thanks,

Regards,
-- 
Leon

