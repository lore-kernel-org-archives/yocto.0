Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82615E014E4
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:52:31 -0700 (PDT)
Received: by mail-vb0-f54.google.com with SMTP id q16so1098652vbe.41
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2013 03:52:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Kq63umpC+7lCxgSUoa1EWdRNu/cjDmevp5t2svWzirE=;
	b=lJZADYt1HY63F2lPQCD5tcaL6GJpJ0f4hxczPVpDIVmnnp5jha2w+IgZectakRqBGG
	cc2tAF6yHlv32WVUHCHtdTQkzxig7wxJGG6pP4grkUKyXzhRYfPy7/M4JOmf2DFSunhN
	/fdl2SjYwYNldXzbQ+Xrxp7ijBZxhMXSg+jKpY4/A3PJsEuIPLDe769fr+SjTLqJqFSr
	66PhxPbPBexFP2sVMHyFSxLkOhGtVmo720H4Fqyr9cxYrSo7KqLKsi7DPQy5TN+ldgdz
	2Q+KxS23b3nzf795WiRU1w1MJ+o8iBpHwYO92oRkZdM2K6bCRyK75GqwoJRRIk8f7nso
	XuUg==
X-Received: by 10.59.0.131 with SMTP id ay3mr19687379ved.78.1374835951040;
	Fri, 26 Jul 2013 03:52:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.30.15 with HTTP; Fri, 26 Jul 2013 03:52:10 -0700 (PDT)
In-Reply-To: <CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
References: <CAOMwXhMAvqvs2TF_Wc2btWfEnWmvQQJ3RNJiTDw7A1D01RSXyw@mail.gmail.com>
	<CANyK_8fZbN9d0JmbcOhSo+4-xxvqDy29vWnXcgwms6OGFSJkrQ@mail.gmail.com>
	<CAOMwXhNnJH9E6OyD0ch364G0WF58E4ZsU08DM4Bm8eOaqiSOeg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Jul 2013 11:52:10 +0100
Message-ID: <CAJTo0LbZ1mbPkznRn_nMw-aNqc4MB7qAZKas-+uH6NaHODhN5Q@mail.gmail.com>
To: Laszlo Papp <lpapp@kde.org>
X-Gm-Message-State: ALoCoQl+ib79pN64SpE1m+jZlF4BC7OMiJ/KHlDXOcJ9AL9TvHn5kgZ95lsV74WfI/bGRA6BZzRc
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
X-List-Received-Date: Fri, 26 Jul 2013 10:52:34 -0000
Content-Type: text/plain; charset=UTF-8

On 26 July 2013 11:39, Laszlo Papp <lpapp@kde.org> wrote:
> If you do not trust Arch, you can use something else. That does not mean
> there would not be people who update (daily for instance) and fix the issues
> coming up.

And that already happens - I'm running Debian Unstable, others may be
running Rawhide, or Arch.  You'll see numerous commits in master
fixing issues where updates on the *host* have broken the build[1].

Let's imagine we are testing Arch or any other rolling/development
distribution.  The day we freeze oe-core 1.5 we could write that Arch
Linux is a tested and supported distribution, and we release. A week
later Arch integrates (for example) a newer gcc that introduces some
new errors, so we can't bootstrap anymore.  The documentation says
that Arch is tested, yet someone using Arch will discover that it
doesn't work.  They'll rightly complain that the documentation is
wrong, and Arch doesn't work.

Of course if ArchLinux decided to have a maintained stable branch,
then that would be something worth testing on.

Ross

[1] The latest I can recall of the top of my head is
8db36429ef328b97340ee1d9fc2e697cfdd68bff.

