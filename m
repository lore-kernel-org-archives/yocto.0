Received: from mail-vs1-f53.google.com (mail-vs1-f53.google.com [209.85.217.53])
 by mx.groups.io with SMTP id smtpd.web12.23259.1593614878652638803
 for <yocto@lists.yoctoproject.org>;
 Wed, 01 Jul 2020 07:47:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=oFxE7fxE;
 spf=pass (domain: gmail.com, ip: 209.85.217.53, mailfrom: mabnhdev@gmail.com)
Received: by mail-vs1-f53.google.com with SMTP id o15so13413580vsp.12
        for <yocto@lists.yoctoproject.org>; Wed, 01 Jul 2020 07:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mSqm6tzTgaORX/DZuRDpu9ViHr0DDr1lLUUcrKLcC/c=;
        b=oFxE7fxEeKCXOrxKNhM458vcVDbdVRz2mR9k292jxx25JEr2lVPJxAwXTiqxMxEfds
         srd9RDhIQ18XHeoOO4EYTPsq4T6tsVGU1Kfk3drQkKIbzPJZPh3wswji2f2+E8PIgm/W
         1ZtEjlPXMp3q2vSn4WMqm6d84qzm/r0HZ3Jj7/Cm4W0TgsJDl8/SRFkNrK64qZBQza1z
         MmcS8EQwEaYy1g2zMAuUDRM4CDAR0wsL7vNfq5ZLWopJkFLzTyF9WTscCuvPwCfdCDgy
         cH0ji3TfhmBUDBgWJGstUOGLH+rSCTBl607jrOPCaHT7fhLay5DX2SQBXDXYISaXbI/J
         shtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mSqm6tzTgaORX/DZuRDpu9ViHr0DDr1lLUUcrKLcC/c=;
        b=atYbqk8yECranVpVAugTFWfwxG/2To8913RIuCQjLQjp4nHgvyRJTw/4gRDJKQ9mJ8
         E4ux3DLb64AFiJCyaeyQA/DTxwMriuk5l7UUisDxKJra54PBqqNZnR4syJMbVHrtzGOo
         2qcVcLocdcVvm3y45hYSszJIcDL7xhAEmMOfO96cYPvgruJnRO2c1r249Dj/t6vQwdgd
         qs4tGuqzrPrHF2xCS9StFgIbAJPdzxurnTiGAW0il8RLtmifM21qcTmgyV5TcR8wj+w7
         MCgoR4tJAmBf+1NHa4SDUdkcf4jjz1RAqfyn522Mea5zLHJlmmd6PCT8rs4dmEcuKVcm
         VF3w==
X-Gm-Message-State: AOAM531R2hrpGMsGIgg7btA/0i0ZR6Gq5528PYDrjoosI3bAlqw28cYO
	ucONW5mwtPkoIxrBm0zxxXdhkpOWGPq6U36/0VE=
X-Google-Smtp-Source: ABdhPJxPm26vVGrabtf3EofmTsXytH+8Rvwu4wnkmk3IrdTpkth/JRoBzOox4udOTab9wnPBRt8sVnYlDoGm/GFzGjs=
X-Received: by 2002:a67:d485:: with SMTP id g5mr9887020vsj.229.1593614877713;
 Wed, 01 Jul 2020 07:47:57 -0700 (PDT)
MIME-Version: 1.0
References: <dlSN.1593554206630147499.1cxR@lists.yoctoproject.org>
 <CAJdd5GYmGrZk3B5+2H9Ud=A+YWXJe_j4EN+AEM=e+QXxcmJGKw@mail.gmail.com>
 <CAJdd5GZ1ZEmA1CG2q4Q6Z94TF8wSCHhQf4hF0F9hA=ye6eJS5g@mail.gmail.com>
 <161D821F3054189B.29179@lists.yoctoproject.org> <CAOSpxdaGpkGBmTeH_pqmZ=g=pMhYDND3PGnzJ3bOj11nU=+Rqw@mail.gmail.com>
 <CAAuRgKCcgccNcPd3rggY5xhUgePi54FFPER6oQ02aep8Uj_eqg@mail.gmail.com>
In-Reply-To: <CAAuRgKCcgccNcPd3rggY5xhUgePi54FFPER6oQ02aep8Uj_eqg@mail.gmail.com>
From: "MikeB" <mabnhdev@gmail.com>
Date: Wed, 1 Jul 2020 10:47:46 -0400
Message-ID: <CAAuRgKCn_wyZW6KCe2xQZPk+vN0MYZotY96XAfa83-w1tTGJZg@mail.gmail.com>
Subject: Re: [yocto] Dunfell 3.1.1 gcc-sanitizers build failure
To: Steve Sakoman <steve@sakoman.com>
Cc: yocto@lists.yoctoproject.org, Joshua Watt <JPEWhacker@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000b1e83f05a962601e"

--000000000000b1e83f05a962601e
Content-Type: text/plain; charset="UTF-8"

The rumors of my success were exaggerated.  If performing a fresh build
from scratch, the image build succeeds, but the populate_sdk still fails as
in the original post.  If I then do a 'bitbake -ccleansstate on
gcc-source-9.3.0', the populate_sdk succeeds.

Mike

On Wed, Jul 1, 2020 at 6:45 AM MikeB <mabnhdev@gmail.com> wrote:

> The combination of the
> https://lists.openembedded.org/g/openembedded-core/message/140161 and a 'bitbake
> -ccleansstate on gcc-source-9.3.0' has gotten me back on track.
>
> Thank you all for the help!
>
> On Tue, Jun 30, 2020 at 11:10 PM Steve Sakoman <steve@sakoman.com> wrote:
>
>> On Tue, Jun 30, 2020 at 5:08 PM Steve Sakoman via
>> lists.yoctoproject.org <steve=sakoman.com@lists.yoctoproject.org>
>> wrote:
>> >
>> > On Tue, Jun 30, 2020 at 4:53 PM Joshua Watt <JPEWhacker@gmail.com>
>> wrote:
>> > >
>> > > On Tue, Jun 30, 2020 at 8:08 PM Joshua Watt <jpewhacker@gmail.com>
>> wrote:
>> > > >
>> > > > On Tue, Jun 30, 2020 at 4:56 PM MikeB <mabnhdev@gmail.com> wrote:
>> > > > >
>> > > > > I recently tried upgrading from 3.1.0 to 3.1.1.  I'm not sure if
>> this is a bug or just my problem.  I maintain five different architectures
>> and all five have the same failure in gcc-sanitizers as I'm trying to build
>> the SDK.
>> > > > >
>> > > > > | cat:
>> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h:
>> No such file or directory
>> > > > > | WARNING:
>> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1
>> exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" >
>> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
>> > > > > | ERROR: Execution of
>> '/data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505'
>> failed with exit code 1:
>> > > > > | cat:
>> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h:
>> No such file or directory
>> > > > > | WARNING:
>> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_configure.31505:1
>> exit 1 from 'grep -v "\#endif.*GCC_DEFAULTS_H" >
>> /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64-poky-linux/gcc/defaults.h.new'
>> > > > >
>> > > > > At first, I thought this may be a dependency issue because I
>> inherit "rm_work" to tidy up; but I tried a build without it - i.e. keeping
>> all work around - and got the same failure.
>> > > >
>> > > > I've encountered a similar error just today when switching
>> SDKMACHINE.
>> > > > Are you using archive.bbclass by any chance (INHERIT += "archive")?
>> I
>> > > > just recently fixed a bug in archive.bbclass
>> > > > (7a57e777597d7f66d065582cfb83cd8f9468f4af) where the archiving of
>> > > > gcc-source raced with do_preconfigure and I'm wondering if it's
>> > > > related
>> > >
>> > > I believe I have fixed this in
>> > > https://lists.openembedded.org/g/openembedded-core/message/140161,
>> > > please try it out to make sure it solves your issue as well.
>> >
>> > That patch came in after the 3.1.1 release, but it is present in the
>> > dunfell branch so it will make it into 3.1.2
>>
>> Doh, I'm getting ahead of myself! I was thinking of another
>> classes/archiver patch that Joshua sent :-)
>>
>> Steve
>>
>

--000000000000b1e83f05a962601e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:tahoma,s=
ans-serif;font-size:small">The rumors of my success were exaggerated.=C2=A0=
 If performing a fresh build from scratch, the image build succeeds, but th=
e populate_sdk still fails as in the original post.=C2=A0 If I then do a &#=
39;<span style=3D"font-family:Arial,Helvetica,sans-serif">bitbake -ccleanss=
tate on gcc-source-9.3.0&#39;, the populate_sdk succeeds.</span></div><div =
class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-size:sm=
all"><span style=3D"font-family:Arial,Helvetica,sans-serif"><br></span></di=
v><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-serif;font-=
size:small"><span style=3D"font-family:Arial,Helvetica,sans-serif">Mike</sp=
an></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Wed, Jul 1, 2020 at 6:45 AM MikeB &lt;<a href=3D"mailto:mabnhde=
v@gmail.com">mabnhdev@gmail.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_defau=
lt" style=3D"font-family:tahoma,sans-serif;font-size:small">The combination=
 of the=C2=A0<a href=3D"https://lists.openembedded.org/g/openembedded-core/=
message/140161" style=3D"font-family:Arial,Helvetica,sans-serif" target=3D"=
_blank">https://lists.openembedded.org/g/openembedded-core/message/140161</=
a>=C2=A0and a &#39;<span style=3D"font-family:Arial,Helvetica,sans-serif">b=
itbake -ccleansstate on gcc-source-9.3.0&#39; has gotten me back on track.<=
/span></div><div class=3D"gmail_default" style=3D"font-family:tahoma,sans-s=
erif;font-size:small"><span style=3D"font-family:Arial,Helvetica,sans-serif=
"><br></span></div><div class=3D"gmail_default" style=3D"font-family:tahoma=
,sans-serif;font-size:small"><span style=3D"font-family:Arial,Helvetica,san=
s-serif">Thank you all for the help!</span></div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 30, 2020 at 11=
:10 PM Steve Sakoman &lt;<a href=3D"mailto:steve@sakoman.com" target=3D"_bl=
ank">steve@sakoman.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">On Tue, Jun 30, 2020 at 5:08 PM Steve Sakoman via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a> &lt;steve=3D<a href=3D"mailto:sakoman.com@li=
sts.yoctoproject.org" target=3D"_blank">sakoman.com@lists.yoctoproject.org<=
/a>&gt;<br>
wrote:<br>
&gt;<br>
&gt; On Tue, Jun 30, 2020 at 4:53 PM Joshua Watt &lt;<a href=3D"mailto:JPEW=
hacker@gmail.com" target=3D"_blank">JPEWhacker@gmail.com</a>&gt; wrote:<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Jun 30, 2020 at 8:08 PM Joshua Watt &lt;<a href=3D"mailto=
:jpewhacker@gmail.com" target=3D"_blank">jpewhacker@gmail.com</a>&gt; wrote=
:<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; On Tue, Jun 30, 2020 at 4:56 PM MikeB &lt;<a href=3D"mailto:=
mabnhdev@gmail.com" target=3D"_blank">mabnhdev@gmail.com</a>&gt; wrote:<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; I recently tried upgrading from 3.1.0 to 3.1.1.=C2=A0 I=
&#39;m not sure if this is a bug or just my problem.=C2=A0 I maintain five =
different architectures and all five have the same failure in gcc-sanitizer=
s as I&#39;m trying to build the SDK.<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm=
64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or d=
irectory<br>
&gt; &gt; &gt; &gt; | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos=
-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_conf=
igure.31505:1 exit 1 from &#39;grep -v &quot;\#endif.*GCC_DEFAULTS_H&quot; =
&gt; /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-po=
ky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64=
-poky-linux/gcc/defaults.h.new&#39;<br>
&gt; &gt; &gt; &gt; | ERROR: Execution of &#39;/data/mabnhdev/exos-yocto-du=
nfell/build/exos-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/=
temp/run.do_configure.31505&#39; failed with exit code 1:<br>
&gt; &gt; &gt; &gt; | cat: /data/mabnhdev/exos-yocto-dunfell/build/exos-arm=
64/tmp/work-shared/gcc-9.3.0-r0/gcc-9.3.0/gcc/defaults.h: No such file or d=
irectory<br>
&gt; &gt; &gt; &gt; | WARNING: /data/mabnhdev/exos-yocto-dunfell/build/exos=
-arm64/tmp/work/aarch64-poky-linux/gcc-sanitizers/9.3.0-r0/temp/run.do_conf=
igure.31505:1 exit 1 from &#39;grep -v &quot;\#endif.*GCC_DEFAULTS_H&quot; =
&gt; /data/mabnhdev/exos-yocto-dunfell/build/exos-arm64/tmp/work/aarch64-po=
ky-linux/gcc-sanitizers/9.3.0-r0/gcc-9.3.0/build.aarch64-poky-linux.aarch64=
-poky-linux/gcc/defaults.h.new&#39;<br>
&gt; &gt; &gt; &gt;<br>
&gt; &gt; &gt; &gt; At first, I thought this may be a dependency issue beca=
use I inherit &quot;rm_work&quot; to tidy up; but I tried a build without i=
t - i.e. keeping all work around - and got the same failure.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;ve encountered a similar error just today when switchi=
ng SDKMACHINE.<br>
&gt; &gt; &gt; Are you using archive.bbclass by any chance (INHERIT +=3D &q=
uot;archive&quot;)? I<br>
&gt; &gt; &gt; just recently fixed a bug in archive.bbclass<br>
&gt; &gt; &gt; (7a57e777597d7f66d065582cfb83cd8f9468f4af) where the archivi=
ng of<br>
&gt; &gt; &gt; gcc-source raced with do_preconfigure and I&#39;m wondering =
if it&#39;s<br>
&gt; &gt; &gt; related<br>
&gt; &gt;<br>
&gt; &gt; I believe I have fixed this in<br>
&gt; &gt; <a href=3D"https://lists.openembedded.org/g/openembedded-core/mes=
sage/140161" rel=3D"noreferrer" target=3D"_blank">https://lists.openembedde=
d.org/g/openembedded-core/message/140161</a>,<br>
&gt; &gt; please try it out to make sure it solves your issue as well.<br>
&gt;<br>
&gt; That patch came in after the 3.1.1 release, but it is present in the<b=
r>
&gt; dunfell branch so it will make it into 3.1.2<br>
<br>
Doh, I&#39;m getting ahead of myself! I was thinking of another<br>
classes/archiver patch that Joshua sent :-)<br>
<br>
Steve<br>
</blockquote></div>
</blockquote></div>

--000000000000b1e83f05a962601e--
