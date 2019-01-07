Return-Path: <anibal.limon@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C137BE00CAD; Mon,  7 Jan 2019 13:16:00 -0800 (PST)
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
	*      [209.85.221.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com
	[209.85.221.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9133E009B1
	for <yocto@yoctoproject.org>; Mon,  7 Jan 2019 13:15:59 -0800 (PST)
Received: by mail-vk1-f176.google.com with SMTP id j23so404720vke.13
	for <yocto@yoctoproject.org>; Mon, 07 Jan 2019 13:15:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=U69V8c3wCAlzGkmsB7gZ+7AfwPo8UbO+RfL4zelV9zE=;
	b=EOJzMtiAQ50V1ALxJ2561ycE2AeW4m2vE2AfCFb953tqaHQ+wKHfuiDHrRUsLnc8bP
	1hbEU++L4sNCNSDWQ6eR352DZvqeNq9tbzm21F5C1aRDYRFJASWxnAPTd7lRoPnHYmhN
	qYU1P8FKWX+J0YU0ZsWJ2fk3P/dvz3u8jjSL4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=U69V8c3wCAlzGkmsB7gZ+7AfwPo8UbO+RfL4zelV9zE=;
	b=HTqBxL06DG6fsLkng5h0b7dzgRG/reykTE4Kvbh4yeLXmvbDa43VwThRgP9VdhRabp
	KiF5LNVHH1ejd05AtZQpUooDVkgm4n6zyE+4b5/Co8ZP7eAIedF84NXvoJNg9BEgFU2E
	WJtZ20FQSiWL0PKfo2ufw61HTK/69SFLTsRQSpV3vNST2ZNxi26N9sJnNXMT1Xn08nEk
	fMf/b+HqNTQZJH1ETm8rzD3v02WqOHO0s8KmySphV295VlgcmrMg+eul5lEUsBF72s52
	0fdPES0cTkg9U7dPMwWZiAbIZP9dm5DyNBCN6mXdt3yPVJP68fbYa2O0v67Rl0hyzvpP
	HTGA==
X-Gm-Message-State: AJcUukdNutuFpwG3Iebxr/JC1rvS+qjcj86XdZYPzyJvor0E5t7LXTv5
	NSv6saj0rKTRKbCqSa9NO1fxCGeO+Olb5YulUaLeGg==
X-Google-Smtp-Source: ALg8bN7mPFAjrQq0CqtklR/FIBjm088d9OgYz+QJEXbhWsUe2JAj8PeF7A9o+1S9k10j4VTxrs/xxBPNuXN4l24K4y0=
X-Received: by 2002:a1f:54e:: with SMTP id 75mr22640251vkf.71.1546895758986;
	Mon, 07 Jan 2019 13:15:58 -0800 (PST)
MIME-Version: 1.0
References: <20190106174328.20978-1-anibal.limon@linaro.org>
	<b31c7613c6c65d745ea808bd16a97e8d79d03843.camel@linuxfoundation.org>
In-Reply-To: <b31c7613c6c65d745ea808bd16a97e8d79d03843.camel@linuxfoundation.org>
From: Anibal Limon <anibal.limon@linaro.org>
Date: Mon, 7 Jan 2019 15:15:48 -0600
Message-ID: <CA+_Aqivc1A0H2vhKF8KzvQvnbQ4BgyfZapwees_tu617n4VJ-g@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][ptest-runner] ptest-runner: Add support to report duration of each ptest
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
X-List-Received-Date: Mon, 07 Jan 2019 21:16:00 -0000
Content-Type: multipart/alternative; boundary="000000000000383273057ee4bc38"

--000000000000383273057ee4bc38
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 7 Jan 2019 at 05:53, <richard.purdie@linuxfoundation.org> wrote:

> On Sun, 2019-01-06 at 11:43 -0600, An=C3=ADbal Lim=C3=B3n wrote:
> > In stdout reported as,
> >
> > ...
> > BEGIN: ptest-dir
> > ...
> > DURATION: Ns
> > END: ptest-dir
> > ...
> >
> > In XML reported as,
> >
> > ...
> > <testcase classname=3D'test1' name=3D'run-ptest'>
> >       <duration>Ns</duration>
> > </testcase>
> > ...
>
> Looks good, thanks!
>
> One minor detail - should this be:
>
> <duration>N</duration>
>
> ?
>
> I'm wondering if we should just mandate duration is in seconds and not
> put units into the field as it would complicate parsing?
>

Yes np, we can remove the units (s).

Regards,
Anibal


>
> Cheers,
>
> Richard
>
>
>

--000000000000383273057ee4bc38
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">On Mon, 7 Jan 2019 at 05:53, &lt;<a href=3D"mailto:richard=
.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sun, 2019=
-01-06 at 11:43 -0600, An=C3=ADbal Lim=C3=B3n wrote:<br>
&gt; In stdout reported as,<br>
&gt; <br>
&gt; ...<br>
&gt; BEGIN: ptest-dir<br>
&gt; ...<br>
&gt; DURATION: Ns<br>
&gt; END: ptest-dir<br>
&gt; ...<br>
&gt; <br>
&gt; In XML reported as,<br>
&gt; <br>
&gt; ...<br>
&gt; &lt;testcase classname=3D&#39;test1&#39; name=3D&#39;run-ptest&#39;&gt=
;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0&lt;duration&gt;Ns&lt;/duration&gt;<br>
&gt; &lt;/testcase&gt;<br>
&gt; ...<br>
<br>
Looks good, thanks!<br>
<br>
One minor detail - should this be:<br>
<br>
&lt;duration&gt;N&lt;/duration&gt;<br>
<br>
?<br>
<br>
I&#39;m wondering if we should just mandate duration is in seconds and not<=
br>
put units into the field as it would complicate parsing?<br></blockquote><d=
iv><br></div><div>Yes np, we can remove the units (s).</div><div><br></div>=
<div>Regards,</div><div>Anibal</div><div>=C2=A0</div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
</blockquote></div></div>

--000000000000383273057ee4bc38--
