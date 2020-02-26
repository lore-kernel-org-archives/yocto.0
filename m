Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com [209.85.222.67])
 by mx.groups.io with SMTP id smtpd.web09.7729.1582723077147590484
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Feb 2020 05:17:57 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=FfTSJbyS;
 spf=pass (domain: gmail.com, ip: 209.85.222.67, mailfrom: memarnejadm74@gmail.com)
Received: by mail-ua1-f67.google.com with SMTP id h32so946698uah.4
        for <yocto@lists.yoctoproject.org>; Wed, 26 Feb 2020 05:17:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4EX3wYY4o5URr1243eX27+wX3KnNl6uYNEaOhiXPrLk=;
        b=FfTSJbyS7D1dCbWwHOWd/dJUiUOmAFjFf+4PGtjtKp+UiXEv2IiGuAlFzI/TC6XCj3
         9TQpaFazP+qN+6Ico6jkwmNH2iYvaYW8Pp5RfwmBXK8J3g95V7jp9rkjsYOdLWdoWAOU
         y3nV+DDaFXryKxtmCnt0WRyAylrLuoLXNdasdTOgFB1eWXtMXXdEZmjJbWulV343vA2F
         GGDOxVyJ1lg3dfke5ynB+QUGinKtLZRYf02k+9NDYF3Kv++ylvkC2z0vd17IY/BC5Tn7
         sMn7AwiHAr+C01WzEYLUpxDHXj+G7y/xAEG1h/VLcYWvPaVV1m1TCTCANADCtBPnBqBI
         k0IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4EX3wYY4o5URr1243eX27+wX3KnNl6uYNEaOhiXPrLk=;
        b=UMzkYanwb3mhyO4AORAr1AwPA5ddxT2Lmp0RF+L8N8cfFcJeH6anFXbXa99bU6N7+N
         TwG2vBfGKU+zgLalGlyZP8GUaE9dCRAqpG3XUkUbnxEGmEFWRbmLTfs7jYgSKX4Qe420
         e8xGnSGRAFjxhdgQWtxogR2l1nqV6/Vjx6XA9elmVRPVAM5pggjCNZfQ0WrMT9TQoJQQ
         4AFRi5mG70LzmFCFRKFBgrnx5a2BKDkUzh8/VqwzB6sy9x7pl1ruQrKSM/JXg25XVVdO
         1SCZTFkFAD3c9L43VFss/7ffy5tZn2SIUffqFQ/roVmd5Xj9Ger+anjyi/k+tc/D/Tew
         oQHw==
X-Gm-Message-State: APjAAAUwH074vGaCXfFu++8akKej/7uvBNe8XfCGKpzzTDfHJRL2dajY
	2JYFC9eW8cCq2tRzxyPMYNU4GplhBlG0zUT8iRg=
X-Google-Smtp-Source: APXvYqxepVE+bVkBhBPu5MTH7tvBZL0QTFFrBu/J/ZHcDnG4hdra7/Smfris6BaibqLvMHUC/RiTX9YAPJl8uYvcajk=
X-Received: by 2002:a9f:2f07:: with SMTP id x7mr1551533uaj.137.1582723076075;
 Wed, 26 Feb 2020 05:17:56 -0800 (PST)
MIME-Version: 1.0
References: <CAER1B8K5Y9CFjJny8Z-ip+o1=5a3qfUTiFoHBL6zZTx0_sGeUQ@mail.gmail.com>
 <CAM9ZRVtf0=CWs6TXYtiwG4XY7jYL5Bza_euJOgyAgpjT_TP6Ng@mail.gmail.com> <CAER1B8K56hz4dxTjbeC1a3KpAg9TYQ4PL=L5tAqtA30eWnkeyw@mail.gmail.com>
In-Reply-To: <CAER1B8K56hz4dxTjbeC1a3KpAg9TYQ4PL=L5tAqtA30eWnkeyw@mail.gmail.com>
From: "Mehran Memarnejad" <memarnejadm74@gmail.com>
Date: Wed, 26 Feb 2020 16:47:45 +0330
Message-ID: <CAER1B8LY_oYXv=97y=jnuqByXNuckv01iBHgGrys7A7gzLE+MA@mail.gmail.com>
Subject: Re: [yocto] Yocto Top Level Files
To: Paul Barker <pbarker@konsulko.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ba3526059f7a6e58"

--000000000000ba3526059f7a6e58
Content-Type: text/plain; charset="UTF-8"

Hi Paul,
As I know, bitbake parses all recipes to make its database so that it knows
each recipe PROVIDEs what... base on top level files (I guess they are
myImage.bb,
myMahchine.conf and myDistro.conf), other files are pulled in if they are
necessary... For the machine.conf and distro.conf, the files named in
MACHINE and DISTRO variables in local.conf are pulled in and the myImage.bb
is pulled in by the user when entering a command like $bitbake myImage

Am I right?

On Wed, Feb 26, 2020 at 4:47 PM Mehran Memarnejad <memarnejadm74@gmail.com>
wrote:

> Hi Paul,
> As I know, bitbake parses all recipes to make its database so that it
> knows each recipe PROVIDEs what... base on top level files (I guess they
> are myImage.bb, myMahchine.conf and myDistro.conf), other files are
> pulled in if they are necessary... For the machine.conf and distro.conf,
> the files named in MACHINE and DISTRO variables in local.conf are pulled in
> and the myImage.bb is pulled in by the user when entering a command like
> $bitbake myImage
>
> Am I right?
>
>
>
> On Wed, Feb 26, 2020 at 3:36 PM Paul Barker <pbarker@konsulko.com> wrote:
>
>> On Wed, 26 Feb 2020 at 12:00, Mehran Memarnejad <memarnejadm74@gmail.com>
>> wrote:
>> >
>> > Hi,
>> >
>> > Working with Yocto Project, Now I am a little confused about which
>> files are the top level ones i.e. files that bitbake starts by, and then
>> all other recipes are used if and only if they are included by some means
>> such as DEPENDS, RDEPENDS, IMAGE_INSTALL and so on...
>> >
>> > As I understood:
>> >
>> > meta*/recipes*/images/myImage.bb which is "hardware independent" and
>> includes packages to install and etc
>> > conf/machine/myMachine.conf which is "hardware specific" and includes
>> appropriate Bootloader, kernel, device tree and etc ... i.e. selecting
>> appropriate bootloader, kernel recipes among all others by
>> PREFERRED_PROVIDER mechanism
>> > conf/distro/myDistro.conf which I don't know its usage
>> >
>> > Then by setting MACHINE and DISTRO variables in conf/local.conf and
>> calling bitbake with $ bitbake myImage, finally conf/local.conf is read and
>> "myMahcine.conf and myDistro.conf" will be selected to be used for image
>> creation, and the myImage recipe's tasks will be executed by bitbake... all
>> other recipes, include file and bbclass files are come into play if and
>> only if they have been used by some means such as IMAGE_INSATLL, DEPENDS,
>> RDEPENDS, inc, inherit and so on in myImage.bb, myMahchine.conf and
>> myDistro.conf
>> >
>> > Question: Is this procedure Right??
>> >
>> > Question: So in summary, I guess that top level files are: myImage.bb,
>> myMahchine.conf and myDistro.conf
>> >
>> > NOTE: Some other files such as conf/bblayer.conf, bitbake.conf and etc
>> are read but those are not in my focus for this question
>>
>> If I've understood the bitbake sources correctly, the parsing looks like
>> this:
>> 1) bblayers.conf
>> 2) bitbake.conf (this pulls in local.conf, your distro conf, your
>> machine conf, etc)
>> 3) All recipes (even the ones you're not building)
>>
>> Then the targets given on the command line are resolved to recipes and
>> those are built.
>>
>

--000000000000ba3526059f7a6e58
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi Paul,<br></div>As I know, bitbake parses all =
recipes to=20
make its database so that it knows each recipe PROVIDEs what... base on=20
top level files (I guess they are <span>myImage.bb, myMahchine.conf and=20
myDistro.conf), other files are pulled in if they are necessary... For=20
the machine.conf and distro.conf, the files named in MACHINE and DISTRO=20
variables in local.conf are pulled in and the myImage.bb is pulled in by
 the user when entering a command like $bitbake myImage<br><br></span></div=
><span>Am I right?</span></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, Feb 26, 2020 at 4:47 PM Mehran Memarnejad =
&lt;<a href=3D"mailto:memarnejadm74@gmail.com">memarnejadm74@gmail.com</a>&=
gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0=
px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div =
dir=3D"ltr"><div><div>Hi Paul,<br></div>As I know, bitbake parses all recip=
es to make its database so that it knows each recipe PROVIDEs what... base =
on top level files (I guess they are <span>myImage.bb, myMahchine.conf and =
myDistro.conf), other files are pulled in if they are necessary... For the =
machine.conf and distro.conf, the files named in MACHINE and DISTRO variabl=
es in local.conf are pulled in and the myImage.bb is pulled in by the user =
when entering a command like $bitbake myImage<br><br></span></div><span>Am =
I right?<br></span><div><span><br><br></span></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Feb 26, 2020 at =
3:36 PM Paul Barker &lt;<a href=3D"mailto:pbarker@konsulko.com" target=3D"_=
blank">pbarker@konsulko.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">On Wed, 26 Feb 2020 at 12:00, Mehran Memarnejad =
&lt;<a href=3D"mailto:memarnejadm74@gmail.com" target=3D"_blank">memarnejad=
m74@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; Working with Yocto Project, Now I am a little confused about which fil=
es are the top level ones i.e. files that bitbake starts by, and then all o=
ther recipes are used if and only if they are included by some means such a=
s DEPENDS, RDEPENDS, IMAGE_INSTALL and so on...<br>
&gt;<br>
&gt; As I understood:<br>
&gt;<br>
&gt; meta*/recipes*/images/myImage.bb which is &quot;hardware independent&q=
uot; and includes packages to install and etc<br>
&gt; conf/machine/myMachine.conf which is &quot;hardware specific&quot; and=
 includes appropriate Bootloader, kernel, device tree and etc ... i.e. sele=
cting appropriate bootloader, kernel recipes among all others by PREFERRED_=
PROVIDER mechanism<br>
&gt; conf/distro/myDistro.conf which I don&#39;t know its usage<br>
&gt;<br>
&gt; Then by setting MACHINE and DISTRO variables in conf/local.conf and ca=
lling bitbake with $ bitbake myImage, finally conf/local.conf is read and &=
quot;myMahcine.conf and myDistro.conf&quot; will be selected to be used for=
 image creation, and the myImage recipe&#39;s tasks will be executed by bit=
bake... all other recipes, include file and bbclass files are come into pla=
y if and only if they have been used by some means such as IMAGE_INSATLL, D=
EPENDS, RDEPENDS, inc, inherit and so on in myImage.bb, myMahchine.conf and=
 myDistro.conf<br>
&gt;<br>
&gt; Question: Is this procedure Right??<br>
&gt;<br>
&gt; Question: So in summary, I guess that top level files are: myImage.bb,=
 myMahchine.conf and myDistro.conf<br>
&gt;<br>
&gt; NOTE: Some other files such as conf/bblayer.conf, bitbake.conf and etc=
 are read but those are not in my focus for this question<br>
<br>
If I&#39;ve understood the bitbake sources correctly, the parsing looks lik=
e this:<br>
1) bblayers.conf<br>
2) bitbake.conf (this pulls in local.conf, your distro conf, your<br>
machine conf, etc)<br>
3) All recipes (even the ones you&#39;re not building)<br>
<br>
Then the targets given on the command line are resolved to recipes and<br>
those are built.<br>
</blockquote></div>
</blockquote></div>

--000000000000ba3526059f7a6e58--
