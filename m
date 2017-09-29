Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 149FAE00D8F; Fri, 29 Sep 2017 00:09:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.66 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1512EE00D85
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 00:09:46 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id 78so112129vkc.1
	for <yocto@yoctoproject.org>; Fri, 29 Sep 2017 00:09:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DnmxCu4A7NlbOwNobBr20B9xFY4j7k6yFJqeLIQOaTU=;
	b=MZulLEEEl/DJItHzTGXV66g0MoO1fEAJ86r18l9iW2QoHhDUOopqzl8ZlI7m3ZFfJR
	AnduCMAxJ+dgZ3YZ+A2PwvA5vNopRM40c1SSx730BfJsXfzbLp4M21udNnUADtQ7djuP
	kyZ3stsqZ2urq2sSbOPspYpiEHLtAxvQhz5bqCQa1qWsK9Lj86OD5+soMauJHn4eQra9
	9B4j/EGC3mXaT3w+QxrtvniBbay3C9dhOpHT95Q8Boem+zMlTk8eOAY8fDCkU03DUG6l
	9E4zJrTjSrrgvx6t9KxdD/nc3KqZCtzWEdt1rM13FxO6T3kDoErlTYcdKlqk0GpqP/DH
	pgAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DnmxCu4A7NlbOwNobBr20B9xFY4j7k6yFJqeLIQOaTU=;
	b=lCEIJyf5PhHTADeULmxgriKFHtjh5Z6iEkEV2Qh+OyTtw+WLCJma2csu8twuOoQAf/
	1gCbx3HLxb6hybb2oCvh4k7Z/6PQVW6h0KGQCkRjolS1VjBKhN3GnKDd6eOjkgyfteZ5
	H05K5LaVy6BiSepMTMgr64i+beUm+8blEwVe42LB93BqX7zgU5CoR5koi2uhhQ9DXM9a
	NH7ATYJL3KXI08vb48CDUwCCd5wUEFYNcdePsV8yFF7NCHl50Wo8JvwBJ1ea9i8lziXp
	VZXkbfPCU/qUUhdhVIPw86oMYZ6Z2rxm0ER6RZIqqMvG5kov1jpqXNf4Blcyspkb4AOI
	du2g==
X-Gm-Message-State: AMCzsaUMB8+pKTjfYKA6AoqOMJ27cIRXwilEVZkXJXHdq2TfZVJYXWvz
	TTnvx02RdX18m+ptYlRHvmYSXTDu/hoogTVKkrw=
X-Google-Smtp-Source: AOwi7QBi1WVFkeKVuXJKBnhYhCSUiCxW9Rr9GczFmxjJNVDcnUk9PWqUy78CK/UlyXruKNpjpLnlm2grRqS1xBmMQsA=
X-Received: by 10.31.56.194 with SMTP id f185mr4075239vka.0.1506668986061;
	Fri, 29 Sep 2017 00:09:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Fri, 29 Sep 2017 00:09:45 -0700 (PDT)
In-Reply-To: <CAEQ58si6bpFQ47B2XR6i3EbMF-z47ETYRvQtYAPCEcnwSTiqkQ@mail.gmail.com>
References: <CAEQ58si6bpFQ47B2XR6i3EbMF-z47ETYRvQtYAPCEcnwSTiqkQ@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 29 Sep 2017 09:09:45 +0200
Message-ID: <CAC+thW22=x3nzTQvfVMizLe-jWXEfP5EPUEbPy+ypqVxbOOdqQ@mail.gmail.com>
To: Francesco Giancane <francescogiancane8@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: weston and xorg-xserver fail to build when using Raspberry Pi 3 user land
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
X-List-Received-Date: Fri, 29 Sep 2017 07:09:49 -0000
Content-Type: multipart/alternative; boundary="001a11430d9eb55691055a4eb528"

--001a11430d9eb55691055a4eb528
Content-Type: text/plain; charset="UTF-8"

Hi Francesco,

On Thu, Sep 28, 2017 at 9:25 AM, Francesco Giancane <
francescogiancane8@gmail.com> wrote:

> Hi everyone,
>
> I noticed that if I changed the provider for virtual/mesa (in
> particular, virtual/egl) to 'userland' for a raspberry pi 3 build,
> bitbake fails to resolve the dependency chain, complaining about
> missing RPROVIDES libegl.
>
> The point is that NO libegl is ever provided, only "egl" package.
> Thought it was a typo. No building errors so far.
>
> What do you think?
> Patch attached.
>

This probably goes to oe-core mailing list, which is the upstream project
the patch applies to. Also consider sending inline patches instead of
attachments [1].

[1] https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded

--001a11430d9eb55691055a4eb528
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Francesco,<div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Thu, Sep 28, 2017 at 9:25 AM, Francesco Giancane <span dir=
=3D"ltr">&lt;<a href=3D"mailto:francescogiancane8@gmail.com" target=3D"_bla=
nk">francescogiancane8@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi everyone,<br>
<br>
I noticed that if I changed the provider for virtual/mesa (in<br>
particular, virtual/egl) to &#39;userland&#39; for a raspberry pi 3 build,<=
br>
bitbake fails to resolve the dependency chain, complaining about<br>
missing RPROVIDES libegl.<br>
<br>
The point is that NO libegl is ever provided, only &quot;egl&quot; package.=
<br>
Thought it was a typo. No building errors so far.<br>
<br>
What do you think?<br>
Patch attached.<br></blockquote><div><br></div><div>This probably goes to o=
e-core mailing list, which is the upstream project the patch applies to. Al=
so consider sending inline patches instead of attachments [1].</div><div><b=
r></div><div>[1]=C2=A0<a href=3D"https://www.openembedded.org/wiki/How_to_s=
ubmit_a_patch_to_OpenEmbedded">https://www.openembedded.org/wiki/How_to_sub=
mit_a_patch_to_OpenEmbedded</a></div></div></div></div>

--001a11430d9eb55691055a4eb528--
