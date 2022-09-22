Return-Path: <benjamin.esquivel@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6806FC6FA82
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 16:51:34 +0000 (UTC)
Received: from mail-pj1-f48.google.com (mail-pj1-f48.google.com
 [209.85.216.48])
 by mx.groups.io with SMTP id smtpd.web11.1287.1663865484603994466
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 09:51:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=j9ppBlW5;
 spf=pass (domain: gmail.com, ip: 209.85.216.48,
 mailfrom: benjamin.esquivel@gmail.com)
Received: by mail-pj1-f48.google.com with SMTP id
 q9-20020a17090a178900b0020265d92ae3so2990633pja.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 22 Sep 2022 09:51:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:from:to:cc:subject:date;
        bh=5Y9c4Z95j9ranqP0/glxOA1e/0ylbQ6Irx3oiUkdbmg=;
        b=j9ppBlW5oDinhXBJoBcQbVY5uNKWlSNqjFPDbtGaSFUD1VAmgtA0CIwrsgoN6PYYg3
         i8BaRfi6t86vdbrFYUPGsbvb7mzptx+jOalRYv6SWmosDW/orxj2UBfcsc4a8kd2Hggn
         45Tm+5J7Bf8iaKivHsSJIgc07Tep9BMT2ZbFOnzeBariUMlrkQZV4Rf3PSYnmediHcmX
         Slb2Z87vrJ/FkMJtWpyzoiiwqBfB1LIlsAFbl9mRbHnQtccW6iOM6kPE+ZQ1leDF1BBj
         zJBFUb1HXbbzv43CevlhiQzI3ujoSUur2unxNjH0OYJ6nuQflkIPtT6mdtyTMfG6Q9TK
         tSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:to:cc:in-reply-to:date:subject:mime-version:message-id
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=5Y9c4Z95j9ranqP0/glxOA1e/0ylbQ6Irx3oiUkdbmg=;
        b=sOi05s0spOXsnxyccF4ZBzsbhCZvyjt5qcar6EOfhxf2GgRgSv/L+SxJWWOlMZvIrw
         xhJRgSVQH+wRcBE6fHPGmi7Cw+GAQo85yfAKEkiGyMZxufEoRBhRmGsUWDT3hsmQd9DQ
         8LqOPndMmwko6IrmkjyfUQcU0qHeNZNY4qdEibi98kTFs5Cv6yoi44WrE6UInbm9RnpB
         pkhKL05t8JT+h41Q4+cMNu1XlkKXsKrMxYLhfQJPsGaHJPx6LZwTNH9uewAZFhodOhGy
         PDzTyi+4gEu6/Btkpq+aitWLXXQy2lUjM4Yiy9CPFRKSbsY1/5e9COalIz6R0ex6RZ2p
         mglA==
X-Gm-Message-State: ACrzQf3igzlpnNEEV+pssZxZggWjtBFuxeV5BelfWhGI4lkp07/JsPnn
	F3CU04VaGYaLQPdtAxWAqU0=
X-Google-Smtp-Source: 
 AMsMyM68NURULM8fa3org7fsy31WkBVdmeyW15tKE5u+vQiHjmME3yF9CV+01mAYAbTnmZXgyABwvQ==
X-Received: by 2002:a17:902:c3c5:b0:178:7c2a:72af with SMTP id
 j5-20020a170902c3c500b001787c2a72afmr4020269plj.157.1663865483766;
        Thu, 22 Sep 2022 09:51:23 -0700 (PDT)
Received: from smtpclient.apple ([24.16.138.215])
        by smtp.gmail.com with ESMTPSA id
 x20-20020aa78f14000000b00540dbae6272sm4625445pfr.213.2022.09.22.09.51.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Sep 2022 09:51:22 -0700 (PDT)
From: Benjamin Esquivel <benjamin.esquivel@gmail.com>
Message-Id: <D35FDEE6-48D5-4BC7-A204-8B074449B64F@gmail.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_15D9BF88-4DB0-48C2-9DB1-0056B3F2FD6F"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [yocto] Git send-email blocked by gmail security changes (and how
 to fix it)
Date: Thu, 22 Sep 2022 09:51:21 -0700
In-Reply-To: 
 <CAP71WjxiOy3fuEdjGfZH0q1VBK2+-e9v0RMedFEuJMxYk1hyTQ@mail.gmail.com>
Cc: yocto@lists.yoctoproject.org
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <7313BA28-2972-4FD7-8E37-27196FAF5B8A@gmail.com>
 <CAP71WjxiOy3fuEdjGfZH0q1VBK2+-e9v0RMedFEuJMxYk1hyTQ@mail.gmail.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 16:51:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58138


--Apple-Mail=_15D9BF88-4DB0-48C2-9DB1-0056B3F2FD6F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8



> On Sep 21, 2022, at 11:07 PM, Nicolas Dechesne =
<nicolas.dechesne@linaro.org> wrote:
>=20
>=20
>=20
> On Thu, Sep 22, 2022 at 5:20 AM Benjamin Esquivel =
<benjamin.esquivel@gmail.com <mailto:benjamin.esquivel@gmail.com>> =
wrote:
> TL;DR Google App passwords are a workaround if your google password is =
not working in git send-email.=20
>=20
> Hi,
>=20
> Not sure if this is the right list but I thought of sending it here as =
a starter. I was following Stephen Jolley=E2=80=99s email for the =
Project status where it has a section for =E2=80=98ways to contribute=E2=80=
=99 and a pointer to the newcomers wiki. There is a link on How to =
Submit a Patch[1]  which has an example on how to add a gmail account =
there. I followed it but in the end I was blocked by an error stating =
that my 'Username and Password not accepted=E2=80=99. Googled a proposed =
fix[2] to go to the gmail security settings and enable "Access for less =
secure apps=E2=80=9D but the solution is outdated as my settings had a =
notice saying that it was removed some time ago.
>=20
> But I found that you can use another security feature from google =
called app passwords[3]. And that means that it will give you one =
specific password for your app needs. I tested this in the git =
send-email line and it worked. I don=E2=80=99t know if others are doing =
this or if their previous settings remain ok if these were configured =
before the recent security resets that google has done.
>=20
> You did the right thing. This is also how I use gmail with =
git-send-email.=20
> =20
>=20
> Is anyone struggling with this?
>=20
> I don't remember if they disabled it for all gmail users, or only for =
users who enable 2FA.. but using apps specific token is what we should =
recommend to everyone.=20
> =20
> Should we update the wiki to include this tip?
>=20
> Yes, definitely. If you want to do it, please go ahead.  If you need =
help with that, let me know.=20
I have just requested an account to the wiki and I=E2=80=99ll update =
that section once I get it :)
>=20
>=20
> Regards,
>=20
> Benjamin
>=20
> [1] =
https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded =
<https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded>
> [2] https://support.google.com/mail/thread/5621336?hl=3Den =
<https://support.google.com/mail/thread/5621336?hl=3Den>
> [3] https://support.google.com/accounts/answer/185833 =
<https://support.google.com/accounts/answer/185833>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58128): =
https://lists.yoctoproject.org/g/yocto/message/58128 =
<https://lists.yoctoproject.org/g/yocto/message/58128>
> Mute This Topic: https://lists.yoctoproject.org/mt/93841825/1279857 =
<https://lists.yoctoproject.org/mt/93841825/1279857>
> Group Owner: yocto+owner@lists.yoctoproject.org =
<mailto:yocto%2Bowner@lists.yoctoproject.org>
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
<https://lists.yoctoproject.org/g/yocto/unsub> =
[nicolas.dechesne@linaro.org <mailto:nicolas.dechesne@linaro.org>]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--Apple-Mail=_15D9BF88-4DB0-48C2-9DB1-0056B3F2FD6F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D""><br =
class=3D""><div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Sep 21, 2022, at 11:07 PM, Nicolas Dechesne &lt;<a =
href=3D"mailto:nicolas.dechesne@linaro.org" =
class=3D"">nicolas.dechesne@linaro.org</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D""><div dir=3D"ltr" class=3D""><br class=3D""></div><br =
class=3D""><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Thu, Sep 22, 2022 at 5:20 AM Benjamin Esquivel =
&lt;<a href=3D"mailto:benjamin.esquivel@gmail.com" =
class=3D"">benjamin.esquivel@gmail.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D""><div style=3D"" class=3D"">TL;DR Google App =
passwords are a workaround if your google password is not working in git =
send-email.&nbsp;</div><div style=3D"" class=3D""><br =
class=3D""></div><span style=3D"" class=3D"">Hi,</span><br style=3D"" =
class=3D""><br style=3D"" class=3D""><span style=3D"" class=3D"">Not =
sure if this is the right list but I thought of sending it here as a =
starter. I was following Stephen Jolley=E2=80=99s email for the Project =
status where it has a section for =E2=80=98ways to contribute=E2=80=99 =
and a pointer to the newcomers wiki. There is a link on How to Submit a =
Patch[1]&nbsp; which has an example on how to add a gmail account there. =
I followed it but in the end I was blocked by an error stating that my =
'Username and Password not accepted=E2=80=99. Googled a proposed fix[2] =
to go to the gmail security settings and enable "Access for less secure =
apps=E2=80=9D but the solution is outdated as my settings had a notice =
saying that it was removed some time ago.</span><div style=3D"" =
class=3D""><br class=3D""></div><div style=3D"" class=3D"">But I found =
that you can use another security feature from google called app =
passwords[3]. And that means that it will give you one specific password =
for your app needs. I tested this in the git send-email line and it =
worked. I don=E2=80=99t know if others are doing this or if their =
previous settings remain ok if these were configured before the recent =
security resets that google has done.</div></div></blockquote><div =
class=3D""><br class=3D""></div><div class=3D"">You did the right thing. =
This is also how I use gmail with git-send-email.&nbsp;</div><div =
class=3D"">&nbsp;</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D""><div style=3D"" class=3D""><br =
class=3D""></div><div style=3D"" class=3D"">Is anyone struggling with =
this?</div></div></blockquote><div class=3D""><br class=3D""></div><div =
class=3D"">I don't remember if they disabled it for all gmail users, or =
only for users who enable 2FA.. but using apps specific token is what we =
should recommend to everyone.&nbsp;</div><div =
class=3D"">&nbsp;</div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D""><div style=3D"" class=3D"">Should we update the =
wiki to include this tip?</div></div></blockquote><div class=3D""><br =
class=3D""></div><div class=3D"">Yes, definitely. If you want to =
do&nbsp;it, please go ahead.&nbsp; If you need help with that, let me =
know.&nbsp;</div></div></div></div></blockquote>I have just requested an =
account to the wiki and I=E2=80=99ll update that section once I get it =
:)<br class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div=
 dir=3D"ltr" class=3D""><div class=3D"gmail_quote"><div class=3D""><br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: =
break-word;" class=3D""><div style=3D"" class=3D""><br =
class=3D""></div><div style=3D"" class=3D"">Regards,</div><div style=3D"" =
class=3D""><br class=3D""></div><div style=3D"" class=3D"">Benjamin<br =
class=3D""><div class=3D""><div class=3D""><br class=3D"">[1]&nbsp;<a =
href=3D"https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmb=
edded" target=3D"_blank" =
class=3D"">https://www.openembedded.org/wiki/How_to_submit_a_patch_to_Open=
Embedded</a></div></div></div><div style=3D"" class=3D"">[2]&nbsp;<a =
href=3D"https://support.google.com/mail/thread/5621336?hl=3Den" =
target=3D"_blank" =
class=3D"">https://support.google.com/mail/thread/5621336?hl=3Den</a></div=
><div style=3D"" class=3D"">[3]&nbsp;<a =
href=3D"https://support.google.com/accounts/answer/185833" =
target=3D"_blank" =
class=3D"">https://support.google.com/accounts/answer/185833</a></div></di=
v><br class=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br class=3D"">
Links: You receive all messages sent to this group.<br class=3D"">
View/Reply Online (#58128): <a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/58128" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/g/yocto/message/58128</a><br =
class=3D"">
Mute This Topic: <a =
href=3D"https://lists.yoctoproject.org/mt/93841825/1279857" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/mt/93841825/1279857</a><br =
class=3D"">
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" =
target=3D"_blank" class=3D"">yocto+owner@lists.yoctoproject.org</a><br =
class=3D"">
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a =
href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank" =
class=3D"">nicolas.dechesne@linaro.org</a>]<br class=3D"">
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br class=3D"">
<br class=3D"">
</blockquote></div></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_15D9BF88-4DB0-48C2-9DB1-0056B3F2FD6F--

