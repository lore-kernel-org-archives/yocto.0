Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9310AE00E03; Wed, 20 Apr 2016 19:46:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
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
	*      [209.85.218.45 listed in list.dnswl.org]
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6409AE00C45
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 19:46:55 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id k142so64929452oib.1
	for <yocto@yoctoproject.org>; Wed, 20 Apr 2016 19:46:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=53U9jta/Rc0bod0BCte4f7PzgqPcZzXOU1S/manHkko=;
	b=pNvowD+xEx4oCElRjARPjuz8DVJxXEHKF8Gazu6tmvceBd4WZiYeCI3qxm+HdtplPL
	nNRpd4ewBltcTQkDK9Kui7YOhfpZPln1FvQBtldYv96m+RzzmxGHK8FgdKOteZsyaEdm
	j6N/LFlw7VOvvAUyi1RhBn4Ms9AT3bAIY00Nz7Cx3/QQri8hmgVh02IBr0yCwnDnSpdH
	bJpfyUS8n8BoRXLKHWtBU4CtaaF7O9uwgAzgJrfMWR7yGQqvkWtP9ZFIXwHMoQBPV+DT
	GY3CHDtkQvDAs6i/ZhXU8w63KTsPwxuZj5FkXIv+KMoO5RHR9tDggOj7f/KPy0CQRmPS
	Swtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=53U9jta/Rc0bod0BCte4f7PzgqPcZzXOU1S/manHkko=;
	b=XFZbEQtSJUJ89njFtPP4DD0eglFqIAi418UTnUsOAEJtpC0Y6OG3DRLo6ygU5LCzFK
	tOUN6Omm7YvGBOHg4Ps9fNQ7HUE/isWIeQIv0886sHCIsewm9bvSPI6fN3Ii4vc4p6cM
	85IBaS7Izri308GLingko59pMFnw0t7EpJfntJikXi7DrxiSbup64QuUVSB6rQY74Nbs
	l37iKlGdFFvQ27lYzblicWvHKS3WmxM9LGk3neWhI7YOsXf8OM56Lh2FUScKsclDAc71
	jfsDkDNeapd+GwxZ7kCK6mvV76EmAgbo7RtDXV14HG6bm+GKRFQzTCgB+tIZrcVZifNz
	t2zA==
X-Gm-Message-State: AOPr4FX1aUTlEuFYTGTqTuBkxqhoubSWKVFMSIBC05mNdiiKVuOTFwVg16hI0nD+vlXq9nO963qHmqgnx+Dvfw==
MIME-Version: 1.0
X-Received: by 10.157.37.45 with SMTP id k42mr5312904otb.119.1461206815437;
	Wed, 20 Apr 2016 19:46:55 -0700 (PDT)
Received: by 10.157.32.135 with HTTP; Wed, 20 Apr 2016 19:46:55 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.20.1604201830390.30638@localhost.localdomain>
References: <alpine.LFD.2.20.1604201229260.24374@localhost.localdomain>
	<20160420180421.GD2561@jama>
	<alpine.LFD.2.20.1604201418060.31154@localhost.localdomain>
	<CADkTA4OaTRbBWp_-X=9MRa5KOFXfMJewPcyTUyrouZKxmfRcjw@mail.gmail.com>
	<alpine.LFD.2.20.1604201830390.30638@localhost.localdomain>
Date: Wed, 20 Apr 2016 22:46:55 -0400
Message-ID: <CADkTA4Pga=V5+dozKb4tiZXTmBVPSZ3z5tw+zo_4kgssAy1kMQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a known issue with how SRC_URI uses OVERRIDES to locate .scc files?
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
X-List-Received-Date: Thu, 21 Apr 2016 02:46:59 -0000
Content-Type: multipart/alternative; boundary=001a11352e462d78e40530f5b9ae

--001a11352e462d78e40530f5b9ae
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 20, 2016 at 6:37 PM, Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

> On Wed, 20 Apr 2016, Bruce Ashfield wrote:
>
> > You haven't supplied your SRC_URI in the question ... what does it
> > look like ?
> >
> > It has no relation to the SRC_URI, probably a run of the mill bug in
> > the processing code. I'd suggest taking it up with Wind River
> > support.
> >
> > Alternatively, if you have this somewhere that I clone and launch a
> > test build, I can help you out .. but I won't be able to easily
> > reproduce that situation from scratch.
>
>   ok, i found what appears to be a cheap workaround for this, and i'm
> curious if this makes any sense.  recall original kernel recipe
> directory structure:
>
>   linux-windriver/
>     uio.*
>     ssd.*
>     mxeiii/
>       mm.*
>
> when SRC_URI mentioned only that first-level stuff (uio, ssd), then
> the configure step worked fine. but as soon as i added the mm.scc file
> to SRC_URI, it just seems that any descent into a lower-level
> directory based on OVERRIDES totally bones the search process. so, i
> wondered, how can i work around this?
>
>   oh, wait, no problem. see, all target boards are powerpc, so
> "powerpc" is one of the possible OVERRIDES. obviously, there is no
> *actual* value in using an OVERRIDE for which *every* *single* *board*
> is compatible ... oh, wait, there is.
>
>   so i restructured:
>
>   linux-windriver/
>     mxeiii/
>       mm.*
>     powerpc/
>       uio.*
>       ssd.*
>
> it looks idiotic to take the uio.* and ssd.* content, which should be
> generic, and deliberately put it in a subdirectory, unless that
> subdirectory represents an OVERRIDE which matches every board and, ta
> da, solves the problem.
>
>   i need a drink.


Following up to the list. I was able to take a reproducer for this and
indeed find some *really*
old code that didn't handle a trailing / properly. The end result was the
inability to find the
configuration fragments that were not in subdirectories.

Amazing ability to shoot through corner cases and trigger the problem.

I've made the minor tweak to the processing and will let it soak for a bit
.. but this should
now be solved.

.. now I need a drink.

Bruce


>


> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
>
>


-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--001a11352e462d78e40530f5b9ae
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Apr 20, 2016 at 6:37 PM, Robert P. J. Day <span dir=3D"ltr">&lt=
;<a href=3D"mailto:rpjday@crashcourse.ca" target=3D"_blank">rpjday@crashcou=
rse.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"=
margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=
=3D"">On Wed, 20 Apr 2016, Bruce Ashfield wrote:<br>
<br>
&gt; You haven&#39;t supplied your SRC_URI in the question ... what does it=
<br>
&gt; look like ?<br>
&gt;<br>
&gt; It has no relation to the SRC_URI, probably a run of the mill bug in<b=
r>
&gt; the processing code. I&#39;d suggest taking it up with Wind River<br>
&gt; support.<br>
&gt;<br>
&gt; Alternatively, if you have this somewhere that I clone and launch a<br=
>
&gt; test build, I can help you out .. but I won&#39;t be able to easily<br=
>
&gt; reproduce that situation from scratch.<br>
<br>
</span>=C2=A0 ok, i found what appears to be a cheap workaround for this, a=
nd i&#39;m<br>
curious if this makes any sense.=C2=A0 recall original kernel recipe<br>
directory structure:<br>
<br>
=C2=A0 linux-windriver/<br>
=C2=A0 =C2=A0 uio.*<br>
=C2=A0 =C2=A0 ssd.*<br>
=C2=A0 =C2=A0 mxeiii/<br>
=C2=A0 =C2=A0 =C2=A0 mm.*<br>
<br>
when SRC_URI mentioned only that first-level stuff (uio, ssd), then<br>
the configure step worked fine. but as soon as i added the mm.scc file<br>
to SRC_URI, it just seems that any descent into a lower-level<br>
directory based on OVERRIDES totally bones the search process. so, i<br>
wondered, how can i work around this?<br>
<br>
=C2=A0 oh, wait, no problem. see, all target boards are powerpc, so<br>
&quot;powerpc&quot; is one of the possible OVERRIDES. obviously, there is n=
o<br>
*actual* value in using an OVERRIDE for which *every* *single* *board*<br>
is compatible ... oh, wait, there is.<br>
<br>
=C2=A0 so i restructured:<br>
<br>
=C2=A0 linux-windriver/<br>
=C2=A0 =C2=A0 mxeiii/<br>
=C2=A0 =C2=A0 =C2=A0 mm.*<br>
=C2=A0 =C2=A0 powerpc/<br>
=C2=A0 =C2=A0 =C2=A0 uio.*<br>
=C2=A0 =C2=A0 =C2=A0 ssd.*<br>
<br>
it looks idiotic to take the uio.* and ssd.* content, which should be<br>
generic, and deliberately put it in a subdirectory, unless that<br>
subdirectory represents an OVERRIDE which matches every board and, ta<br>
da, solves the problem.<br>
<br>
=C2=A0 i need a drink.</blockquote><div><br></div><div>Following up to the =
list. I was able to take a reproducer for this and indeed find some *really=
*</div><div>old code that didn&#39;t handle a trailing / properly. The end =
result was the inability to find the</div><div>configuration fragments that=
 were not in subdirectories.</div><div><br></div><div>Amazing ability to sh=
oot through corner cases and trigger the problem.</div><div><br></div><div>=
I&#39;ve made the minor tweak to the processing and will let it soak for a =
bit .. but this should</div><div>now be solved.</div><div><br></div><div>..=
 now I need a drink.</div><div><br></div><div>Bruce</div><div>=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex">=C2=A0</blockquote><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">
<div class=3D"HOEnZb"><div class=3D"h5"><br>
rday<br>
<br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Ontario,=
 CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 <a href=3D"http://crashcourse.ca" rel=3D"noreferrer" target=3D"_=
blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a=
 href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">ht=
tp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linkedin.=
com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.com/=
in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
<br>
<br>
</div></div></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>=
<div class=3D"gmail_signature">&quot;Thou shalt not follow the NULL pointer=
, for chaos and madness await thee at its end&quot;</div>
</div></div>

--001a11352e462d78e40530f5b9ae--
