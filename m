Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E536E00DFA; Thu, 21 Dec 2017 07:16:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB0B7E00DA4
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 07:16:21 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id l63so7673359vke.5
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 07:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VPl3ZuBqhHWYOllhYdP2HOFhxZQJLplQZlsN6dFJurg=;
	b=yMzFQIe2aJ5PGghLLTeuN9Tkxud17gYyN9Uzl8eIRUGnEOHZZn5vLP8y8A/BCzvc9n
	uaaa/T38HQuRyeSFoDThAdxxOH0ANFilPnPU38ftTnLJAidhuUNA67bwdnV41tDk9zqz
	7UV4VIQih8a1FObu0GRZGdNWPNwY08dHNseWPaE7JxoywApOpfH+xuxPdHGyaWD5W7gi
	wePccN/nLiGhkeLZeDss4TvQSIjIbBZHMUi9h9k39VX7PQa9i7Kag9sZDF7d6uJq5SYG
	D0a3XabVzF0YYmk6mDaRbMpNd1FvlZhS+xjnRkzI7huJrTAQjXgSWCL6NyYwTtwrKajh
	kfpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VPl3ZuBqhHWYOllhYdP2HOFhxZQJLplQZlsN6dFJurg=;
	b=P3SNnosk6Qkdch6dR1G8zUuSEMzYl1Ml5hV932G3IwW5rWxjQ0xkjCFsGR8VPOg6LZ
	9Nhk4tgbI56wVVnwRGHgzDLtuHIaTBdq6rfF7fqD3i/6PQWxWgPqdFSq0A/Flog4TKmL
	uKCN3Qci9Psjr+98SFBI8jhYbAs306VOaAZEiANZ0sx/acKqyHh5M+bW43GdFty79gwY
	pUC3chw8lKSki/fvdLBUSF6WhBH7hz9xysaKvDmWyNfRv+LUjnMfKSF7Zl+OzyL5dmGK
	3y4HzcWDF08N8pasAbg1D8ElLVKn918l/eE6BESKNPlr5DkFtpJs7XSYoQbl0THaBPJ1
	mR4w==
X-Gm-Message-State: AKGB3mL+11RBdpP/cGfPvhBM4EmZLcxXNY0hXzkQniM5eM8viPw0EbdC
	vpsnrKwXvtgqNLX2RPr459IUAS0Ho9RFYPkGxyJeSg==
X-Google-Smtp-Source: ACJfBov6+Wqc2etmxdgT/UYSv3Ac7strBcphFQHOWyNXw+YDwbHRDFXXkpoUu93n9NGdx5Nnwki6DP0sLNWaIzoJ6K4=
X-Received: by 10.31.92.211 with SMTP id q202mr3996085vkb.76.1513869380867;
	Thu, 21 Dec 2017 07:16:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.22.41 with HTTP; Thu, 21 Dec 2017 07:15:40 -0800 (PST)
X-Originating-IP: [86.140.154.13]
In-Reply-To: <CALw8SCVty32Ob50S8qrdxUUmm+jyG-KibHq7GV26K+yScPdLEg@mail.gmail.com>
References: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
	<CALw8SCXV1DotXLNLz3UH0Wswz6F-y=ZraT=e9HWtBWqbkqnzGg@mail.gmail.com>
	<CAPyrkgxm5DAU+2X7nwSpENv7534e1gDzS3uA4BHq2SX2po8Z9Q@mail.gmail.com>
	<CAPyrkgwLJGpY3_WioGifiisa0VEvTGjdBV-Jc6nRw+bJ1cGn8Q@mail.gmail.com>
	<CALw8SCVty32Ob50S8qrdxUUmm+jyG-KibHq7GV26K+yScPdLEg@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 21 Dec 2017 15:15:40 +0000
Message-ID: <CAK18fxF_mU3e9-aBEWbAW_ewce3kvOLCFXtExDK6rMJH=C2KWw@mail.gmail.com>
To: Mirza Krak <mirza.krak@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Layer documentation for meta-raspberrypi
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
X-List-Received-Date: Thu, 21 Dec 2017 15:16:23 -0000
Content-Type: multipart/alternative; boundary="001a114e566eaef1610560db2e29"

--001a114e566eaef1610560db2e29
Content-Type: text/plain; charset="UTF-8"

Nice. Good job.

--
Andrei Gherzan

On Mon, Dec 18, 2017 at 9:57 PM, Mirza Krak <mirza.krak@gmail.com> wrote:

> On Dec 18, 2017 20:50, "Paul Barker" <pbarker@toganlabs.com> wrote:
>
> On Mon, Dec 11, 2017 at 12:20 PM, Paul Barker <pbarker@toganlabs.com>
> wrote:
> > On Mon, Dec 11, 2017 at 12:08 PM, Mirza Krak <mirza.krak@gmail.com>
> wrote:
> >> 2017-12-11 12:55 GMT+01:00 Paul Barker <pbarker@toganlabs.com>:
> >>> Hi all,
> >>>
> >>> As a quick announcement, the layer documentation for meta-raspberrypi
> >>> is now available on Read the Docs:
> >>> http://meta-raspberrypi.readthedocs.io/en/latest/
> >>>
>
> >>
> >> One little thing though, the current "theme" used which I assume is
> >> the default Sphinx theme is not optimal IMO.
> >>
>
> >
> > Thanks for the feedback. The conf.py file we're using is just what was
> > generated by sphinx-quickstart with minimal tweaks. It sets html_theme
> > which is obviously overriding the default for read the docs.
> >
> > I think I should be able to get the right behaviour by commenting out
> > the html_theme setting completely. I'll give that a go and see what
> > happens.
> >
>
> That worked. Looks much better!
> http://meta-raspberrypi.readthedocs.io/en/latest/index.html
>
>
> Great job. Agree that it looks much better.
>
> Best Regards
> Mirza
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114e566eaef1610560db2e29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Nice. Good job.<br></div><div class=3D"gmail_extra"><br cl=
ear=3D"all"><div><div class=3D"gmail_signature" data-smartmail=3D"gmail_sig=
nature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div>--</div>Andrei Gherzan<=
/div></div></div></div></div>
<br><div class=3D"gmail_quote">On Mon, Dec 18, 2017 at 9:57 PM, Mirza Krak =
<span dir=3D"ltr">&lt;<a href=3D"mailto:mirza.krak@gmail.com" target=3D"_bl=
ank">mirza.krak@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"auto"><span class=3D""><div><div class=3D"gmail_extra"><=
div class=3D"gmail_quote">On Dec 18, 2017 20:50, &quot;Paul Barker&quot; &l=
t;<a href=3D"mailto:pbarker@toganlabs.com" target=3D"_blank">pbarker@toganl=
abs.com</a>&gt; wrote:<br type=3D"attribution"><blockquote class=3D"m_14324=
03568638731255quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div class=3D"m_1432403568638731255quoted-text">On Mon, D=
ec 11, 2017 at 12:20 PM, Paul Barker &lt;<a href=3D"mailto:pbarker@toganlab=
s.com" target=3D"_blank">pbarker@toganlabs.com</a>&gt; wrote:<br>
&gt; On Mon, Dec 11, 2017 at 12:08 PM, Mirza Krak &lt;<a href=3D"mailto:mir=
za.krak@gmail.com" target=3D"_blank">mirza.krak@gmail.com</a>&gt; wrote:<br=
>
&gt;&gt; 2017-12-11 12:55 GMT+01:00 Paul Barker &lt;<a href=3D"mailto:pbark=
er@toganlabs.com" target=3D"_blank">pbarker@toganlabs.com</a>&gt;:<br>
&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; As a quick announcement, the layer documentation for meta-rasp=
berrypi<br>
&gt;&gt;&gt; is now available on Read the Docs:<br>
&gt;&gt;&gt; <a href=3D"http://meta-raspberrypi.readthedocs.io/en/latest/" =
rel=3D"noreferrer" target=3D"_blank">http://meta-raspberrypi.readth<wbr>edo=
cs.io/en/latest/</a><br>
&gt;&gt;&gt;<br>
<br>
&gt;&gt;<br>
</div><div class=3D"m_1432403568638731255quoted-text">&gt;&gt; One little t=
hing though, the current &quot;theme&quot; used which I assume is<br>
&gt;&gt; the default Sphinx theme is not optimal IMO.<br>
&gt;&gt;<br>
<br>
&gt;<br>
</div><div class=3D"m_1432403568638731255quoted-text">&gt; Thanks for the f=
eedback. The conf.py file we&#39;re using is just what was<br>
&gt; generated by sphinx-quickstart with minimal tweaks. It sets html_theme=
<br>
&gt; which is obviously overriding the default for read the docs.<br>
&gt;<br>
&gt; I think I should be able to get the right behaviour by commenting out<=
br>
&gt; the html_theme setting completely. I&#39;ll give that a go and see wha=
t<br>
&gt; happens.<br>
&gt;<br>
<br>
</div>That worked. Looks much better!<br>
<a href=3D"http://meta-raspberrypi.readthedocs.io/en/latest/index.html" rel=
=3D"noreferrer" target=3D"_blank">http://meta-raspberrypi.readth<wbr>edocs.=
io/en/latest/index.html</a><br>
<br>
</blockquote></div></div></div><div dir=3D"auto"><br></div></span><div dir=
=3D"auto">Great job. Agree that it looks much better.=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Best Regards</div><span class=3D"HOEn=
Zb"><font color=3D"#888888"><div dir=3D"auto">Mirza=C2=A0</div><div dir=3D"=
auto"><div class=3D"gmail_extra"><br></div></div></font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114e566eaef1610560db2e29--
