Return-Path: <smooge@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B81B9C001B0
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 18:43:11 +0000 (UTC)
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
 by mx.groups.io with SMTP id smtpd.web11.70066.1691520181950612050
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 11:43:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=pD6CGyKI;
 spf=pass (domain: gmail.com, ip: 209.85.210.171, mailfrom: smooge@gmail.com)
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-686b9920362so4094943b3a.1
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 11:43:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691520181; x=1692124981;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MnhXpRc6kORP2xhS+kkRhpbOflsAlY0mJFNKRtyRtlw=;
        b=pD6CGyKIv6rdgPEuoVY3BNi3cbxI/24AvLoVuDje83od1zGBtHKph4lJ74Hjh3fE0o
         yvBnG2Ewkx6tMmAvxKY2l0Ui3WKx2g0xfEvNuK6yAlRUHlO7KUJIQa8gFSGdYPnURQlX
         6eXL7diScA/4czpRjKvxd4Vka4uQqHg4SNSrwD8cGt8WWTmei23ChMW3/ChW6tabN697
         eb/h0NXe5Azcuk8o+1g2lN97zOzSoXdKxGz3G1AIxPcNyfFH8/+zY+cjlk/tGFZdXqOF
         XTImq6t+BuVDfp8hksU0pPgMW96NFB8inQpXPMK2kwd4X5h9bjofPXw50cGurdOkGCOp
         7Xvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691520181; x=1692124981;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MnhXpRc6kORP2xhS+kkRhpbOflsAlY0mJFNKRtyRtlw=;
        b=Dh4ysEk5HP9/m8dy0GX0687oKtjbCYOO868hPqQj7z6GKipAULiOpHnTnc6JQh5Jvq
         RDcRICCSazN3Kv6eTLY2GbdO1jsaa/puaHu1td6iZwzxxitA/xyxCl8yrn/RiLj+zIfo
         P1YFN0ts1B9VXrJxWa/Fd3ym0TTfPsThUSH9p8i8xwOEzcxx6BR4yKs2nLUFfm9Qvf5R
         yT+lOWMPMbYYp9Y3emcdX4iu7pmBJgaZYNgRt0gc47IspJj9vTCVxCUH9lkfvJPwY3dS
         ThTXc57W2sr9gG/ZgSWQom1lm3WvKUJUZLt9ZOsSOjGw7nN2OggR1PEmoyvTnWVrnlfz
         Fy5g==
X-Gm-Message-State: AOJu0YxS1ClNGQ+DRW53OHwQdlfU7+WSPC3Zks4oPQk9pOm6HQOIExhm
	vjo40o/ekjSrgVRHSY7kWBNXC3yhuCQIKEvdt4M=
X-Google-Smtp-Source: AGHT+IGy6iOpfMki3CGNfr4+K3V2P80VY7W9901cpoehn7/HL/OZ/OrCVnFBfYNAhuEZisqp2T0XBYispvjGkaga8U0=
X-Received: by 2002:a05:6a20:4320:b0:118:e70:6f7d with SMTP id
 h32-20020a056a20432000b001180e706f7dmr452801pzk.10.1691520181219; Tue, 08 Aug
 2023 11:43:01 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
 <CAMKF1sorNvKwy9tKMRv4FSDFP270t7ryimrv8s8tUzgXoJ=L6A@mail.gmail.com>
In-Reply-To: <CAMKF1sorNvKwy9tKMRv4FSDFP270t7ryimrv8s8tUzgXoJ=L6A@mail.gmail.com>
From: Stephen John Smoogen <smooge@gmail.com>
Date: Tue, 8 Aug 2023 14:42:49 -0400
Message-ID: <CANnLRdhA5USajcUkX-O0gTVam7JfxPWpheAuVcjdpam8cmKGXA@mail.gmail.com>
Subject: Re: [yocto] Rootless Podman
To: Khem Raj <raj.khem@gmail.com>
Cc: Joel Winarske <joel.winarske@gmail.com>, 
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000088353806026dbbcb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 18:43:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60749

--00000000000088353806026dbbcb
Content-Type: text/plain; charset="UTF-8"

Does anyone know what ways it is failing (or how I can duplicate it ) and I
can forward to the podman group (can't promise I can get it fixed.. but
will do what I can). Also if people have already opened issues on the
failures, let me know.

On Tue, 8 Aug 2023 at 14:34, Khem Raj <raj.khem@gmail.com> wrote:

>
> We have tried it hard in yoe distro but it always fails in novel ways so
> much. I have switched back to docker for now
>
> On Tue, Aug 8, 2023 at 11:07 AM Joel Winarske <joel.winarske@gmail.com>
> wrote:
>
>> Anyone successfully building using Rootless Podman?
>>
>> I'm seeing a variety of strange issues.
>>
>> My baseline podman config:
>> --user 1001:1001
>> --ipc host
>> --privileged
>> --security-opt label=disable
>> --pid host
>> --userns keep-id
>> --ulimit host
>> --mount type=devpts,destination=/dev/pts
>> --security-opt label=disable
>> --group-add keep-groups
>>
>>
>>
>>
>>
>>
>>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60746):
> https://lists.yoctoproject.org/g/yocto/message/60746
> Mute This Topic: https://lists.yoctoproject.org/mt/100627665/6036588
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> smooge@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

-- 
Stephen J Smoogen.
Let us be kind to one another, for most of us are fighting a hard battle.
-- Ian MacClaren

--00000000000088353806026dbbcb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div>Does anyone know what ways=
 it is failing (or how I can duplicate it ) and I can forward to the podman=
 group (can&#39;t promise I can get it fixed.. but will do what I can). Als=
o if people have already opened issues on the failures, let me know.<br></d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Tue, 8 Aug 2023 at 14:34, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com=
">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div><br></div><div dir=3D"auto">We have tried it hard =
in yoe distro but it always fails in novel ways so much. I have switched ba=
ck to docker for now=C2=A0</div><div dir=3D"auto"><br><div class=3D"gmail_q=
uote" dir=3D"auto"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 8, 202=
3 at 11:07 AM Joel Winarske &lt;<a href=3D"mailto:joel.winarske@gmail.com" =
target=3D"_blank">joel.winarske@gmail.com</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Anyone succe=
ssfully building using Rootless Podman?</div><div><br></div><div>I&#39;m se=
eing a variety of strange issues.<br><br></div><div>My baseline podman conf=
ig:<br><div style=3D"color:rgb(204,204,204);background-color:rgb(31,31,31);=
font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&quot;,monospace;fon=
t-weight:normal;font-size:14px;line-height:19px;white-space:pre-wrap"><div>=
<span style=3D"color:rgb(204,204,204)">        </span><span style=3D"color:=
rgb(206,145,120)">--user 1001:1001</span></div><div><span style=3D"color:rg=
b(204,204,204)">        </span><span style=3D"color:rgb(206,145,120)">--ipc=
 host</span></div><div><span style=3D"color:rgb(204,204,204)">        </spa=
n><span style=3D"color:rgb(206,145,120)">--privileged</span></div><div><spa=
n style=3D"color:rgb(204,204,204)">        </span><span style=3D"color:rgb(=
206,145,120)">--security-opt label=3Ddisable</span></div><div><span style=
=3D"color:rgb(204,204,204)">        </span><span style=3D"color:rgb(206,145=
,120)">--pid host</span></div><div><span style=3D"color:rgb(204,204,204)"> =
       </span><span style=3D"color:rgb(206,145,120)">--userns keep-id</span=
></div><div><span style=3D"color:rgb(204,204,204)">        </span><span sty=
le=3D"color:rgb(206,145,120)">--ulimit host</span><span style=3D"color:rgb(=
204,204,204)"> </span></div><div><span style=3D"color:rgb(204,204,204)">   =
     </span><span style=3D"color:rgb(206,145,120)">--mount type=3Ddevpts,de=
stination=3D/dev/pts</span></div><div><span style=3D"color:rgb(204,204,204)=
">        </span><span style=3D"color:rgb(206,145,120)">--security-opt labe=
l=3Ddisable</span></div><div><span style=3D"color:rgb(204,204,204)">       =
 </span><span style=3D"color:rgb(206,145,120)">--group-add keep-groups</spa=
n></div><div><span style=3D"color:rgb(204,204,204)"><br></span></div></div>=
</div><div><br><br></div></div>
<br>
<br>
<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60746): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60746" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60746</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100627665/603=
6588" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100627665/6036588</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:smooge@gmail.com" target=3D"_blank">smooge@gmail=
.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br><span class=3D"gmail_signature_pre=
fix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"l=
tr">Stephen J Smoogen.<br><span style=3D"color:rgb(32,33,36);font-family:Ar=
ial,Helvetica,sans-serif;font-size:small;font-style:normal;font-weight:400;=
letter-spacing:normal;text-align:start;text-indent:0px;text-transform:none;=
white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);displ=
ay:inline;float:none">Let us be kind to one another, for most of us are fig=
hting a hard battle. -- Ian MacClaren</span></div></div></div>

--00000000000088353806026dbbcb--

