Return-Path: <leon.woestenberg@gmail.com>
Received: from mail-fx0-f48.google.com (mail-fx0-f48.google.com
	[209.85.161.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id D680E4C800A0
	for <yocto@yoctoproject.org>; Fri,  1 Apr 2011 11:43:06 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by fxm7 with SMTP id 7so4452804fxm.35
	for <yocto@yoctoproject.org>; Fri, 01 Apr 2011 09:43:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=IqvMZfGOBqtUzJFKfLz3mBQYE86KnEfvAX0s2Ep4m8M=;
	b=QubpubwbLRQjdOzi/Xb32BMnF+AElbl32NhaAHW4XQyjeL9uAidkCEqsH0dHEbqHB2
	NCptxlTxi5+yWO6vNVrnEx6DSw92QJmygkCtDq1Mtvn02ez9QocSaIjX922YF8AjuKB4
	oxmC9g+TJOsxFFLy14gmutwSpSVf0EzfN5QuU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=CBGf9zmQsXD8fitEbGf4yaXXxrJPHHoY1nN1DSDS8dOUPz9WENxRJEzq90Al2EG+ro
	V4FJDh2fW5ufuW1GBHxzRM+EteVV1SJ3/Nc8fw5qaz/0jUU3eh4s8LAS/AoyVaqpdevA
	P8Klos4YfdyB/WKHpwh7q4q4p+Jct49H+2BD8=
MIME-Version: 1.0
Received: by 10.223.97.142 with SMTP id l14mr1614097fan.111.1301676185704;
	Fri, 01 Apr 2011 09:43:05 -0700 (PDT)
Received: by 10.223.156.193 with HTTP; Fri, 1 Apr 2011 09:43:05 -0700 (PDT)
In-Reply-To: <AANLkTikyfLoA4LbHpNYvdHuGkskKdXY6yjS6DhUi57zr@mail.gmail.com>
References: <AANLkTi=CS=_V1kd+RzzE6xMLmbd2kFt+6uCJb1JLvJmK@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA95305E97AD@orsmsx504.amr.corp.intel.com>
	<AANLkTikyfLoA4LbHpNYvdHuGkskKdXY6yjS6DhUi57zr@mail.gmail.com>
Date: Fri, 1 Apr 2011 18:43:05 +0200
Message-ID: <AANLkTinctu1nfEcjnDFDSE51ajQ3i+bPhhS_G+cB8t6+@mail.gmail.com>
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
X-List-Received-Date: Fri, 01 Apr 2011 16:43:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hello Jessica,

On Mon, Mar 14, 2011 at 10:56 PM, Leon Woestenberg
<leon.woestenberg@gmail.com> wrote:
> On Sun, Mar 13, 2011 at 12:55 AM, Zhang, Jessica
> <jessica.zhang@intel.com> wrote:
>> Leon Woestenberg wrote:
>>> built, I wanted to test the Eclipse plug-in. After selecting Poky Tree
>>> mode in the Yocto Tool configuration, I could not make it detect the
>>> target; the drop down box remained empty.
>>>
>> Did you run "bitbake meta-ide-support", the eclipse plug-in will detect the
>> target architecture based on the environment script file under the toolchain
>> root location, e.g. build/tmp/environment-setup-i586-poky-linux.
>>
> No I didn't. I will continue to work on this end of this week. Thanks,
>
Confirmed that worked.

Thanks,
-- 
Leon

