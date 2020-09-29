Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web11.20215.1601384227970303739
 for <yocto@lists.yoctoproject.org>;
 Tue, 29 Sep 2020 05:57:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=wSqkwzMm;
 spf=softfail (domain: soccasys.com, ip: 198.145.29.25, mailfrom: laurent.gauthier@soccasys.com)
Received: from mail-vk1-f195.google.com (mail-vk1-f195.google.com [209.85.221.195])
	by mail.yoctoproject.org (Postfix) with ESMTPS id D8BFF38C06CF
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 05:57:06 -0700 (PDT)
Received: by mail-vk1-f195.google.com with SMTP id h23so2403146vkn.4
        for <yocto@yoctoproject.org>; Tue, 29 Sep 2020 05:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=TAmCWMVTQREkmIQ4js3mSeWLzzkdbC37WmS86ekJ0cE=;
        b=wSqkwzMmMfam1g4h7jGIWdjPggbpoqhD5aWxvfdlVYVSLEd3lgc4wu1qKpoLEuMS/0
         r2p0PL4U2bUy3M7jvUQpAFkxISdOQVD6hKFicfw8Fp5zrSiOFyysshRnDYy5Vd5ljGpS
         Wpq3gUpnv1ZdcV/sjFyMl49HY2pbhCfs7SJkanQTdFpfT6QXdXcFRG/FJKXnjr1Ewn5C
         171Rvre4i7xnHKQo3txlCBfPBmxa9jc9zIQ2cDityibfpW5KqQ2F5UjOpwUCc/QMdj3s
         mIKypWm+7gChvKy0Y67BBeLtrXOgkvNJXkhUGF291GmcBoPS/GxFAcAg9qXplCXQCQhh
         d1Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=TAmCWMVTQREkmIQ4js3mSeWLzzkdbC37WmS86ekJ0cE=;
        b=OHIMxRZZ4eeJVq8Wo7Lbq9FW6qVmpVKIcEXI5tr6Nw46PqzyuxRzgfSpTkG7EXDNV7
         rFHhtnTh+upgcRuHLlmkcP/ray/wRz1ZEtvQDlgS1PG3z7PVQ+xMCa91FA34ezL+Aefr
         e2ATjMuGH01lfcjFCqDxI/mzcbnikdLq4fyRkvKfEulBbZ/T9tXHNEN8sAlZQtjtobE+
         tedmV34qmWmaeMKOiHXGZgNu0UHbnvWIkOWNt68lxoBklejsQltVKvf/mNmU6VCGZNSf
         B/RmPXnrR/ug3Vmin4UEAsIvyFbUXAX/GbA4dlNlwLt98TaZHGgIs9VxQ8FkDkLbJWfW
         5sFw==
X-Gm-Message-State: AOAM530lkX0tsW7tlQuQZzqozm1mMmnCOXtWVGj+/MhBohTNG1G6erl4
	oW8s6tgaFkdeKeCqXDb03EI5AnQQUBvtffWV5KhMzaNJgDqxB5nb
X-Google-Smtp-Source: ABdhPJwSgWR7RmX49eHdaPKNkDtGXmb/Dk8+xTx1GsOQsJnn1lGv03ZLKRoO7jihvxfU24QBQupivWYZdcHSWehbPGk=
X-Received: by 2002:a1f:ac0e:: with SMTP id v14mr2431403vke.21.1601384225542;
 Tue, 29 Sep 2020 05:57:05 -0700 (PDT)
MIME-Version: 1.0
References: <10274ebc-8857-8c51-55b0-f0a888ce8bf9@faresoftware.it>
 <CAGbd71RQrjf8vEfcoS9ZPAWXKCr20yGPesZT_bushNeqgkNX9w@mail.gmail.com> <7e203494-00c7-384c-d73e-551397701820@faresoftware.it>
In-Reply-To: <7e203494-00c7-384c-d73e-551397701820@faresoftware.it>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Tue, 29 Sep 2020 14:56:28 +0200
Message-ID: <CAGbd71RoTDco8Brc2qd=Vtv7=8H0CpAwy8u-or2fF5PbY06nRA@mail.gmail.com>
Subject: Re: [yocto] File collision: same path from 2 recipes
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e9ac8a05b0735153"

--000000000000e9ac8a05b0735153
Content-Type: text/plain; charset="UTF-8"

I would guess so.

Here is a way to figure out all the packages in which your file is
delivered (small trick that has proven quite useful for me to figure out
which recipe/package provides a specific file):

1. cd <your-build-directory>
2. echo tmp/work/*/*/*/packages-split/*/etc/network/if-up,d/hostapd_restart

This will show you which packages have the file
"/etc/network/if-up,d/hostapd_restart".

If you just want to check which recipe installs it (in case it is installed
by the recipe, but not packaged):

1. cd <your-build-directory>
2. echo tmp/work/*/*/*/package/etc/network/if-up,d/hostapd_restart

I hope this helps.

Kind Regards, Laurent.

PS: in some configurations of your build you might have to adjust the name
of the "tmp" directory.


On Tue, Sep 29, 2020 at 2:37 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Thanks for your help.
>
> I'm working with an old Krogoth.
>
> This checks is true even with Krogoth?
>
>
> MZ
> Il 29/09/20 14:17, Laurent Gauthier ha scritto:
>
> Hi Mauro,
>
> From my experience there should be an error reported during the image
> creation as long as the two *packages* that contain a file with the same
> name are BOTH installed in the root filesystem.
>
> If you don't receive an error I would suspect that for some reason the
> file is really only installed by one of the two packages.
>
> Another source of your issue is that there can be more than one package
> created by one recipe, and maybe you are not installing the package which
> contains the contentious file.
>
> Kind Regards, Laurent.
>
> On Tue, Sep 29, 2020 at 2:08 PM Mauro Ziliani <mauro@faresoftware.it>
> wrote:
>
>> Hi all.
>>
>> There is a QA to test if 2 recipes try to install a file with the same
>> path?
>>
>> In my BSP 2 recipes try install the file
>> ${D}/etc/network/if-up,d/hostapd_restart
>>
>>
>> I'd like receive an error from bitbale
>>
>>
>> Best regards,
>>
>>
>>     MZ
>>
>>
>> 
>>
>>
>
> --
> Laurent Gauthier
> Embedded Linux Systems & Software
> Phone: +33 630 483 429
> http://soccasys.com
>
>

-- 
Laurent Gauthier
Embedded Linux Systems & Software
Phone: +33 630 483 429
http://soccasys.com

--000000000000e9ac8a05b0735153
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I would guess so.</div><div><br></div><div>Here is a =
way to figure out all the packages in which your file is delivered (small t=
rick that has proven quite useful for me to figure out which recipe/package=
 provides a specific file):</div><div><br></div><div>1. cd &lt;your-build-d=
irectory&gt;</div><div>2. echo tmp/work/*/*/*/packages-split/*/etc/network/=
if-up,d/hostapd_restart</div><div><br></div><div>This will show you which p=
ackages have the file &quot;/etc/network/if-up,d/hostapd_restart&quot;.</di=
v><div><br></div><div>If you just want to check which recipe installs it (i=
n case it is installed by the recipe, but not packaged):</div><div><br></di=
v><div><div>1. cd &lt;your-build-directory&gt;</div><div>2. echo tmp/work/*=
/*/*/package/etc/network/if-up,d/hostapd_restart</div></div><div><br></div>=
<div>I hope this helps.</div><div><br></div><div>Kind Regards, Laurent.</di=
v><div><br></div><div>PS: in some configurations of your build you might ha=
ve to adjust the name of the &quot;tmp&quot; directory.<br></div><div><br><=
/div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_a=
ttr">On Tue, Sep 29, 2020 at 2:37 PM Mauro Ziliani &lt;<a href=3D"mailto:ma=
uro@faresoftware.it">mauro@faresoftware.it</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
  
    
  
  <div>
    <p><font size=3D"-1">Thanks for your help.</font><br>
    </p>
    <p><font size=3D"-1">I&#39;m working with an old Krogoth.</font></p>
    <p><font size=3D"-1">This checks is true even with Krogoth?</font></p>
    <p><br>
    </p>
    <p>MZ<br>
    </p>
    <div>Il 29/09/20 14:17, Laurent Gauthier ha
      scritto:<br>
    </div>
    <blockquote type=3D"cite">
      
      <div dir=3D"ltr">
        <div>Hi Mauro,</div>
        <div><br>
        </div>
        <div>From my experience there should be an error reported during
          the image creation as long as the two *packages* that contain
          a file with the same name are BOTH installed in the root
          filesystem.</div>
        <div><br>
        </div>
        <div>If you don&#39;t receive an error I would suspect that for so=
me
          reason the file is really only installed by one of the two
          packages.</div>
        <div><br>
        </div>
        <div>Another source of your issue is that there can be more than
          one package created by one recipe, and maybe you are not
          installing the package which contains the contentious file.<br>
        </div>
        <div><br>
        </div>
        <div>Kind Regards, Laurent.<br>
        </div>
      </div>
      <br>
      <div class=3D"gmail_quote">
        <div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep 29, 2020 at 2:08
          PM Mauro Ziliani &lt;<a href=3D"mailto:mauro@faresoftware.it" ta=
rget=3D"_blank">mauro@faresoftware.it</a>&gt; wrote:<br>
        </div>
        <blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi
          all.<br>
          <br>
          There is a QA to test if 2 recipes try to install a file with
          the same path?<br>
          <br>
          In my BSP 2 recipes try install the file <br>
          ${D}/etc/network/if-up,d/hostapd_restart<br>
          <br>
          <br>
          I&#39;d like receive an error from bitbale<br>
          <br>
          <br>
          Best regards,<br>
          <br>
          <br>
          =C2=A0=C2=A0=C2=A0 MZ<br>
          <br>
          <br>
          <br>
          <br>
        </blockquote>
      </div>
      <br clear=3D"all">
      <br>
      -- <br>
      <div dir=3D"ltr">Laurent Gauthier<br>
        Embedded Linux Systems &amp; Software<br>
        Phone: +33 630 483 429<br>
        <a href=3D"http://soccasys.com" target=3D"_blank">http://soccasys.=
com</a></div>
    </blockquote>
  </div>

</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Laurent Gauthier<br>Embedded Linux Systems &amp; Software<=
br>Phone: +33 630 483 429<br><a href=3D"http://soccasys.com" target=3D"_bla=
nk">http://soccasys.com</a></div>

--000000000000e9ac8a05b0735153--
