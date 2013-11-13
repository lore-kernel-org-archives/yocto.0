Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f51.google.com (mail-wg0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1A7CE01732
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:39:41 -0800 (PST)
Received: by mail-wg0-f51.google.com with SMTP id m15so585137wgh.6
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2013 07:39:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=YXxT1EWOrJhpDERn4AiO4AL6I5PJenIStPZpKPOT6DI=;
	b=iU+rySxrssGHKmsza9iO5UTeWjsY+jzXU5jYV7v2UY1ZOsABtIy/yq9pAWEpH4SHhn
	JNy98cHEnPs8uaLsSZO9iKgqyZWd+KzdAenexIvXuY5tZlD8ZQ5zJdHshi5naesqR0K9
	FJj3/OoOg2spYHcaW5oPQLUwPC+P76QuXesitpISitk6wICi7Pypv+Cb9mD5oHMJAkyp
	g8KwFNIPwyxqNv6410XkAuJkngvcaCkle3UarJRRVJzFSbVqxRCdrqh8ufaeVqoIdSQT
	U70SL68nG+QIjzYiplrLsHDRT3/+wsfSftJEMzr1UkYwexvckYC1CDGusnSQ4fxGaNDH
	fa9w==
X-Gm-Message-State: ALoCoQkJHJTruCg7owRPi0GX3yEIjoWI7leBK6ZyLDl+vzIgjYheDj1IKKMG/O3FbU6tO+WsZZSW
X-Received: by 10.180.188.49 with SMTP id fx17mr21071702wic.33.1384357180341; 
	Wed, 13 Nov 2013 07:39:40 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Wed, 13 Nov 2013 07:39:20 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CANyK_8exuMtxWqU1_RkjWw0GoCZg0L6xJ+6GftjGFmqhYkOPQA@mail.gmail.com>
References: <1378152710-10291-1-git-send-email-paul@paulbarker.me.uk>
	<CANyK_8exuMtxWqU1_RkjWw0GoCZg0L6xJ+6GftjGFmqhYkOPQA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Nov 2013 17:39:20 +0200
Message-ID: <CAK18fxH8Y8Yb8t7XK2NW1oZOCvk5nyNpPed7gAb5ciaqX2c9Hw@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 0/2] rpi-sdimg compression
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
X-List-Received-Date: Wed, 13 Nov 2013 15:39:44 -0000
Content-Type: multipart/alternative; boundary=001a11c25bdafa061204eb10c5f0

--001a11c25bdafa061204eb10c5f0
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Oct 11, 2013 at 6:49 PM, Paul Barker <paul@paulbarker.me.uk> wrote:

> On 2 September 2013 21:11, Paul Barker <paul@paulbarker.me.uk> wrote:
> > I've incorporated the changes recommended by Andrei against the first
> version of
> > the patch. Whilst editing the README file I noticed that the
> IMAGE_FSTYPES
> > example didn't make sense (or include a closing double-quote) so I've
> fixed this
> > as well.
> >
> > Currently running a build test with a 3.8.y series kernel - I'll post
> the patch
> > to add that recipe once it's confirmed working.
> >
> > Paul Barker (2):
> >   sdcard_image-rpi.bbclass: Allow optional compression
> >   README: Fix IMAGE_FSTYPES example
> >
> >  README                           |  4 +++-
> >  classes/sdcard_image-rpi.bbclass | 20 ++++++++++++++++++++
> >  2 files changed, 23 insertions(+), 1 deletion(-)
> >
> > --
> > 1.8.4
> >
>
> Ping.
>
>
Merged.

Thanks,
ag

--001a11c25bdafa061204eb10c5f0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Oct 11, 2013 at 6:49 PM, Paul Barker <span dir=3D"ltr">&lt;=
<a href=3D"mailto:paul@paulbarker.me.uk" target=3D"_blank">paul@paulbarker.=
me.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 2 September 2013 21:11,=
 Paul Barker &lt;<a href=3D"mailto:paul@paulbarker.me.uk">paul@paulbarker.m=
e.uk</a>&gt; wrote:<br>


&gt; I&#39;ve incorporated the changes recommended by Andrei against the fi=
rst version of<br>
&gt; the patch. Whilst editing the README file I noticed that the IMAGE_FST=
YPES<br>
&gt; example didn&#39;t make sense (or include a closing double-quote) so I=
&#39;ve fixed this<br>
&gt; as well.<br>
&gt;<br>
&gt; Currently running a build test with a 3.8.y series kernel - I&#39;ll p=
ost the patch<br>
&gt; to add that recipe once it&#39;s confirmed working.<br>
&gt;<br>
&gt; Paul Barker (2):<br>
&gt; =A0 sdcard_image-rpi.bbclass: Allow optional compression<br>
&gt; =A0 README: Fix IMAGE_FSTYPES example<br>
&gt;<br>
&gt; =A0README =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 | =A04 +=
++-<br>
&gt; =A0classes/sdcard_image-rpi.bbclass | 20 ++++++++++++++++++++<br>
&gt; =A02 files changed, 23 insertions(+), 1 deletion(-)<br>
&gt;<br>
&gt; --<br>
&gt; 1.8.4<br>
&gt;<br>
<br>
</div>Ping.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br></font></span></blockquo=
te><div><br></div><div>Merged.</div><div><br></div><div>Thanks,</div><div>a=
g=A0</div></div>
</div></div>

--001a11c25bdafa061204eb10c5f0--
