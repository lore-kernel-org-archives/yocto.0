Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com [209.85.215.178])
 by mx.groups.io with SMTP id smtpd.web11.1779.1576793810632293827
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Dec 2019 14:16:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WD9MNLeh;
 spf=pass (domain: gmail.com, ip: 209.85.215.178, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f178.google.com with SMTP id l24so3882959pgk.2
        for <yocto@lists.yoctoproject.org>; Thu, 19 Dec 2019 14:16:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:openpgp:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language;
        bh=qCoiygcgL8zzFF44JZb/i+O3E2/TMt4tHO/LMd/RJYY=;
        b=WD9MNLehgW+J2He5tnVb9kxEKPv4sO2rde5LP3geo6sI5wND6ZrtvfkF293iCoPjK3
         q546y96JZkuSkvcsDjmzwTLB7FZFWP31d2j2MUTbxJTpSLhsvkjy/+zYYxYc51423Ylj
         scgmMO/VJAwpaCKLlS7br91nAlwXLbUfhSRdRCRQnBhOA1APqPNLH+eq/9WqidZRK33v
         2a3WEiuN83NMsWsX19DXn/z4x4o1pdA3jqREG9CeM3kB0ob7W+mzzXaFjklAxUmKzzph
         qKuBYwUm+506rwys3/ZKrwuqRDgO47hwwW2WiTaVE4nS6taoVn+5gxwLUDuhRReVKb46
         YPrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language;
        bh=qCoiygcgL8zzFF44JZb/i+O3E2/TMt4tHO/LMd/RJYY=;
        b=Px2sKgAlu4xBVUqoLBb3ZLNZjqpMuHSwOiZbgLshJU+18TFpN7jcV0niv/wzy6htla
         GMeC/pNxv3OakybmdMChEwMcu0Zt6tH6RSe7Y6ChES49iCNfnNRD1XiJq/JUD9cJvmyR
         z/WROdR3ZvBtCitCIdNY41BjxUK1QXZw3L+3Q5eglt/Bv5gI9TZxIC8K964XnHduLMha
         ZRciY7Te2xU5cTdRR4TJiYR7onzbkLa+H0HGt5hoP+Sp8wnMhFehDmNyFw8Xr1AWkLgw
         ac2gVIWJ6avCms4v+VOdGWAYjdMOgNvA5ODH4VKDD8YQ0tZazEF4dwjvHFj8CN6uk4TS
         l7uQ==
X-Gm-Message-State: APjAAAX+eUSXkXQqMibB1/NNqEpPH3U2xxXFRJYCifyS/0gHLTrUGtwr
	qJsc3gwDij/CjFZLcWe5f9R1ofsR310=
X-Google-Smtp-Source: APXvYqyU+1zHWxFI3y3eeq87p0KTHiIoZiiRno+Q4lOg6XMHPk5t/drBVsJpAHjPKRlswxerysLdeQ==
X-Received: by 2002:a65:488f:: with SMTP id n15mr11968651pgs.61.1576793809510;
        Thu, 19 Dec 2019 14:16:49 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from [10.20.245.11] ([45.19.219.178])
        by smtp.gmail.com with ESMTPSA id i9sm9850755pfd.166.2019.12.19.14.16.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Dec 2019 14:16:48 -0800 (PST)
Subject: Re: [yocto] apparmor setup #yocto
To: hu.schlieben@codewrights.de, yocto@lists.yoctoproject.org
References: <lyds.1576773373989526666.E1JI@lists.yoctoproject.org>
From: "Armpit" <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
 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
 8CS2NxU=
Message-ID: <ee9e3ff4-6209-465a-b5d1-10072dbbfe92@gmail.com>
Date: Thu, 19 Dec 2019 14:16:48 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <lyds.1576773373989526666.E1JI@lists.yoctoproject.org>
Content-Type: multipart/alternative;
 boundary="------------28105737EA337EA2EA352649"
Content-Language: en-US

--------------28105737EA337EA2EA352649
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 12/19/19 8:36 AM, hu.schlieben@codewrights.de wrote:
> Hi,
>
> i'm new here and not really shure this is the right place for this issu=
e.
>
First you need to enable the distro feature

DISTRO_FEATURES_append =3D " apparmor"

otherwise the kernel fragments wont be included
> I try to get apparmor working using yocto. I tried using thud and zeus
> with the same result on apparmor_status:=C2=A0apparmor module is not lo=
aded
> Checking the kernel flags manually with=C2=A0bitbake -c menuconfig
> virtual/kernel shows that none of the relevant flags
> like=C2=A0CONFIG_SECURITY_APPARMOR=C2=A0are set.
> Setting these manually i see that the kernel parameters
These you need to append to your kernel commend line. I think it is:
KERNEL_CMDLINE_APPEND_append =3D

> "apparmor=3D1 security=3Dapparmor" are missing.
>
> My assumption was that adding the apparmor recipe would do all these
> things.
Actually the recipe should have failed with a DISTRO check message.

I should add that.

This should get you on your way.
- armin



>
> Do i add the recipe somewhere completely wrong?
> Do i possibly override apparmor with other recipes?
>
> Any help would be greatly appreciated.
>
> Best regards
>
> hu
>
>
>
>
>
>
> Should these=C2=A0
>
>
>
>
>
>
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47775): https://lists.yoctoproject.org/g/yocto/mess=
age/47775
> Mute This Topic: https://lists.yoctoproject.org/mt/68834537/1024635
> Mute #yocto: https://lists.yoctoproject.org/mk?hashtag=3Dyocto&subid=3D=
6691541
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [akuster@mvi=
sta.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--------------28105737EA337EA2EA352649
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 12/19/19 8:36 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:hu.schlieben@codewrights.de">hu.schlieben@codewrights.de</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:lyds.1576773373989526666.E1JI@lists.yoctoproject.org">
      <meta http-equiv="content-type" content="text/html; charset=UTF-8">
      Hi,<br>
      <br>
      i'm new here and not really shure this is the right place for this
      issue.<br>
      <br>
    </blockquote>
    First you need to enable the distro feature<br>
    <br>
    DISTRO_FEATURES_append = " apparmor"<br>
    <br>
    otherwise the kernel fragments wont be included
    <blockquote type="cite"
      cite="mid:lyds.1576773373989526666.E1JI@lists.yoctoproject.org">I
      try to get apparmor working using yocto. I tried using thud and
      zeus with the same result on apparmor_status: apparmor module is
      not loaded<br>
      Checking the kernel flags manually with bitbake -c menuconfig
      virtual/kernel shows that none of the relevant flags like <span
        style="color: #222222; font-family: 'Helvetica Neue', Arial,
        sans-serif; font-size: 15px;">CONFIG_SECURITY_APPARMOR</span> are
      set.<br>
      Setting these manually i see that the kernel parameters</blockquote>
    These you need to append to your kernel commend line. I think it is:<br>
    KERNEL_CMDLINE_APPEND_append = <br>
    <br>
    <blockquote type="cite"
      cite="mid:lyds.1576773373989526666.E1JI@lists.yoctoproject.org"> "<span style="background-color: #ebf1f5; color: #222222; font-family: monospace; font-size: 13px; white-space: pre-wrap;">apparmor=1 security=apparmor" are missing.</span><br>
      <br>
      My assumption was that adding the apparmor recipe would do all
      these things.<br>
    </blockquote>
    Actually the recipe should have failed with a DISTRO check message.<br>
    <br>
    I should add that.<br>
    <br>
    This should get you on your way.<br>
    - armin<br>
    <br>
    <br>
    <br>
    <blockquote type="cite"
      cite="mid:lyds.1576773373989526666.E1JI@lists.yoctoproject.org"><br>
      Do i add the recipe somewhere completely wrong?<br>
      Do i possibly override apparmor with other recipes?<br>
      <br>
      Any help would be greatly appreciated.<br>
      <br>
      Best regards<br>
      <br>
      hu<br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      Should these <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <pre class="moz-quote-pre" wrap="">-=-=-=-=-=-=-=-=-=-=-=-
Links: You receive all messages sent to this group.

View/Reply Online (#47775): <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/message/47775">https://lists.yoctoproject.org/g/yocto/message/47775</a>
Mute This Topic: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mt/68834537/1024635">https://lists.yoctoproject.org/mt/68834537/1024635</a>
Mute #yocto: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/mk?hashtag=yocto&amp;subid=6691541">https://lists.yoctoproject.org/mk?hashtag=yocto&amp;subid=6691541</a>
Group Owner: <a class="moz-txt-link-abbreviated" href="mailto:yocto+owner@lists.yoctoproject.org">yocto+owner@lists.yoctoproject.org</a>
Unsubscribe: <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/g/yocto/unsub">https://lists.yoctoproject.org/g/yocto/unsub</a>  [<a class="moz-txt-link-abbreviated" href="mailto:akuster@mvista.com">akuster@mvista.com</a>]
-=-=-=-=-=-=-=-=-=-=-=-
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------28105737EA337EA2EA352649--
