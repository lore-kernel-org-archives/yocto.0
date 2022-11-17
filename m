Return-Path: <shruti10gandotra@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C733AC4332F
	for <webhook@archiver.kernel.org>; Thu, 17 Nov 2022 03:21:40 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web11.7026.1668655299566024927
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Nov 2022 19:21:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ap378Sl5;
 spf=pass (domain: gmail.com, ip: 209.85.222.50, mailfrom: shruti10gandotra@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id d3so145777uan.4
        for <yocto@lists.yoctoproject.org>; Wed, 16 Nov 2022 19:21:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Lhwykxo0jpe1QpLrH3wuVlnP3VVdsVKGrmhHOlyQD0w=;
        b=Ap378Sl5VysMQUbp7uQGasWwsFhi6XP3zrmbsqlFXGuajrpgNtwmQpQodeH2yBig+F
         MuwGgVpeupBkPFyG6L6JLuiU8WdYC5lEspVnIA016GTEYc77nZJ/cOOW9MDr3c3qNeV/
         MEO/71uRrwNhRjgNOZAlYhgTcARngAkUtcP+7YNwRFQ5r7zjAfJWCjla4ylfSosYy5iA
         EILouIx20Yfq+9I8hx+CAgVKoKQGWOWIjbyaDAt1eIH5cVe3zyFcr64AL5MJ4sZmpOFV
         fg7usXOzopXQrOsk3aQiKQojPrmgc/6mC7g1TNbCfXcQaOzY+g10PUUxIgGWwNfuU6kT
         eK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lhwykxo0jpe1QpLrH3wuVlnP3VVdsVKGrmhHOlyQD0w=;
        b=t6WSjTiM30sISYfQwZm5IavyJPJoHjSbndErYBhjIvKyGRlj/hu1ZDkLWTGlQER8Ee
         uUZq3B6sO3AQxat4GqaFQ4SvB6gAxyDSIEoGL3OwerBNW/MIwwF0fUZo3WWolSs2KlJd
         4TArxfYv257ZD01GqKvRe0tds12/uFmMZjD9aKAD+E1w8Yp2R07k8h1Kdn2YF/6/xkin
         PcsVT3CsnLKWOgwcCyVO44/nfyfl8Cg9yvPL9j9juBVLoicZpD8mKZm1EdH9A1g68C9l
         2vOiKIZzjlryQYPda53OOXD9Hw1e35X9RO/zZTEZenrU7NfyaQXLheXL9yH7NK78cZPq
         a6pQ==
X-Gm-Message-State: ANoB5pnqxSLly0EM4UueaLAnfCd2TofBFWBxT9J/wGca3pa5a7ZyYIRj
	arM/MlY3p04dpW8Uqwjer7RNwisKWymN7b/ONZk=
X-Google-Smtp-Source: AA0mqf6M8ElF2Vu0Vvyu3E80Hh0tQPeJ7vmFKK1eHrbhKiULx/lZaW2YfgcqFcbRXSzhpLexxcQHqNgKDClIxMIJ1gU=
X-Received: by 2002:ab0:5a30:0:b0:418:455f:2e89 with SMTP id
 l45-20020ab05a30000000b00418455f2e89mr165981uad.85.1668655298443; Wed, 16 Nov
 2022 19:21:38 -0800 (PST)
MIME-Version: 1.0
References: <6JjZ.1668491198225465936.lWRF@lists.yoctoproject.org> <CAMKF1sqPWRfXN-BZtdH_64qKDSS1w5sROrn35qnn3B=8PROzQA@mail.gmail.com>
In-Reply-To: <CAMKF1sqPWRfXN-BZtdH_64qKDSS1w5sROrn35qnn3B=8PROzQA@mail.gmail.com>
From: Shruti gandotra <shruti10gandotra@gmail.com>
Date: Thu, 17 Nov 2022 08:51:27 +0530
Message-ID: <CAL7Q=KhqAZpm=rZdA7MBGoYEiocbVdAuaOmS6+X20-Rd=aWcNA@mail.gmail.com>
Subject: Re: [yocto] Error while bitbake #dunfell
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000050fc6405eda21620"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Nov 2022 03:21:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58577

--00000000000050fc6405eda21620
Content-Type: text/plain; charset="UTF-8"

Thanks, I'll check it out.

On Tue, 15 Nov 2022, 11:33 pm Khem Raj, <raj.khem@gmail.com> wrote:

>
>
> On Mon, Nov 14, 2022 at 9:46 PM Shruti gandotra <
> shruti10gandotra@gmail.com> wrote:
>
>> I am trying to build rcar-image-minimal for RCar S4, while bitbake I'm
>> getting do_rootfs: The postinstall intercept hook 'update_pixbuf_cache'
>> failed error. I tried using cleanall and cleansstate but I'm still getting
>> the same error.
>> Can anyone help me with issue?
>
>
> Look into the logs in the rootfs build area and it might reveal the
> underlying problem perhaps some missing library or qemu user mode crash
> could be the reason
>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#58565):
>> https://lists.yoctoproject.org/g/yocto/message/58565
>> Mute This Topic: https://lists.yoctoproject.org/mt/95037905/1997914
>> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>

--00000000000050fc6405eda21620
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks, I&#39;ll check it out.=C2=A0</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 15 Nov 2022,=
 11:33 pm Khem Raj, &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><br></div=
><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">=
On Mon, Nov 14, 2022 at 9:46 PM Shruti gandotra &lt;<a href=3D"mailto:shrut=
i10gandotra@gmail.com" target=3D"_blank" rel=3D"noreferrer">shruti10gandotr=
a@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">I am try=
ing to build rcar-image-minimal for RCar S4, while bitbake I&#39;m getting =
do_rootfs: The postinstall intercept hook &#39;update_pixbuf_cache&#39; fai=
led error. I tried using cleanall and cleansstate but I&#39;m still getting=
 the same error.=C2=A0<br>Can anyone help me with issue?
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Look into the lo=
gs in the rootfs build area and it might reveal the underlying problem perh=
aps some missing library or qemu user mode crash could be the reason=C2=A0<=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex" dir=3D"auto"><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#58565): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58565" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/58565</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/95037905/1997=
914" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/95037905/1997914</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoc=
toproject.org/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
 rel=3D"noreferrer">raj.khem@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</blockquote></div>

--00000000000050fc6405eda21620--

