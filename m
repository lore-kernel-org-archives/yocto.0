Return-Path: <jerry.lian@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A431E00D4C; Wed,  8 Nov 2017 08:19:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jerry.lian[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.172 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f172.google.com (mail-ot0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDDEFE00CD0
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 08:19:08 -0800 (PST)
Received: by mail-ot0-f172.google.com with SMTP id c47so2745014otj.6
	for <yocto@yoctoproject.org>; Wed, 08 Nov 2017 08:19:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kMzXHYeaA5+IQ1//6OfWScwTbONmZrnxxyoJyLnY7ak=;
	b=upH6YmsxVjFWf5J7nbA5nlwQML9Kuh8QzPBGBJql6SOIjFL9GHJLsaQEMPk+pV/fbQ
	49SUHVnOIGi2mNoQoMx+MvAKkYjKyYEeajM6Lf7X897W5+sExMb3HfUmyqA1jilS8B7P
	6ZOUGSe1nlEINTMTrSFqId0ktS2ZDno1K9YJTInxyUNOpQxK3fnXuLzxO3C8ve+3A8oS
	lyt6GnwQP+8LmXYwG1dk+4VhuK8kL+u9X3G7hEZTNrxmzTH1xXZx7LQTUj5BZI/HjG4u
	bnM5i45aPkIxUlg8ixyZh3kzlIe+P9qU9EwqEwqSqY9LDG4opNaDwt/nGfxG8CUbfDUL
	l6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kMzXHYeaA5+IQ1//6OfWScwTbONmZrnxxyoJyLnY7ak=;
	b=crfKvDllohTvtJPGFuEcmmNW3RWOdMfsEWng7p4wunG9SkWdxRyyetByJRbFhGB1lR
	YBsHkiTVxHZL6/jWDBnNwsp4RimP4K4n+HESigNg2AWG5bdEwBEIrw6F71gQrtrGwjht
	BlFIKTOG8cYXThkU5tVx1+30K/GMtkkzgyDTfhJ6VP/kqAQziXHwvkVaQaPBAsFt04Js
	jw/I2/5dEA5QJc4ILBlB0/PNT7q9nWjykyVBR63aGzPRl89sthsJalQlv+HIX2l2p73r
	kTOY+74UN+TJPS5A3QYCGOlSqs0A2L9mPnXdz9LAKIKhBrrln8vZXBUoAnPHxw9Tm5iE
	9VCA==
X-Gm-Message-State: AJaThX6HQUq01fpesB/xI+lcRe3v/WDWsx2LnsCgpEPTDkBbMPorMrgS
	jZkinRmDn16ZcnxZ88Bqf0H/a4BrVZCuemvS644IcuX+
X-Google-Smtp-Source: AGs4zMYk4NyDjvUkyHv5NtXN77BkVVtC1caE8WbE83JdZDEb+Pj7VJum+sr6cNKjJb/zMZDIJ7I2mnXcBZUnPbat0GY=
X-Received: by 10.157.59.37 with SMTP id z34mr660334otb.201.1510157948195;
	Wed, 08 Nov 2017 08:19:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.113 with HTTP; Wed, 8 Nov 2017 08:19:07 -0800 (PST)
In-Reply-To: <CAP71WjxftWkp_ktMato6aa8m6iEgBpRh9HHwHcMV9kFCAcx=Pg@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
	<CAP71Wjxui5Sy_SuQ+S43eC6_Wc7Nc38YL1uvfJA3BLq5P6oDXg@mail.gmail.com>
	<CAE0QtjNbKsNSioogKnsCeo4jVh75UhLayXFyt0vWX4PvFx796w@mail.gmail.com>
	<CAP71WjxftWkp_ktMato6aa8m6iEgBpRh9HHwHcMV9kFCAcx=Pg@mail.gmail.com>
From: Jerry Lian <jerry.lian@gmail.com>
Date: Wed, 8 Nov 2017 11:19:07 -0500
Message-ID: <CAE0QtjMvXw=Cc+nxZBpjkTi-BexyED66C_hw4LspHw0dL-XwTg@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 16:19:09 -0000
Content-Type: multipart/alternative; boundary="001a1140722e0e99c4055d7b0cc9"

--001a1140722e0e99c4055d7b0cc9
Content-Type: text/plain; charset="UTF-8"

I am not talking about my own layer or recipe.
It happens even when I run the demo QEMU/beaglebone builds.
(I just download poky, and make NO modifications)

On Wed, Nov 8, 2017 at 11:15 AM, Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

> On Wed, Nov 8, 2017 at 5:13 PM, Jerry Lian <jerry.lian@gmail.com> wrote:
> > So according to what you said: the build will fail no matter what.
> > But that is not my observation: my build succeed eventually (but you just
> > need to rerun many times)!!!
>
> ah. sorry, i missed that part. So then it's probably a bug in the
> recipe, missing dependency or something along these lines. It would be
> legit to report this bug then.
>
>
> >
> > On Wed, Nov 8, 2017 at 10:53 AM, Nicolas Dechesne
> > <nicolas.dechesne@linaro.org> wrote:
> >>
> >> On Wed, Nov 8, 2017 at 4:49 PM, Jerry Lian <jerry.lian@gmail.com>
> wrote:
> >> > I am not sure whether it is a bug or an error:
> >> > * Quite often, bitbake will fail before finishing, with message like:
> >> > ...
> >> > task failed with exit code 1...
> >> > * But if you rerun bitbake, it will continue to build.
> >> > * So sometimes I have to rerun many times for finish one build ----
> >> > annoying!
> >> > (by the way, my CPU can run 16 threads)
> >> >
> >> > Any idea to clear this annoying bug?
> >>
> >> it's not a bug. bitbake is using parallel tasks a lot. At any time it
> >> is running N tasks. When one task fails, it will wait for N-1 ongoing
> >> tasks to finish, and then stops.
> >>
> >> If you restart again, it will likely try N new tasks again, and the
> >> same task that failed,  will fail again, it will wait for N-1 tasks to
> >> complete.
> >>
> >> if you do that several times, you will  end up in a situation where
> >> the only task that can run is the 'failing' one, so it will try 1 task
> >> and fail immediately.
> >>
> >> > thanks.
> >> >
> >> > --
> >> > _______________________________________________
> >> > yocto mailing list
> >> > yocto@yoctoproject.org
> >> > https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >
> >
>

--001a1140722e0e99c4055d7b0cc9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am not talking about my own layer or recipe.<br></d=
iv>It happens even when I run the demo QEMU/beaglebone builds.<br>(I just d=
ownload poky, and make NO modifications)</div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On Wed, Nov 8, 2017 at 11:15 AM, Nicolas Deche=
sne <span dir=3D"ltr">&lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" ta=
rget=3D"_blank">nicolas.dechesne@linaro.org</a>&gt;</span> wrote:<br><block=
quote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc=
 solid;padding-left:1ex"><span class=3D"">On Wed, Nov 8, 2017 at 5:13 PM, J=
erry Lian &lt;<a href=3D"mailto:jerry.lian@gmail.com">jerry.lian@gmail.com<=
/a>&gt; wrote:<br>
&gt; So according to what you said: the build will fail no matter what.<br>
&gt; But that is not my observation: my build succeed eventually (but you j=
ust<br>
&gt; need to rerun many times)!!!<br>
<br>
</span>ah. sorry, i missed that part. So then it&#39;s probably a bug in th=
e<br>
recipe, missing dependency or something along these lines. It would be<br>
legit to report this bug then.<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
&gt;<br>
&gt; On Wed, Nov 8, 2017 at 10:53 AM, Nicolas Dechesne<br>
&gt; &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.dechesne@li=
naro.org</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Nov 8, 2017 at 4:49 PM, Jerry Lian &lt;<a href=3D"mailto:j=
erry.lian@gmail.com">jerry.lian@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; I am not sure whether it is a bug or an error:<br>
&gt;&gt; &gt; * Quite often, bitbake will fail before finishing, with messa=
ge like:<br>
&gt;&gt; &gt; ...<br>
&gt;&gt; &gt; task failed with exit code 1...<br>
&gt;&gt; &gt; * But if you rerun bitbake, it will continue to build.<br>
&gt;&gt; &gt; * So sometimes I have to rerun many times for finish one buil=
d ----<br>
&gt;&gt; &gt; annoying!<br>
&gt;&gt; &gt; (by the way, my CPU can run 16 threads)<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Any idea to clear this annoying bug?<br>
&gt;&gt;<br>
&gt;&gt; it&#39;s not a bug. bitbake is using parallel tasks a lot. At any =
time it<br>
&gt;&gt; is running N tasks. When one task fails, it will wait for N-1 ongo=
ing<br>
&gt;&gt; tasks to finish, and then stops.<br>
&gt;&gt;<br>
&gt;&gt; If you restart again, it will likely try N new tasks again, and th=
e<br>
&gt;&gt; same task that failed,=C2=A0 will fail again, it will wait for N-1=
 tasks to<br>
&gt;&gt; complete.<br>
&gt;&gt;<br>
&gt;&gt; if you do that several times, you will=C2=A0 end up in a situation=
 where<br>
&gt;&gt; the only task that can run is the &#39;failing&#39; one, so it wil=
l try 1 task<br>
&gt;&gt; and fail immediately.<br>
&gt;&gt;<br>
&gt;&gt; &gt; thanks.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; --<br>
&gt;&gt; &gt; ______________________________<wbr>_________________<br>
&gt;&gt; &gt; yocto mailing list<br>
&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.=
org</a><br>
&gt;&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listi=
nfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
</div></div></blockquote></div><br></div>

--001a1140722e0e99c4055d7b0cc9--
