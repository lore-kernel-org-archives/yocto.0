Return-Path: <jbaptiste.marie@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8253DE00D4A; Mon, 23 Sep 2019 07:27:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jbaptiste.marie[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.47 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com
	[209.85.210.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C32AE00D00
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:26:58 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id s22so12267102otr.6
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 07:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dZEMStIh9mjOPaR1xYrKq1wKqs5haDfYYhTcK1gew8k=;
	b=jA5DpUJOigQQ4NrplDOBW4ypNmCg7httMR/6FOebDKqBIOoMYw5dDyylg2Ru5oxeY7
	CMHq8x15OwsZe288l5NKjNsmN6A+we/cAtSuITIHaRf2KLXM7Rt6LfZRsIInF+tHzDop
	GHWyD2boJga4Rvx04BuKLXoSx7s5/5umuLYCcUTo+fnpLZ99Vz6RAcgX+8ZtNcYZ3+FH
	Q3nJnUlTMwWmqB8X0RLwKgujMQC+zOe8IBN0F3EMAIqMn7+1uhhjxbeke+s7hRwGNUWV
	Kz5EWcs/2MgglLkeqWPWWUJh5EZ+Yo8SO1eQPd37i04E7BXiflPyppJ6yEgGfjJJS6nq
	FRgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dZEMStIh9mjOPaR1xYrKq1wKqs5haDfYYhTcK1gew8k=;
	b=NRr1hoD9VE13LT0NCjRDrjibLuoO5SMIHOnfb1DRU4ySMyIstGr7E5tlvsP+mRmBQO
	AYySORzAbJFn21uhvT1rrrQTQe75Bm+YLJUqC4DLGofvV9vjH6ci/ZbzYQsKktPZn52d
	6kGQivsk70pXOeg55iVWoG2earnGv+1qPMmAfNZNXZ2HZR9f0fe/EkKXNieN+KOtCXEe
	YXi2iXaAYr8uIknIuvni6ha7pJy4TPfKEuHzxtQcRs9i3igHHqLoAhL1pJuKgzVcAdrl
	/oJbB98C7+phCURokBBepterML0+uNyK0bXNcXrbHqQzKSCPtdu89EKq7mkHq6+LCPxr
	9KTg==
X-Gm-Message-State: APjAAAUvOhaZZOxBrGa+8lIcjPc1rp5HMFkRI/rdTE4AMVHI2zcSaDuz
	LK/CeKQdVIKDNfdaKBF07Dv1thO7kdFt2uZGAPGcw03C
X-Google-Smtp-Source: APXvYqyoPHfiXPx24YQidFot0764KBZlGAaKG3hClbN59kahvBr3WKcxYnnbGG9e4rNcCWvGs+/7+vpdhtZgvJOo8SQ=
X-Received: by 2002:a9d:7006:: with SMTP id k6mr15239otj.303.1569248818305;
	Mon, 23 Sep 2019 07:26:58 -0700 (PDT)
MIME-Version: 1.0
References: <CAPYaOESu8_cWhgc7wbao4DP8otZ2B9qn7Wk1qpceQc8XGZzSfg@mail.gmail.com>
	<CAD5=o+pK46i8L4+zVtHiC2j8cjJ_Kv1RgXQ5d_Uro+M6-0NDKw@mail.gmail.com>
	<CAPYaOEQ0+EbiGNd4W3iKrZCRU7z2PtiAW1M2Hz36wFCpAoimfg@mail.gmail.com>
	<CAD5=o+p_ZKTKMWfnXOQG61KJoFq1EtNkCS1U1T7=64O1N+2X-A@mail.gmail.com>
In-Reply-To: <CAD5=o+p_ZKTKMWfnXOQG61KJoFq1EtNkCS1U1T7=64O1N+2X-A@mail.gmail.com>
From: Jean-Baptiste MARIE <jbaptiste.marie@gmail.com>
Date: Mon, 23 Sep 2019 16:26:46 +0200
Message-ID: <CAPYaOETvWTnOuywerQeQG8G2siAhzDzegz5CrwdS7CfkwpfUsw@mail.gmail.com>
To: Jussi Kukkonen <jku@goto.fi>
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
X-List-Received-Date: Mon, 23 Sep 2019 14:27:00 -0000
Content-Type: multipart/alternative; boundary="000000000000611d6705933936e5"

--000000000000611d6705933936e5
Content-Type: text/plain; charset="UTF-8"

Ok, got it thanks.

Indeed wayland is enabled in my distro features, so my question is more: is
there any reason to remove x11 from package config when "wayland" is
enabled as a distro feature (but maybe it is no longer a question to be
addressed ot yocto community)? As Ross mentioned, there can both be built.


On Mon, Sep 23, 2019 at 3:42 PM Jussi Kukkonen <jku@goto.fi> wrote:

>
> On Mon, 23 Sep 2019 at 15:48, Jean-Baptiste MARIE <
> jbaptiste.marie@gmail.com> wrote:
>
>> PACKAGECONFIG_remove_imxgpu2d = " \
>>     ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
>> "
>>
>
> What Ross said: If wayland is in distro features this will remove the x11
> packageconfig which means disabling the X11 backend for Gdk and removing
> the X11-related API from libgdk3.so (and not installing the gdk-x11-3.0.pc
> file which was the immediate reason for your build failure).
>
> Jussi
>
>
>>
>> CFLAGS_append_imxgpu2d = " \
>>     -DLINUX \
>>     ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', '-DEGL_API_FB
>> -DEGL_API_WL', '', d)} \
>> "
>>
>> - meta-solidrun-arm-imx6 (branch rocko): that branch overloads gtk recipe
>> with the .bbappend as shown below:
>>
>> DEPENDS_append_imxgpu2d = " virtual/egl"
>>
>> PACKAGECONFIG_remove_imxgpu2d = " \
>>     ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
>> "
>>
>> I do not see any reason why gdk-x11-3.0 would not be built
>>
>

--000000000000611d6705933936e5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Ok, got it thanks.</div><div><br></div><div>Indeed wa=
yland is enabled in my distro features, so my question is more: is there an=
y reason to remove x11 from package config when &quot;wayland&quot; is enab=
led as a distro feature (but maybe it is no longer a question to be address=
ed ot yocto community)? As Ross mentioned, there can both be built.<br></di=
v><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Mon, Sep 23, 2019 at 3:42 PM Jussi Kukkonen &lt;<a href=3D"mailto:=
jku@goto.fi">jku@goto.fi</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><div di=
r=3D"ltr"><div dir=3D"ltr">On Mon, 23 Sep 2019 at 15:48, Jean-Baptiste MARI=
E &lt;<a href=3D"mailto:jbaptiste.marie@gmail.com" target=3D"_blank">jbapti=
ste.marie@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>PACKAGE=
CONFIG_remove_imxgpu2d =3D &quot; \<br></div><div>=C2=A0 =C2=A0 ${@bb.utils=
.contains(&quot;DISTRO_FEATURES&quot;, &quot;wayland&quot;, &quot;x11&quot;=
, &quot;&quot;, d)} \<br>&quot;<br></div></div></blockquote><div>=C2=A0</di=
v><div>What Ross said: If wayland is in distro features this will remove th=
e x11 packageconfig which means disabling the X11 backend for Gdk and remov=
ing the X11-related API from libgdk3.so (and not installing the gdk-x11-3.0=
.pc file which was the immediate reason for your build failure).</div><div>=
<br></div><div>Jussi</div><div>=C2=A0</div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr"><div><br>CFLAGS_append_imxgpu2d =3D &quo=
t; \<br>=C2=A0 =C2=A0 -DLINUX \<br>=C2=A0 =C2=A0 ${@bb.utils.contains(&#39;=
DISTRO_FEATURES&#39;, &#39;wayland&#39;, &#39;-DEGL_API_FB -DEGL_API_WL&#39=
;, &#39;&#39;, d)} \<br>&quot;</div><div><br></div><div>- meta-solidrun-arm=
-imx6 (branch rocko): that branch overloads gtk recipe with the .bbappend a=
s shown below:</div><div><br></div><div>DEPENDS_append_imxgpu2d =3D &quot; =
virtual/egl&quot;<br><br>PACKAGECONFIG_remove_imxgpu2d =3D &quot; \<br>=C2=
=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_FEATURES&quot;, &quot;wayland&=
quot;, &quot;x11&quot;, &quot;&quot;, d)} \<br>&quot;</div><div><br></div><=
div>I do not see any reason why gdk-x11-3.0 would not be built <br></div></=
div>
</blockquote></div></div>
</div>
</blockquote></div>

--000000000000611d6705933936e5--
