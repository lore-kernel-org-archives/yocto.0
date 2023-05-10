Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0911BC77B7D
	for <webhook@archiver.kernel.org>; Wed, 10 May 2023 14:35:20 +0000 (UTC)
Received: from mail-ua1-f45.google.com (mail-ua1-f45.google.com [209.85.222.45])
 by mx.groups.io with SMTP id smtpd.web10.19137.1683729314087147808
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 May 2023 07:35:14 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=OZYxE9ab;
 spf=pass (domain: gmail.com, ip: 209.85.222.45, mailfrom: quaresma.jose@gmail.com)
Received: by mail-ua1-f45.google.com with SMTP id a1e0cc1a2514c-77115450b8fso4162495241.0
        for <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 07:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683729313; x=1686321313;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=fpuCMR7HWn/ITXNq4nO1XLLC3QbOTKNw9995/moGqzQ=;
        b=OZYxE9ab8lFMZW4WU+E5PCPaz2vCt6qE+6zVHlkkt2rtJxCYj5HvmwI6uspf7D+EYr
         CrEHYuR1oILRWQv5YTzwhjPOxPMDwokUKExXp7Eg4vFE7XzmVavnfo714L4uiHuvlBi9
         2vR/dlVRlImFNy09vLVaJqLH9rUQJQpL5wFPmnyNXdAvZGOty//HkLaw4jKqHu825QmI
         KqQ2fLyORgH25CDp0/6vOaaGnuI4+oUGc9IALQ1ZvLIZ++RlaR3pthPrJbD3A5zVmbfB
         BIdEHmyfirMHitcbE36/tO5qupsfdBnlD7EzdVzlsVfkges/XqY56UoLOCRajLXJE7ss
         W41A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683729313; x=1686321313;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fpuCMR7HWn/ITXNq4nO1XLLC3QbOTKNw9995/moGqzQ=;
        b=P/OIaV3XoebT+NI6ZWMPkpDKwTZYB5GNAa8A9iNfq5NQu+G24iGMj9iVZBTS5lHA1A
         mIf5xtjF7vZTAfCT2uDJ5AOwOOw/XJIIYnxzXL8fT5NMGIpNS2h2KvaaLEyDci1cNrud
         FN+d5R2uVRLVENJKPc2kQCtO3wE5NxR7HvWNFpx4EudArG1gpWwHsOiEhX1MJbrWEkjA
         wLerJdP93ohXdcidAe4NOL4Z/L00xt+H/n6O8C50PNjAVnjv68nzd28IzJE5Pf4kLEhb
         bAwO3uGz9CK2iozp1r3SRFZ8DtFmy7jeDYiAzx0+cv87DD6orNrf+8m5rlwfXdEFdNbk
         VStg==
X-Gm-Message-State: AC+VfDy+bd0EAjN3TXB6AsQ6DyKo/U6KvYzEURBFVWl1S6QJOLkunK58
	Ik/4TM+2OCRqXPi3E5w+DQxbErdvD5RE+suLacs=
X-Google-Smtp-Source: ACHHUZ49ppHslE4mHjUYFKBOUyucAAM24ZrPIv5aprBfS2kJiF3g4VSfdT1c/h/rzdTwoFOgI+joO9DqjP+jNMxkwPc=
X-Received: by 2002:a67:b348:0:b0:436:e3:f6de with SMTP id b8-20020a67b348000000b0043600e3f6demr3552419vsm.13.1683729313144;
 Wed, 10 May 2023 07:35:13 -0700 (PDT)
MIME-Version: 1.0
References: <20230509185631.3182570-1-jose.quaresma@foundries.io>
 <c636e528-ca65-dae0-e772-2c43afd16ff3@gmail.com> <3bf73334-5196-85e7-2a79-a47a7ae6da4d@linux.ibm.com>
 <ZFuY1UtAFKNI4Oyt@nuoska> <4f9206ad-aa2d-bdb0-dec7-fd40f1fee826@gmail.com> <175DCECAC59B5A82.14362@lists.yoctoproject.org>
In-Reply-To: <175DCECAC59B5A82.14362@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Wed, 10 May 2023 15:35:02 +0100
Message-ID: <CANPvuRkLmr_+MCFnyiwG7-EqRVVZOtFGo+f7pYDNUTh714+O5A@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH 1/8] Revert "ima-evm-utils: Update
 ima-evm-utils to v1.5 and add a patch"
To: quaresma.jose@gmail.com
Cc: akuster808 <akuster808@gmail.com>, Mikko Rapeli <mikko.rapeli@linaro.org>, 
	Stefan Berger <stefanb@linux.ibm.com>, yocto@lists.yoctoproject.org, 
	Jose Quaresma <jose.quaresma@foundries.io>
Content-Type: multipart/alternative; boundary="0000000000009ba3f705fb57c785"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 May 2023 14:35:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59966

--0000000000009ba3f705fb57c785
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Jose Quaresma via lists.yoctoproject.org <quaresma.jose=3D
gmail.com@lists.yoctoproject.org> escreveu no dia quarta, 10/05/2023 =C3=A0=
(s)
15:33:

>
>
> akuster808 <akuster808@gmail.com> escreveu no dia quarta, 10/05/2023 =C3=
=A0(s)
> 15:25:
>
>>
>>
>> On 5/10/23 9:15 AM, Mikko Rapeli wrote:
>> > Hi,
>> >
>> > On Wed, May 10, 2023 at 08:23:18AM -0400, Stefan Berger wrote:
>> >>
>> >> On 5/10/23 07:44, Armin Kuster wrote:
>> >>>
>> >>> On 5/9/23 2:56 PM, Jose Quaresma wrote:
>> >>>> This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa8928f.
>> >>>>
>> >>>> The full patchset are overriding the do_configure task and also
>> added a kernel patch
>> >>>> on meta-integrity/recipes-kernel/linux/linux_ima.inc and this file
>> is included
>> >>>> in every recipe that follows the pattern pattern starting by linux-
>> (recipes-kernel/linux/linux-%.bbappend).
>> >>>> So the patch fails in some recipes and also do_configure task
>> doesn't make sense.
>> >>>> This breaks many recipes like linux-firmware and maybe others.
>> >>> I fail to see how  this package update is part of the issue above. I
>> am still trying to sort out the store here to figure out how we move
>> forward.
>> >> My suggestion would be that I post a v2 of my fix patches containing:
>> >>
>> >> 1) removal of the Linux kernel patch
>> >> 2) removal of the squashfs option (less important)
>> >> 3) the suggestion outlined here:
>> https://lists.yoctoproject.org/g/yocto/message/59955
>> >>     but modified to look like this with '&& [ -f .config ]' appended:
>> >>
>> >>   do_configure:append() {
>> >>       if [ "${@bb.utils.contains('DISTRO_FEATURES', 'ima', 'yes', '',
>> d)}" =3D "yes" ] && [ -f .config ] ; then
>> >>           sed -i
>> "s|^CONFIG_SYSTEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTED_KEYS=3D\"${IMA=
_EVM_ROOT_CA}\"|"
>> .config
>> >>       fi
>> >>   }
>> >>
>> >> I don't want to hold things up but maybe it's worth discussing the
>> suggested changes.
>> >>
>> >>  From what I can see 'bitbake linux-firmware' builds under OpenBMC no=
w
>> with these suggested changes
>> >> and it did NOT build before. My suggestion would be to discuss the
>> proposal under that thread there.
>> >> The problems seem to be that the file
>> meta-security/meta-integrity/recipes-kernel/linux/linux-%.bbappend
>> >> matches the pattern linux-firmware as well and therefore its contents
>> get included when building
>> >> linux-firmware. When building linux-firmware while having also
>> DISTRO_FEATURES ima set in local.conf then the
>> >> ima.scc is added to SRC_URI and the do_configure is also appended. Th=
e
>> latter will not have side-effects but
>> >> I don't know about the former nor how to create a better filter (othe=
r
>> than DISTRO_FEATURES) for not having
>> >> these included for linux-firmware.
>> > Why is the bbappend applying changes to all recipes where name starts
>> with
>> > "linux-"?
>> >
>> > It is aiming at Linux kernel recipes which by default in yocto are
>> > called "linux-yocto", so the bbappend could simply be
>> > "linux-yocto_%.bbappend" (or "linux-yocto%.bbappend to catch the rt
>> > and other variants too).
>>
>> Well that one is on me. That change came in when I ported over the
>> meta-intel-iot-security layer.
>>
>
> Renaming the bbappend to linux-yocto%.bbappend will break all other linux
> kernels around
> that follow the pattern linux-%.bbappend.
>
> A better solution is needed here like the one pointed by Bruce
> https://lists.yoctoproject.org/g/yocto/message/59954
>
> I send the revert because currently the master is broken and the cause is
> IMA patchset.
> Maybe this patch can be dropped because it only bumps a version but the
> others should be dropped.
>

typo: this patch can be dropped but the others should be merged.

Jose


>
> Jose
>
>
>>
>> 6680225 meta-integrity: port over from meta-intel-iot-security
>>
>> I will send a patch correcting that.
>>
>> Thanks for the reminder and pointing this out.
>>
>> BR,
>> Armin
>>
>> >
>> > I think it's a bad idea to try to apply this change automatically to a=
ll
>> > possible BSP layer kernels which may or may not have names starting wi=
th
>> > "linux-" and it's well known that there are a lot of recipe names whic=
h
>> > start with "linux-" which are not Linux kernels (linux-firmware,
>> > linux-libc-headers, linux-dummy etc).
>> >
>> > Cheers,
>> >
>> > -Mikko
>>
>>
>
> --
> Best regards,
>
> Jos=C3=A9 Quaresma
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59964):
> https://lists.yoctoproject.org/g/yocto/message/59964
> Mute This Topic: https://lists.yoctoproject.org/mt/98790790/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000009ba3f705fb57c785
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Jose Quaresma via <a href=3D"http://l=
ists.yoctoproject.org">lists.yoctoproject.org</a> &lt;quaresma.jose=3D<a hr=
ef=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.com@lists.yoctoproject=
.org</a>&gt; escreveu no dia quarta, 10/05/2023 =C3=A0(s) 15:33:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div dir=
=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D=
"gmail_attr">akuster808 &lt;<a href=3D"mailto:akuster808@gmail.com" target=
=3D"_blank">akuster808@gmail.com</a>&gt; escreveu no dia quarta, 10/05/2023=
 =C3=A0(s) 15:25:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><br>
<br>
On 5/10/23 9:15 AM, Mikko Rapeli wrote:<br>
&gt; Hi,<br>
&gt;<br>
&gt; On Wed, May 10, 2023 at 08:23:18AM -0400, Stefan Berger wrote:<br>
&gt;&gt;<br>
&gt;&gt; On 5/10/23 07:44, Armin Kuster wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On 5/9/23 2:56 PM, Jose Quaresma wrote:<br>
&gt;&gt;&gt;&gt; This reverts commit 9de807705b27b05bbf84e9f16502fe6cdaa892=
8f.<br>
&gt;&gt;&gt;&gt;<br>
&gt;&gt;&gt;&gt; The full patchset are overriding the do_configure task and=
 also added a kernel patch<br>
&gt;&gt;&gt;&gt; on meta-integrity/recipes-kernel/linux/linux_ima.inc and t=
his file is included<br>
&gt;&gt;&gt;&gt; in every recipe that follows the pattern pattern starting =
by linux- (recipes-kernel/linux/linux-%.bbappend).<br>
&gt;&gt;&gt;&gt; So the patch fails in some recipes and also do_configure t=
ask doesn&#39;t make sense.<br>
&gt;&gt;&gt;&gt; This breaks many recipes like linux-firmware and maybe oth=
ers.<br>
&gt;&gt;&gt; I fail to see how=C2=A0 this package update is part of the iss=
ue above. I am still trying to sort out the store here to figure out how we=
 move forward.<br>
&gt;&gt; My suggestion would be that I post a v2 of my fix patches containi=
ng:<br>
&gt;&gt;<br>
&gt;&gt; 1) removal of the Linux kernel patch<br>
&gt;&gt; 2) removal of the squashfs option (less important)<br>
&gt;&gt; 3) the suggestion outlined here: <a href=3D"https://lists.yoctopro=
ject.org/g/yocto/message/59955" rel=3D"noreferrer" target=3D"_blank">https:=
//lists.yoctoproject.org/g/yocto/message/59955</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0but modified to look like this with &#39;&amp;&=
amp; [ -f .config ]&#39; appended:<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0do_configure:append() {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0if [ &quot;${@bb.utils.contains(&#39;DIS=
TRO_FEATURES&#39;, &#39;ima&#39;, &#39;yes&#39;, &#39;&#39;, d)}&quot; =3D =
&quot;yes&quot; ] &amp;&amp; [ -f .config ] ; then<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sed -i &quot;s|^CONFIG_SYS=
TEM_TRUSTED_KEYS=3D.*|CONFIG_SYSTEM_TRUSTED_KEYS=3D\&quot;${IMA_EVM_ROOT_CA=
}\&quot;|&quot; .config<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0fi<br>
&gt;&gt;=C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt; I don&#39;t want to hold things up but maybe it&#39;s worth discus=
sing the suggested changes.<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 From what I can see &#39;bitbake linux-firmware&#39; builds =
under OpenBMC now with these suggested changes<br>
&gt;&gt; and it did NOT build before. My suggestion would be to discuss the=
 proposal under that thread there.<br>
&gt;&gt; The problems seem to be that the file meta-security/meta-integrity=
/recipes-kernel/linux/linux-%.bbappend<br>
&gt;&gt; matches the pattern linux-firmware as well and therefore its conte=
nts get included when building<br>
&gt;&gt; linux-firmware. When building linux-firmware while having also DIS=
TRO_FEATURES ima set in local.conf then the<br>
&gt;&gt; ima.scc is added to SRC_URI and the do_configure is also appended.=
 The latter will not have side-effects but<br>
&gt;&gt; I don&#39;t know about the former nor how to create a better filte=
r (other than DISTRO_FEATURES) for not having<br>
&gt;&gt; these included for linux-firmware.<br>
&gt; Why is the bbappend applying changes to all recipes where name starts =
with<br>
&gt; &quot;linux-&quot;?<br>
&gt;<br>
&gt; It is aiming at Linux kernel recipes which by default in yocto are<br>
&gt; called &quot;linux-yocto&quot;, so the bbappend could simply be<br>
&gt; &quot;linux-yocto_%.bbappend&quot; (or &quot;linux-yocto%.bbappend to =
catch the rt<br>
&gt; and other variants too).<br>
<br>
Well that one is on me. That change came in when I ported over the <br>
meta-intel-iot-security layer.<br></blockquote><div><br></div><div>Renaming=
 the bbappend to=C2=A0<span style=3D"color:rgb(0,0,0)">linux-yocto%.bbappen=
d will break all other linux kernels around</span></div><div><span style=3D=
"color:rgb(0,0,0)">that follow the pattern=C2=A0</span>linux-%.bbappend.</d=
iv><div><br></div><div>A better solution is needed here like the one pointe=
d by Bruce<br><a href=3D"https://lists.yoctoproject.org/g/yocto/message/599=
54" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/59954<=
/a><br><br>I send the revert because currently the master is broken and the=
 cause is IMA patchset.<br>Maybe this patch can be dropped because it only =
bumps a version but the others should be dropped.</div></div></div></blockq=
uote><div><br></div><div>typo: this patch=C2=A0can be dropped=C2=A0but the =
others should be merged.</div><div><br></div><div>Jose</div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div c=
lass=3D"gmail_quote"><div><br></div><div>Jose</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
<br>
6680225 meta-integrity: port over from meta-intel-iot-security<br>
<br>
I will send a patch correcting that.<br>
<br>
Thanks for the reminder and pointing this out.<br>
<br>
BR,<br>
Armin<br>
<br>
&gt;<br>
&gt; I think it&#39;s a bad idea to try to apply this change automatically =
to all<br>
&gt; possible BSP layer kernels which may or may not have names starting wi=
th<br>
&gt; &quot;linux-&quot; and it&#39;s well known that there are a lot of rec=
ipe names which<br>
&gt; start with &quot;linux-&quot; which are not Linux kernels (linux-firmw=
are,<br>
&gt; linux-libc-headers, linux-dummy etc).<br>
&gt;<br>
&gt; Cheers,<br>
&gt;<br>
&gt; -Mikko<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span>-- </span><br><di=
v dir=3D"ltr"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</di=
v></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59964): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59964" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59964</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98790790/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98790790/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--0000000000009ba3f705fb57c785--

