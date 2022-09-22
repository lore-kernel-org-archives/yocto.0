Return-Path: <nicolas.dechesne@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6902CC6FA91
	for <webhook@archiver.kernel.org>; Thu, 22 Sep 2022 06:08:14 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
 [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web11.4189.1663826890738739729
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 23:08:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Ynmj/EDP;
 spf=pass (domain: linaro.org, ip: 209.85.222.43,
 mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ua1-f43.google.com with SMTP id b7so3269411uas.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 21 Sep 2022 23:08:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=4XrlHX39onvESAsAhiRJ99lAkYK1Az54aXZiM52odaY=;
        b=Ynmj/EDPP5edtAKHHavU9nPvjZ2B6Ga/o1fSgYVEEcGKalR0w6O+FQRy/I4zs42tCJ
         23JPLCnH2CiYPplWUYUdVydA6fR95DwFK8zA+XMLXPHroIjHW2hnKx1BHGTZnJa1b+kT
         HtpOm8wIabeaMXA7K6h1d+JL1xljg2JMerg3ky/MTx9ftoG1S5FUihtjNMf/JMFWRyc+
         1dB1+WHURadThTRx68VSydaF92Ws0nd+LHJU84SYrsmmFazydeOwlDl2l94/koJxmvPY
         mAakUG5wBn7VFVwUrj1XfVCjOR2eGTLu1LqXcQKlm7A0O6mZjGLUXmkqKPsjmG2dd1k7
         1r0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=4XrlHX39onvESAsAhiRJ99lAkYK1Az54aXZiM52odaY=;
        b=u3H1APULC7zWLcactbmKC2gx0G4QLGaFELeTc0FQMtSiRFLQqJTUdGRMHavJcDc6Ru
         WJBU9BCV47l5iLh9HNI4HVyo85Nactu7tgVgWHJ9w/PqH5tGGbsL6wg3c/n9WvWngjsC
         EnWPzB73w/eeErHx0KzN3BtRDZ47Jiq25gAt1sRU7pRRdapE8llSh7gnvkluZ7LUS+f1
         Sfxk4kpcbLORQ7QmV/bMULIIS4QjlDc1acvKgkJqObpRZW1t+UQLPd4Tf7H8JU0du4D9
         KVrhfmO1PTj91GV93fsHnskMgPp36h5C78wgp5HX3bsxOo0WCMfpp6i20UHZ25sRg9NY
         EHaA==
X-Gm-Message-State: ACrzQf04QAo5cDFtwwhTGcSf1PUSx58Erv0a5kmuqsx1v7OMmsQX0idu
	lnwA1h1CGwD+C03p/lxMo/WK1dY3g26cX9wuUkI85w==
X-Google-Smtp-Source: 
 AMsMyM5O8DZAFn2IRLynTbRHaU7iRBImF6Wcv9spDmEvxOHfvDZyhJPDycl0z8T2OVTC/J0DUxXisNh/SYP7xTv9TSs=
X-Received: by 2002:a9f:2c41:0:b0:3ba:d8ea:77e0 with SMTP id
 s1-20020a9f2c41000000b003bad8ea77e0mr603785uaj.96.1663826889046; Wed, 21 Sep
 2022 23:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <7313BA28-2972-4FD7-8E37-27196FAF5B8A@gmail.com>
In-Reply-To: <7313BA28-2972-4FD7-8E37-27196FAF5B8A@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 22 Sep 2022 08:07:59 +0200
Message-ID: 
 <CAP71WjxiOy3fuEdjGfZH0q1VBK2+-e9v0RMedFEuJMxYk1hyTQ@mail.gmail.com>
Subject: Re: [yocto] Git send-email blocked by gmail security changes (and how
 to fix it)
To: Benjamin Esquivel <benjamin.esquivel@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b0956305e93de2ac"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Sep 2022 06:08:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58129

--000000000000b0956305e93de2ac
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 22, 2022 at 5:20 AM Benjamin Esquivel <
benjamin.esquivel@gmail.com> wrote:

> TL;DR Google App passwords are a workaround if your google password is no=
t
> working in git send-email.
>
> Hi,
>
> Not sure if this is the right list but I thought of sending it here as a
> starter. I was following Stephen Jolley=E2=80=99s email for the Project s=
tatus
> where it has a section for =E2=80=98ways to contribute=E2=80=99 and a poi=
nter to the
> newcomers wiki. There is a link on How to Submit a Patch[1]  which has an
> example on how to add a gmail account there. I followed it but in the end=
 I
> was blocked by an error stating that my 'Username and Password not
> accepted=E2=80=99. Googled a proposed fix[2] to go to the gmail security =
settings
> and enable "Access for less secure apps=E2=80=9D but the solution is outd=
ated as my
> settings had a notice saying that it was removed some time ago.
>
> But I found that you can use another security feature from google called
> app passwords[3]. And that means that it will give you one specific
> password for your app needs. I tested this in the git send-email line and
> it worked. I don=E2=80=99t know if others are doing this or if their prev=
ious
> settings remain ok if these were configured before the recent security
> resets that google has done.
>

You did the right thing. This is also how I use gmail with git-send-email.


>
> Is anyone struggling with this?
>

I don't remember if they disabled it for all gmail users, or only for users
who enable 2FA.. but using apps specific token is what we should recommend
to everyone.


> Should we update the wiki to include this tip?
>

Yes, definitely. If you want to do it, please go ahead.  If you need help
with that, let me know.


> Regards,
>
> Benjamin
>
> [1]
> https://www.openembedded.org/wiki/How_to_submit_a_patch_to_OpenEmbedded
> [2] https://support.google.com/mail/thread/5621336?hl=3Den
> [3] https://support.google.com/accounts/answer/185833
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#58128):
> https://lists.yoctoproject.org/g/yocto/message/58128
> Mute This Topic: https://lists.yoctoproject.org/mt/93841825/1279857
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nicolas.dechesne@linaro.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000b0956305e93de2ac
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Sep 22, 2022 at 5:20 AM Benja=
min Esquivel &lt;<a href=3D"mailto:benjamin.esquivel@gmail.com">benjamin.es=
quivel@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><div style=3D"overflow-wrap: break-word;"><div style=3D"col=
or:rgb(0,0,0)">TL;DR Google App passwords are a workaround if your google p=
assword is not working in git send-email.=C2=A0</div><div style=3D"color:rg=
b(0,0,0)"><br></div><span style=3D"color:rgb(0,0,0)">Hi,</span><br style=3D=
"color:rgb(0,0,0)"><br style=3D"color:rgb(0,0,0)"><span style=3D"color:rgb(=
0,0,0)">Not sure if this is the right list but I thought of sending it here=
 as a starter. I was following Stephen Jolley=E2=80=99s email for the Proje=
ct status where it has a section for =E2=80=98ways to contribute=E2=80=99 a=
nd a pointer to the newcomers wiki. There is a link on How to Submit a Patc=
h[1]=C2=A0 which has an example on how to add a gmail account there. I foll=
owed it but in the end I was blocked by an error stating that my &#39;Usern=
ame and Password not accepted=E2=80=99. Googled a proposed fix[2] to go to =
the gmail security settings and enable &quot;Access for less secure apps=E2=
=80=9D but the solution is outdated as my settings had a notice saying that=
 it was removed some time ago.</span><div style=3D"color:rgb(0,0,0)"><br></=
div><div style=3D"color:rgb(0,0,0)">But I found that you can use another se=
curity feature from google called app passwords[3]. And that means that it =
will give you one specific password for your app needs. I tested this in th=
e git send-email line and it worked. I don=E2=80=99t know if others are doi=
ng this or if their previous settings remain ok if these were configured be=
fore the recent security resets that google has done.</div></div></blockquo=
te><div><br></div><div>You did the right thing. This is also how I use gmai=
l with git-send-email.=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gma=
il_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,2=
04,204);padding-left:1ex"><div style=3D"overflow-wrap: break-word;"><div st=
yle=3D"color:rgb(0,0,0)"><br></div><div style=3D"color:rgb(0,0,0)">Is anyon=
e struggling with this?</div></div></blockquote><div><br></div><div>I don&#=
39;t remember if they disabled it for all gmail users, or only for users wh=
o enable 2FA.. but using apps specific token is what we should recommend to=
 everyone.=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex"><div style=3D"overflow-wrap: break-word;"><div style=3D"color=
:rgb(0,0,0)">Should we update the wiki to include this tip?</div></div></bl=
ockquote><div><br></div><div>Yes, definitely. If you want to do=C2=A0it, pl=
ease go ahead.=C2=A0 If you need help with that, let me know.=C2=A0</div><d=
iv><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=
=3D"overflow-wrap: break-word;"><div style=3D"color:rgb(0,0,0)"><br></div><=
div style=3D"color:rgb(0,0,0)">Regards,</div><div style=3D"color:rgb(0,0,0)=
"><br></div><div style=3D"color:rgb(0,0,0)">Benjamin<br><div><div><br>[1]=
=C2=A0<a href=3D"https://www.openembedded.org/wiki/How_to_submit_a_patch_to=
_OpenEmbedded" target=3D"_blank">https://www.openembedded.org/wiki/How_to_s=
ubmit_a_patch_to_OpenEmbedded</a></div></div></div><div style=3D"color:rgb(=
0,0,0)">[2]=C2=A0<a href=3D"https://support.google.com/mail/thread/5621336?=
hl=3Den" target=3D"_blank">https://support.google.com/mail/thread/5621336?h=
l=3Den</a></div><div style=3D"color:rgb(0,0,0)">[3]=C2=A0<a href=3D"https:/=
/support.google.com/accounts/answer/185833" target=3D"_blank">https://suppo=
rt.google.com/accounts/answer/185833</a></div></div><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#58128): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/58128" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/58128</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93841825/1279=
857" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93841825/1279857</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nicolas.dechesne@linaro.org" target=3D"_blank">n=
icolas.dechesne@linaro.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000b0956305e93de2ac--

