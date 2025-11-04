Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6F53CCFA04
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 13:17:02 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.17377.1762262218865922076
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Nov 2025 05:16:58 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=gh8S071+;
 spf=pass (domain: gmail.com, ip: 209.85.216.41, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-339d7c403b6so5161986a91.2
        for <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 05:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762262218; x=1762867018; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XnFDg6wMRaTtHGeX1yhOBrAitj04U3ARn5h+nAcyzko=;
        b=gh8S071+/I2Cnx3k4iIWGO1hCGUuaF23KNXR26dGnqtK+2jiyGKAKJmwBUdksPIN+m
         MOn30p5NqUbvI8wRd1ObNgy7u+YqaZh01uFUI4aV/IXJ6C2RV/6m8Au8lGOUKy9kOOhf
         NkYlJAeW3xSoWiM1g6f7hFldvZwuFzlm0CNQr67Esh8//2c/On5GSlhfFieht07OmuJU
         WBobqPeHbgUHqTBM4JhTNBGTisoijK8InB76bOkbyCtKHE/MWFaciDudujksPQZdz3bU
         hvqyz6yYajV2FxiOtutnuSJo+6A22m4N6LmHIc/Q9eiD1pJlyc0CaWKjvuDSrBl1Rica
         Z5ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762262218; x=1762867018;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XnFDg6wMRaTtHGeX1yhOBrAitj04U3ARn5h+nAcyzko=;
        b=BWyaYq8GGn6WYnLTolYPKv2DIZ+onPRpUAdHxKqyXuV6sWc266XZz8EJa2+CjkO5NO
         XpY9GFux9985THHgWPJuzT7nHvI2E5zccTlK7HoWAdD+Im5f1kctWSPn5kXOLWqFEg0w
         lnnGdaaPBx5HkK5uzy3nkQ5E2kDxthJ/ckYa78SBW+B4oqdO+bYhOVwHlth77eVYLom0
         mn4y7GG02pIXtf2wAwdG4Mk2oA+iHt2JX7ELU25kVM+sh91OQ0MCGhp/7WGPTnHdRFZs
         Cyh3ZiRgvFCBbc+AprzYoMmFdapvAwIRRAC9Dk9jj2GqNjBBBP3DRIYETMjR1wUAOcKe
         De3Q==
X-Gm-Message-State: AOJu0YzgPD8jClwuQ07UdGpzNZoa8ryGmgk7IW+vop9gHQULm52K/z1t
	VhE4L9ElKsGmE3WefsHn3paNLqJ2OBBW5HxrWYEpu4KlRV+QVjh4CLN0HKeXrL+ra3PMn3u+rAJ
	LBKAMZtUxSYEIRb3y1ZggAHDo7Tn6WK+M1BkU
X-Gm-Gg: ASbGncvJvGUTcZ16XHJNvYBFNrGA8qjWmSwjq5CRXaMV8CSpZ2D7xcmg1drEAYPH2st
	qvXj9qyckgcb5HmDieOAy6uEOLLRU4AMmObflfSSh4J9DLvBYN1UHHQWlmTNBLvycIBgSBuRPBH
	aEm15qhpz/bTjyu6DCkX0hzMoHCh9/VWSrwd+szTsIX3g/zjNQS5SennslFYXk3cVkgtkeh22OJ
	O7knwUT89o6ieAY8amayYjRO7PJls2FZgi04kvgsnvNqFRcmhS8D+zCNDTCbg==
X-Google-Smtp-Source: AGHT+IHZdo/7pOiMlHRU0WwBQh7lHN8qHK04FkdhB4WDvd13mGKY6TH6sw1qUHIiRJTWm9LugJk7f2cAyWauIn14CO8=
X-Received: by 2002:a17:90b:2d81:b0:340:7380:d092 with SMTP id
 98e67ed59e1d1-3408307c81emr22020049a91.26.1762262217494; Tue, 04 Nov 2025
 05:16:57 -0800 (PST)
MIME-Version: 1.0
References: <IA0PR02MB9662D122E02DB89D545BBA92FEC4A@IA0PR02MB9662.namprd02.prod.outlook.com>
 <CADkTA4Mrnf_xiVJzsXCpHcHdeNT3qKnpcM3-FrNFREq_Kbyucg@mail.gmail.com>
In-Reply-To: <CADkTA4Mrnf_xiVJzsXCpHcHdeNT3qKnpcM3-FrNFREq_Kbyucg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Tue, 4 Nov 2025 08:16:46 -0500
X-Gm-Features: AWmQ_bmL-800uyyFbqJ8_uq3S59xD8zHo_RZrIU92rBL0XgkBzOb_MNKbfK365U
Message-ID: <CADkTA4MFDwo1tLYPzmTrWknZQvmE2oBQAt9MiVfNWdSO-uYTXw@mail.gmail.com>
Subject: Re: [yocto] [meta-security][DISCUSSION] : Enable Additional Security
 Configs in meta-security Layer
To: yocto@lists.yoctoproject.org, amanna@qti.qualcomm.com
Cc: "yocto-security@lists.yoctoproject.org" <yocto-security@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000007995a80642c4a509"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 13:17:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66003

--0000000000007995a80642c4a509
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sending again, as I wasn't subscribed to yocto-security :)

Bruce

On Tue, Nov 4, 2025 at 8:15=E2=80=AFAM Bruce Ashfield <bruce.ashfield@gmail=
.com>
wrote:

>
>
> On Tue, Nov 4, 2025 at 6:33=E2=80=AFAM Abhilasha Manna (Temp) via
> lists.yoctoproject.org <amanna=3Dqti.qualcomm.com@lists.yoctoproject.org>
> wrote:
>
>> Hi Yocto Security Team,
>>
>> I'm currently working with the Yocto Project and exploring the
>> `meta-security` layer. I'd like to propose enabling additional security
>> configurations to enhance system hardening.
>>
>> Specifically, I'm looking to enable the following configurations:
>>
>> - CONFIG_SLAB_FREELIST_RANDOM=3Dy
>> - CONFIG_SLAB_FREELIST_HARDENED=3Dy
>> - CONFIG_HARDENED_USERCOPY=3Dy
>> - CONFIG_FORTIFY_SOURCE=3Dy
>>
>> I'd appreciate guidance on the best practices for integrating these into
>> the layer, and whether there are any existing patches or recommendations
>> from the community.
>>
>>
> If these are in kernel fragments. I'd suggest putting them in the
> kernel-cache
> repository and send them to the linux-yocto mailing list.
>
> Putting configuration fragments into many different layers makes them bot=
h
> hard to find and difficult to re-use, which is why I've been pushing for
> over a
> decade to centralize things in the kernel-cache. Once in the centralized
> configuration location, even non kernel-yocto style kernel's can still
> reuse
> the fragments.
>
> In the layer, you would then enable them via KERNEL_FEATURES in a bbappen=
d.
>
> You can see how this is done in the meta-virtualization layer.
>
> Cheers,
>
> Bruce
>
>
>
>> Please let me know if this is something that aligns with the goals of th=
e
>> `meta-security` layer, and how I can contribute or proceed further.
>>
>> Thanks, and regards,
>> Abhilasha Manna
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#66000):
>> https://lists.yoctoproject.org/g/yocto/message/66000
>> Mute This Topic: https://lists.yoctoproject.org/mt/116115138/1050810
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

--=20
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000007995a80642c4a509
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small">Sen=
ding again, as I wasn&#39;t subscribed=C2=A0to yocto-security :)</div><div =
class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=3D"g=
mail_default" style=3D"font-size:small">Bruce</div></div><br><div class=3D"=
gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On=
 Tue, Nov 4, 2025 at 8:15=E2=80=AFAM Bruce Ashfield &lt;<a href=3D"mailto:b=
ruce.ashfield@gmail.com">bruce.ashfield@gmail.com</a>&gt; wrote:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr"><div class=3D"gmail_default" style=3D"font-size:small"><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, Nov 4, 2025 at 6:33=E2=80=AFAM Abhilasha Manna (Temp) via <a href=3D=
"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctoproject.org</a=
> &lt;amanna=3D<a href=3D"mailto:qti.qualcomm.com@lists.yoctoproject.org" t=
arget=3D"_blank">qti.qualcomm.com@lists.yoctoproject.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Yocto Security T=
eam,<br>
<br>
I&#39;m currently working with the Yocto Project and exploring the `meta-se=
curity` layer. I&#39;d like to propose enabling additional security configu=
rations to enhance system hardening.<br>
<br>
Specifically, I&#39;m looking to enable the following configurations:<br>
<br>
- CONFIG_SLAB_FREELIST_RANDOM=3Dy<br>
- CONFIG_SLAB_FREELIST_HARDENED=3Dy<br>
- CONFIG_HARDENED_USERCOPY=3Dy<br>
- CONFIG_FORTIFY_SOURCE=3Dy<br>
<br>
I&#39;d appreciate guidance on the best practices for integrating these int=
o the layer, and whether there are any existing patches or recommendations =
from the community.<br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">If these are in kernel fragments. I&#39;d suggest putting =
them in the kernel-cache</div><div class=3D"gmail_default" style=3D"font-si=
ze:small">repository and send them to the linux-yocto mailing list.</div><d=
iv class=3D"gmail_default" style=3D"font-size:small"><br></div><div class=
=3D"gmail_default" style=3D"font-size:small">Putting configuration fragment=
s into many different layers makes them both</div><div class=3D"gmail_defau=
lt" style=3D"font-size:small">hard to find and difficult to re-use, which i=
s why I&#39;ve been pushing for over a</div><div class=3D"gmail_default" st=
yle=3D"font-size:small">decade to centralize things in the kernel-cache. On=
ce in the centralized</div><div class=3D"gmail_default" style=3D"font-size:=
small">configuration location, even non kernel-yocto style kernel&#39;s can=
 still reuse</div><div class=3D"gmail_default" style=3D"font-size:small">th=
e fragments.</div><div class=3D"gmail_default" style=3D"font-size:small"><b=
r></div><div class=3D"gmail_default" style=3D"font-size:small"><div><div cl=
ass=3D"gmail_default">In the layer, you would then enable them via KERNEL_F=
EATURES in a bbappend.</div></div><div><br></div></div><div class=3D"gmail_=
default" style=3D"font-size:small">You can see how this is done in the meta=
-virtualization layer.</div><div class=3D"gmail_default" style=3D"font-size=
:small"><br></div><div class=3D"gmail_default" style=3D"font-size:small">Ch=
eers,</div></div><div class=3D"gmail_default" style=3D"font-size:small"><br=
></div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><d=
iv><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">
Please let me know if this is something that aligns with the goals of the `=
meta-security` layer, and how I can contribute or proceed further.<br>
<br>
Thanks, and regards,=C2=A0 <br>
Abhilasha Manna=C2=A0 <br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66000): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66000" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66000</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/116115138/105=
0810" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/116115138/1050810</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:bruce.ashfield@gmail.com" target=3D"_blank">bruc=
e.ashfield@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div></div>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">- Thou shalt not follow the NULL pointer, for chaos and madness a=
wait thee at its end<br>- &quot;Use the force Harry&quot; - Gandalf, Star T=
rek II<br><br></div>

--0000000000007995a80642c4a509--

