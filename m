Return-Path: <maaloulsafouane@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 050B3C433EF
	for <webhook@archiver.kernel.org>; Thu, 24 Feb 2022 14:18:00 +0000 (UTC)
Received: from mail-il1-f179.google.com (mail-il1-f179.google.com
 [209.85.166.179])
 by mx.groups.io with SMTP id smtpd.web08.10790.1645712279342605152
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 06:17:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ppWAj5Kv;
 spf=pass (domain: gmail.com, ip: 209.85.166.179,
 mailfrom: maaloulsafouane@gmail.com)
Received: by mail-il1-f179.google.com with SMTP id j5so1820137ila.2
        for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 06:17:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=Mjfz4kABuIICr8WkvB2GNrXjwVGCuW0xQn6JyJxhJsY=;
        b=ppWAj5Kvxg3HrwSL9S4P8v281tsH7roOVk5Oynjh59IGV3RuCSUR2sbnZ6edDJdoW1
         O8VwdiiOoMpkuNkr+xo7lizCyJzpwKYaH+L+qd0WH1ZuP3lwDTbLXD2kUO5fUmZACZrO
         F5talyv0l52yStNE9EdTAcGQf1fWZUx0fH8L0QRFkDLX0rXOB0Wbh+jfJXluF1CwV490
         UfIXKdfCA/gOq4BO9IdCv8DvNNOxTxsG9XEnF0xEJNU3Bi5udZj+Ov6ebni0MbDr9ii+
         nPjffVN21H5ZdMCRro94COMZOO8457LBGf9EUx0AIAe1ifx55cS05Qn3iOkzReRgCp5i
         BldQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Mjfz4kABuIICr8WkvB2GNrXjwVGCuW0xQn6JyJxhJsY=;
        b=P+smLYDoud3wGLVfACDMtlCKl9Ga8BNHKCeOxr8TypGhzc3haEGhvVsOuP2ZDTvj7P
         IPFF4rED1SRFrZCKxxlBD6/cSuDfZoRigb+SEF6LVxaOSm74G8cYddO1+xpKPgSc5tIh
         Il1fvS1+uxSD2Vam3Lxd4G4R/HkEHMlKGOtMUws6U2DWpOQ/giHN6gGomb679hywqWB4
         mDtePOajD/UycorHvMNbKhCi0HZatLQbR5E8aZjXwNww4nIOPIWx142wWwPz0CecOdqb
         nmQMgd5VjMTnJNhOtFssehg0tQ0CRggf3bSc1eTSgLTOIeV/KtFXoM28KsGlfZhQ5TFy
         gLUg==
X-Gm-Message-State: AOAM533QJliy8OI4Y+a7NKQR3yvhHbbY2YdGf4EmIKLY4daipTinJfpd
	VmLjgJFWUeQnMPKDcZD3dEnb6cNME20YzFlq5PONb5EWB6A=
X-Google-Smtp-Source: 
 ABdhPJxv0kmezEq3cxetDUjJzvptcbxvnfibrEhaf/z5OgVBAqhEz/FrRwSKM9d1RntJ9aNTDkj474ru5SHilb2XKs4=
X-Received: by 2002:a05:6e02:1908:b0:2be:213f:6885 with SMTP id
 w8-20020a056e02190800b002be213f6885mr2592176ilu.36.1645712278180; Thu, 24 Feb
 2022 06:17:58 -0800 (PST)
MIME-Version: 1.0
References: <rBFS.1645540791107768069.EfgM@lists.yoctoproject.org>
 <CAMKF1sqBz=nPi_gPSoBmUdA9JoH8FJE0bUfq3J+cXCh4zh4AXQ@mail.gmail.com>
 <CAEj=YVLRYuecUG-+tCR0AffFWH2=grR1uOEh1_1B3MipdkNz=g@mail.gmail.com>
In-Reply-To: 
 <CAEj=YVLRYuecUG-+tCR0AffFWH2=grR1uOEh1_1B3MipdkNz=g@mail.gmail.com>
From: safouane maaloul <maaloulsafouane@gmail.com>
Date: Thu, 24 Feb 2022 15:17:48 +0100
Message-ID: 
 <CAEj=YVL0iRXVSs8ZqBKkpwjzockbPscud4kRZTBnUGiHoR63zQ@mail.gmail.com>
Subject: Re: [yocto] #yocto #raspberrypi0-wifi #honister
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000be5bef05d8c43fa6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Feb 2022 14:18:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56277

--000000000000be5bef05d8c43fa6
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

So now after doing the last pull on meta -raspberrypi. The one to change
the kernel version. I have a hdmi output but my boot process block at
please wait : booting . Do you have an idea why it is doing that ?

Best regards,

Safouane.Maaloul

Le jeu. 24 f=C3=A9vr. 2022 =C3=A0 15:17, safouane maaloul <maaloulsafouane@=
gmail.com>
a =C3=A9crit :

> So now after doing the last pull on meta -raspberrypi. The one to change
> the kernel version. I have a hdmi output but my boot process block at
> please wait : booting . Do you have an idea why it is doing that ?
>
> Best regards,
>
> Safouane.Maaloul
>
> Le mar. 22 f=C3=A9vr. 2022 =C3=A0 19:30, Khem Raj <raj.khem@gmail.com> a =
=C3=A9crit :
>
>> On Tue, Feb 22, 2022 at 6:39 AM safouane maaloul
>> <maaloulsafouane@gmail.com> wrote:
>> >
>> > I do am building image on a raspberry pi zero w. After flashing the
>> image on the raspberry, i don get anything on the screen. I am doing thi=
s
>> the honister branch. I had the gatesgarth branch and it was working
>> perfectly. I tried many thing but i can't get to work. i have literally =
the
>> same code on a raspberry pi zero w 2 and it works perfectly. I am only
>> changing the name of the machine (raspberrypi0-wifi ) to get to work. Do
>> you have an idea why ? I have the sensation that it is booting because t=
he
>> green led is flashing but i don't have anything on the screen.
>>
>> is it possible to hook up serial console and see if you see additional
>> messages ?
>> also try with master and see if you have same problem as honister or not
>>
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> > Links: You receive all messages sent to this group.
>> > You automatically follow any topics you start or reply to.
>> > View/Reply Online (#56240):
>> https://lists.yoctoproject.org/g/yocto/message/56240
>> > Mute This Topic: https://lists.yoctoproject.org/mt/89317701/1997914
>> > Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
>> > Mute #raspberrypi0-wifi:
>> https://lists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi0-wifi
>> > Mute #honister:
>> https://lists.yoctoproject.org/g/yocto/mutehashtag/honister
>> > Group Owner: yocto+owner@lists.yoctoproject.org
>> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> raj.khem@gmail.com]
>> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> >
>>
>
>
> --
> *SAFOUANE MAALOUL*
>
> *maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*
>
>

--=20
*SAFOUANE MAALOUL*

*maaloulsafouane@gmail.com <maaloulsafouane@gmail.com>*

--000000000000be5bef05d8c43fa6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So now after doing the last pull on meta -raspberrypi. The=
 one to change the kernel version. I have a hdmi output but my boot process=
 block at please wait : booting . Do you have an idea why it is doing that =
?=C2=A0<div><br></div><div>Best regards,</div><div><br></div><div>Safouane.=
Maaloul</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">Le=C2=A0jeu. 24 f=C3=A9vr. 2022 =C3=A0=C2=A015:17, safouane ma=
aloul &lt;<a href=3D"mailto:maaloulsafouane@gmail.com">maaloulsafouane@gmai=
l.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex"><div dir=3D"ltr">So now after doing the last pull on meta=
 -raspberrypi. The one to change the kernel version. I have a hdmi output b=
ut my boot process block at please wait : booting . Do you have an idea why=
 it is doing that ?=C2=A0<div><br></div><div>Best regards,</div><div><br></=
div><div>Safouane.Maaloul</div></div><br><div class=3D"gmail_quote"><div di=
r=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 22 f=C3=A9vr. 2022 =C3=A0=C2=A0=
19:30, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank"=
>raj.khem@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">On Tue, Feb 22, 2022 at 6:39 AM safouane m=
aaloul<br>
&lt;<a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"_blank">maalouls=
afouane@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I do am building image on a raspberry pi zero w. After flashing the im=
age on the raspberry, i don get anything on the screen. I am doing this the=
 honister branch. I had the gatesgarth branch and it was working perfectly.=
 I tried many thing but i can&#39;t get to work. i have literally the same =
code on a raspberry pi zero w 2 and it works perfectly. I am only changing =
the name of the machine (raspberrypi0-wifi ) to get to work. Do you have an=
 idea why ? I have the sensation that it is booting because the green led i=
s flashing but i don&#39;t have anything on the screen.<br>
<br>
is it possible to hook up serial console and see if you see additional<br>
messages ?<br>
also try with master and see if you have same problem as honister or not<br=
>
<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#56240): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/56240" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/56240</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89317701=
/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/89317701/1997914</a><br>
&gt; Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehash=
tag/yocto" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/g/yocto/mutehashtag/yocto</a><br>
&gt; Mute #raspberrypi0-wifi:<a href=3D"https://lists.yoctoproject.org/g/yo=
cto/mutehashtag/raspberrypi0-wifi" rel=3D"noreferrer" target=3D"_blank">htt=
ps://lists.yoctoproject.org/g/yocto/mutehashtag/raspberrypi0-wifi</a><br>
&gt; Mute #honister:<a href=3D"https://lists.yoctoproject.org/g/yocto/muteh=
ashtag/honister" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/g/yocto/mutehashtag/honister</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
><div dir=3D"ltr"><font color=3D"#000000"><span><b>SAFOUANE MAALOUL</b></sp=
an></font><div><span><b><u style=3D"background-color:rgb(255,255,255)"><fon=
t color=3D"#0b5394"><a href=3D"mailto:maaloulsafouane@gmail.com" target=3D"=
_blank">maaloulsafouane@gmail.com</a></font></u><span style=3D"color:rgb(0,=
0,0);background-color:rgb(255,255,255)"><br></span></b></span><div><span st=
yle=3D"background-color:rgb(255,255,255)"><font color=3D"#000000"><b><br></=
b></font></span></div></div></div></div>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><font color=3D"#000000"><span><=
b>SAFOUANE MAALOUL</b></span></font><div><span><b><u style=3D"background-co=
lor:rgb(255,255,255)"><font color=3D"#0b5394"><a href=3D"mailto:maaloulsafo=
uane@gmail.com" target=3D"_blank">maaloulsafouane@gmail.com</a></font></u><=
span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)"><br></spa=
n></b></span><div><span style=3D"background-color:rgb(255,255,255)"><font c=
olor=3D"#000000"><b><br></b></font></span></div></div></div></div>

--000000000000be5bef05d8c43fa6--

