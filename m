Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 501EEC433F5
	for <webhook@archiver.kernel.org>; Thu, 13 Jan 2022 17:37:21 +0000 (UTC)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com
 [209.85.167.41])
 by mx.groups.io with SMTP id smtpd.web11.217.1642095440549804666
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 09:37:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XMX5weW7;
 spf=pass (domain: gmail.com, ip: 209.85.167.41,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f41.google.com with SMTP id p27so10460347lfa.1
        for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jan 2022 09:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nZwisjF60BS1V+a1fGpaYpB1I8/ic/hSegsOfhcGjl8=;
        b=XMX5weW7DzenUdARi+gdWN9O3am+jOaTlZYuDpr3HT4aDFqLcpeld0g0RdAUIDc2px
         NprSzj9hFQoI5nmtsznIUPiPjK3r9dXyoG+I252Kh/vDCOrutg9vn69Q2xwBQ/4Fd0co
         QcnVzlGGsnCvG+VHnrxI+39U4DQJ28aB+4EJTDqs71a5D0H86aFRgOW9JhyXjba8j2ki
         nQZ+MfqLYQt+BKWRYqiN/4V+zRondROpzHZvrwCxGGBNsbkhG9tlPBkNmCDgdepIgSxU
         7H2o7dwCdg2e3UXr2ZEN5/Ze0kDkN/KMkRqyBvP7TKzvOfmKeoAQc7YuCZ4q66gD2CKA
         rNEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nZwisjF60BS1V+a1fGpaYpB1I8/ic/hSegsOfhcGjl8=;
        b=XBEV8+46hr1eEHZHKAtV6D1I2eLkiyBuMW9BCSxJETPqZ3yvPmvpvrJNZQX9fwL1vt
         QeXkix1R3jtgjWXMYQgi2C9FEQYwFdQ19jYMkoJz7eszW8L3uOG6dgOz5cQPqI2UuZNJ
         pPIzpmmDQSYTiFWlZJycYD+U2dqgLDBL9bFXz0qqWxHzPITmMXtOQxohdw3Tl1PWeueX
         WLqeU287UlZJQlTCtkF2ny0NMsvfrCwb1IsQLOw5YEBlQyMLAETRufjai/j76/JGBRYm
         mP8rCkVQqHhkBCmshRWVMq4LMi/q/yZ6WGutC6eNdlYu9GsqhQ7GMSTnOzJUl7DxCKDO
         JlxA==
X-Gm-Message-State: AOAM531BXECk5zZhUdZGIBXz+HAmVFz9DZTZ958kODpa+f46lAm6qYWn
	F34NmMrFaZbiZU19wc3DFqIz3528Y6fdZqveAn0=
X-Google-Smtp-Source: 
 ABdhPJypNe8CqwCJ+Yn4D6w24qd6ZNBRWhXvyRbTjg0e5HJYPtq6w68vtZ2/wsrsDLwUFtP5Yzr5137R5Dw5f8mEYC0=
X-Received: by 2002:a2e:6e02:: with SMTP id j2mr230176ljc.216.1642095438476;
 Thu, 13 Jan 2022 09:37:18 -0800 (PST)
MIME-Version: 1.0
References: <b4336117-2693-c1f4-30fb-08b92a5e5e1a@bootlin.com>
In-Reply-To: <b4336117-2693-c1f4-30fb-08b92a5e5e1a@bootlin.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 13 Jan 2022 17:37:07 +0000
Message-ID: 
 <CANPvuR=fxxv_aFFJvo0y265r8NrpFwTevx33sdoTkZYdsP5YAA@mail.gmail.com>
Subject: Re: [yocto] Red alert but apparently harmless setscene errors
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004c384d05d57a2348"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jan 2022 17:37:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55839

--0000000000004c384d05d57a2348
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I've seen the same for some time now when building core-image-minimal with
yocto state mirror and hashequiv servers.

After some investigation I think the root cause is some
bandwidth/connection limitation on the http yocto mirror.

Reducing the BB_NUMBER_THREADS=3D"1" to a single core solves many of the
fetch issues for me,
my config is the default one with:

  BB_NUMBER_THREADS=3D"1"
  SSTATE_MIRRORS =3D "file://.*
http://sstate.yoctoproject.org/dev/PATH;downloadfilename=3DPATH"
  BB_HASHSERVE_UPSTREAM =3D "typhoon.yocto.io:8687"

Jose

Michael Opdenacker <michael.opdenacker@bootlin.com> escreveu no dia quinta,
13/01/2022 =C3=A0(s) 17:23:

> Hi,
>
> Sharing this before opening a bug if needed...
>
> I'm building the latest Poky ("core-image-minimal" plus a few extra
> packages).
>
> I'm always getting the below setscene errors after upgrading my Poky
> sources:
>
> ... <more similar errors before>
> WARNING: libffi-native-3.4.2-r0 do_populate_sysroot_setscene: Failed to
> fetch URL
>
> file://universal/c8/be/sstate:libffi-native:x86_64-linux:3.4.2:r0:x86_64:=
7:c8be7b784ce8ebbf6d897367bc8e96f6718040858d61f9a4f6aa5325821b0ce5_populate=
_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/c8/be/sstate:libffi-n=
ative:x86_64-linux:3.4.2:r0:x86_64:7:c8be7b784ce8ebbf6d897367bc8e96f6718040=
858d61f9a4f6aa5325821b0ce5_populate_sysroot.tar.zst.siginfo,
> attempting MIRRORS if available
> ERROR: libffi-native-3.4.2-r0 do_populate_sysroot_setscene: Fetcher
> failure: Unable to find file
>
> file://universal/c8/be/sstate:libffi-native:x86_64-linux:3.4.2:r0:x86_64:=
7:c8be7b784ce8ebbf6d897367bc8e96f6718040858d61f9a4f6aa5325821b0ce5_populate=
_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/c8/be/sstate:libffi-n=
ative:x86_64-linux:3.4.2:r0:x86_64:7:c8be7b784ce8ebbf6d897367bc8e96f6718040=
858d61f9a4f6aa5325821b0ce5_populate_sysroot.tar.zst.siginfo
> anywhere. The paths that were searched were:
>     /media/mike/ssd/yocto/poky/build/sstate-cache
>     /media/mike/ssd/yocto/poky/build/sstate-cache
> WARNING: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: Failed
> to fetch URL
>
> file://universal/bf/03/sstate:libpcre2-native:x86_64-linux:10.39:r0:x86_6=
4:7:bf035286ff06470377fe9c9298ba116222c9d557f2fa44d418beb919aa185db9_popula=
te_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/bf/03/sstate:libpcr=
e2-native:x86_64-linux:10.39:r0:x86_64:7:bf035286ff06470377fe9c9298ba116222=
c9d557f2fa44d418beb919aa185db9_populate_sysroot.tar.zst.siginfo,
> attempting MIRRORS if available
> ERROR: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: Fetcher
> failure: Unable to find file
>
> file://universal/bf/03/sstate:libpcre2-native:x86_64-linux:10.39:r0:x86_6=
4:7:bf035286ff06470377fe9c9298ba116222c9d557f2fa44d418beb919aa185db9_popula=
te_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/bf/03/sstate:libpcr=
e2-native:x86_64-linux:10.39:r0:x86_64:7:bf035286ff06470377fe9c9298ba116222=
c9d557f2fa44d418beb919aa185db9_populate_sysroot.tar.zst.siginfo
> anywhere. The paths that were searched were:
>     /media/mike/ssd/yocto/poky/build/sstate-cache
>     /media/mike/ssd/yocto/poky/build/sstate-cache
> ERROR: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: No
> suitable staging package found
> ERROR: Logfile of failure stored in:
>
> /media/mike/ssd/yocto/poky/build/tmp/work/x86_64-linux/libpcre2-native/10=
.39-r0/temp/log.do_populate_sysroot_setscene.315121
> WARNING: Setscene task
>
> (virtual:native:/media/mike/ssd/yocto/poky/meta/recipes-support/libpcre/l=
ibpcre2_10.39.bb:
> do_populate_sysroot_setscene)
> failed with exit code '1' - real task will be run instead
> Currently  4 running tasks (1838 of 1838/467 of 4630)  10%
> |################
>
> As expected, the error messages are highlighted in red, but they are not
> critical as BitBake can always build the corresponding recipes from
> sources.
>
> Two questions:
>
>   * Anything wrong with my local sstate cache? Should I erase it?
>   * Should these issues really be treated as errors, scaring users that
>     something could be wrong while the resulting build looks correct
> anyway?
>
> Thanks in advance
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55838):
> https://lists.yoctoproject.org/g/yocto/message/55838
> Mute This Topic: https://lists.yoctoproject.org/mt/88401713/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000004c384d05d57a2348
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;ve seen the same f=
or some time now when=C2=A0building=C2=A0core-image-minimal with yocto stat=
e=C2=A0mirror and hashequiv servers.</div><div><br></div><div>After some in=
vestigation I think the root cause is some bandwidth/connection=C2=A0limita=
tion on the http yocto mirror.</div><div><br></div><div>Reducing the=C2=A0B=
B_NUMBER_THREADS=3D&quot;1&quot; to a single core solves many of the fetch =
issues for me,</div><div>my config is the default one with:</div><div><br><=
/div><div>=C2=A0 BB_NUMBER_THREADS=3D&quot;1&quot;<br>=C2=A0 SSTATE_MIRRORS=
 =3D &quot;file://.* <a href=3D"http://sstate.yoctoproject.org/dev/PATH;dow=
nloadfilename=3DPATH">http://sstate.yoctoproject.org/dev/PATH;downloadfilen=
ame=3DPATH</a>&quot;<br>=C2=A0 BB_HASHSERVE_UPSTREAM =3D &quot;<a href=3D"h=
ttp://typhoon.yocto.io:8687">typhoon.yocto.io:8687</a>&quot;</div><div><br>=
</div><div>Jose</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" c=
lass=3D"gmail_attr">Michael Opdenacker &lt;<a href=3D"mailto:michael.opdena=
cker@bootlin.com">michael.opdenacker@bootlin.com</a>&gt; escreveu no dia qu=
inta, 13/01/2022 =C3=A0(s) 17:23:<br></div><blockquote class=3D"gmail_quote=
" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);=
padding-left:1ex">Hi,<br>
<br>
Sharing this before opening a bug if needed...<br>
<br>
I&#39;m building the latest Poky (&quot;core-image-minimal&quot; plus a few=
 extra<br>
packages).<br>
<br>
I&#39;m always getting the below setscene errors after upgrading my Poky<br=
>
sources:<br>
<br>
... &lt;more similar errors before&gt;<br>
WARNING: libffi-native-3.4.2-r0 do_populate_sysroot_setscene: Failed to<br>
fetch URL<br>
file://universal/c8/be/sstate:libffi-native:x86_64-linux:3.4.2:r0:x86_64:7:=
c8be7b784ce8ebbf6d897367bc8e96f6718040858d61f9a4f6aa5325821b0ce5_populate_s=
ysroot.tar.zst.siginfo;downloadfilename=3Duniversal/c8/be/sstate:libffi-nat=
ive:x86_64-linux:3.4.2:r0:x86_64:7:c8be7b784ce8ebbf6d897367bc8e96f671804085=
8d61f9a4f6aa5325821b0ce5_populate_sysroot.tar.zst.siginfo,<br>
attempting MIRRORS if available<br>
ERROR: libffi-native-3.4.2-r0 do_populate_sysroot_setscene: Fetcher<br>
failure: Unable to find file<br>
file://universal/c8/be/sstate:libffi-native:x86_64-linux:3.4.2:r0:x86_64:7:=
c8be7b784ce8ebbf6d897367bc8e96f6718040858d61f9a4f6aa5325821b0ce5_populate_s=
ysroot.tar.zst.siginfo;downloadfilename=3Duniversal/c8/be/sstate:libffi-nat=
ive:x86_64-linux:3.4.2:r0:x86_64:7:c8be7b784ce8ebbf6d897367bc8e96f671804085=
8d61f9a4f6aa5325821b0ce5_populate_sysroot.tar.zst.siginfo<br>
anywhere. The paths that were searched were:<br>
=C2=A0=C2=A0=C2=A0 /media/mike/ssd/yocto/poky/build/sstate-cache<br>
=C2=A0=C2=A0=C2=A0 /media/mike/ssd/yocto/poky/build/sstate-cache<br>
WARNING: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: Failed<br>
to fetch URL<br>
file://universal/bf/03/sstate:libpcre2-native:x86_64-linux:10.39:r0:x86_64:=
7:bf035286ff06470377fe9c9298ba116222c9d557f2fa44d418beb919aa185db9_populate=
_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/bf/03/sstate:libpcre2=
-native:x86_64-linux:10.39:r0:x86_64:7:bf035286ff06470377fe9c9298ba116222c9=
d557f2fa44d418beb919aa185db9_populate_sysroot.tar.zst.siginfo,<br>
attempting MIRRORS if available<br>
ERROR: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: Fetcher<br>
failure: Unable to find file<br>
file://universal/bf/03/sstate:libpcre2-native:x86_64-linux:10.39:r0:x86_64:=
7:bf035286ff06470377fe9c9298ba116222c9d557f2fa44d418beb919aa185db9_populate=
_sysroot.tar.zst.siginfo;downloadfilename=3Duniversal/bf/03/sstate:libpcre2=
-native:x86_64-linux:10.39:r0:x86_64:7:bf035286ff06470377fe9c9298ba116222c9=
d557f2fa44d418beb919aa185db9_populate_sysroot.tar.zst.siginfo<br>
anywhere. The paths that were searched were:<br>
=C2=A0=C2=A0=C2=A0 /media/mike/ssd/yocto/poky/build/sstate-cache<br>
=C2=A0=C2=A0=C2=A0 /media/mike/ssd/yocto/poky/build/sstate-cache<br>
ERROR: libpcre2-native-10.39-r0 do_populate_sysroot_setscene: No<br>
suitable staging package found<br>
ERROR: Logfile of failure stored in:<br>
/media/mike/ssd/yocto/poky/build/tmp/work/x86_64-linux/libpcre2-native/10.3=
9-r0/temp/log.do_populate_sysroot_setscene.315121<br>
WARNING: Setscene task<br>
(virtual:native:/media/mike/ssd/yocto/poky/meta/recipes-support/libpcre/lib=
pcre2_10.39.bb:do_populate_sysroot_setscene)<br>
failed with exit code &#39;1&#39; - real task will be run instead<br>
Currently=C2=A0 4 running tasks (1838 of 1838/467 of 4630)=C2=A0 10%<br>
|################<br>
<br>
As expected, the error messages are highlighted in red, but they are not<br=
>
critical as BitBake can always build the corresponding recipes from sources=
.<br>
<br>
Two questions:<br>
<br>
=C2=A0 * Anything wrong with my local sstate cache? Should I erase it?<br>
=C2=A0 * Should these issues really be treated as errors, scaring users tha=
t<br>
=C2=A0 =C2=A0 something could be wrong while the resulting build looks corr=
ect anyway?<br>
<br>
Thanks in advance<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55838): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55838" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55838</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88401713/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88401713/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div></div>

--0000000000004c384d05d57a2348--

