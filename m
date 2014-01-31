Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f174.google.com (mail-qc0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D3C0E004D9
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 03:56:48 -0800 (PST)
Received: by mail-qc0-f174.google.com with SMTP id x13so6847979qcv.33
	for <yocto@yoctoproject.org>; Fri, 31 Jan 2014 03:56:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bDSOVyDWQbVe+5uO6FB5nm5MeEo3AA7c6sbg2+LLek0=;
	b=cSXEQ3W+N8q6RmZqwWAKol3Sj7tmamnMGccxIOVEX5DBB8vwGULpXKYwsp/3mEasbP
	fEz5SKsF1p9arNgUB9g7oEp0JLnLCPULZik8Bh/tOEAIUZPjWrgeGWjR/3gQ9fi3dKRm
	jYGncNHYsIlwhN5JCk/JSC0tPuUy8Og7pMMwGJ6ojDsATgXFUL3qqseinkcn0rq9yUJ/
	zJHoILmgVykIjBuIQuMuldoRpANTe1z3aPInQCY6L7of7G+LiVBdHueBfn7XGK3jUDm9
	Euue7D46iJZW96SDrfZjqk0T+lFBP0uiuxLhH/B9ibNi7XaVN0b7M4HR6BR/3TE6xeia
	AskQ==
X-Gm-Message-State: ALoCoQnbjWR4m6eI+LyRm+1WDAlUppSUUR37e/DwyrYBLdWsPq5/MQGfRs+N5rTAhz7i15RWahDD
X-Received: by 10.224.43.144 with SMTP id w16mr30963576qae.93.1391169408069;
	Fri, 31 Jan 2014 03:56:48 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Fri, 31 Jan 2014 03:56:28 -0800 (PST)
In-Reply-To: <05301278-AC33-4DBC-A381-DE2F5CB1E73B@padamj.com>
References: <05301278-AC33-4DBC-A381-DE2F5CB1E73B@padamj.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 31 Jan 2014 11:56:28 +0000
Message-ID: <CAJTo0LZ-RgJw+x1C5MmmOhUm1Pd-TdYoiZgABPOrESD876aoLg@mail.gmail.com>
To: "Padam J.Singh" <me@padamj.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Help with ipset bitbake files
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
X-List-Received-Date: Fri, 31 Jan 2014 11:56:49 -0000
Content-Type: text/plain; charset=UTF-8

On 31 January 2014 11:45, Padam J.Singh <me@padamj.com> wrote:
> When executing this recipe, all steps completes OK. However, the compiled
> binaries are not included in the final RPMs or the final images.

If you include the output of "find" in both image/ and packages-split/
then it would be possible to debug this.

FWIW, FILES_${PN} already includes ${sbindir}/*, so your assignment
isn't achieving anything.  Also note that your second EXTRA_OECONF
line is overwriting the first.

Ross

