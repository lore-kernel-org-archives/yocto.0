Return-Path: <mirza.krak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21025E00D6B; Mon, 18 Dec 2017 13:57:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mirza.krak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f170.google.com (mail-qk0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20B41E00CE2
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 13:57:26 -0800 (PST)
Received: by mail-qk0-f170.google.com with SMTP id c85so6099842qkh.13
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 13:57:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=G54TPmzOdMzKelRAq3OLrooSAj+R7fLpZuBuG64irfw=;
	b=RVb6cTA4+GnBi/pM1hqJoK/L3jnveppe4yDk6+57U/MLPW6zZxxGJGsEe+cMz2wMUR
	dGmzgsF0M9T1eTUEeARKpu1UuZkxhVkRdFoeNQZOCiBThB4ZaMRSJL6dWAs599DDb2kY
	++waqPpq33Nuf1Xaqt8BOpXreQG8NkbQY0EAINUtILvZxQTidB26d4xTvSe2xzuoIe1D
	ec0W8dbYvhl1MmNPE5JRuprtaY65JlWze9Oe+TWjPwo/LHUD+vu0md2rWfROuRkzPCKp
	yInEYANErVoufind1ALWD+eKrTqrXbAHc04cJYG5PCX8eUT3tl6Tt5BgsytvduatAiTK
	xSpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=G54TPmzOdMzKelRAq3OLrooSAj+R7fLpZuBuG64irfw=;
	b=fPO492Li+Aq6RBS8HLiOgdcdhSWpk0OX1anIUzIdVFFequ7P98wM3cZLv+L1dQ+VYM
	YnWjlUxLwaaxrMsJgtzpwiJwFsJSo1wNS5RdqgJJvHSs6VcaO1+sZoEpDDSGy1kawZOa
	/yUX6ipsiMoGS2RRkLDycdc6qbcALRZuJJ+XTtrci5Zj+Sqo8+SxRjwskRmi7x3LQBsp
	64qRebWKP6imWacFmRZUeNLRr7Gv4hm4PLtSOMmdTs0tA4jlIy/w6zVrXr10/eK2/y1A
	uQ44ALrx2MZlz19fTlNEhYJJcEQQR213LmbV1pMa3J6fZ9Rgl/V1OGTPHpZqrv9gW0zA
	aUOg==
X-Gm-Message-State: AKGB3mIYKVGMPtW5Ud4DvnjO/te1l/0is0dg96VEeyUZv2T4vEHTTAWN
	RbH7NoXMOVAnvyDVz45aPmzKAAh76BrZ4QVkVYQ=
X-Google-Smtp-Source: ACJfBotTwADYHDT98pHUaVmFJiS8buohepOz/tlTvFxr5DZLBjOEC+7vv0vEYVNcronPshuAGSa3WcbbWBaYmA+aeV4=
X-Received: by 10.55.42.96 with SMTP id q93mr1763324qkh.53.1513634246371; Mon,
	18 Dec 2017 13:57:26 -0800 (PST)
MIME-Version: 1.0
Received: by 10.200.15.141 with HTTP; Mon, 18 Dec 2017 13:57:25 -0800 (PST)
Received: by 10.200.15.141 with HTTP; Mon, 18 Dec 2017 13:57:25 -0800 (PST)
In-Reply-To: <CAPyrkgwLJGpY3_WioGifiisa0VEvTGjdBV-Jc6nRw+bJ1cGn8Q@mail.gmail.com>
References: <CAPyrkgyNO2D6rO0gHb5bvDDa_PHEqeVy5HwN4WP8qm4HQxkM3A@mail.gmail.com>
	<CALw8SCXV1DotXLNLz3UH0Wswz6F-y=ZraT=e9HWtBWqbkqnzGg@mail.gmail.com>
	<CAPyrkgxm5DAU+2X7nwSpENv7534e1gDzS3uA4BHq2SX2po8Z9Q@mail.gmail.com>
	<CAPyrkgwLJGpY3_WioGifiisa0VEvTGjdBV-Jc6nRw+bJ1cGn8Q@mail.gmail.com>
From: Mirza Krak <mirza.krak@gmail.com>
Date: Mon, 18 Dec 2017 22:57:25 +0100
Message-ID: <CALw8SCVty32Ob50S8qrdxUUmm+jyG-KibHq7GV26K+yScPdLEg@mail.gmail.com>
To: Paul Barker <pbarker@toganlabs.com>
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
X-List-Received-Date: Mon, 18 Dec 2017 21:57:30 -0000
Content-Type: multipart/alternative; boundary="001a11494a4a932cdb0560a46f4e"

--001a11494a4a932cdb0560a46f4e
Content-Type: text/plain; charset="UTF-8"

On Dec 18, 2017 20:50, "Paul Barker" <pbarker@toganlabs.com> wrote:

On Mon, Dec 11, 2017 at 12:20 PM, Paul Barker <pbarker@toganlabs.com> wrote:
> On Mon, Dec 11, 2017 at 12:08 PM, Mirza Krak <mirza.krak@gmail.com> wrote:
>> 2017-12-11 12:55 GMT+01:00 Paul Barker <pbarker@toganlabs.com>:
>>> Hi all,
>>>
>>> As a quick announcement, the layer documentation for meta-raspberrypi
>>> is now available on Read the Docs:
>>> http://meta-raspberrypi.readthedocs.io/en/latest/
>>>

>>
>> One little thing though, the current "theme" used which I assume is
>> the default Sphinx theme is not optimal IMO.
>>

>
> Thanks for the feedback. The conf.py file we're using is just what was
> generated by sphinx-quickstart with minimal tweaks. It sets html_theme
> which is obviously overriding the default for read the docs.
>
> I think I should be able to get the right behaviour by commenting out
> the html_theme setting completely. I'll give that a go and see what
> happens.
>

That worked. Looks much better!
http://meta-raspberrypi.readthedocs.io/en/latest/index.html


Great job. Agree that it looks much better.

Best Regards
Mirza

--001a11494a4a932cdb0560a46f4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div class=3D"gmail_extra"><div class=3D"gmail_quote=
">On Dec 18, 2017 20:50, &quot;Paul Barker&quot; &lt;<a href=3D"mailto:pbar=
ker@toganlabs.com">pbarker@toganlabs.com</a>&gt; wrote:<br type=3D"attribut=
ion"><blockquote class=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div class=3D"quoted-text">On Mon, Dec 11, 20=
17 at 12:20 PM, Paul Barker &lt;<a href=3D"mailto:pbarker@toganlabs.com">pb=
arker@toganlabs.com</a>&gt; wrote:<br>
&gt; On Mon, Dec 11, 2017 at 12:08 PM, Mirza Krak &lt;<a href=3D"mailto:mir=
za.krak@gmail.com">mirza.krak@gmail.com</a>&gt; wrote:<br>
&gt;&gt; 2017-12-11 12:55 GMT+01:00 Paul Barker &lt;<a href=3D"mailto:pbark=
er@toganlabs.com">pbarker@toganlabs.com</a>&gt;:<br>
&gt;&gt;&gt; Hi all,<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; As a quick announcement, the layer documentation for meta-rasp=
berrypi<br>
&gt;&gt;&gt; is now available on Read the Docs:<br>
&gt;&gt;&gt; <a href=3D"http://meta-raspberrypi.readthedocs.io/en/latest/" =
rel=3D"noreferrer" target=3D"_blank">http://meta-raspberrypi.<wbr>readthedo=
cs.io/en/latest/</a><br>
&gt;&gt;&gt;<br>
<br>
&gt;&gt;<br>
</div><div class=3D"quoted-text">&gt;&gt; One little thing though, the curr=
ent &quot;theme&quot; used which I assume is<br>
&gt;&gt; the default Sphinx theme is not optimal IMO.<br>
&gt;&gt;<br>
<br>
&gt;<br>
</div><div class=3D"quoted-text">&gt; Thanks for the feedback. The conf.py =
file we&#39;re using is just what was<br>
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
=3D"noreferrer" target=3D"_blank">http://meta-raspberrypi.<wbr>readthedocs.=
io/en/latest/<wbr>index.html</a><br>
<br>
</blockquote></div></div></div><div dir=3D"auto"><br></div><div dir=3D"auto=
">Great job. Agree that it looks much better.=C2=A0</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Best Regards</div><div dir=3D"auto">Mirza=C2=A0=
</div><div dir=3D"auto"><div class=3D"gmail_extra"><br></div></div></div>

--001a11494a4a932cdb0560a46f4e--
