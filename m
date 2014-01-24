Return-Path: <b.hutchman@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3270FE00764
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 07:05:35 -0800 (PST)
Received: by mail-ob0-f175.google.com with SMTP id wn1so3681484obc.6
	for <yocto@yoctoproject.org>; Fri, 24 Jan 2014 07:05:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=PQsGiVZkEOq4NjgWH0janhs0V02c5MpAfRg8GlQMKCM=;
	b=CrUJaFd1ADh3TRNufrS4rRGJdcQdQeJRbPhPJS8TQxC3s8pEd3q61oN056PCe6OlqA
	YSPRWFdxRXolqyjJhJrGzisg3rg4KUArlDRTpdiswHoaoNpBd3NXeIIMCobBlq5A/deT
	6cx0QAS0YkDdmoIo6FJDYzZMiCsjUURCkVsTsa0UvWaq452a+LjF64Nu9aEC75EBYIbZ
	qVZfck2/I/jHaIOXQf5kmkXq3Mg6FcEA6cshW9cy5o047+OUAO+df994+Q3fmn90xdNu
	GtvgtrYr8sHcvTBk3ECiqC0trx1bB94Xg57LHTBr257g9aOOt/e1R7ziiBpvY39vDngh
	aTOQ==
MIME-Version: 1.0
X-Received: by 10.182.55.65 with SMTP id q1mr12644186obp.2.1390575934624; Fri,
	24 Jan 2014 07:05:34 -0800 (PST)
Received: by 10.60.94.114 with HTTP; Fri, 24 Jan 2014 07:05:34 -0800 (PST)
In-Reply-To: <1879146.hMO1iD1hZ7@peggleto-mobl5.ger.corp.intel.com>
References: <CAFZh4h-zi=pDLr5JYgFeEfU72+qMRz2FJZ8iDt-Q3f=P+wVgKA@mail.gmail.com>
	<4881727.Fp3ZJb6UjL@peggleto-mobl5.ger.corp.intel.com>
	<CAFZh4h8gSP9PWCVLm+uNJQR4uc3GsCEkCgpvYeFP0W413yDubw@mail.gmail.com>
	<1879146.hMO1iD1hZ7@peggleto-mobl5.ger.corp.intel.com>
Date: Fri, 24 Jan 2014 10:05:34 -0500
Message-ID: <CAFZh4h9QE1VMrNJz4A+_GugqjOPBAu=CG4UHmbG3dY4+AOaBAw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to get a list of packages (with versions) used to create an image?
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
X-List-Received-Date: Fri, 24 Jan 2014 15:05:38 -0000
Content-Type: multipart/alternative; boundary=089e015388489dda6204f0b8b083

--089e015388489dda6204f0b8b083
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jan 24, 2014 at 9:20 AM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

>
>
> The point is, there is a file
> tmp/deploy/licenses/<image_name>-<datestamp>/license.manifest which
> contains
> a list of all installed packages, their version, their license and the
> recipe
> they were produced by. Isn't that what you were after?
>
> Cheers,
> Paul
>
> --
>

You are the man Paul!  My directory is so huge (multiple images for many
boards) that I never paid attention to those.  There is a license.manifest
and package.manifest.  The package file isn't too interesting as it is
missing the version info. but the license.manifest is gold!

Now if I could automate collecting the license info for just the packages
in that license.manifest I'd really be set.  I think that's possible too I
just need to spend more time in that section you pointed out in the manual.

But yes, that will do for now!  I wonder now how long these have been being
generated and sitting there all along and I just didn't realise it!  :(

Regards,

Brian

--089e015388489dda6204f0b8b083
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, Jan 24, 2014 at 9:20 AM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D=
"mailto:paul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linu=
x.intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
</div></div>The point is, there is a file<br>
tmp/deploy/licenses/&lt;image_name&gt;-&lt;datestamp&gt;/license.manifest w=
hich contains<br>
a list of all installed packages, their version, their license and the reci=
pe<br>
they were produced by. Isn&#39;t that what you were after?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
Cheers,<br>
Paul<br>
<br>
--<br></div></div></blockquote></div><br></div><div class=3D"gmail_extra">Y=
ou are the man Paul!=A0 My directory is so huge (multiple images for many b=
oards) that I never paid attention to those.=A0 There is a license.manifest=
 and package.manifest.=A0 The package file isn&#39;t too interesting as it =
is missing the version info. but the license.manifest is gold!=A0 <br>
<br>Now if I could automate collecting the license info for just the packag=
es in that license.manifest I&#39;d really be set.=A0 I think that&#39;s po=
ssible too I just need to spend more time in that section you pointed out i=
n the manual.<br>
<br>But yes, that will do for now!=A0 I wonder now how long these have been=
 being generated and sitting there all along and I just didn&#39;t realise =
it!=A0 :(<br><br></div><div class=3D"gmail_extra">Regards,<br><br>Brian<br>=
</div>
</div>

--089e015388489dda6204f0b8b083--
