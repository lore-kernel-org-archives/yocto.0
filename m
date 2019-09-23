Return-Path: <jku@goto.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91C01E00D4E; Mon, 23 Sep 2019 06:42:56 -0700 (PDT)
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
	*      [209.85.167.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60CDBE00D46
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 06:42:55 -0700 (PDT)
Received: by mail-lf1-f44.google.com with SMTP id r134so10109762lff.12
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 06:42:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=goto.fi; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=bKVIO4qQh8In54mbVZVO3sL44qEFY9WkZU+T/VnilIc=;
	b=leY0KNT0d/YPAsHFNO58dKV2tWlfhvusYFxRaknafU9VIAj+TKVf9OFn2BJpw7yT4L
	RgHOC+o6FAzZCQdoz/Ab/x8ZOam19EOVaw4o12kuOOI8UhXB0dYsl6moh4gDIVff1Zk8
	3SGnYaX0+Uaby0kJbFwLHr4s5KEaNNoJLniG4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=bKVIO4qQh8In54mbVZVO3sL44qEFY9WkZU+T/VnilIc=;
	b=Ag6zcqhWdVPpjA9zLQQrNkjCb0KSodESceiv0KSmRSwk5GKBzvmkQn4wcSXrj90tGe
	rfYwuvngEFtJOivm/Jnj4/2BeRigWCdCQjqqVPkx6QDjhPAkoOyCLaB9u6qPoB6pox8E
	DuLB+Ya4iNCAq/cnuRP6bB8+AmAptG4AHVk6s6yK0pXmi9o6PLdmBFhhcjVxnHEbOwh1
	/jTIqIZZuoftXV1baIIqieKhRZaanEdQZHVM5KJNm/hJQ6ADtdxfeDGgFK/cigp40/8Z
	pshLs3863h+mHKPrAmOY5ZlS9SpqDPVlmhw37fNfd+g4+2oGigG1zAHNLCbKCYJLaXap
	Ypyg==
X-Gm-Message-State: APjAAAX28fo5ZrpQycOMEcibo2knjnGVKTsJ6SChr6EDo6WkVLNtauL1
	Y5rTa823B4PRHgleAdfDmCi5V7hXN1a1mQUcY3hT5Q==
X-Google-Smtp-Source: APXvYqxo2jkW+z9ZV0gB/gJ7BkrOxHqYrIFzLif/iU5aU4oE8rSVdloCIVaju3ZWOAuPRel8R+4H/ookkM6tTZGkre4=
X-Received: by 2002:a19:8c14:: with SMTP id o20mr16621548lfd.158.1569246174087;
	Mon, 23 Sep 2019 06:42:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAPYaOESu8_cWhgc7wbao4DP8otZ2B9qn7Wk1qpceQc8XGZzSfg@mail.gmail.com>
	<CAD5=o+pK46i8L4+zVtHiC2j8cjJ_Kv1RgXQ5d_Uro+M6-0NDKw@mail.gmail.com>
	<CAPYaOEQ0+EbiGNd4W3iKrZCRU7z2PtiAW1M2Hz36wFCpAoimfg@mail.gmail.com>
In-Reply-To: <CAPYaOEQ0+EbiGNd4W3iKrZCRU7z2PtiAW1M2Hz36wFCpAoimfg@mail.gmail.com>
From: Jussi Kukkonen <jku@goto.fi>
Date: Mon, 23 Sep 2019 16:42:38 +0300
Message-ID: <CAD5=o+p_ZKTKMWfnXOQG61KJoFq1EtNkCS1U1T7=64O1N+2X-A@mail.gmail.com>
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
X-List-Received-Date: Mon, 23 Sep 2019 13:42:56 -0000
Content-Type: multipart/alternative; boundary="000000000000c59d93059338986a"

--000000000000c59d93059338986a
Content-Type: text/plain; charset="UTF-8"

On Mon, 23 Sep 2019 at 15:48, Jean-Baptiste MARIE <jbaptiste.marie@gmail.com>
wrote:

> PACKAGECONFIG_remove_imxgpu2d = " \
>     ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
> "
>

What Ross said: If wayland is in distro features this will remove the x11
packageconfig which means disabling the X11 backend for Gdk and removing
the X11-related API from libgdk3.so (and not installing the gdk-x11-3.0.pc
file which was the immediate reason for your build failure).

Jussi


>
> CFLAGS_append_imxgpu2d = " \
>     -DLINUX \
>     ${@bb.utils.contains('DISTRO_FEATURES', 'wayland', '-DEGL_API_FB
> -DEGL_API_WL', '', d)} \
> "
>
> - meta-solidrun-arm-imx6 (branch rocko): that branch overloads gtk recipe
> with the .bbappend as shown below:
>
> DEPENDS_append_imxgpu2d = " virtual/egl"
>
> PACKAGECONFIG_remove_imxgpu2d = " \
>     ${@bb.utils.contains("DISTRO_FEATURES", "wayland", "x11", "", d)} \
> "
>
> I do not see any reason why gdk-x11-3.0 would not be built
>

--000000000000c59d93059338986a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div dir=3D"ltr"><div dir=3D"lt=
r">On Mon, 23 Sep 2019 at 15:48, Jean-Baptiste MARIE &lt;<a href=3D"mailto:=
jbaptiste.marie@gmail.com" target=3D"_blank">jbaptiste.marie@gmail.com</a>&=
gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div dir=3D"ltr"><div>PACKAGECONFIG_remove_imxgpu2d =
=3D &quot; \<br></div><div>=C2=A0 =C2=A0 ${@bb.utils.contains(&quot;DISTRO_=
FEATURES&quot;, &quot;wayland&quot;, &quot;x11&quot;, &quot;&quot;, d)} \<b=
r>&quot;<br></div></div></blockquote><div>=C2=A0</div><div>What Ross said: =
If wayland is in distro features this will remove the x11 packageconfig whi=
ch means disabling the X11 backend for Gdk and removing the X11-related API=
 from libgdk3.so (and not installing the gdk-x11-3.0.pc file which was the =
immediate reason for your build failure).</div><div><br></div><div>Jussi</d=
iv><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div><br>CFLAGS_append_imxgpu2d =3D &quot; \<br>=C2=A0 =C2=A0 -=
DLINUX \<br>=C2=A0 =C2=A0 ${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &=
#39;wayland&#39;, &#39;-DEGL_API_FB -DEGL_API_WL&#39;, &#39;&#39;, d)} \<br=
>&quot;</div><div><br></div><div>- meta-solidrun-arm-imx6 (branch rocko): t=
hat branch overloads gtk recipe with the .bbappend as shown below:</div><di=
v><br></div><div>DEPENDS_append_imxgpu2d =3D &quot; virtual/egl&quot;<br><b=
r>PACKAGECONFIG_remove_imxgpu2d =3D &quot; \<br>=C2=A0 =C2=A0 ${@bb.utils.c=
ontains(&quot;DISTRO_FEATURES&quot;, &quot;wayland&quot;, &quot;x11&quot;, =
&quot;&quot;, d)} \<br>&quot;</div><div><br></div><div>I do not see any rea=
son why gdk-x11-3.0 would not be built <br></div></div>
</blockquote></div></div>
</div>

--000000000000c59d93059338986a--
