Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D87EE00D08; Fri, 15 Mar 2019 10:21:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B9BDE00C46
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 10:21:48 -0700 (PDT)
Received: by mail-it1-f177.google.com with SMTP id k193so12058489ita.3
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 10:21:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=mKqOOZyCUHk17DzTq51b053o+4k777s9uOf0gODzI+Q=;
	b=dLOdYlsmJvL8ShTl2xl8s0czTN8n7nYTuPd6Xe7CTWNC2ahnIXbFsFtgbEABqfvFDY
	dVRBo8bG3HzzG9zWzL5U4eoq7awwXMlf3q7/KBqBjYst8A6kUTfkF/diVCXzyV8mCqQe
	W9asnTaACdOt1jXKnNkkPJjC1eM+bTE3njY5pzFwzypns+6y/hI/w9H2F7hmCIlV64ap
	GbrZd6mbVNg+cmr3G6FHJbGZOjY6J+5L5p7xVZcGnhXI5LYjSU0YLIK0ncLrh6IXIkod
	nRUhnTvXtSCSC1pttqTu+uCA/OMIUUksnGft7VT+ba6zWFfo6bNB3+fgxf7/uRaCQIFm
	VOpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=mKqOOZyCUHk17DzTq51b053o+4k777s9uOf0gODzI+Q=;
	b=Btc1nCsRo8kkWFvUF88PLpnhrZ5E93PDNxw2wnvX5L++k382opANB5UA3KnvSQeJ2C
	J1wGQc201uv7fn6mTheaf0TamT66GnocpGmrJqH3Y0+/+w1A3uwg6AnHh2SGL6syEyEL
	i2J5fzg9MzuN8kSiWTtdILgyF6Mv19VWy+ZC/HinTl7xNzK1FahlGf/InbanuKQvS3O5
	UgTa7FKkQzgy7/h6xqgMUy1+PPs6cLU+Gr43hncgJxAPavlqoUnb9y5isIWzAhar0nYq
	Uh7FjxZlsEHw8F0kXfmuUw/NdcLgp5w2N8NgF4lLJ5EkEEEUQEn40ZoBw+TNDBrqs7oW
	LxSw==
X-Gm-Message-State: APjAAAWLAYrW8lIoWAgWM/vZZT8yl7jvQO/pKmPB3oN9cFeeoFq6wX5Q
	k5mW6tzd0gujDcwYsjWdWiXlQ0UDslwjDUVTY1/KmA==
X-Google-Smtp-Source: APXvYqwn8GM4aNIfLeYRspU1VTlxlvYs1QKd1MojvTkQGHulqy7MSwONN2LaXSthfC4jpDi4IWk075YqoqcD5WGjj4E=
X-Received: by 2002:a02:7654:: with SMTP id z81mr3278625jab.79.1552670507743; 
	Fri, 15 Mar 2019 10:21:47 -0700 (PDT)
MIME-Version: 1.0
References: <CADmsHKfN0X-HCCdd_4mi=xEvjybWUKC8YXcoq5c__EZDxRDkZw@mail.gmail.com>
In-Reply-To: <CADmsHKfN0X-HCCdd_4mi=xEvjybWUKC8YXcoq5c__EZDxRDkZw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 15 Mar 2019 17:21:36 +0000
Message-ID: <CAJTo0LZq9RxtqcBbXEOSXJHKPr63FFN6gPx3OY8dqwbVb7o+LQ@mail.gmail.com>
To: Derek Dresser <dresser.net@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: can't find libudev.h
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
X-List-Received-Date: Fri, 15 Mar 2019 17:21:50 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, 15 Mar 2019 at 17:00, Derek Dresser <dresser.net@gmail.com> wrote:
> | gcc -fPIC   -c -g -MMD -MP -MF build/Debug/GNU-Linux-x86/hid.o.d -o build/Debug/GNU-Linux-x86/hid.o hid.c

'gcc' isn't a cross compiler, and it isn't using the sysroot flags.

The problem with people writing their own makefiles is that they think
it's easy, but it isn't.  You'll have to figure out why the maze of
Makefiles in that project don't respect CC/CPPFLAGS/CFLAGS/LDFLAGS
that are exported into the environment.

Ross

