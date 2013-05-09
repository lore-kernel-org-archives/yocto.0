Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f169.google.com (mail-vc0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1911E00497
	for <yocto@yoctoproject.org>; Thu,  9 May 2013 09:00:18 -0700 (PDT)
Received: by mail-vc0-f169.google.com with SMTP id gd11so2810189vcb.14
	for <yocto@yoctoproject.org>; Thu, 09 May 2013 09:00:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=LiMH8+C24QYsH9hMrY0GE7mtDvjtHYaJFRuytokxVcY=;
	b=Lc2tSbMYIp6K4VdcAiOSADHed43DIZR3Ne+5pmV3GaJHz4MN6Q8I5yLyQ08bMmaw62
	bTQRfShiZvFvzp0SuX9wUBepLWmstCvTI8agehr0jR07xhiNQJgKYLviOXBwM3fkasBr
	+zaJ1vpIS1sXbd7Rk+4P4IioHW3GX9a7YSwvq9xxqydYUFbLwcVineENqFm0ZluUxNHZ
	fUr8tl3ZIgkX1K7/NYBn2vGg4EUXK+A2VmyNkFZClg9PwxvngVp7UzCxdM7CaYX/mLPY
	qGJ0MtpkMaY44ePS/jemfob8xTsJ0AUIhAHTP239B5IEAS116pOY37HgKV5YYtf+GmC/
	gDlA==
X-Received: by 10.58.15.193 with SMTP id z1mr8332057vec.40.1368115218064; Thu,
	09 May 2013 09:00:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Thu, 9 May 2013 08:59:57 -0700 (PDT)
In-Reply-To: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
References: <CANwz6nzLfczXdCZ6pXRKWqenoJ_cB=cjUTuasPeZfim+Kn2zyA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 May 2013 16:59:57 +0100
Message-ID: <CAJTo0LYJQkV=B7uTxW=pkd--VHX7VjdA4ST2q1JMVNsSVuKcQw@mail.gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
X-Gm-Message-State: ALoCoQkkOlVY0JRZN+BOPZvwWYvPwuVAx+mo3jB+w6fEGpxOjkm+Mpkk1lvCtUH3Z2uYWR0wfqBR
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe gsl-1.15
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
X-List-Received-Date: Thu, 09 May 2013 16:00:19 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

On 9 May 2013 16:48, Edward Vidal <vidal.develone@gmail.com> wrote:
> I am trying to write the recipe to add gsl-1.15 to core-image-sato.
>
> First I did mdkir poky/meta/recipes-support/gsl
>
> Is this the correct location for this recipe?

It's a perfectly valid location.  The recipes folders have no defined
structure, you can arrange them as you want.

[snip]

> Any and all help will be appreciated.

You didn't actually say what the problem is.  I presume it's the error
you're getting about your license checksum.  Well, your md5sum command
is checksumming the entire file, and your LIC_FILES_CHKSUM is
checksumming a single line of the file, so I expect them to be
different.

Is the NEWS file the only place that says the license is GPLv3?  The
NEWS file should change with every release, so it's better to use a
top-level license file or a fragment from a source file instead.

Ross

