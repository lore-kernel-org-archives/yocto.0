Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f175.google.com (mail-vc0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70C1BE0150E
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 06:03:41 -0700 (PDT)
Received: by mail-vc0-f175.google.com with SMTP id lf10so2817046vcb.34
	for <yocto@yoctoproject.org>; Thu, 25 Apr 2013 06:03:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=kgRhxaXDBGbbO8v+1pBKBpXkkRe0O9mFg985Zk+L1H4=;
	b=dbjwm8jA18MQ6Kp+RybeTCGDv6cz3dVkkuc/w4YKx9Kd/bb3AqovpFxvvDRkOkkF2h
	ebYjzB+MSX6gJKq5XWYqR9HEIoaGhE1nVL6FnhPiBD1AWp2PB5WY8y9PR3CjBDkPt8+4
	QChhSX5NFUiTUehgw+QBfSOdVNx20oD5ilrlOssrmm/A/3mD9oAVhrVgHaaeA7qSCjAF
	4zpQAuyA79+QxBhsblkTPaqow3aAdgz6rjkV+fDNtGUyv59VwaYaW/UxUltstqhRdtTC
	pFPlP48zvj0nhjD8hQlGlbEVH+AnpEsp+nvlarFm6HPYVKJ+eYxtQFvDP5eZOJp1vkWb
	Iylg==
X-Received: by 10.52.165.99 with SMTP id yx3mr9451554vdb.34.1366895020886;
	Thu, 25 Apr 2013 06:03:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Thu, 25 Apr 2013 06:03:20 -0700 (PDT)
In-Reply-To: <364D31930BDB974AB40E22C5C2E584ED011E6214@asterix.SPINETIX.local>
References: <364D31930BDB974AB40E22C5C2E584ED011E6155@asterix.SPINETIX.local>
	<5177D5CB.8060706@windriver.com> <3875695.6MzV3H4rrf@helios>
	<364D31930BDB974AB40E22C5C2E584ED011E6214@asterix.SPINETIX.local>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 25 Apr 2013 14:03:20 +0100
Message-ID: <CAJTo0LYKpFww2BUM=bPNv1PqN1TgAsF=d44gzmPi6zrE8s_K0A@mail.gmail.com>
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
X-Gm-Message-State: ALoCoQkpbou6aVOE1JlOael/Ln6wX2CEm9chxKR2C9Dju2JfPJi4YTYcA5dhfzhxZsL4n8ikV1WL
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: About running old kernels with Yoctoo 1.2 or 1.3
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
X-List-Received-Date: Thu, 25 Apr 2013 13:03:41 -0000
Content-Type: text/plain; charset=UTF-8

Hi Diego,

On 25 April 2013 13:27, Diego Santa Cruz <Diego.SantaCruz@spinetix.com> wrote:
> Many thanks for the valuable input. Is the traditional init system still
> supported, or is Yocto using systemd exclusively?

With 1.4 (about to be released), systemd is an option but the default
init is still sysvinit.

Ross

