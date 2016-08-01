Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEF0DE010BE; Mon,  1 Aug 2016 07:06:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D86BE00E74
	for <yocto@yoctoproject.org>; Mon,  1 Aug 2016 07:06:09 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id p186so20315701qkd.1
	for <yocto@yoctoproject.org>; Mon, 01 Aug 2016 07:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qaOf17ggbTOYV312Id6dpCINyVtYPSbO/HXJU7uBON4=;
	b=wrQh6Cs4VN4SmhpgAGPXtfuOAk6Q8cZgoN0j+QbXWDz+5xUZdrZqIrV0VJQS/4dHcd
	h+9JjuwPZ/9sDrKRIT0q5GWlSfxXEQETU0tS06qJlUls6/Y3PfmNenP9lbnXSqIOw4pU
	Fl9usDWYT335Rjmkzi2d6GEgBX49SZD/HjRg7OJJtcsJMW+nu3al2O/1iSyhVkKi2p3f
	k4eHmbXPwJIbCwMHhcefcf4/3FHXS/IRzhskBTGVwstxQzLyLJvUywGC4wIH4Vncn3on
	+zbKvya4f33LXZBjJaa76XSOKsCioyvnfSet5lD1h5yAZ5ssXjrfNT2uvHWYh+kb+2Kc
	JEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qaOf17ggbTOYV312Id6dpCINyVtYPSbO/HXJU7uBON4=;
	b=Kfmm+M9EKC2OdUI8kpDiMcl8+XghAV3jjFJwfYxuMGlQAYY75eEFqm143atPs3jMYX
	7i09zkXR8dcoQjI1bob81AusyPskbCvGaD8VO0EOGphkbfLq6iAsm7guzjA5DxIGiVA5
	m8lLuQYsd32YwXVTmA/mP8+LT9+8R1YQtERzXOi3Uk6x3FqOoZsWopAmPzMJaGc2jVi0
	0681NW2vP6DVnbk8UIdzK1vVduDa0rzYeaW6eCTkVCScfclkhr0/K7LW5SnLa93tVoya
	7vdKQe49Hn9lsYKc83py0S/0rficWLI6aDRPjaNbtR8xbnJl8KCHgKfgv9RTxpT0qIY4
	eyHQ==
X-Gm-Message-State: AEkoouudTPmh1gJkvmJNrhQUoLQJCudPItJaILKwKq3Ag/l8gV+mcx3hmO7BwUJy9anuW75Vb+IRSEm19CnK5g==
X-Received: by 10.55.124.132 with SMTP id x126mr68696063qkc.113.1470060369345; 
	Mon, 01 Aug 2016 07:06:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.137 with HTTP; Mon, 1 Aug 2016 07:06:08 -0700 (PDT)
In-Reply-To: <7603e18c-345c-ddcf-cd95-14df64b60077@gravedo.de>
References: <7603e18c-345c-ddcf-cd95-14df64b60077@gravedo.de>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Mon, 1 Aug 2016 10:06:08 -0400
Message-ID: <CADkTA4Ng8BoOou9UiS_dh8+x=Z2_1OJYPiWYkkD2cD3MHk0pxA@mail.gmail.com>
To: Simon Fels <morphis@gravedo.de>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Snaps on Yocto/OpenEmbedded
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
X-List-Received-Date: Mon, 01 Aug 2016 14:06:25 -0000
Content-Type: multipart/alternative; boundary=94eb2c05ac8a1d099d0539031a37

--94eb2c05ac8a1d099d0539031a37
Content-Type: text/plain; charset=UTF-8

On Mon, Aug 1, 2016 at 7:32 AM, Simon Fels <morphis@gravedo.de> wrote:

> Hey everyone,
>
> I've worked on a new layer recently which brings snaps to any
> Yocto/OpenEmbedded based system.
>
> If you have never heard about snaps yet you will find most details at
> http://snapcraft.io/ but generally snaps are a new packaging format made
> with security and fast updates in mind and allows applications to be
> packaged once but run everywhere no matter of the distribution used or a
> particular device type.
>
> The layer is currently named meta-snappy and is available at
> https://github.com/morphis/meta-snappy
>
>
I had a quick browse this morning, and one question that jumped to mind was
if the oe-meta-go layer was causing problems for go/go-cross support ? I was
carrying some go/go-inc changes in meta-virtualization as well, but recent
reports
are that oe-meta-go should work for everything now.

I'm just asking, since it doesn't make sense for meta-virt or other layers
to
continue to carry go build infrastructure when it could be unified.

Bruce


> It comes with some basic instructions how to get quickly started. A
> basic tour through the snap system and how to use it is available at
> http://snapcraft.io/
>
> If you have any questions, bugs or contributions feel free to get in
> contact with me.
>
> regards,
> Simon
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end"

--94eb2c05ac8a1d099d0539031a37
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Aug 1, 2016 at 7:32 AM, Simon Fels <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:morphis@gravedo.de" target=3D"_blank">morphis@gravedo.de</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">Hey everyone,<br>
<br>
I&#39;ve worked on a new layer recently which brings snaps to any<br>
Yocto/OpenEmbedded based system.<br>
<br>
If you have never heard about snaps yet you will find most details at<br>
<a href=3D"http://snapcraft.io/" rel=3D"noreferrer" target=3D"_blank">http:=
//snapcraft.io/</a> but generally snaps are a new packaging format made<br>
with security and fast updates in mind and allows applications to be<br>
packaged once but run everywhere no matter of the distribution used or a<br=
>
particular device type.<br>
<br>
The layer is currently named meta-snappy and is available at<br>
<a href=3D"https://github.com/morphis/meta-snappy" rel=3D"noreferrer" targe=
t=3D"_blank">https://github.com/morphis/meta-snappy</a><br>
<br></blockquote><div><br></div><div>I had a quick browse this morning, and=
 one question that jumped to mind was</div><div>if the oe-meta-go layer was=
 causing problems for go/go-cross support ? I was</div><div>carrying some g=
o/go-inc changes in meta-virtualization as well, but recent reports</div><d=
iv>are that oe-meta-go should work for everything now.</div><div><br></div>=
<div>I&#39;m just asking, since it doesn&#39;t make sense for meta-virt or =
other layers to=C2=A0</div><div>continue to carry go build infrastructure w=
hen it could be unified.</div><div><br></div><div>Bruce</div><div>=C2=A0</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">
It comes with some basic instructions how to get quickly started. A<br>
basic tour through the snap system and how to use it is available at<br>
<a href=3D"http://snapcraft.io/" rel=3D"noreferrer" target=3D"_blank">http:=
//snapcraft.io/</a><br>
<br>
If you have any questions, bugs or contributions feel free to get in<br>
contact with me.<br>
<br>
regards,<br>
Simon<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
Openembedded-core mailing list<br>
<a href=3D"mailto:Openembedded-core@lists.openembedded.org">Openembedded-co=
re@lists.openembedded.org</a><br>
<a href=3D"http://lists.openembedded.org/mailman/listinfo/openembedded-core=
" rel=3D"noreferrer" target=3D"_blank">http://lists.openembedded.org/mailma=
n/listinfo/openembedded-core</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature" data-smartmail=3D"gmail_signature">&quot;T=
hou shalt not follow the NULL pointer, for chaos and madness await thee at =
its end&quot;</div>
</div></div>

--94eb2c05ac8a1d099d0539031a37--
