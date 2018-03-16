Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00927E00B1A; Fri, 16 Mar 2018 09:47:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4104FE00529
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:47:13 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id h23so13354454iob.11
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:47:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1r4Bz+5m7Y4EeKoKMTR2fwLrAHbEOj7wnYy/BNftDI8=;
	b=nPm8BQ8xK4mQ4WGIEI1y3EAHarsGjkBTByN6IzpCw3oZhwPVfQhmc75mZPw/ZF+jDM
	x4rnXm3ihEwslqP9MzwQU6RCsG3zGcmPGMEwfjgV+/I6lLgug3v5kMyJ/cAR/O5N2l3d
	1K2D0zrVeVbkRVG2ksOCJGu/NJglyt4jAe6L0CHwiEv+rwrK6rGyo6Yw99wYPZL2bX/i
	FY+qJMY+pM83OZ+32mAWTOECGczrp9nrc5IDhWgphlal27YC3naeFTHkPCiGWqkfL4mc
	avlRXqJuUSZH5PqRoSEZgIXRPWpy3EsfsqVCqoI98IvCHng+GpwW9yiIlr8bF3dh7jnc
	aCQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1r4Bz+5m7Y4EeKoKMTR2fwLrAHbEOj7wnYy/BNftDI8=;
	b=YTXR1kfa20OVZj0hLiyIk8a8HWCXWgNMZ2Rk7JYC1AAF9vVoyBqZldtLuVP8JPJPVL
	QPCsEb91Sn4Ikbkr/0Oqnt2nNZWnpJ0fOaf5FObhXIvuP3jsE57gVkQ/C6IQbqq4Th50
	c330QRzIcM3k4dMHFJEIHEIUr2fMZTlRPaZ4c/5hOrtA4guYA+daZlASALaH449YKV8z
	wz6fVitM+7qRaTUkjifeeBaiRIVLhWAmEnt58FfI/gWprLfEph3LZWysCTac2Y1CyeOZ
	hzILNoyzpIfEPeIiHCqJcn9sbDrlAJfjxdB2s8Si8c0/IWNV9GB0j1bbVI2z+IYcPXJo
	WR2w==
X-Gm-Message-State: AElRT7GzZXkFK5zwBNeUYlI9CsqsAkWjodrhULmDbJN9JGyZCTgNsxQC
	JsCbPz88nHrivvor+QLsUJl0SGVf9Wv0bxTCTU54Zw==
X-Google-Smtp-Source: AG47ELuToze0HXzokUjTPx8hSiVLMR2dFhxH27jFTmyksAKsQ2dIzzEKs6g9hfRy/ccQBtWgW/L23WmjxQ7RLPEnxQE=
X-Received: by 10.107.7.68 with SMTP id 65mr2655944ioh.216.1521218833531; Fri,
	16 Mar 2018 09:47:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Fri, 16 Mar 2018 09:46:53 -0700 (PDT)
In-Reply-To: <CAFzUWGnu_a4-HHxJC8ggoAEQ3R1snrQMsUoroYu5sr3ck9jVLQ@mail.gmail.com>
References: <CAFzUWGmEjhu4-5vnzc_GLRV++KYSr4SAi2-TbhK+G-V3e-aPzg@mail.gmail.com>
	<CAJTo0La_Tkj=m89nrGa7KJuDPAV+e358t39VG81hC8nZ-ncR5w@mail.gmail.com>
	<CAFzUWGnu_a4-HHxJC8ggoAEQ3R1snrQMsUoroYu5sr3ck9jVLQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 16 Mar 2018 16:46:53 +0000
Message-ID: <CAJTo0LZNibRuQH7Grh7xJjVDN7pOgd1eX_=VryHYW+kzaGxRxw@mail.gmail.com>
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
X-List-Received-Date: Fri, 16 Mar 2018 16:47:15 -0000
Content-Type: multipart/alternative; boundary="001a113f973032f36f05678a5cb5"

--001a113f973032f36f05678a5cb5
Content-Type: text/plain; charset="UTF-8"

Extend FILESEXTRAPATHS using machine-overrides to add common groupings?

Ross

On 16 March 2018 at 16:45, Giordon Stark <kratsg@gmail.com> wrote:

> Hi,
>
> I would do that, but what I want to do is something like this:
>
> Machine1
> Machine2
> Machine3a
> Machine3b
> Machine4
>
> I want 3a/3b to have some shared dtsi files, but these should not be
> shared with machines 1, 2, 4. I'm not sure it's just a matter of placing it
> under files/ because I don't want those picked up by the non-3 machines.
>
> G
>
> On Fri, Mar 16, 2018 at 11:42 AM Burton, Ross <ross.burton@intel.com>
> wrote:
>
>> On 15 March 2018 at 14:07, Giordon Stark <kratsg@gmail.com> wrote:
>>
>>> So for my device trees, I'm finding some files are duplicated. In
>>> particular some of my dtsi files are going to be the same amongst a few
>>> boards we're using, so I would like to have each machine name distinct so
>>> that
>>>
>>> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>>
>>> files/${MACHINE}/${MACHINE}.dts
>>>
>>> is picked up, while still having
>>>
>>> files/common/*.dtsi picked up as well. As an example of my SRC_URI
>>> appends:
>>>
>>> SRC_URI_append_gfex-prototype1b = " \
>>>     file://skeleton.dtsi  \
>>>     file://pl.dtsi        \
>>>     file://zynq-7000.dtsi \
>>>     file://system.dts     \
>>> "
>>>
>>> SRC_URI_append_gfex-prototype2  = " \
>>>     file://skeleton.dtsi   \
>>>     file://pl.dtsi         \
>>>     file://zynq-7000.dtsi  \
>>>     file://system.dts      \
>>> "
>>>
>>> I suspect I do something with OVERRIDES in the
>>> conf/machine/${MACHINE}.conf file but not sure...
>>>
>>
>> Can't you just put common files in files/file.dtsi and then the
>> machine-specific ones in files/[machine]/?
>>
>> Ross
>>
> --
> Giordon Stark
>

--001a113f973032f36f05678a5cb5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Extend FILESEXTRAPATHS using machine-overrides to add comm=
on groupings?<div><br></div><div>Ross</div></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On 16 March 2018 at 16:45, Giordon Stark <s=
pan dir=3D"ltr">&lt;<a href=3D"mailto:kratsg@gmail.com" target=3D"_blank">k=
ratsg@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><di=
v dir=3D"ltr">Hi,<div><br></div><div>I would do that, but what I want to do=
 is something like this:</div><div><br></div><div>Machine1</div><div>Machin=
e2</div><div>Machine3a</div><div>Machine3b</div><div>Machine4</div><div><br=
></div><div>I want 3a/3b to have some shared dtsi files, but these should n=
ot be shared with machines 1, 2, 4. I&#39;m not sure it&#39;s just a matter=
 of placing it under files/ because I don&#39;t want those picked up by the=
 non-3 machines.</div><div><br></div><div>G</div></div><div class=3D"HOEnZb=
"><div class=3D"h5"><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri,=
 Mar 16, 2018 at 11:42 AM Burton, Ross &lt;<a href=3D"mailto:ross.burton@in=
tel.com" target=3D"_blank">ross.burton@intel.com</a>&gt; wrote:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div dir=3D"ltr">On 15 March 2018 at 14:07, Gi=
ordon Stark <span dir=3D"ltr">&lt;<a href=3D"mailto:kratsg@gmail.com" targe=
t=3D"_blank">kratsg@gmail.com</a>&gt;</span> wrote:<br></div><div dir=3D"lt=
r"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div>So for my device trees, I&#39;m finding=
 some files are duplicated. In particular some of my dtsi files are going t=
o be the same amongst a few boards we&#39;re using, so I would like to have=
 each machine name distinct so that=C2=A0</div><div><br></div><div><div><fo=
nt face=3D"monospace">FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/files:&=
quot;</font></div></div><div><font face=3D"monospace"><br></font></div><div=
><font face=3D"monospace">files/${MACHINE}/${MACHINE}.<wbr>dts</font></div>=
<div><br></div><div>is picked up, while still having</div><div><br></div><d=
iv>files/common/*.dtsi picked up as well. As an example of my SRC_URI appen=
ds:</div><div><br></div><div><div><font face=3D"monospace">SRC_URI_append_g=
fex-<wbr>prototype1b =3D &quot; \<br></font></div><div><font face=3D"monosp=
ace">=C2=A0 =C2=A0 file://skeleton.dtsi=C2=A0 \</font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 file://pl.dtsi=C2=A0 =C2=A0 =C2=A0 =C2=A0 \</f=
ont></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://zynq-7000.dtsi=
 \</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://system.dt=
s=C2=A0 =C2=A0 =C2=A0\</font></div><div><font face=3D"monospace">&quot;</fo=
nt></div><div><font face=3D"monospace"><br></font></div><div><font face=3D"=
monospace">SRC_URI_append_gfex-<wbr>prototype2=C2=A0 =3D &quot; \<br></font=
></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://skeleton.dtsi=C2=
=A0 =C2=A0\</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://=
pl.dtsi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\</font></div><div><font face=3D"m=
onospace">=C2=A0 =C2=A0 file://zynq-7000.dtsi=C2=A0 \</font></div><div><fon=
t face=3D"monospace">=C2=A0 =C2=A0 file://system.dts=C2=A0 =C2=A0 =C2=A0 \<=
/font></div><div><font face=3D"monospace">&quot;</font></div></div><div><fo=
nt face=3D"monospace"><br></font></div><div>I suspect I do something with O=
VERRIDES in the conf/machine/${MACHINE}.conf file but not sure...</div></di=
v></blockquote><div><br></div></div></div></div><div dir=3D"ltr"><div class=
=3D"gmail_extra"><div class=3D"gmail_quote"><div>Can&#39;t you just put com=
mon files in files/file.dtsi and then the machine-specific ones in files/[m=
achine]/?</div></div></div></div><div dir=3D"ltr"><div class=3D"gmail_extra=
"><div class=3D"gmail_quote"><div><br></div><div>Ross=C2=A0</div></div></di=
v></div></blockquote></div></div></div><span class=3D"HOEnZb"><font color=
=3D"#888888">-- <br><div dir=3D"ltr" class=3D"m_2125503760034386061gmail_si=
gnature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark<=
/div></div>
</font></span></blockquote></div><br></div>

--001a113f973032f36f05678a5cb5--
