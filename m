Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C09C4332F
	for <webhook@archiver.kernel.org>; Sat, 15 Oct 2022 01:11:22 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web12.15048.1665796275076392751
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Oct 2022 18:11:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Q8vN6cs3;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id d6so9692978lfs.10
        for <yocto@lists.yoctoproject.org>; Fri, 14 Oct 2022 18:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=7Nh08dCSl1k6ijX26Wmu2VxzmROiT5vWIB7P+aqYC9E=;
        b=Q8vN6cs3lCxfUVjACdTOrZqYiaPh6qViW0d6NkB7rm7cVGzG2FGgkaB6hQoCOwQYN8
         AQZsbHdZa96NEJj7utoqQti3dfU91CjiNYYCF9Eb24il+MmxTgk5Flyxu2cbEJXg1cxS
         aF1s8b4Mcb4936RWTHmrZzyTPb4eugqzfSdswVzxUi9Eu4S2SL8Mwbm8xSqXDAgiDBmt
         fbtjn2PUZ3FMK+3oJf2VfckBzbnAXOl9wbgbr4LTm0Chrcmr3Becps4skxnra0DY0E3W
         ZFO586sXzKnVtVptjj8lECs4lGvxT4JuRCOwQbhf0M/Sec1SvUB8Jzk1+zW0gVnyPzG3
         m6Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7Nh08dCSl1k6ijX26Wmu2VxzmROiT5vWIB7P+aqYC9E=;
        b=fmjfm92t9c/Fx42fLUF82B9RBUrTmrX0G+MmUQZbXmOdkDI5cofruv4QIIidUVcbt0
         EG2SGh+0lz9IAtRrsLzOLLdVX15IJdO33PGMBEBVej2zL7arm+qNX6hRugfWIxDllro1
         htnkKyJAcjc7AyDdHsCvzKV+WADHHzQ83i62C/VQ3rA7Epf1LQVbHTzwUs7HkTu9p+Aa
         u27mbQGV5jD0ntkn2DZPxyfA0LGaXaUKN6+IH2gFcl5eu5syUAehM4cwEJnmJkxB9aqS
         CsbdLezdxoFiUTjDCoNJeVn6kF9B/UG/ys4qEu4frk4ETsh0AW79jCiftsw72PlDHK5Y
         GwFA==
X-Gm-Message-State: ACrzQf0uQz3vi+uD5eTsZPw4D6+XzLuF9k7ql/Y5YaZ3+PVp3Q9SaLXg
	AxHXv5BtHSK00seizhQ5ChoVfohg2tnqE/WL0Po=
X-Google-Smtp-Source: AMsMyM6+Ck1kO0EgoS8fUpIQ/uztWN637Zp728PyPLKf2nTHu4NWD4nbc3rxyM3LoJ8x5H+MoiLxiF/M/Mb+NlR9aBg=
X-Received: by 2002:ac2:551d:0:b0:4a2:7c75:6e37 with SMTP id
 j29-20020ac2551d000000b004a27c756e37mr169263lfk.398.1665796272702; Fri, 14
 Oct 2022 18:11:12 -0700 (PDT)
MIME-Version: 1.0
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
In-Reply-To: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Sat, 15 Oct 2022 02:11:01 +0100
Message-ID: <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration queue
To: Rudolf J Streif <rudolf.streif@ibeeto.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001a497905eb086b42"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Oct 2022 01:11:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58338

--0000000000001a497905eb086b42
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rudolf,

I have reported this issue and together with a path [1] to fix it.
Anyway Bruce has fixed the issue in another way in [2] and this works for
me as well.

[1] https://lists.yoctoproject.org/g/linux-yocto/message/11746
[2]
https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=3D6a4752ebbe7d24=
2c02b3c74a5772926edd243626

Jose

Rudolf J Streif <rudolf.streif@ibeeto.com> escreveu no dia s=C3=A1bado,
15/10/2022 =C3=A0(s) 01:45:

> I am running into a bizarre problem with kernel configuration.
>
> I have an existing build environment that builds for an i.MX6ul machine.
> That works fine and the linux-fslc kernel 5.18 builds without any
> problems. Now within the that build environment I changed the machine to
> imx6ullevk and then the kernel configuration fails with this error messag=
e:
>
> | DEBUG: Executing shell function do_kernel_configme
> | NOTE: do_kernel_metadata: for summary/debug, set KCONF_AUDIT_LEVEL > 0
> | [ERROR]: processing of file /tmp/tmp.owmBptYrba failed
> | /develop/projects/altec/tcu/build/tmp/hosttools/dirname: missing operan=
d
> | Try '/develop/projects/altec/tcu/build/tmp/hosttools/dirname --help'
> for more information.
> | ERROR: Could not generate configuration queue for imx6ullevk.
> | WARNING:
> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi=
/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287=
395:209
>
> exit 1 from 'exit 1'
> | WARNING: Backtrace (BB generated script):
> |     #1: bbfatal_log,
> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi=
/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287=
395,
>
> line 209
> |     #2: do_kernel_metadata,
> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi=
/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287=
395,
>
> line 382
> |     #3: do_kernel_configme,
> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi=
/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287=
395,
>
> line 150
> |     #4: main,
> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi=
/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.287=
395,
>
> line 484
> ERROR: Task
>
> (/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux=
/linux-fslc_5.18.bb:do_kernel_configme)
>
> failed with exit code '1'
>
> I tried to debug do_kernel_configme. The issue seems in the scc script
> more specifically, I think, in the kconf command that is called by scc
> when parsing the temporary configuration queue file in /tmp: tmp.owmBptYr=
ba
>
> #
> # spp v0.8
> # processed: Fri Oct 14 09:49:02 PM UTC 2022
> #
> # This is a preprocessor output file, do not edit
> #
> #
> prefix
>
> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/=
linux-fslc/defconfig
> kconf non-hardware
>
> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/=
linux-fslc/defconfig
> # run time: 0 seconds
> # processed files:
> # _cfg
>
> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/=
linux-fslc/defconfig
>
> Apparently a call to dirname is missing the argument. However, I do not
> understand why.
>
> I wiped out build/tmp directory entirely, ran a cleanall on
> virtual/kernel but to no avail. The problem remains the same.
>
> Has anybody seen this issue before?
>
>
> Rudi
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58337):
> https://lists.yoctoproject.org/g/yocto/message/58337
> Mute This Topic: https://lists.yoctoproject.org/mt/94339433/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000001a497905eb086b42
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Rudolf,<br><br>I have reported this issue and=C2=
=A0together with a path [1] to fix it.</div><div>Anyway Bruce has fixed the=
 issue in another way in [2] and this works=C2=A0for me as well.<br><br>[1]=
 <a href=3D"https://lists.yoctoproject.org/g/linux-yocto/message/11746">htt=
ps://lists.yoctoproject.org/g/linux-yocto/message/11746</a><br></div>[2] <a=
 href=3D"https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=3D6a475=
2ebbe7d242c02b3c74a5772926edd243626">https://git.yoctoproject.org/yocto-ker=
nel-tools/commit/?id=3D6a4752ebbe7d242c02b3c74a5772926edd243626</a><br><br>=
Jose<br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr=
">Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com">rudolf.st=
reif@ibeeto.com</a>&gt; escreveu no dia s=C3=A1bado, 15/10/2022 =C3=A0(s) 0=
1:45:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I am runni=
ng into a bizarre problem with kernel configuration.<br>
<br>
I have an existing build environment that builds for an i.MX6ul machine. <b=
r>
That works fine and the linux-fslc kernel 5.18 builds without any <br>
problems. Now within the that build environment I changed the machine to <b=
r>
imx6ullevk and then the kernel configuration fails with this error message:=
<br>
<br>
| DEBUG: Executing shell function do_kernel_configme<br>
| NOTE: do_kernel_metadata: for summary/debug, set KCONF_AUDIT_LEVEL &gt; 0=
<br>
| [ERROR]: processing of file /tmp/tmp.owmBptYrba failed<br>
| /develop/projects/altec/tcu/build/tmp/hosttools/dirname: missing operand<=
br>
| Try &#39;/develop/projects/altec/tcu/build/tmp/hosttools/dirname --help&#=
39; <br>
for more information.<br>
| ERROR: Could not generate configuration queue for imx6ullevk.<br>
| WARNING: <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5:209 <br>
exit 1 from &#39;exit 1&#39;<br>
| WARNING: Backtrace (BB generated script):<br>
| =C2=A0=C2=A0=C2=A0 #1: bbfatal_log, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5, <br>
line 209<br>
| =C2=A0=C2=A0=C2=A0 #2: do_kernel_metadata, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5, <br>
line 382<br>
| =C2=A0=C2=A0=C2=A0 #3: do_kernel_configme, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5, <br>
line 150<br>
| =C2=A0=C2=A0=C2=A0 #4: main, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5, <br>
line 484<br>
ERROR: Task <br>
(/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/l=
inux-fslc_5.18.bb:do_kernel_configme) <br>
failed with exit code &#39;1&#39;<br>
<br>
I tried to debug do_kernel_configme. The issue seems in the scc script <br>
more specifically, I think, in the kconf command that is called by scc <br>
when parsing the temporary configuration queue file in /tmp: tmp.owmBptYrba=
<br>
<br>
#<br>
# spp v0.8<br>
# processed: Fri Oct 14 09:49:02 PM UTC 2022<br>
#<br>
# This is a preprocessor output file, do not edit<br>
#<br>
#<br>
prefix <br>
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/li=
nux-fslc/defconfig<br>
kconf non-hardware <br>
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/li=
nux-fslc/defconfig<br>
# run time: 0 seconds<br>
# processed files:<br>
# _cfg <br>
/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/li=
nux-fslc/defconfig<br>
<br>
Apparently a call to dirname is missing the argument. However, I do not <br=
>
understand why.<br>
<br>
I wiped out build/tmp directory entirely, ran a cleanall on <br>
virtual/kernel but to no avail. The problem remains the same.<br>
<br>
Has anybody seen this issue before?<br>
<br>
<br>
Rudi<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58337): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58337" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58337</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94339433/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94339433/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div>

--0000000000001a497905eb086b42--

