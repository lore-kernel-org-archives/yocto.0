Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20DA4E00D68; Mon, 23 Sep 2019 07:45:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85397E00DE5
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:44:54 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id m13so13926190ljj.11
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:44:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FA3gSnEkOsP/FYQIl7dtvwD7eyWZgD1aE79KE9DW4NA=;
	b=DHjnUmjUp5VvXASH6J5Z+u+tYImOls9O/EZ87Alt/TuTdXw1AnPTdfN8EY6+qobYIg
	uQPUkKsXMrYCB4Iaa393flFYnGdtHh6yDWnzTJzgwLh4oAN/21mgSvGbpYnB3r6p8Syc
	WI3Rjr4V+0HrzDO58jZMr3IsAkVdOnI0HGkMM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FA3gSnEkOsP/FYQIl7dtvwD7eyWZgD1aE79KE9DW4NA=;
	b=WO3fKA+fxdWrMYZfk94A09V9qtDVQgs+JLI20Hfgk6mia5pi9aRWSyHozHfjs/8UcJ
	oi0m899iFsR6J+FvIdGjhZzLiWQhm1bmHLYIXrhbfOQq0o6f+j4Ua1We4kOLE3p/sg7P
	gVxPojGNo1GDrHeEqfRorLCbbWeQPm5q0LpZ8EHX8xYo2/IIjORIVJZRT4VX3LezGFP1
	7pH0bKR6nzJ19y5Q2ZhcJewZj4SmoeSgl5HV/Hwd7EQUyAhZPAoV4Pn2bNdQRGogX67L
	L4azSRbXqGtSWqKznWDb3/K2KpRtaqZSRfJpZwla+APhAbJNK4WG/EVAv5zskDX6PESq
	Jc3Q==
X-Gm-Message-State: APjAAAX+S6Mz/RxVzzf73t1OYloXZaPSSjAlwVWHppXtEIe+CGNZZaJv
	LzY5FjNDCI515U0dKGL7hNkAK5Y9QvckkTpOojNmRQ==
X-Google-Smtp-Source: APXvYqxP2HwnqBbHstKV+Mr+rL1/AHsWoAumM8ZPFV8fV7PolqJk2+b1RnJBL6Kx9OKuy1o9UY6n/lJ7mAAHnwv/Ryc=
X-Received: by 2002:a2e:b00b:: with SMTP id y11mr17163710ljk.50.1569249893740; 
	Mon, 23 Sep 2019 07:44:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAPYaOESu8_cWhgc7wbao4DP8otZ2B9qn7Wk1qpceQc8XGZzSfg@mail.gmail.com>
	<CAD5=o+pK46i8L4+zVtHiC2j8cjJ_Kv1RgXQ5d_Uro+M6-0NDKw@mail.gmail.com>
	<CAPYaOEQ0+EbiGNd4W3iKrZCRU7z2PtiAW1M2Hz36wFCpAoimfg@mail.gmail.com>
	<CAD5=o+p_ZKTKMWfnXOQG61KJoFq1EtNkCS1U1T7=64O1N+2X-A@mail.gmail.com>
	<CAPYaOETvWTnOuywerQeQG8G2siAhzDzegz5CrwdS7CfkwpfUsw@mail.gmail.com>
In-Reply-To: <CAPYaOETvWTnOuywerQeQG8G2siAhzDzegz5CrwdS7CfkwpfUsw@mail.gmail.com>
From: Jussi Kukkonen <jku@goto.fi>
Date: Mon, 23 Sep 2019 17:44:37 +0300
Message-ID: <CAD5=o+pTRnDmV1ytQ3ifGNTP+nh5GFq7Zew9iaohktbXjNfYew@mail.gmail.com>
To: Jean-Baptiste MARIE <jbaptiste.marie@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Mon, 23 Sep 2019 14:45:41 -0000
Content-Type: multipart/alternative; boundary="0000000000007b04f405933976dd"

--0000000000007b04f405933976dd
Content-Type: text/plain; charset="UTF-8"

On Mon, 23 Sep 2019 at 17:26, Jean-Baptiste MARIE <jbaptiste.marie@gmail.com>
wrote:

> Ok, got it thanks.
>
> Indeed wayland is enabled in my distro features, so my question is more:
> is there any reason to remove x11 from package config when "wayland" is
> enabled as a distro feature (but maybe it is no longer a question to be
> addressed ot yocto community)? As Ross mentioned, there can both be built.
>

No generic reason that I can think of. The meta-freescale maintainers
probably didn't add it just for the fun of it ... but you'll have to
ask them (or try removing the PACKAGECONFIG modifications -- maybe the
reasons become obvious when something breaks horribly).

Jussi


>
>
> On Mon, Sep 23, 2019 at 3:42 PM Jussi Kukkonen <jku@goto.fi> wrote:
>
>>
>> On Mon, 23 Sep 2019 at 15:48, Jean-Baptiste MARIE <
>> jbaptiste.marie@gmail.com> wrote:
>>
>>> PACKAGECONFIG_remove_imxgpu2d = " \
>>>     ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
>>> "
>>>
>>
>> What Ross said: If wayland is in distro features this will remove the x11
>> packageconfig which means disabling the X11 backend for Gdk and removing
>> the X11-related API from libgdk3.so (and not installing the gdk-x11-3.0.pc
>> file which was the immediate reason for your build failure).
>>
>> Jussi
>>
>>
>>>
>>> CFLAGS_append_imxgpu2d = " \
>>>     -DLINUX \
>>>     ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', '-DEGL_API_FB
>>> -DEGL_API_WL', '', d)} \
>>> "
>>>
>>> - meta-solidrun-arm-imx6 (branch rocko): that branch overloads gtk
>>> recipe with the .bbappend as shown below:
>>>
>>> DEPENDS_append_imxgpu2d = " virtual/egl"
>>>
>>> PACKAGECONFIG_remove_imxgpu2d = " \
>>>     ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
>>> "
>>>
>>> I do not see any reason why gdk-x11-3.0 would not be built
>>>
>>

--0000000000007b04f405933976dd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 23 Sep 2019 at 17:26, Jean-Baptis=
te MARIE &lt;<a href=3D"mailto:jbaptiste.marie@gmail.com">jbaptiste.marie@g=
mail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Ok, got it thanks.=
</div><div><br></div><div>Indeed wayland is enabled in my distro features, =
so my question is more: is there any reason to remove x11 from package conf=
ig when &quot;wayland&quot; is enabled as a distro feature (but maybe it is=
 no longer a question to be addressed ot yocto community)? As Ross mentione=
d, there can both be built.<br></div></div></blockquote><div><br></div><div=
>No generic reason that I can think of. The meta-freescale maintainers prob=
ably didn&#39;t add it just for the fun of it ... but you&#39;ll have to as=
k=C2=A0them (or try removing the PACKAGECONFIG modifications -- maybe the r=
easons=C2=A0become obvious when something breaks horribly).</div><div><br><=
/div><div>Jussi</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div></div><br></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Sep 23, 2019 at 3:42 P=
M Jussi Kukkonen &lt;<a href=3D"mailto:jku@goto.fi" target=3D"_blank">jku@g=
oto.fi</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div dir=
=3D"ltr">On Mon, 23 Sep 2019 at 15:48, Jean-Baptiste MARIE &lt;<a href=3D"m=
ailto:jbaptiste.marie@gmail.com" target=3D"_blank">jbaptiste.marie@gmail.co=
m</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex"><div dir=3D"ltr"><div>PACKAGECONFIG_remove_imxg=
pu2d =3D &quot; \<br></div><div>=C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DI=
STRO_FEATURES&quot;, &quot;wayland&quot;, &quot;x11&quot;, &quot;&quot;, d)=
} \<br>&quot;<br></div></div></blockquote><div>=C2=A0</div><div>What Ross s=
aid: If wayland is in distro features this will remove the x11 packageconfi=
g which means disabling the X11 backend for Gdk and removing the X11-relate=
d API from libgdk3.so (and not installing the gdk-x11-3.0.pc file which was=
 the immediate reason for your build failure).</div><div><br></div><div>Jus=
si</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div><br>CFLAGS_append_imxgpu2d =3D &quot; \<br>=C2=A0 =C2=
=A0 -DLINUX \<br>=C2=A0 =C2=A0 ${@bb.utils.contains(&#39;DISTRO_FEATURES&#3=
9;, &#39;wayland&#39;, &#39;-DEGL_API_FB -DEGL_API_WL&#39;, &#39;&#39;, d)}=
 \<br>&quot;</div><div><br></div><div>- meta-solidrun-arm-imx6 (branch rock=
o): that branch overloads gtk recipe with the .bbappend as shown below:</di=
v><div><br></div><div>DEPENDS_append_imxgpu2d =3D &quot; virtual/egl&quot;<=
br><br>PACKAGECONFIG_remove_imxgpu2d =3D &quot; \<br>=C2=A0 =C2=A0 ${@bb.ut=
ils.contains(&quot;DISTRO_FEATURES&quot;, &quot;wayland&quot;, &quot;x11&qu=
ot;, &quot;&quot;, d)} \<br>&quot;</div><div><br></div><div>I do not see an=
y reason why gdk-x11-3.0 would not be built <br></div></div>
</blockquote></div></div>
</div>
</blockquote></div>
</blockquote></div></div>

--0000000000007b04f405933976dd--
