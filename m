Return-Path: <rudolf.streif@ibeeto.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82E91C4332F
	for <webhook@archiver.kernel.org>; Sat, 15 Oct 2022 03:58:03 +0000 (UTC)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
 by mx.groups.io with SMTP id smtpd.web09.16204.1665806274176239290
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Oct 2022 20:57:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ibeeto-com.20210112.gappssmtp.com header.s=20210112 header.b=KseYatH/;
 spf=neutral (domain: ibeeto.com, ip: 209.85.219.170, mailfrom: rudolf.streif@ibeeto.com)
Received: by mail-yb1-f170.google.com with SMTP id y205so7668187yby.13
        for <yocto@lists.yoctoproject.org>; Fri, 14 Oct 2022 20:57:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ibeeto-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OqzR2HXA2cVdUvUrDhBreLBOdJjPHCZc5pZSFekfgBI=;
        b=KseYatH/lpM43wYUBZIeqiuTuw+6zs0nh/B2M1IH+7Bx0g85zS02QfA6GJntqn97df
         bJj07er+5mJOXmX1nJa3Wa5Si2aIBy7zO77qt2q+VqJ3BCxkgwNniVXQHjFTHOygvvHM
         onBZF4FiqLxBD9A+yjFSXOfK4PLRH6QoDLwJkUiggf7IdjLhgCqvxRgbuX5LgR3Ywykm
         NzAUWzIkz6O/4TPMkm1EDEYkA1MKz4A3UpPmlkpRsH7F/3NMC/+ZUevyGRr4ofpPFAUg
         YPhJSNBOXMKi4XdVULPvMqvdspIXaZ4uC5fKcPa6jpeC5V4eHHu51hrzEdGWfSHSFVzP
         sbMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OqzR2HXA2cVdUvUrDhBreLBOdJjPHCZc5pZSFekfgBI=;
        b=zXRocQAB+RJG58MnfAwzklqL7Aor92spUoL3qknxClfuNgMb2pqGqUoAZOSZhSSn3q
         DVQSM+04n2qmUi9P0mE5ddUXROiXGFbqQyqYwMorlomT8RuLSj8mOxpw1NU/n6I7igxT
         A2gcu26LLNrMaIUoznOBexBmlqc11AYANEgV//aiEdjCOrRjs72fPvigIFPRVOK8JhAS
         OjlcrtDM31XiBRFxIr09kuTy0GRdxfUd6mwTzrhTCxTxxKzxcJHV8izi+8RsQzTVPolP
         jxPT7V11Qbe3YnLkFrQsU8jXT/eXlp12vqJOZKJlKegB6ivRbubc7QP4DEfNmA1kkyXs
         ogIg==
X-Gm-Message-State: ACrzQf1juNzLD8ayzxZfrULuYIVDRgxYh4l+waMbpP0l/7OF+Savaqr/
	vclZHw+h56m9/lvYtiBmLRw30Tr5mRp87orbhSFZqA==
X-Google-Smtp-Source: AMsMyM7OYNto+kXjDJESJaid288kqBy004gZiVIRaAz0fJZHeHqpo/z1e7qkutOCH+i0+y/4jEIXWOwCIlu4yS7zVBM=
X-Received: by 2002:a05:6902:1146:b0:6be:d6df:e46a with SMTP id
 p6-20020a056902114600b006bed6dfe46amr756986ybu.289.1665806273222; Fri, 14 Oct
 2022 20:57:53 -0700 (PDT)
MIME-Version: 1.0
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
 <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com> <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
In-Reply-To: <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@ibeeto.com>
Date: Fri, 14 Oct 2022 20:57:38 -0700
Message-ID: <CAPxNcncekE5vUsZKg-ovKcKYgZFdpjV=ChnA-YSyXWOd4qGGSQ@mail.gmail.com>
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration queue
To: Bruce Ashfield <bruce.ashfield@gmail.com>
Cc: Jose Quaresma <quaresma.jose@gmail.com>, Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002e395405eb0abf80"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 15 Oct 2022 03:58:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58340

--0000000000002e395405eb0abf80
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 14, 2022, 18:53 Bruce Ashfield <bruce.ashfield@gmail.com> wrote=
:

>
>
> On Fri, Oct 14, 2022 at 10:11 PM Jose Quaresma <quaresma.jose@gmail.com>
> wrote:
>
>> Hi Rudolf,
>>
>> I have reported this issue and together with a path [1] to fix it.
>> Anyway Bruce has fixed the issue in another way in [2] and this works fo=
r
>> me as well.
>>
>> [1] https://lists.yoctoproject.org/g/linux-yocto/message/11746
>> [2]
>> https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=3D6a4752ebbe7=
d242c02b3c74a5772926edd243626
>>
>>
> Yes indeed. This has also passed my other regression testing, but I was
> traveling today and couldn't send my pull request.
>
> I'll send it over the weekend, so hopefully it'll be merged shortly!
>

Thank you, Jose and Bruce. Much appreciated.

Rudi

>
> Bruce
>
>
>
>> Jose
>>
>> Rudolf J Streif <rudolf.streif@ibeeto.com> escreveu no dia s=C3=A1bado,
>> 15/10/2022 =C3=A0(s) 01:45:
>>
>>> I am running into a bizarre problem with kernel configuration.
>>>
>>> I have an existing build environment that builds for an i.MX6ul machine=
.
>>> That works fine and the linux-fslc kernel 5.18 builds without any
>>> problems. Now within the that build environment I changed the machine t=
o
>>> imx6ullevk and then the kernel configuration fails with this error
>>> message:
>>>
>>> | DEBUG: Executing shell function do_kernel_configme
>>> | NOTE: do_kernel_metadata: for summary/debug, set KCONF_AUDIT_LEVEL > =
0
>>> | [ERROR]: processing of file /tmp/tmp.owmBptYrba failed
>>> | /develop/projects/altec/tcu/build/tmp/hosttools/dirname: missing
>>> operand
>>> | Try '/develop/projects/altec/tcu/build/tmp/hosttools/dirname --help'
>>> for more information.
>>> | ERROR: Could not generate configuration queue for imx6ullevk.
>>> | WARNING:
>>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnuea=
bi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.2=
87395:209
>>>
>>> exit 1 from 'exit 1'
>>> | WARNING: Backtrace (BB generated script):
>>> |     #1: bbfatal_log,
>>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnuea=
bi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.2=
87395,
>>>
>>> line 209
>>> |     #2: do_kernel_metadata,
>>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnuea=
bi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.2=
87395,
>>>
>>> line 382
>>> |     #3: do_kernel_configme,
>>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnuea=
bi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.2=
87395,
>>>
>>> line 150
>>> |     #4: main,
>>> /develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnuea=
bi/linux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.2=
87395,
>>>
>>> line 484
>>> ERROR: Task
>>>
>>> (/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/lin=
ux/linux-fslc_5.18.bb:do_kernel_configme)
>>>
>>> failed with exit code '1'
>>>
>>> I tried to debug do_kernel_configme. The issue seems in the scc script
>>> more specifically, I think, in the kconf command that is called by scc
>>> when parsing the temporary configuration queue file in /tmp:
>>> tmp.owmBptYrba
>>>
>>> #
>>> # spp v0.8
>>> # processed: Fri Oct 14 09:49:02 PM UTC 2022
>>> #
>>> # This is a preprocessor output file, do not edit
>>> #
>>> #
>>> prefix
>>>
>>> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linu=
x/linux-fslc/defconfig
>>> kconf non-hardware
>>>
>>> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linu=
x/linux-fslc/defconfig
>>> # run time: 0 seconds
>>> # processed files:
>>> # _cfg
>>>
>>> /develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linu=
x/linux-fslc/defconfig
>>>
>>> Apparently a call to dirname is missing the argument. However, I do not
>>> understand why.
>>>
>>> I wiped out build/tmp directory entirely, ran a cleanall on
>>> virtual/kernel but to no avail. The problem remains the same.
>>>
>>> Has anybody seen this issue before?
>>>
>>>
>>> Rudi
>>>
>>>
>>>
>>>
>>>
>>>
>>
>> --
>> Best regards,
>>
>> Jos=C3=A9 Quaresma
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#58338):
>> https://lists.yoctoproject.org/g/yocto/message/58338
>> Mute This Topic: https://lists.yoctoproject.org/mt/94339433/1050810
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> bruce.ashfield@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>
>
> --
> - Thou shalt not follow the NULL pointer, for chaos and madness await the=
e
> at its end
> - "Use the force Harry" - Gandalf, Star Trek II
>
>

--0000000000002e395405eb0abf80
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Fri, Oct 14, 2022, 18:53 Bruce Ashfield &lt;<a href=
=3D"mailto:bruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"=
><div class=3D"gmail_default" style=3D"font-size:small"><br></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, O=
ct 14, 2022 at 10:11 PM Jose Quaresma &lt;<a href=3D"mailto:quaresma.jose@g=
mail.com" target=3D"_blank" rel=3D"noreferrer">quaresma.jose@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div>Hi Rudolf,<br><br>I have reported this issue and=C2=A0toge=
ther with a path [1] to fix it.</div><div>Anyway Bruce has fixed the issue =
in another way in [2] and this works=C2=A0for me as well.<br><br>[1] <a hre=
f=3D"https://lists.yoctoproject.org/g/linux-yocto/message/11746" target=3D"=
_blank" rel=3D"noreferrer">https://lists.yoctoproject.org/g/linux-yocto/mes=
sage/11746</a><br></div>[2] <a href=3D"https://git.yoctoproject.org/yocto-k=
ernel-tools/commit/?id=3D6a4752ebbe7d242c02b3c74a5772926edd243626" target=
=3D"_blank" rel=3D"noreferrer">https://git.yoctoproject.org/yocto-kernel-to=
ols/commit/?id=3D6a4752ebbe7d242c02b3c74a5772926edd243626</a><br><br></div>=
</blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"font=
-size:small">Yes indeed. This has also passed my other regression testing, =
but I was traveling today and couldn&#39;t send my pull request.</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">I&#39;ll send it over the weekend, =
so hopefully it&#39;ll be merged shortly!</div></div></div></div></blockquo=
te></div></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thank you, Jos=
e and Bruce. Much appreciated.</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Rudi</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div><div cla=
ss=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"gmai=
l_default" style=3D"font-size:small">Bruce</div><br></div><div>=C2=A0</div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Jose<br>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Rudolf=
 J Streif &lt;<a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank"=
 rel=3D"noreferrer">rudolf.streif@ibeeto.com</a>&gt; escreveu no dia s=C3=
=A1bado, 15/10/2022 =C3=A0(s) 01:45:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,20=
4);padding-left:1ex">I am running into a bizarre problem with kernel config=
uration.<br>
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
to/message/58338" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/58338</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/94339433/1050=
810" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/94339433/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_=
blank" rel=3D"noreferrer">bruce.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
>- Thou shalt not follow the NULL pointer, for chaos and madness await thee=
 at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br=
><br></div></div>
</blockquote></div></div></div>

--0000000000002e395405eb0abf80--

