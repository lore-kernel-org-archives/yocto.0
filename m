Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D80F8E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:44:59 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id ox1so495161veb.37
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:44:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ownpKgAjTQY3t383VMLtKZp0DZcacytRSAkGb2K0g0E=;
	b=X9P/tERbqtO8/FRx7WR0cOzEisnxVXdI6ekDLcoSLnMS8Qsv/taAKynIc05oWFeHYn
	5Ysr/NLSzoUAmTuvdy1Y8WpSlNK51HPkv0MBGTlyTDWdgZhvJ6umHKIyRN91vx/wTwp3
	mmefSlCG9Nju81Dv4bDLH0qMe8gF9ZTcP13BkT6O48uv+2RXUH8IAoEu4d8SfipiBQGC
	UEM4t6hLdgGUWLaB7VuhFZk75mHoT5OScMTFQZcFHCEvJZXPPiKBmhn6RScTa1QwoIiw
	ADfYI/WR7Oq7UCrAbKi/Pjy4TrXS43lCZOhhJ81G3lYIpgVjIQUfVShPEoeLTNov03Uq
	0oIA==
X-Received: by 10.52.31.230 with SMTP id d6mr1078514vdi.43.1374835499025; Fri,
	26 Jul 2013 03:44:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Fri, 26 Jul 2013 03:44:38 -0700 (PDT)
In-Reply-To: <CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jul 2013 11:44:38 +0100
Message-ID: <CAJTo0LaYEEXizu74FpjPYTLT9Jbaf8BG05oJZprowdDC7zxu6w@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
X-Gm-Message-State: ALoCoQlXKJVdBUc/DC3cUnAtCe/uDo1JqbK5Oyw0pYwkfUqs1k2Z65zz3SSfwfBGE90xQqdaRAwO
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Criteria for proposing a host distribution supported
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
X-List-Received-Date: Fri, 26 Jul 2013 10:45:00 -0000
Content-Type: text/plain; charset=UTF-8

On 26 July 2013 11:34, Paul Barker <paul@paulbarker.me.uk> wrote:
>> may I ask if it is acceptable to target Archlinux host (64 bit) supported
>> any time soon for a release?
>
> I'm not in any official position within the Yocto project but I do use
> Arch so I'm just putting my tuppence (or 2 cents) in here. I don't
> think it makes sense to call a rolling-release, compiled from source
> and close to bleeding edge distro like Arch (or Gentoo for that
> matter) "supported". The sanity check warning when building Poky was
> what made me decide to spin up a Ubuntu Server 12.04 LTS virtual
> machine for doing my important builds as that is a much more stable
> distribution. When a new official release of Ubuntu, Debian, Fedora,
> etc are released, a Poky build can be tested on that release and the
> platform certified as being supported because it's been proven to
> correctly build Poky. How often would you have to test Arch Linux when
> major package updates can occur on any given day?
>
> Don't get me wrong, I love Arch and use it on my desktop for all
> development work. But for builds I want to be known-good, I push them
> off to a Ubuntu Server virtual machine.

Personally speaking, what Paul said. We don't "support" any other
unstable/rolling distribution such as Rawhide, Debian Sid/Unstable,
etc either as they routinely change daily and therefore the testing
that needs to be done to classify it as supported would have to be
done daily.

Note that the warning is entirely advisory, you can feel free to
ignore it.  I do so on one of my machines which runs Debian Unstable.
You can even disable it by setting SANITY_TESTED_DISTROS = "" in your
configuration.  Supported here means "in a normal configuration we've
verified that it works", nothing more.

Ross

