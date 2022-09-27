Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92133C6FA82
	for <webhook@archiver.kernel.org>; Tue, 27 Sep 2022 14:16:54 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com
 [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.11634.1664288206922565871
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 07:16:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=oGkulknK;
 spf=pass (domain: gmail.com, ip: 209.85.221.49,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id bk15so7480354wrb.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 27 Sep 2022 07:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=6wkjOdVfP8NZwx9rIvbzzsOL5yADyy0PXE2Pt+Zi1P8=;
        b=oGkulknKVe9EvsUe4dM6nACuvtli/KZYz2rxcGRraCJrCnhniChgRdJjNVWZv6ipZz
         w4Vxsu8BWSEwUfkylMhkclVu0LlWEgh8aoVkkUvdS7r8w8hgbcGijswGl24o3zLuMQNX
         SsPm379eVVVHrruPU5djCVXz4rTWhAQYMxTXvuOND7Ry0XOOSiMCXDH6QXfMSgFKEKff
         cKHc5Cf9sfMbC1Y6z7XsvSa61WRHGsVOdO//qBvxkIUlyTEQ/XAh7uWYN4k5M/rvPCxu
         KgVS54ikQrswf0woVlAIhtykcurMc2Zm/g57lfA+2P7ISsmiNGTslolmTnQ0nl1GhJci
         tIOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=6wkjOdVfP8NZwx9rIvbzzsOL5yADyy0PXE2Pt+Zi1P8=;
        b=nijfgDn91jugO7Q3CcSlbRRbn1l6x1LRzJvgL5VVSTYYM6IZztYy+wiukWBuemkTjE
         5dRx0V4TZAYY9RORUzIFQHyX51bzyp5fqnNaGO0l2OTm9Ahth9J/WJWCBKH/pR86+y+V
         8tCCUHKU413SuP5DAMfwBZjilbCB4nGMDXXJvA2mwGVKOQqfIzIyxocoXkFTbGvCsXwI
         a7uMKuDB0u9XemoWc361DUUoEPSkJ4/neINfVhO3ynWY01Et97+tZpP5nnAJstaZeMIK
         t1/IrCT2fakDHHE6lTUDvlw6VtoyB4DTL1Y8iHErvQrlrnlDnhzX0frVVtLllabNE3vO
         /SSw==
X-Gm-Message-State: ACrzQf0RuSZzQmGniPqrbAn1AYIJryxtvRGMi4fAUOtCyUH47IkbASQq
	vey5tIgiyzzTMBAaheKzG4acBs4yMpOFj4I/Cho=
X-Google-Smtp-Source: 
 AMsMyM7FKttiiCLDbpXK8OwsTSe7aWZqu3HjQ/dtrVxl2YcOlYvGJ/y5PyiOgyV+WTAOpS+6/9o1sPOyM8sWvdjH7kU=
X-Received: by 2002:a05:6000:86:b0:228:db07:24bc with SMTP id
 m6-20020a056000008600b00228db0724bcmr16855473wrx.204.1664288205026; Tue, 27
 Sep 2022 07:16:45 -0700 (PDT)
MIME-Version: 1.0
References: <7313BA28-2972-4FD7-8E37-27196FAF5B8A@gmail.com>
 <CAP71WjxiOy3fuEdjGfZH0q1VBK2+-e9v0RMedFEuJMxYk1hyTQ@mail.gmail.com>
 <D35FDEE6-48D5-4BC7-A204-8B074449B64F@gmail.com>
In-Reply-To: <D35FDEE6-48D5-4BC7-A204-8B074449B64F@gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 27 Sep 2022 16:16:32 +0200
Message-ID: 
 <CA+chaQdi_c2E78AHO_C8sDJrqUAt+4Tv+DCm0W16N5LaXnp8Zg@mail.gmail.com>
Subject: Re: [yocto] Git send-email blocked by gmail security changes (and how
 to fix it)
To: Benjamin Esquivel <benjamin.esquivel@gmail.com>, robert_henz@jabil.com
Cc: Nicolas Dechesne <nicolas.dechesne@linaro.org>,
 yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000043bbee05e9a94bba"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 Sep 2022 14:16:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58182

--00000000000043bbee05e9a94bba
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 22, 2022 at 6:51 PM Benjamin Esquivel <
benjamin.esquivel@gmail.com> wrote:

>
>
> On Sep 21, 2022, at 11:07 PM, Nicolas Dechesne <
> nicolas.dechesne@linaro.org> wrote:
>
>
>
> On Thu, Sep 22, 2022 at 5:20 AM Benjamin Esquivel <
> benjamin.esquivel@gmail.com> wrote:
>
>> TL;DR Google App passwords are a workaround if your google password is
>> not working in git send-email.
>>
>> Hi,
>>
>> Not sure if this is the right list but I thought of sending it here as a
>> starter. I was following Stephen Jolley=E2=80=99s email for the Project =
status
>> where it has a section for =E2=80=98ways to contribute=E2=80=99 and a po=
inter to the
>> newcomers wiki. There is a link on How to Submit a Patch[1]  which has a=
n
>> example on how to add a gmail account there. I followed it but in the en=
d I
>> was blocked by an error stating that my 'Username and Password not
>> accepted=E2=80=99. Googled a proposed fix[2] to go to the gmail security=
 settings
>> and enable "Access for less secure apps=E2=80=9D but the solution is out=
dated as my
>> settings had a notice saying that it was removed some time ago.
>>
>> But I found that you can use another security feature from google called
>> app passwords[3]. And that means that it will give you one specific
>> password for your app needs. I tested this in the git send-email line an=
d
>> it worked. I don=E2=80=99t know if others are doing this or if their pre=
vious
>> settings remain ok if these were configured before the recent security
>> resets that google has done.
>>
>
> You did the right thing. This is also how I use gmail with git-send-email=
.
>
>
>>
>> Is anyone struggling with this?
>>
>
> I don't remember if they disabled it for all gmail users, or only for
> users who enable 2FA.. but using apps specific token is what we should
> recommend to everyone.
>
>
>> Should we update the wiki to include this tip?
>>
>
> Yes, definitely. If you want to do it, please go ahead.  If you need help
> with that, let me know.
>
> I have just requested an account to the wiki and I=E2=80=99ll update that=
 section
> once I get it :)
>

There was another thread about sending e-mails with git send-email this
week:
https://lists.openembedded.org/g/openembedded-core/message/171101
+Robert
which pointed to this longer explanation:
https://stackoverflow.com/questions/68238912/how-to-configure-and-use-git-s=
end-email-to-work-with-gmail-to-email-patches-to

FWIW: I'm happily using msmtp with gmail account which is then used by git
send-email (through sendmail) with additional benefit that you can use the
same from mutt, cron, command line or whatever else you might want to send
e-mail (instead of using something specific to git send-email).

All you need to do is to install msmtp and short ~/.msmtprc like:
account default
auth login
from foo.bar@gmail.com
host smtp.gmail.com
user foo.bar@gmail.com
password foo.bar's.app.password

tls
tls_certcheck off
tls_starttls on

Then
git config sendemail.to <corresponding.ML>
e.g. openembedded-core@lists.openembedded.org in repos, so that you don't
need to manually type To: every time.

So yes, please update the wiki, but it's not as complicated as it might
seem (based on the questions about this topic), nor is it specific to
OE/Yocto.

Cheers,

--00000000000043bbee05e9a94bba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Sep 22, 2022 at 6:51 PM Benjamin =
Esquivel &lt;<a href=3D"mailto:benjamin.esquivel@gmail.com">benjamin.esquiv=
el@gmail.com</a>&gt; wrote:<br></div><div class=3D"gmail_quote"><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: break-w=
ord;"><br><div><br><blockquote type=3D"cite"><div>On Sep 21, 2022, at 11:07=
 PM, Nicolas Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org" ta=
rget=3D"_blank">nicolas.dechesne@linaro.org</a>&gt; wrote:</div><br><div><d=
iv dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 22, 2022 at 5:20 AM Benjami=
n Esquivel &lt;<a href=3D"mailto:benjamin.esquivel@gmail.com" target=3D"_bl=
ank">benjamin.esquivel@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div><div>TL;DR Google App passwords are a=
 workaround if your google password is not working in git send-email.=C2=A0=
</div><div><br></div><span>Hi,</span><br><br><span>Not sure if this is the =
right list but I thought of sending it here as a starter. I was following S=
tephen Jolley=E2=80=99s email for the Project status where it has a section=
 for =E2=80=98ways to contribute=E2=80=99 and a pointer to the newcomers wi=
ki. There is a link on How to Submit a Patch[1]=C2=A0 which has an example =
on how to add a gmail account there. I followed it but in the end I was blo=
cked by an error stating that my &#39;Username and Password not accepted=E2=
=80=99. Googled a proposed fix[2] to go to the gmail security settings and =
enable &quot;Access for less secure apps=E2=80=9D but the solution is outda=
ted as my settings had a notice saying that it was removed some time ago.</=
span><div><br></div><div>But I found that you can use another security feat=
ure from google called app passwords[3]. And that means that it will give y=
ou one specific password for your app needs. I tested this in the git send-=
email line and it worked. I don=E2=80=99t know if others are doing this or =
if their previous settings remain ok if these were configured before the re=
cent security resets that google has done.</div></div></blockquote><div><br=
></div><div>You did the right thing. This is also how I use gmail with git-=
send-email.=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div><div><br></div><div>Is anyone struggling with this?</di=
v></div></blockquote><div><br></div><div>I don&#39;t remember if they disab=
led it for all gmail users, or only for users who enable 2FA.. but using ap=
ps specific token is what we should recommend to everyone.=C2=A0</div><div>=
=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0=
.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div><div>Sho=
uld we update the wiki to include this tip?</div></div></blockquote><div><b=
r></div><div>Yes, definitely. If you want to do=C2=A0it, please go ahead.=
=C2=A0 If you need help with that, let me know.=C2=A0</div></div></div></di=
v></blockquote>I have just requested an account to the wiki and I=E2=80=99l=
l update that section once I get it :)</div></div></blockquote><div><br></d=
iv><div>There was another thread about sending e-mails with git send-email =
this week:</div><div><a href=3D"https://lists.openembedded.org/g/openembedd=
ed-core/message/171101">https://lists.openembedded.org/g/openembedded-core/=
message/171101</a><br></div><div><a class=3D"gmail_plusreply" id=3D"gmail-p=
lusReplyChip-0">+Robert</a><br></div><div>which pointed to this longer expl=
anation:</div><div><a href=3D"https://stackoverflow.com/questions/68238912/=
how-to-configure-and-use-git-send-email-to-work-with-gmail-to-email-patches=
-to">https://stackoverflow.com/questions/68238912/how-to-configure-and-use-=
git-send-email-to-work-with-gmail-to-email-patches-to</a><br></div><div><br=
></div><div>FWIW: I&#39;m happily using msmtp with gmail account which is t=
hen used by git send-email (through sendmail) with additional benefit that =
you can use the same from mutt, cron, command line or whatever else you mig=
ht want to send e-mail (instead of using something specific to git send-ema=
il).<br></div><div><br></div><div>All you need to do is to install msmtp an=
d short ~/.msmtprc like:</div><div>account default<br>auth login<br></div><=
div>from <a href=3D"mailto:foo.bar@gmail.com">foo.bar@gmail.com</a></div><d=
iv>host <a href=3D"http://smtp.gmail.com">smtp.gmail.com</a></div><div>user=
 <a href=3D"mailto:foo.bar@gmail.com">foo.bar@gmail.com</a></div><div>passw=
ord foo.bar&#39;s.app.password</div><div><br></div><div>tls<br>tls_certchec=
k off<br>tls_starttls on<br></div><div><br></div><div>Then</div><div>git co=
nfig <a href=3D"http://sendemail.to">sendemail.to</a> &lt;corresponding.ML&=
gt;</div><div>e.g. <a href=3D"mailto:openembedded-core@lists.openembedded.o=
rg">openembedded-core@lists.openembedded.org</a> in repos, so that you don&=
#39;t need to manually type To: every time.<br></div><div><br></div><div>So=
 yes, please update the wiki, but it&#39;s not as complicated as it might s=
eem (based on the questions about this topic), nor is it specific to OE/Yoc=
to.</div><div><br></div><div>Cheers,</div></div></div>

--00000000000043bbee05e9a94bba--

