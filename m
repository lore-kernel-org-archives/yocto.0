Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D471E007E1; Fri, 16 Mar 2018 09:42:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4089E00529
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:42:57 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id z7-v6so2620694iti.1
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:42:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bSnZkQB6PqFEzdEErOYLDgOXqBqf6iwGuqO0obKTW90=;
	b=xDH2vWHiJPhl/rE04Vrjj+GhsAM4uRCnsVA6PJhQXKRVRtGpSgqE3++f/4ugwlGq5Z
	tWjrkGYwYkxEXfoCRepnxjMj7/HxNh9KdXxCPv1QKTkEap57WRYPsly4Loo4G5UXv9ZL
	0N4z6FUuQABI0XAGJ8mLSJx8KB5OZ82PjUSVwP53owzEcx/8kCt0S75krZFxJuvXd1e2
	hLd5jr72VqobEM64c0k3V1Yg/JDkbC2BvQhsLM29LdhbfpV3X+cQ2k4O/kYGL4kZ1x1R
	j8vC+t5MzzTulcAa1FttGCC8VWz2UALxcB4ze2T4nWGL8wkvQ+a6UkycnEKWJATItYrs
	x9zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bSnZkQB6PqFEzdEErOYLDgOXqBqf6iwGuqO0obKTW90=;
	b=jYZWslU1xO8Xd9RsiPqzeGLsihfNVRLEiqRyL3L/QK7kt31tWoFM7KlWxbZiURkJAs
	r9k3fYfqlWusn45ug/j8OQ4AuhjPYJctEP30aSqdALGDwpotWFqeFus0C5lJW2+zUtHb
	jjZSdkWizDBF+ir00P/bTwT7/3bMhA9qZDCAN7hjgr6hXhLNzRP0Vz1nrLWKwuicVaKa
	7lV8KD7hOr/XLokK23MxVkC42ScWJqZJSsSvNRR1m/VP6dP51STc7i9adq5n3AxkCHxB
	jRUUhEV+IgRq5UDf5CkxsJGFEszuQtEnckG9hVLNFawJmQrqhIGW1maqDOVkbW3W5TCL
	694A==
X-Gm-Message-State: AElRT7H2S3xZaUtPiN3X2xLpnU0HmXMryWh8rZ29shQWh1989k78XgEO
	0eV4SJYsY97lO5bYeGB31yP8+1N6+QgBFV/FIpRMZw==
X-Google-Smtp-Source: AG47ELsolFqvt7cHoVgGWRtzXwKP1GE/4l+hltF7rTzpjvi3LAGMwoe65YGCXEt4B1UYoht/hsSJbktkogjFStSrS4E=
X-Received: by 2002:a24:22c2:: with SMTP id
	o185-v6mr3071881ito.60.1521218576950; 
	Fri, 16 Mar 2018 09:42:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Fri, 16 Mar 2018 09:42:36 -0700 (PDT)
In-Reply-To: <CAFzUWGmEjhu4-5vnzc_GLRV++KYSr4SAi2-TbhK+G-V3e-aPzg@mail.gmail.com>
References: <CAFzUWGmEjhu4-5vnzc_GLRV++KYSr4SAi2-TbhK+G-V3e-aPzg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Mar 2018 16:42:36 +0000
Message-ID: <CAJTo0La_Tkj=m89nrGa7KJuDPAV+e358t39VG81hC8nZ-ncR5w@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Can SRC_URI look in the same place for two different machines?
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
X-List-Received-Date: Fri, 16 Mar 2018 16:42:59 -0000
Content-Type: multipart/alternative; boundary="000000000000e7d85005678a4cf4"

--000000000000e7d85005678a4cf4
Content-Type: text/plain; charset="UTF-8"

On 15 March 2018 at 14:07, Giordon Stark <kratsg@gmail.com> wrote:

> So for my device trees, I'm finding some files are duplicated. In
> particular some of my dtsi files are going to be the same amongst a few
> boards we're using, so I would like to have each machine name distinct so
> that
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>
> files/${MACHINE}/${MACHINE}.dts
>
> is picked up, while still having
>
> files/common/*.dtsi picked up as well. As an example of my SRC_URI appends:
>
> SRC_URI_append_gfex-prototype1b = " \
>     file://skeleton.dtsi  \
>     file://pl.dtsi        \
>     file://zynq-7000.dtsi \
>     file://system.dts     \
> "
>
> SRC_URI_append_gfex-prototype2  = " \
>     file://skeleton.dtsi   \
>     file://pl.dtsi         \
>     file://zynq-7000.dtsi  \
>     file://system.dts      \
> "
>
> I suspect I do something with OVERRIDES in the
> conf/machine/${MACHINE}.conf file but not sure...
>

Can't you just put common files in files/file.dtsi and then the
machine-specific ones in files/[machine]/?

Ross

--000000000000e7d85005678a4cf4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 15 March 2018 at 14:07, Giordon Stark <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">kratsg@gmail.com=
</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_qu=
ote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>So for my device =
trees, I&#39;m finding some files are duplicated. In particular some of my =
dtsi files are going to be the same amongst a few boards we&#39;re using, s=
o I would like to have each machine name distinct so that=C2=A0</div><div><=
br></div><div><div><font face=3D"monospace">FILESEXTRAPATHS_prepend :=3D &q=
uot;${THISDIR}/files:&quot;</font></div></div><div><font face=3D"monospace"=
><br></font></div><div><font face=3D"monospace">files/${MACHINE}/${MACHINE}=
.<wbr>dts</font></div><div><br></div><div>is picked up, while still having<=
/div><div><br></div><div>files/common/*.dtsi picked up as well. As an examp=
le of my SRC_URI appends:</div><div><br></div><div><div><font face=3D"monos=
pace">SRC_URI_append_gfex-<wbr>prototype1b =3D &quot; \<br></font></div><di=
v><font face=3D"monospace">=C2=A0 =C2=A0 file://skeleton.dtsi=C2=A0 \</font=
></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://pl.dtsi=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 \</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0=
 file://zynq-7000.dtsi \</font></div><div><font face=3D"monospace">=C2=A0 =
=C2=A0 file://system.dts=C2=A0 =C2=A0 =C2=A0\</font></div><div><font face=
=3D"monospace">&quot;</font></div><div><font face=3D"monospace"><br></font>=
</div><div><font face=3D"monospace">SRC_URI_append_gfex-<wbr>prototype2=C2=
=A0 =3D &quot; \<br></font></div><div><font face=3D"monospace">=C2=A0 =C2=
=A0 file://skeleton.dtsi=C2=A0 =C2=A0\</font></div><div><font face=3D"monos=
pace">=C2=A0 =C2=A0 file://pl.dtsi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\</font=
></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://zynq-7000.dtsi=C2=
=A0 \</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://system=
.dts=C2=A0 =C2=A0 =C2=A0 \</font></div><div><font face=3D"monospace">&quot;=
</font></div></div><div><font face=3D"monospace"><br></font></div><div>I su=
spect I do something with OVERRIDES in the conf/machine/${MACHINE}.conf fil=
e but not sure...</div></div></blockquote><div><br></div><div>Can&#39;t you=
 just put common files in files/file.dtsi and then the machine-specific one=
s in files/[machine]/?</div><div><br></div><div>Ross=C2=A0</div></div></div=
></div>

--000000000000e7d85005678a4cf4--
