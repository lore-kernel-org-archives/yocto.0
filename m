Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7452C4332F
	for <webhook@archiver.kernel.org>; Sat, 15 Oct 2022 01:53:02 +0000 (UTC)
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web09.15361.1665798782201887927
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Oct 2022 18:53:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IfwKQ6Ju;
 spf=pass (domain: gmail.com, ip: 209.85.210.45, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ot1-f45.google.com with SMTP id a14-20020a9d470e000000b00661b66a5393so2837714otf.11
        for <yocto@lists.yoctoproject.org>; Fri, 14 Oct 2022 18:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2RlVkBtWUn7xS2lUlLPP0sLhC2gbGQIB7gjlzlt3yH8=;
        b=IfwKQ6Ju/ydF4iAXuL3Rq0SOlG9tjAXURFWdq6gPxPXOkJ7cPFLdLFBSVcl6LWmVF2
         XRD7/tUZK+UbraM84lcQdUdXXiyEyIwgNzxUBXR4Gg0Zg/xZFbYIU9dE/ohl66nQ5Cwu
         Fzm4REgcO0T8maK5H8KgkW5cgQnhVBmMiNVqOiR1OMD8pgW299jmRMYb0mjXU0pV4pwn
         LXLBYiGNMfODH7aFyEsOKQjLg/e+wyrSe1lhc8iifg8etyY6sbgk1UfVCTrKMUvh4dG5
         MFPcR6ndx1J9HarGhp+zfMSNNX/Uoz6hvuy1xkv4UIa06534+1BUrGKfEkWPvIJ/E3s2
         cOfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2RlVkBtWUn7xS2lUlLPP0sLhC2gbGQIB7gjlzlt3yH8=;
        b=nsJonjfOc/UG0nDrs6EIerYbBMGNzJLNWHTXMYOnKoKfUwoM1Ih6FrfW9n3R8IiV7A
         kXZriN1N6NgrumL6C5CfCujp300Zg3k0fvStuddJJED+8NbvxM2/9co2SSlA7CFbX7dQ
         XQiyfA3HUjyc340dBV9FoL1jW6u94juBCkwGmjWtu5HCI2XUAFTcQae7xR6HxIKHpvKE
         qmLo9oJOeRs3AXyfN4GcksazsGpZYcqM7hk2MBiD0fpkweYevic6Rqjtf1102CkU1Ab9
         vMC7J4XcneDHuc3vYPWCFp2cUJeFS5q7Z6jVWuf7UK1UrPX7wVnGf89uKCQJDb0gpvdg
         uDkQ==
X-Gm-Message-State: ACrzQf3w+VLXz2CBBKcUBP3J8jQ5l5ZhST2SgH+9tdfEiFRTnDHoyTeF
	RPbfxCTA9YTZ6k5Vs1/29gyVeYYmRDn7ELdSX/k=
X-Google-Smtp-Source: AMsMyM5IlpwTK28Ql1p0UCYtJPTGKGEpPmq9u0nfn0YAU9eec3y7Lm++ucTPU1BfZOWQTsoGjKfhSw88gO4nDMWRrps=
X-Received: by 2002:a9d:4917:0:b0:661:bdc6:46a with SMTP id
 e23-20020a9d4917000000b00661bdc6046amr343435otf.122.1665798781417; Fri, 14
 Oct 2022 18:53:01 -0700 (PDT)
MIME-Version: 1.0
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com> <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
In-Reply-To: <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Fri, 14 Oct 2022 22:52:49 -0300
Message-ID: <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration queue
To: Jose Quaresma <quaresma.jose@gmail.com>
Cc: Rudolf J Streif <rudolf.streif@ibeeto.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a23b7a05eb0900a2"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Oct 2022 01:53:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58339

--000000000000a23b7a05eb0900a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 14, 2022 at 10:11 PM Jose Quaresma <quaresma.jose@gmail.com>
wrote:

> Hi Rudolf,
>
> I have reported this issue and together with a path [1] to fix it.
> Anyway Bruce has fixed the issue in another way in [2] and this works for
> me as well.
>
> [1] https://lists.yoctoproject.org/g/linux-yocto/message/11746
> [2]
> https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=3D6a4752ebbe7d=
242c02b3c74a5772926edd243626
>
>
Yes indeed. This has also passed my other regression testing, but I was
traveling today and couldn't send my pull request.

I'll send it over the weekend, so hopefully it'll be merged shortly!

Bruce



> Jose
>
> Rudolf J Streif <rudolf.streif@ibeeto.com> escreveu no dia s=C3=A1bado,
> 15/10/2022 =C3=A0(s) 01:45:
>
>> I am running into a bizarre problem with kernel configuration.
>>
>> I have an existing build environment that builds for an i.MX6ul machine.
>> That works fine and the linux-fslc kernel 5.18 builds without any
>> problems. Now within the that build environment I changed the machine to
>> imx6ullevk and then the kernel configuration fails with this error
>> message:
>>
>> | DEBUG: Executing shell function do_kernel_configme
>> | NOTE: do_kernel_metadata: for summary/debug, set KCONF_AUDIT_LEVEL > 0
>> | [ERROR]: processing of file /tmp/tmp.owmBptYrba failed
>> | /develop/projects/altec/tcu/build/tmp/hosttools/dirname: missing opera=
nd
>> | Try '/develop/projects/altec/tcu/build/tmp/hosttools/dirname --help'
>> for more information.
>> | ERROR: Could not generate configuration queue for imx6ullevk.
>> | WARNING:
>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueab=
i/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28=
7395:209
>>
>> exit 1 from 'exit 1'
>> | WARNING: Backtrace (BB generated script):
>> |     #1: bbfatal_log,
>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueab=
i/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28=
7395,
>>
>> line 209
>> |     #2: do_kernel_metadata,
>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueab=
i/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28=
7395,
>>
>> line 382
>> |     #3: do_kernel_configme,
>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueab=
i/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28=
7395,
>>
>> line 150
>> |     #4: main,
>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueab=
i/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28=
7395,
>>
>> line 484
>> ERROR: Task
>>
>> (/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linu=
x/linux-fslc_5.18.bb:do_kernel_configme)
>>
>> failed with exit code '1'
>>
>> I tried to debug do_kernel_configme. The issue seems in the scc script
>> more specifically, I think, in the kconf command that is called by scc
>> when parsing the temporary configuration queue file in /tmp:
>> tmp.owmBptYrba
>>
>> #
>> # spp v0.8
>> # processed: Fri Oct 14 09:49:02 PM UTC 2022
>> #
>> # This is a preprocessor output file, do not edit
>> #
>> #
>> prefix
>>
>> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux=
/linux-fslc/defconfig
>> kconf non-hardware
>>
>> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux=
/linux-fslc/defconfig
>> # run time: 0 seconds
>> # processed files:
>> # _cfg
>>
>> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux=
/linux-fslc/defconfig
>>
>> Apparently a call to dirname is missing the argument. However, I do not
>> understand why.
>>
>> I wiped out build/tmp directory entirely, ran a cleanall on
>> virtual/kernel but to no avail. The problem remains the same.
>>
>> Has anybody seen this issue before?
>>
>>
>> Rudi
>>
>>
>>
>>
>>
>>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58338):
> https://lists.yoctoproject.org/g/yocto/message/58338
> Mute This Topic: https://lists.yoctoproject.org/mt/94339433/1050810
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> bruce.ashfield@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--000000000000a23b7a05eb0900a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Fri, Oct 14, 2022 at 10:11 PM Jose Quaresma &lt;=
<a href=3D"mailto:quaresma.jose@gmail.com">quaresma.jose@gmail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr"><div>Hi Rudolf,<br><br>I have reported this issue and=C2=A0togethe=
r with a path [1] to fix it.</div><div>Anyway Bruce has fixed the issue in =
another way in [2] and this works=C2=A0for me as well.<br><br>[1] <a href=
=3D"https://lists.yoctoproject.org/g/linux-yocto/message/11746" target=3D"_=
blank">https://lists.yoctoproject.org/g/linux-yocto/message/11746</a><br></=
div>[2] <a href=3D"https://git.yoctoproject.org/yocto-kernel-tools/commit/?=
id=3D6a4752ebbe7d242c02b3c74a5772926edd243626" target=3D"_blank">https://gi=
t.yoctoproject.org/yocto-kernel-tools/commit/?id=3D6a4752ebbe7d242c02b3c74a=
5772926edd243626</a><br><br></div></blockquote><div><br></div><div><div cla=
ss=3D"gmail_default" style=3D"font-size:small">Yes indeed. This has also pa=
ssed my other regression testing, but I was traveling today and couldn&#39;=
t send my pull request.</div><div class=3D"gmail_default" style=3D"font-siz=
e:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">I=
&#39;ll send it over the weekend, so hopefully it&#39;ll be merged shortly!=
</div><div class=3D"gmail_default" style=3D"font-size:small"><br></div><div=
 class=3D"gmail_default" style=3D"font-size:small">Bruce</div><br></div><di=
v>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D=
"ltr">Jose<br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmai=
l_attr">Rudolf J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" tar=
get=3D"_blank">rudolf.streif@ibeeto.com</a>&gt; escreveu no dia s=C3=A1bado=
, 15/10/2022 =C3=A0(s) 01:45:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">I am running into a bizarre problem with kernel configuration=
.<br>
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
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div=
></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58338): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58338" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58338</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94339433/1050=
810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/94339433/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--000000000000a23b7a05eb0900a2--

