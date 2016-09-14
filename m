Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEB0CE007B7; Tue, 13 Sep 2016 18:10:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.47 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D05EEE006D8
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 18:10:01 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id b187so22198014wme.1
	for <yocto@yoctoproject.org>; Tue, 13 Sep 2016 18:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wkMUa9a6vxLtAlvpOsYqzM6julgvVm3TipWm/5xr9sY=;
	b=sR60v3d/J7Ad3Hl3YvWQjAWhv+m6hy9dCmLHbD2To8ZE3WtORq3xKZdD7V3POmr8uI
	0Su9JCWnrjV8f2HSEbb6Ja0c8vw/IdXQ4yCQpSKaXTSdIgc6UYLCkxIq9iQEYxiMy4Aw
	otwfC/TLqoXIy1Vr8d0k+7jNZVfsSSrSyMfG7rHjd/14FtIZRc48DJZrsEwQlsRCsO/Y
	ONcS5Y7vdWahN+1C9JTY1Omt7ucUpdMc7DIdGHgYJT8DuIN9/f3vlejH8sd2UcG+0LZD
	UKIfpCFgSuQQJGa4szbUV9kEypzhHGtWTk+vqXW+F2UmnhalLlX3uh/R5YAaO60IfQob
	heDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wkMUa9a6vxLtAlvpOsYqzM6julgvVm3TipWm/5xr9sY=;
	b=iumgvnB+D4UQL0r2OSjqcTYTjad2fmaAjDRBJGuaqtMtLazUqiSbM8Xxvk4wsA2BuY
	esqmrr4Y09eHoswQUeKQEgCkIvlYHbRziL8X7l+eVhGZDT8Oc6x04lTKcdfQrOjyylAm
	c33apPxmPAgxdIiy0xuD+UiIXUDY4Yj5eBqkX6t1tyW36MA3bBqhJkIxXwKPFNGLwsaS
	WTqf2hQrEXTQE8Raus+hjHyUpY6zPf93pLRUJJdWgHGjWf1Gfo4b+oQGjCvO5x7TuOWY
	iKAFSJrsR82XXVZC0n7mQxNRXDgYUlSz5BU/aRdAjg/W9PYS2DbFBgKJUpCjAi45f3N9
	bV9A==
X-Gm-Message-State: AE9vXwP/2WkF6Lye+zbLlqdE7lu8cMem9TxPb9DnsqU12n6QddDdWXFQgBtjp2kXAgv7NAACSC59BscUQzaf3Q==
X-Received: by 10.28.161.133 with SMTP id k127mr7301244wme.103.1473815399262; 
	Tue, 13 Sep 2016 18:09:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.190.233 with HTTP; Tue, 13 Sep 2016 18:09:58 -0700 (PDT)
In-Reply-To: <CAJTo0La9QzpZUN8-d-u1BO_BggZ380d67bqcf5JJOfS9Hxn+Qw@mail.gmail.com>
References: <CANr77M1Oj+M6k3QqHKTNSS8YFtsgVm5N7qCh4oxSCGWbSNKLNg@mail.gmail.com>
	<CAJTo0La9QzpZUN8-d-u1BO_BggZ380d67bqcf5JJOfS9Hxn+Qw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 13 Sep 2016 18:09:58 -0700
Message-ID: <CAJ86T=Xpf=Nh8fKK7dXQhT4KrrA1He5J01C65v_jV8V7SDTNYw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Matthew Stanger <matthew_stanger@trimble.com>
Subject: Re: Striping cross-compiled paths
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
X-List-Received-Date: Wed, 14 Sep 2016 01:10:04 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Sep 12, 2016 at 12:16 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 12 September 2016 at 19:22, Matthew Stanger <matthew_stanger@trimble.com>
> wrote:
>>
>> I'm using Yocto 1.7.1 I'd like built programs to have the build path
>> striped down. The goal is if I'm looking at some programs log after cross
>> compiling I want this:
>>
>> src/program.c:388
>>
>> where I currently get this:
>>
>> /usr/local/jenkins/workspace/project-build-manual/Project/build-project/tmp/work/arm926ejste-poky-linux-gnuebi/program/2.5.992+gitAUTOINC+1c6d246619-r0/git/src/program.c:388
>>
>> Is it possible to configure Yocto to do this for me? If so where can I
>> find info on how I would do this?
>
> If those paths come from __FILE__ and so on, then currently no.  It would be
> great if GCC could do this, but currently it can not.

There are gcc patches such as this one floating around:

  http://git.openembedded.org/openembedded-core-contrib/commit/?h=obi/master&id=a1e8d6cfb71367d745f2478c13a7250e41ca4f1b

Or toolchain wrappers such as ccache can convert absolute paths before
calling the compiler:

  https://ccache.samba.org/manual.html#_compiling_in_different_directories


> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

