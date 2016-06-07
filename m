Return-Path: <oleksandr.poznyak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ED4AE00BC2; Tue,  7 Jun 2016 03:51:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oleksandr.poznyak[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F9FFE00B5F
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 03:51:42 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id s186so66143331qkc.1
	for <yocto@yoctoproject.org>; Tue, 07 Jun 2016 03:51:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Bw5/aSWwLmjmvqIXVmJ3ne/8X/z/R4uaRkDHhUOer7c=;
	b=F/9Hlq2guV0PlZ4i3jc+JnFSzreUYjs/YR4qSeIqRGJtKOSYm+Trp72Q2iH35jhtMv
	e5rRldH1d9oyotZJMbMO4kplNHTF9IcJpO5XHs1CKd30NCY6DPtvElydy3seuj7392lY
	mWOQ+r6CeUwsXM9KX1/U9OdZ3mntUboqT3jVfOqX7tSI+NE6wC0WPvJyXwwpiUu6oykY
	t/nhQwt9rjT9ba9X0xJosHNPTc/1qrLiLVO2PbjhDRKJh0DhwJWF41/eRvtKM/bIxGIw
	IQJgpU0h4+fLQIkdI7TYxqxrGsWYLatqvBauHUiGXcgzQHEMm/fl/46sXyLymbLzlBVd
	Qi3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Bw5/aSWwLmjmvqIXVmJ3ne/8X/z/R4uaRkDHhUOer7c=;
	b=lttPiz1aMTkgLLh5CEA48+k06r72+Bgr1kmxb/TkCTPihSmY+U4F9H1W6JgphCDQTt
	POuvsywd+RvZjSY5jAbE2wbPykkKqqW4R8lwceI0kMBSnAMngAL9kiPQIxIdg7Tejs0/
	eY71oRIj+BjlfM2qwe55sAe9derVm0iRSFypMp1pl474wU91Q2tlkd4VYr6sSILwD9SZ
	Gc/V8Bsa4BUXvA57nb/FNsZ2JmCoD+DMaGxcO1FjqKLA4U9j/UrVd9SyMWjJbnlZdnOt
	dc+atG+X41vND/T8tGt4DWA9ED0fJ/wldGa0jj1DqGi1ab92uNnzCMgaLtQmuVjrr7yP
	8ojw==
X-Gm-Message-State: ALyK8tL1LEWozhQZV4/Pq8yphnGgtkn+uluUhX8jHlINgDF0ZxtqTYNwF26LKK4l9eZ0lBcknzC+ae6LoZxXOA==
X-Received: by 10.55.40.68 with SMTP id o65mr19533157qkh.201.1465296701544;
	Tue, 07 Jun 2016 03:51:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.36 with HTTP; Tue, 7 Jun 2016 03:51:41 -0700 (PDT)
In-Reply-To: <56359783.XqWORYcO5G@peggleto-mobl.ger.corp.intel.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAGMdoF=40Z=5MRZ-YBvZrfrYO9pJ9WTixu36FqRiX0i3zvNkKw@mail.gmail.com>
	<CAEeWubJaaGLOVWdcS0uc=tv_cYkGRMFa2prLJ6jnDJAah+8G8Q@mail.gmail.com>
	<56359783.XqWORYcO5G@peggleto-mobl.ger.corp.intel.com>
From: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Date: Tue, 7 Jun 2016 13:51:41 +0300
Message-ID: <CAEeWubLmjJJLfZ4=t69anDDtL6EruoXL7kHknmTP33EBgLiwRQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org, Diego <diego.ml@zoho.com>
Subject: Re: Per image customizations
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
X-List-Received-Date: Tue, 07 Jun 2016 10:51:45 -0000
Content-Type: multipart/alternative; boundary=001a1141c04e62fd260534adf92a

--001a1141c04e62fd260534adf92a
Content-Type: text/plain; charset=UTF-8

Thanks, Paul. You are absolutely correct.

On Tue, Jun 7, 2016 at 1:20 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> wrote:

> On Tue, 07 Jun 2016 00:10:58 Oleksandr Poznyak wrote:
> > Unfortunately You can't have two *.bbappend files per one package
> (recipe).
>
> Let's clarify that for the benefit of others reading along - you absolutely
> *can* have multiple bbappends per recipe. To answer the original question
> though, no you cannot have bbappends conditionally applied based on what
> image
> is being built - you cannot have other recipes built differently based on
> the
> image being built *period*. Other than what gets shared via the sysroot,
> recipes are largely independent of eachother, and that's by design.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a1141c04e62fd260534adf92a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks, Paul. You are absolutely correct.<br></div><div cl=
ass=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Jun 7, 2016 at 1=
:20 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:paul.eggleton=
@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.com</a>&gt;</=
span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On Tue, 07 =
Jun 2016 00:10:58 Oleksandr Poznyak wrote:<br>
&gt; Unfortunately You can&#39;t have two *.bbappend files per one package =
(recipe).<br>
<br>
</span>Let&#39;s clarify that for the benefit of others reading along - you=
 absolutely<br>
*can* have multiple bbappends per recipe. To answer the original question<b=
r>
though, no you cannot have bbappends conditionally applied based on what im=
age<br>
is being built - you cannot have other recipes built differently based on t=
he<br>
image being built *period*. Other than what gets shared via the sysroot,<br=
>
recipes are largely independent of eachother, and that&#39;s by design.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</div></div></blockquote></div><br></div>

--001a1141c04e62fd260534adf92a--
