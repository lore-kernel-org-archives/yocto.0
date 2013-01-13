Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f49.google.com (mail-vb0-f49.google.com
	[209.85.212.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E79F2E006CC
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 13:07:11 -0800 (PST)
Received: by mail-vb0-f49.google.com with SMTP id s24so2495499vbi.36
	for <yocto@yoctoproject.org>; Sun, 13 Jan 2013 13:07:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=hx/E2sR031yGWLBFPS1H/wLxhd7UDiQ6Q2sOKwUe9VE=;
	b=e1KxJw0+EAfkD5tHkkwoPHY0aQ85OFhkneY+rCsGTrnk4aoVknIToR9XdoSQqLxBwn
	Uc6YRRWupTp62juXYf/kZvPB93wgKA7CZSXPRj+tyZyZOS2ATaPZy749mIQ8G97/kp7O
	TFzPG+kW9eF7b0DYECQeE1c4OTokZO+oMuB8O5aYGJniS1WVZh7brdcK1uFLs/z6QO9Y
	T0rMCkGLf9SW6Rbk5SiQgnrHKjW4qIkgysp+RuOPrMgOypyHiR6GfFDbnjGpYmEPD/f8
	WdaP3FBkOUtI6XNaJV9eZUoO0fiDovZ7BQ+P+y3S8orm3dZAOvwVTzF4R+QKM/QmOXii
	/o7g==
Received: by 10.58.234.234 with SMTP id uh10mr12672401vec.37.1358111230983;
	Sun, 13 Jan 2013 13:07:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Sun, 13 Jan 2013 13:06:50 -0800 (PST)
X-Originating-IP: [5.13.223.33]
In-Reply-To: <B2E17B5564364905A4A31F70FC62F9E0@intel.com>
References: <1358094195-23815-1-git-send-email-andrei@gherzan.ro>
	<1358094195-23815-2-git-send-email-andrei@gherzan.ro>
	<211E2BEE5356446CB425C4E2514B1285@intel.com>
	<CAK18fxEkr4fhymhMDx7CGYTX7PGe1C57pw0iGYQaYNO9a1UFhw@mail.gmail.com>
	<B2E17B5564364905A4A31F70FC62F9E0@intel.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 13 Jan 2013 23:06:50 +0200
Message-ID: <CAK18fxHFBP7RLotsXD50ETttAEjJn4ttiOJw6QMwCcu23C5cAA@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQnIT8hqoKLn/8ysGn541uyF03C0Szkgn+z5KXeSXUh8Uh/ndi4ALG/jAVLYSQtbyHNWIYs9
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-intel][PATCH 2/2] fri2.conf: mesa-dri was updated to 9.0.1
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
X-List-Received-Date: Sun, 13 Jan 2013 21:07:12 -0000
Content-Type: multipart/alternative; boundary=047d7b6d96fc7cfecf04d331e9d0

--047d7b6d96fc7cfecf04d331e9d0
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Jan 13, 2013 at 10:03 PM, Ross Burton <ross.burton@intel.com> wrote:

> On Sunday, 13 January 2013 at 19:39, Andrei Gherzan wrote:
> > Tested with a new sato build on master. Everything seems to be OK.
>
> glxinfo/glxgears or something that actually uses the hardware?
>

Yes. That too.

--047d7b6d96fc7cfecf04d331e9d0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Sun, Jan 13, 2013 at 10:03 PM, Ross Burton <span dir=3D=
"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.b=
urton@intel.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cl=
ass=3D"gmail_quote">

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On Sunday, 13 January 2013=
 at 19:39, Andrei Gherzan wrote:<br>
&gt; Tested with a new sato build on master. Everything seems to be OK.<br>
<br>
</div>glxinfo/glxgears or something that actually uses the hardware?<br></b=
lockquote><div style><br></div><div style>Yes. That too.=A0</div></div></di=
v></div>

--047d7b6d96fc7cfecf04d331e9d0--
