Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FF98E00872; Mon,  1 Dec 2014 08:10:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E944E0030B
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 08:10:44 -0800 (PST)
Received: by mail-qc0-f181.google.com with SMTP id m20so7952856qcx.12
	for <yocto@yoctoproject.org>; Mon, 01 Dec 2014 08:10:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=pfWYnN9uskI6qJLcxa3tVJBpBSxgoZMjGuOw7NlWhJI=;
	b=gOJJ70pRr+5FDYsRnwEj1FxKAZcgqyJxkTeu2r8Z5hBFMXjoDVAOkAttsDQUz9JLXt
	RgMbh5Un0+psQJGnjdG4HC7TROtTT8sGAIv78GQfHR60YG18KnsScq52ZH5MBDNWGSur
	/OgyHYseOvHU57Qlg/Onq0lMD9PoFOyL1FrvF8JQQ2FuUC+Unm0BtYB8j3QX5/x+tfOZ
	wqgYO40py9E63kEyTSxmNzK0ldmH2TII84/6Jm0vtiBbhUGcF3KLXTwjGKRytkEQ9O8q
	4T+hpl02mNP5m8zah+YUxw/TKIX6A/n6gpHj2Qb6ZMvX5uMmE60yQ1R+vjzZooVDtIh1
	ie1A==
X-Gm-Message-State: ALoCoQmr0Q0Gte/rH2q33RHxVHfX0HsjIGVIXTNUb0GDD+jKanYAWE4CQz6neY3oIZuYHfSn6Fm1
X-Received: by 10.140.38.170 with SMTP id t39mr48512441qgt.15.1417450244113;
	Mon, 01 Dec 2014 08:10:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.231 with HTTP; Mon, 1 Dec 2014 08:10:23 -0800 (PST)
In-Reply-To: <547C8D29.9060007@jenslucius.de>
References: <547C8D29.9060007@jenslucius.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 1 Dec 2014 16:10:23 +0000
Message-ID: <CAJTo0LYDwSxccfiQ9p7pwZ8HS8mzFQ1ZfDEUriJs3tRhOqe12w@mail.gmail.com>
To: Jens Lucius <incnews@jenslucius.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom recipe not working with 1.7.0 any more
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
X-List-Received-Date: Mon, 01 Dec 2014 16:10:51 -0000
Content-Type: multipart/alternative; boundary=001a11c1219649a1e4050929dace

--001a11c1219649a1e4050929dace
Content-Type: text/plain; charset=UTF-8

On 1 December 2014 at 15:45, Jens Lucius <incnews@jenslucius.de> wrote:

> do_configure_prepend () {
>         echo "#define PJMEDIA_AUDIO_DEV_HAS_ALSA       1" >
> pjlib/include/pj/config_site.h
>         echo "#define PJMEDIA_AUDIO_DEV_HAS_PORTAUDIO  0" >>
> pjlib/include/pj/config_site.h
> }
>
> Does complain about not finding the directory. Seems the work is not done
> from within the work directory any more?
>
> I fixed the path with a ${S} but then I ran into the next issue:
>
> The content of the configure command is a "./aconfigure" which is also not
> working any more (because we are in the wrong dir?).
>

My suspicion is that you're inheriting autotools.  With the latest release,
autotools.bbclass does out-of-tree builds by default (and provides
autotools-brokensep.bbclass for recipes which are broken with respect to
out-of-tree builds).

This means that many tasks are executed in $B which is not the same as $S
anymore, so your configure task should be using ${S} in the paths.

That said you also say that your configure command is "./aconfigure", so it
sounds like you shouldn't be inheriting autotools at all.

Ross

--001a11c1219649a1e4050929dace
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 December 2014 at 15:45, Jens Lucius <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:incnews@jenslucius.de" target=3D"_blank">incnews@jenslucius.de</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"overflow:hi=
dden">do_configure_prepend () {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;#define PJMEDIA_AUDIO_DEV_HAS_ALSA=
=C2=A0 =C2=A0 =C2=A0 =C2=A01&quot; &gt; pjlib/include/pj/config_site.h<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot;#define PJMEDIA_AUDIO_DEV_HAS_<u></u=
>PORTAUDIO=C2=A0 0&quot; &gt;&gt; pjlib/include/pj/config_site.h<br>
}<br>
<br>
Does complain about not finding the directory. Seems the work is not done f=
rom within the work directory any more?<br>
<br>
I fixed the path with a ${S} but then I ran into the next issue:<br>
<br>
The content of the configure command is a &quot;./aconfigure&quot; which is=
 also not working any more (because we are in the wrong dir?).</div></block=
quote></div><br>My suspicion is that you&#39;re inheriting autotools.=C2=A0=
 With the latest release, autotools.bbclass does out-of-tree builds by defa=
ult (and provides autotools-brokensep.bbclass for recipes which are broken =
with respect to out-of-tree builds).</div><div class=3D"gmail_extra"><br></=
div><div class=3D"gmail_extra">This means that many tasks are executed in $=
B which is not the same as $S anymore, so your configure task should be usi=
ng ${S} in the paths.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">That said you also say that your configure command is &quo=
t;./aconfigure&quot;, so it sounds like you shouldn&#39;t be inheriting aut=
otools at all.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmai=
l_extra">Ross</div></div>

--001a11c1219649a1e4050929dace--
