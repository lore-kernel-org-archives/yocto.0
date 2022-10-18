Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F37DC433FE
	for <webhook@archiver.kernel.org>; Tue, 18 Oct 2022 22:32:18 +0000 (UTC)
Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
 by mx.groups.io with SMTP id smtpd.web09.1356.1666132330337940714
 for <yocto@lists.yoctoproject.org>;
 Tue, 18 Oct 2022 15:32:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=n6yrvk4c;
 spf=pass (domain: gmail.com, ip: 209.85.166.180, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-il1-f180.google.com with SMTP id y17so8246252ilq.8
        for <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 15:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DphmpICtIwRO23Hji4gh7NYPn+AKQPtY1FYMVXJc9bo=;
        b=n6yrvk4c08vnF40JJOCr5ynRc0fm4Hm5jW627pC75IYNPaj9IaR29IYvJsYe1VcHOt
         JeiCg8MncPLsdSpPpfWrboyF9cb9VBhDUN7ZtHE0IsPiZ8VAp/teap8vXkr4b+qYTkan
         iLh7vvvxtt083xxbC/mLewCclANWIB4h3LGnf9hJPqXM2Aj1l2j5TMkRh4gW7kRwB0Ct
         JM+H+E+x/wE8s2FieHGhZUs5S1Lt8JLxF5+u46zxggTZQAmxdooNRbcgIEFaJD8O7GVF
         KJhzOSvfXrHgKvdMiXmpEuktRUiKtdrjznKYc4zf9IerDX+bS2Bz39B3RHK3q9CmOxi8
         DNJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DphmpICtIwRO23Hji4gh7NYPn+AKQPtY1FYMVXJc9bo=;
        b=o18wENDULGSiD7h1Ig86SWnX9qmiNRFFFJE4L6n+aNffEacc1Ga0FRRUZy8/76GAjh
         LMgBuGsSOagiefJutexxP6XZ1sStPLzHFEIY2VnahdIe6Cug5StNFhI1eH2yF7nluRyN
         Cp8Of5Ipvrcm5bvVBAG2xjOYdyjhXNK68dMoyWATF1utSJdxswm/9iVAKD8FJ0t8AwCB
         4KOGbnKsE9uE4Wk2asCcUBFynssMu11jRYaofxRsGXHN6hJrtcfkHlMmztrT9iBy4HPB
         0NNFq58JYwlHXqu5ZL1iehDvQcInu07n7XrQiSMSfI1gUtz7kgo5w1uHD9il8hPclz+x
         fWoQ==
X-Gm-Message-State: ACrzQf1dYqonndfbbubjrYiAZp7BgP4wbO4hTTZrFM64Ps3WQd1VslwD
	CN8jna2tipbhzOg3IUyRbZh2nog0BsFuaPkKKv8=
X-Google-Smtp-Source: AMsMyM48WISnRaciW52syALsqdG+D8ptpui2KxnW8zRa/N0d8XYcNcRamvMEUmUmauyNqwoW/t1/g/JxVA6lI7Fg1KU=
X-Received: by 2002:a92:c901:0:b0:2f9:993e:8e31 with SMTP id
 t1-20020a92c901000000b002f9993e8e31mr2881410ilp.55.1666132329642; Tue, 18 Oct
 2022 15:32:09 -0700 (PDT)
MIME-Version: 1.0
References: <aef92e7e-5f88-7628-bfec-0656b71cb57c@ibeeto.com>
 <CANPvuRkggcuz3Bn89YAOo9wvVOOgPZ=pUxNrXFhcp6HNtwHJ-A@mail.gmail.com>
 <CADkTA4NKGk7Rt2coaA8WHO7VjyPab9VNPwKo7aNGwnSbuQisGQ@mail.gmail.com> <a055d0e1-90d7-d051-6976-50e701ff8e40@mvista.com>
In-Reply-To: <a055d0e1-90d7-d051-6976-50e701ff8e40@mvista.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 18 Oct 2022 18:31:58 -0400
Message-ID: <CADkTA4PegfeGTUmja1AF9fXdy2=eyXLy_qu86gYmKBQ8B8bayw@mail.gmail.com>
Subject: Re: [yocto] do_kernel_configme - Could not generate configuration queue
To: Jeremy Puhlman <jpuhlman@mvista.com>
Cc: Jose Quaresma <quaresma.jose@gmail.com>, Rudolf J Streif <rudolf.streif@ibeeto.com>, 
	yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a83ecc05eb56a940"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 18 Oct 2022 22:32:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58360

--000000000000a83ecc05eb56a940
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 18, 2022 at 5:01 PM Jeremy Puhlman <jpuhlman@mvista.com> wrote:

> On 10/14/2022 6:52 PM, Bruce Ashfield wrote:
>
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
> Bruce
>
>
> Did this end up getting sen to the list? I also validated updating to the
> specific hash resolved my issue too.
>
>
Nope. I got tied up with some other issues, I'll send it tonight when I get
a moment!

Bruce



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
>>
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
>
> --
> Jeremy A. Puhlmanjpuhlman@mvista.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58359):
> https://lists.yoctoproject.org/g/yocto/message/58359
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

--000000000000a83ecc05eb56a940
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Tue, Oct 18, 2022 at 5:01 PM Jeremy Puhlman &lt;=
<a href=3D"mailto:jpuhlman@mvista.com">jpuhlman@mvista.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div>
    On 10/14/2022 6:52 PM, Bruce Ashfield wrote:<br>
    <blockquote type=3D"cite">
     =20
      <div dir=3D"ltr">
        <div dir=3D"ltr">
          <div style=3D"font-size:small"><br>
          </div>
        </div>
        <br>
        <div class=3D"gmail_quote">
          <div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 14, 2022 at
            10:11 PM Jose Quaresma &lt;<a href=3D"mailto:quaresma.jose@gmai=
l.com" target=3D"_blank">quaresma.jose@gmail.com</a>&gt;
            wrote:<br>
          </div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">
              <div>Hi Rudolf,<br>
                <br>
                I have reported this issue and=C2=A0together with a path [1=
]
                to fix it.</div>
              <div>Anyway Bruce has fixed the issue in another way in
                [2] and this works=C2=A0for me as well.<br>
                <br>
                [1] <a href=3D"https://lists.yoctoproject.org/g/linux-yocto=
/message/11746" target=3D"_blank">https://lists.yoctoproject.org/g/linux-yo=
cto/message/11746</a><br>
              </div>
              [2] <a href=3D"https://git.yoctoproject.org/yocto-kernel-tool=
s/commit/?id=3D6a4752ebbe7d242c02b3c74a5772926edd243626" target=3D"_blank">=
https://git.yoctoproject.org/yocto-kernel-tools/commit/?id=3D6a4752ebbe7d24=
2c02b3c74a5772926edd243626</a><br>
              <br>
            </div>
          </blockquote>
          <div><br>
          </div>
          <div>
            <div style=3D"font-size:small">Yes
              indeed. This has also passed my other regression testing,
              but I was traveling today and couldn&#39;t send my pull
              request.</div>
            <div style=3D"font-size:small"><br>
            </div>
            <div style=3D"font-size:small">I&#39;ll send
              it over the weekend, so hopefully it&#39;ll be merged shortly=
!</div>
            <div style=3D"font-size:small"><br>
            </div>
            <div style=3D"font-size:small">Bruce</div>
          </div>
        </div>
      </div>
    </blockquote>
    <br>
    Did this end up getting sen to the list? I also validated updating
    to the specific hash resolved my issue too.<br>
    <br></div></blockquote><div><br></div><div><div class=3D"gmail_default"=
 style=3D"font-size:small">Nope. I got tied up with some other issues, I&#3=
9;ll send it tonight when I get a moment!</div><div class=3D"gmail_default"=
 style=3D"font-size:small"><br></div><div class=3D"gmail_default" style=3D"=
font-size:small">Bruce</div><br></div><div>=C2=A0</div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(2=
04,204,204);padding-left:1ex"><div>
    <blockquote type=3D"cite">
      <div dir=3D"ltr">
        <div class=3D"gmail_quote">
          <div>=C2=A0</div>
          <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
            <div dir=3D"ltr">Jose<br>
              <br>
              <div class=3D"gmail_quote">
                <div dir=3D"ltr" class=3D"gmail_attr">Rudolf J Streif &lt;<=
a href=3D"mailto:rudolf.streif@ibeeto.com" target=3D"_blank">rudolf.streif@=
ibeeto.com</a>&gt;
                  escreveu no dia s=C3=A1bado, 15/10/2022 =C3=A0(s) 01:45:<=
br>
                </div>
                <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I am runn=
ing into a
                  bizarre problem with kernel configuration.<br>
                  <br>
                  I have an existing build environment that builds for
                  an i.MX6ul machine. <br>
                  That works fine and the linux-fslc kernel 5.18 builds
                  without any <br>
                  problems. Now within the that build environment I
                  changed the machine to <br>
                  imx6ullevk and then the kernel configuration fails
                  with this error message:<br>
                  <br>
                  | DEBUG: Executing shell function do_kernel_configme<br>
                  | NOTE: do_kernel_metadata: for summary/debug, set
                  KCONF_AUDIT_LEVEL &gt; 0<br>
                  | [ERROR]: processing of file /tmp/tmp.owmBptYrba
                  failed<br>
                  |
                  /develop/projects/altec/tcu/build/tmp/hosttools/dirname:
                  missing operand<br>
                  | Try
                  &#39;/develop/projects/altec/tcu/build/tmp/hosttools/dirn=
ame
                  --help&#39; <br>
                  for more information.<br>
                  | ERROR: Could not generate configuration queue for
                  imx6ullevk.<br>
                  | WARNING: <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5:209
                  <br>
                  exit 1 from &#39;exit 1&#39;<br>
                  | WARNING: Backtrace (BB generated script):<br>
                  | =C2=A0=C2=A0=C2=A0 #1: bbfatal_log, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5,
                  <br>
                  line 209<br>
                  | =C2=A0=C2=A0=C2=A0 #2: do_kernel_metadata, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5,
                  <br>
                  line 382<br>
                  | =C2=A0=C2=A0=C2=A0 #3: do_kernel_configme, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5,
                  <br>
                  line 150<br>
                  | =C2=A0=C2=A0=C2=A0 #4: main, <br>
/develop/projects/altec/tcu/build/tmp/work/imx6ullevk-altec-linux-gnueabi/l=
inux-fslc/5.18.5+gitAUTOINC+1d6b3055ae-r0/temp/run.do_kernel_configme.28739=
5,
                  <br>
                  line 484<br>
                  ERROR: Task <br>
(/develop/projects/altec/tcu/build/../meta-freescale/recipes-kernel/linux/l=
inux-fslc_5.18.bb:do_kernel_configme)
                  <br>
                  failed with exit code &#39;1&#39;<br>
                  <br>
                  I tried to debug do_kernel_configme. The issue seems
                  in the scc script <br>
                  more specifically, I think, in the kconf command that
                  is called by scc <br>
                  when parsing the temporary configuration queue file in
                  /tmp: tmp.owmBptYrba<br>
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
                  Apparently a call to dirname is missing the argument.
                  However, I do not <br>
                  understand why.<br>
                  <br>
                  I wiped out build/tmp directory entirely, ran a
                  cleanall on <br>
                  virtual/kernel but to no avail. The problem remains
                  the same.<br>
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
                </blockquote>
              </div>
              <br clear=3D"all">
              <div><br>
              </div>
              -- <br>
              <div dir=3D"ltr">
                <div dir=3D"ltr">Best regards,
                  <div><br>
                    Jos=C3=A9 Quaresma</div>
                </div>
              </div>
            </div>
            <br>
            <br>
            <br>
          </blockquote>
        </div>
        <br clear=3D"all">
        <div><br>
        </div>
        -- <br>
        <div dir=3D"ltr">- Thou shalt not follow
          the NULL pointer, for chaos and madness await thee at its end<br>
          - &quot;Use the force Harry&quot; - Gandalf, Star Trek II<br>
          <br>
        </div>
      </div>
      <br>
      <fieldset></fieldset>
      <pre></pre>
    </blockquote>
    <br>
    <pre cols=3D"72">--=20
Jeremy A. Puhlman
<a href=3D"mailto:jpuhlman@mvista.com" target=3D"_blank">jpuhlman@mvista.co=
m</a></pre>
  </div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58359): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58359" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58359</a><br>
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

--000000000000a83ecc05eb56a940--

