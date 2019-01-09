Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84C09E00C71; Wed,  9 Jan 2019 10:01:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com
	[209.85.217.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 723CEE00C5F
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 10:01:01 -0800 (PST)
Received: by mail-vs1-f46.google.com with SMTP id z3so5309465vsf.7
	for <yocto@yoctoproject.org>; Wed, 09 Jan 2019 10:01:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=WRp6kbZoY6eCMqPDSJPwkk4iaOkrUTu+/GKg0mMiLJ0=;
	b=cuSNZpMHNsDc11RMzGYSM6GZ0MHvLHKTLQEApnkXVTeL+0G8WSFsydYQW+ZrEx7KRs
	GJDrVOT0KkKGgq5LuQXpXHy5LQ3Xr9c/xllQbV6Lc0ISU52405voVuk8RicrnQ2cgnCb
	y/vHgwChbXTqaGK00aT2HomjPCH7TrPcZgZQo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=WRp6kbZoY6eCMqPDSJPwkk4iaOkrUTu+/GKg0mMiLJ0=;
	b=oenDz9SP66hV/Qzmq0YDCewubuyS0wkmL5Q/OHKw4ifYcA58Vp3KoB8SMrzHiax2jW
	QeIBdU2F9MtXdnNzt2aWq/RivzkG9WxM4TBjnGS1rdARbMX7RwVz8hUx+bajwczMW/I4
	WEHTJBhWX9QxJaml7xvLCd6yNDZtbPANhj3MxqCcY6aXoWLqQrqfxr8L8QrKNzAVMpit
	jKN7oK57ms/XLAdpUQA24Pc161xO01piCb+KtWhvMKSHKIUvCdY57MmI0mUOepevmr+f
	VkQFpzWXei4Odv9bgJYAmxKbOeb4TXIhFSzFvAgHampOHLDpmU6G9L+BzDnGD846ihYk
	Anig==
X-Gm-Message-State: AJcUukdvxFJqyASnh348UWk54d6epMNQOrM+zX27i5zMywwQ9P+GYxdH
	3oHrzjMzFHeHPjafCIIWG4LaokwCVR/wZWDuIymTGA==
X-Google-Smtp-Source: ALg8bN5yA2F8nR0LDTH4k/5nKXDtjcn0vyHoAnsMdMIhj6oQif120KLf7Sm7g7AtRYJR9x+41xY6LamjHQa9uCkINvc=
X-Received: by 2002:a67:1d03:: with SMTP id d3mr2890822vsd.154.1547056860486; 
	Wed, 09 Jan 2019 10:01:00 -0800 (PST)
MIME-Version: 1.0
References: <20190107211837.25225-1-anibal.limon@linaro.org>
	<2807dd3a7edf71f4b1d14e385d54184cd07cbc0d.camel@linuxfoundation.org>
In-Reply-To: <2807dd3a7edf71f4b1d14e385d54184cd07cbc0d.camel@linuxfoundation.org>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Wed, 9 Jan 2019 12:00:49 -0600
Message-ID: <CA+_AqiuJ7XenDosBWi_xZ=UMiBf8f8A50zUbvfUjxLiZgaC7GQ@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCHv2][ptest-runner] ptest-runner: Add support to report duration of each ptest
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
X-List-Received-Date: Wed, 09 Jan 2019 18:01:02 -0000
Content-Type: multipart/alternative; boundary="0000000000009e1694057f0a3eae"

--0000000000009e1694057f0a3eae
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 8 Jan 2019 at 14:00, <richard.purdie@linuxfoundation.org> wrote:

> On Mon, 2019-01-07 at 15:18 -0600, An=C3=ADbal Lim=C3=B3n wrote:
> > In stdout reported as,
> >
> > ...
> > BEGIN: ptest-dir
> > ...
> > DURATION: N
> > END: ptest-dir
> > ...
> >
> > In XML reported as,
> >
> > ...
> > <testcase classname=3D'test1' name=3D'run-ptest'>
> >       <duration>N</duration>
> > </testcase>
> > ...
> >
> > Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linaro.org>
> > ---
> >  tests/data/reference.xml |  2 ++
> >  tests/utils.c            | 20 ++++++++++++--------
> >  utils.c                  | 19 ++++++++++++-------
> >  utils.h                  |  2 +-
> >  4 files changed, 27 insertions(+), 16 deletions(-)
>
> I've not looked at the code detail but the above looks good to me and
> will significantly help ptest usage! :)
>
> Once this is in are you able to help update the recipe and pass this
> data through to the the oe-selftest json report?
>

I will send the recipe upgrade, What is the selftest json report?, I'm not
aware.

Regards,
Anibal


>
> Cheers,
>
> Richard
>
>

--0000000000009e1694057f0a3eae
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">On Tue, 8 Jan 2019 at 14:00, &lt;<a href=3D"mailto:richard=
.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, 2019=
-01-07 at 15:18 -0600, An=C3=ADbal Lim=C3=B3n wrote:<br>
&gt; In stdout reported as,<br>
&gt; <br>
&gt; ...<br>
&gt; BEGIN: ptest-dir<br>
&gt; ...<br>
&gt; DURATION: N<br>
&gt; END: ptest-dir<br>
&gt; ...<br>
&gt; <br>
&gt; In XML reported as,<br>
&gt; <br>
&gt; ...<br>
&gt; &lt;testcase classname=3D&#39;test1&#39; name=3D&#39;run-ptest&#39;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;duration&gt;N&lt;/duration&gt;<br>
&gt; &lt;/testcase&gt;<br>
&gt; ...<br>
&gt; <br>
&gt; Signed-off-by: An=C3=ADbal Lim=C3=B3n &lt;<a href=3D"mailto:anibal.lim=
on@linaro.org" target=3D"_blank">anibal.limon@linaro.org</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 tests/data/reference.xml |=C2=A0 2 ++<br>
&gt;=C2=A0 tests/utils.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 20 ++++=
++++++++--------<br>
&gt;=C2=A0 utils.c=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 | 19 ++++++++++++-------<br>
&gt;=C2=A0 utils.h=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 |=C2=A0 2 +-<br>
&gt;=C2=A0 4 files changed, 27 insertions(+), 16 deletions(-)<br>
<br>
I&#39;ve not looked at the code detail but the above looks good to me and<b=
r>
will significantly help ptest usage! :)<br>
<br>
Once this is in are you able to help update the recipe and pass this<br>
data through to the the oe-selftest json report?<br></blockquote><div><br><=
/div><div>I will send the recipe upgrade, What is the selftest json report?=
, I&#39;m not aware.</div><div><br></div><div>Regards,</div><div>Anibal</di=
v><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div></div>

--0000000000009e1694057f0a3eae--
