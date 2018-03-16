Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA87DE0086B; Fri, 16 Mar 2018 09:45:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kratsg[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36247E00529
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:45:38 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id e98-v6so2856109itd.4
	for <yocto@yoctoproject.org>; Fri, 16 Mar 2018 09:45:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=LsiDd4WfzI1El8qnHiiSWBdE0AC1GBq56RTgl+gxS54=;
	b=GjRaARl9CWGIHglCSKBirAcVkHFWftelQC/3MJ1CbTG++izevvsv91Jes6IWg38oOO
	srxI0yHxj3L+ODD+U4XIHFYW6KnQpTv+IL5VjxdjJmp2bY0Yzm+dHLYaSrJLi1l3V0fJ
	x3uT+A2OHbf0lsTVDkizLoOF8/HEPqbWvUKHiDt5NaHxGHYFhv2h8INmNZuPA2xz4oOi
	i7MFnYJx3KlnRnHQMO/EjdcUdMc+jXO9r78Rf8+8tHx7vnglTBWX8vIjL3y/iqm4eSx+
	Z8t8u4xoUakElFnwj3SlWfgmdUTqFpJ55wW3lbLiV62vtPpduGKqU1+8xQ1jHU7DB3kp
	Uyhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=LsiDd4WfzI1El8qnHiiSWBdE0AC1GBq56RTgl+gxS54=;
	b=P1QrptQDGWUk7NxldXiP3jRrl6pGgsu2pwmcQ0HiV0qWgIsg67iSIlODkxeJOvkvBf
	fIvLmUWCHcRW3S3b+x3k9wDf8RWTH5LlBCmYtF5hZg4IQRoqnRRozocgFow8/x2kaeR6
	c3mujz6SuX9bpphl4Z5xHNaWpVOfXC1D+mFzAvDVRTW4l3jU3BKT3rLWfkI8SIJsFwWA
	n2hizXy64excz5caskDc0PQVgVYtWLAGWH27kMZUPuKJPwQZsN2D18N9vFh8Be+MJaFQ
	3QXcchs/KJtRa/Vuch5pH+zs+2I1aCb9YMm+9JcFfeukwVfZ4iOKUoJdEQyscjx41Ufd
	vncw==
X-Gm-Message-State: AElRT7EEDwcArGgZqDkGmsVzlHbD2sKm7p1G/bQ8OOu6P9V7kvADrvUI
	e8s3neb+Z7emVPGc+lUdf1j7Dp79fX4BcTZM+U8=
X-Google-Smtp-Source: AG47ELuBKEeSx1A7XMsOg3gxAjPzAg04O2unV0sqZnHJ07jWpQUt1fAlsBGjNDT/r5uPgsRIixdMkOkHMNCi/Rq1UCM=
X-Received: by 2002:a24:3d55:: with SMTP id
	n82-v6mr3201936itn.31.1521218738524; 
	Fri, 16 Mar 2018 09:45:38 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGmEjhu4-5vnzc_GLRV++KYSr4SAi2-TbhK+G-V3e-aPzg@mail.gmail.com>
	<CAJTo0La_Tkj=m89nrGa7KJuDPAV+e358t39VG81hC8nZ-ncR5w@mail.gmail.com>
In-Reply-To: <CAJTo0La_Tkj=m89nrGa7KJuDPAV+e358t39VG81hC8nZ-ncR5w@mail.gmail.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Fri, 16 Mar 2018 16:45:27 +0000
Message-ID: <CAFzUWGnu_a4-HHxJC8ggoAEQ3R1snrQMsUoroYu5sr3ck9jVLQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
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
X-List-Received-Date: Fri, 16 Mar 2018 16:45:39 -0000
Content-Type: multipart/alternative; boundary="00000000000089158005678a563d"

--00000000000089158005678a563d
Content-Type: text/plain; charset="UTF-8"

Hi,

I would do that, but what I want to do is something like this:

Machine1
Machine2
Machine3a
Machine3b
Machine4

I want 3a/3b to have some shared dtsi files, but these should not be shared
with machines 1, 2, 4. I'm not sure it's just a matter of placing it under
files/ because I don't want those picked up by the non-3 machines.

G

On Fri, Mar 16, 2018 at 11:42 AM Burton, Ross <ross.burton@intel.com> wrote:

> On 15 March 2018 at 14:07, Giordon Stark <kratsg@gmail.com> wrote:
>
>> So for my device trees, I'm finding some files are duplicated. In
>> particular some of my dtsi files are going to be the same amongst a few
>> boards we're using, so I would like to have each machine name distinct so
>> that
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
>>
>> files/${MACHINE}/${MACHINE}.dts
>>
>> is picked up, while still having
>>
>> files/common/*.dtsi picked up as well. As an example of my SRC_URI
>> appends:
>>
>> SRC_URI_append_gfex-prototype1b = " \
>>     file://skeleton.dtsi  \
>>     file://pl.dtsi        \
>>     file://zynq-7000.dtsi \
>>     file://system.dts     \
>> "
>>
>> SRC_URI_append_gfex-prototype2  = " \
>>     file://skeleton.dtsi   \
>>     file://pl.dtsi         \
>>     file://zynq-7000.dtsi  \
>>     file://system.dts      \
>> "
>>
>> I suspect I do something with OVERRIDES in the
>> conf/machine/${MACHINE}.conf file but not sure...
>>
>
> Can't you just put common files in files/file.dtsi and then the
> machine-specific ones in files/[machine]/?
>
> Ross
>
-- 
Giordon Stark

--00000000000089158005678a563d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I would do that, but what I want to=
 do is something like this:</div><div><br></div><div>Machine1</div><div>Mac=
hine2</div><div>Machine3a</div><div>Machine3b</div><div>Machine4</div><div>=
<br></div><div>I want 3a/3b to have some shared dtsi files, but these shoul=
d not be shared with machines 1, 2, 4. I&#39;m not sure it&#39;s just a mat=
ter of placing it under files/ because I don&#39;t want those picked up by =
the non-3 machines.</div><div><br></div><div>G</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Fri, Mar 16, 2018 at 11:42 AM Burton, Ros=
s &lt;<a href=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt=
; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">On 15 Mar=
ch 2018 at 14:07, Giordon Stark <span dir=3D"ltr">&lt;<a href=3D"mailto:kra=
tsg@gmail.com" target=3D"_blank">kratsg@gmail.com</a>&gt;</span> wrote:<br>=
</div><div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote=
"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>So for my device tre=
es, I&#39;m finding some files are duplicated. In particular some of my dts=
i files are going to be the same amongst a few boards we&#39;re using, so I=
 would like to have each machine name distinct so that=C2=A0</div><div><br>=
</div><div><div><font face=3D"monospace">FILESEXTRAPATHS_prepend :=3D &quot=
;${THISDIR}/files:&quot;</font></div></div><div><font face=3D"monospace"><b=
r></font></div><div><font face=3D"monospace">files/${MACHINE}/${MACHINE}.dt=
s</font></div><div><br></div><div>is picked up, while still having</div><di=
v><br></div><div>files/common/*.dtsi picked up as well. As an example of my=
 SRC_URI appends:</div><div><br></div><div><div><font face=3D"monospace">SR=
C_URI_append_gfex-prototype1b =3D &quot; \<br></font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 file://skeleton.dtsi=C2=A0 \</font></div><div>=
<font face=3D"monospace">=C2=A0 =C2=A0 file://pl.dtsi=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 \</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://zyn=
q-7000.dtsi \</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file:=
//system.dts=C2=A0 =C2=A0 =C2=A0\</font></div><div><font face=3D"monospace"=
>&quot;</font></div><div><font face=3D"monospace"><br></font></div><div><fo=
nt face=3D"monospace">SRC_URI_append_gfex-prototype2=C2=A0 =3D &quot; \<br>=
</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 file://skeleton.dt=
si=C2=A0 =C2=A0\</font></div><div><font face=3D"monospace">=C2=A0 =C2=A0 fi=
le://pl.dtsi=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0\</font></div><div><font face=
=3D"monospace">=C2=A0 =C2=A0 file://zynq-7000.dtsi=C2=A0 \</font></div><div=
><font face=3D"monospace">=C2=A0 =C2=A0 file://system.dts=C2=A0 =C2=A0 =C2=
=A0 \</font></div><div><font face=3D"monospace">&quot;</font></div></div><d=
iv><font face=3D"monospace"><br></font></div><div>I suspect I do something =
with OVERRIDES in the conf/machine/${MACHINE}.conf file but not sure...</di=
v></div></blockquote><div><br></div></div></div></div><div dir=3D"ltr"><div=
 class=3D"gmail_extra"><div class=3D"gmail_quote"><div>Can&#39;t you just p=
ut common files in files/file.dtsi and then the machine-specific ones in fi=
les/[machine]/?</div></div></div></div><div dir=3D"ltr"><div class=3D"gmail=
_extra"><div class=3D"gmail_quote"><div><br></div><div>Ross=C2=A0</div></di=
v></div></div></blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</=
div></div>

--00000000000089158005678a563d--
