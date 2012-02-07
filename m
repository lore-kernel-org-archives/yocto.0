Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A369EE01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 07:48:30 -0800 (PST)
Received: by dadp13 with SMTP id p13so7175331dad.35
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2012 07:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=/1l+bfD/Bgt/2lZI7HQotZ6+/Pv6837Hf4L7SRtM/Ww=;
	b=MecrVWKDIelNGcyeI7DOwlNUrr0w9TSXDDzhsWc09BcUtKG3+abVhVShK77icwdy/a
	GlNhCIAlw8f95ZZIfyyVQxSOZlnmqn+MlHabPRSZAcQPBDrUVGWUN6N+oF/c9MppsqIZ
	TQSCvAmlzS5di0+TDZqhUKGa4OLQ/twYKiyno=
MIME-Version: 1.0
Received: by 10.68.74.164 with SMTP id u4mr59057851pbv.85.1328629710423; Tue,
	07 Feb 2012 07:48:30 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Tue, 7 Feb 2012 07:48:30 -0800 (PST)
In-Reply-To: <CADzUK1L76iErCF25c3jqSaz_040gzRHcXEb7fKBhr5HMtCYkAg@mail.gmail.com>
References: <CADzUK1L76iErCF25c3jqSaz_040gzRHcXEb7fKBhr5HMtCYkAg@mail.gmail.com>
Date: Tue, 7 Feb 2012 10:48:30 -0500
Message-ID: <CADzUK1+UgOCoh=-NzZ2LSoRDqN_EAt7UN1vbG4rT6hX0zobvqw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Unable to fetch file://lib for package emgd in yoctyo 1.2 (aka M2)
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
X-List-Received-Date: Tue, 07 Feb 2012 15:48:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

Chatted with TomZ on #yocto on freenode IRC, it looks like I did not
perform the steps in section II from README in
meta-intel/meta-crownbay. It is likely that that's what I am missing.

On Tue, Feb 7, 2012 at 10:12 AM, autif khan <autif.mlist@gmail.com> wrote:
> I am bitbaking core image sato for machine corwnbay (with the emgd
> driver) and the emgd-driver-bin recipe seems to fail.
>
> Here is the error. I searched the archives, but could not find anything.
>
> Please advise.
>
> Here is the output for bitbake -b
> /data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb
>
> NOTE: Running task 1 of 12 (ID: 4,
> /data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb,
> do_fetch)
> NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Started
> ERROR: Function 'Fetcher failure for URL: 'file://lib'. Unable to
> fetch URL file://lib from any source.' failed
> ERROR: Logfile of failure stored in:
> /ssd/autif/M2/crb/tmp/work/core2-poky-linux/emgd-driver-bin-1.8-r8/temp/log.do_fetch.31621
> Log data follows:
> | DEBUG: Trying PREMIRRORS
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['bzr',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['cvs',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['git',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['hg',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['osc',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['p4',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['svk',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: For url ['file', '', 'lib', '', '', {}] comparing ['svn',
> '.*', '/.*', '', '', {}] to ['http', 'autobuilder.yoctoproject.org',
> '/sources/', '', '', {}]
> | DEBUG: Trying Upstream
> | ERROR: Function 'Fetcher failure for URL: 'file://lib'. Unable to
> fetch URL file://lib from any source.' failed
> NOTE: package emgd-driver-bin-1.8-r8: task do_fetch: Failed
> ERROR: Task 4 (/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb,
> do_fetch) failed with exit code '1'
> ERROR: '/data/autif/yocto/poky/meta-intel/common/recipes-graphics/xorg-xserver/emgd-driver-bin_1.8.bb'
> failed

