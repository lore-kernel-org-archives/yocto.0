Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web09.9959.1625157822476984860
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Jul 2021 09:43:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dn7GQreG;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id w22so2754220pff.5
        for <yocto@lists.yoctoproject.org>; Thu, 01 Jul 2021 09:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0GWNQuQ333vAIOoH1SMCeOLcvvU2Ii9ulZdOwUgHNno=;
        b=Dn7GQreGtVGtGzT7+5HYjKosYDkSY/bkyqg6f2XXeIlS+hY7es9PG/2bmIGucwHdqZ
         kGUbKvTc3y0XjBAr2zhGeQUIVKBQ/iIEWl2mRzgB442jDmmAlrHXQ6rzuVy6AsQPqYTI
         GDB05lg4qubK1A930FSI7u9jHT7L517sSow/H0I4LZ0J2a194Oi5tt1xJwXWib6vaona
         D98zZevUuqskcG3vVVIg1LQnVnzn3WCMcb9xvwwpZUwl3SI4Bq7lawosWBGfj64TtL0V
         jEhwQB8GckfwOXVunlIox3QFSnCt06IXklLHbjV/+tsGnJrnxsfAIlaOSbsxbXOihxVJ
         jgPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0GWNQuQ333vAIOoH1SMCeOLcvvU2Ii9ulZdOwUgHNno=;
        b=bLrAwUBZx2BcNH53kXbB46YlQB+d7TQpzZk7wuD5r1XnuPzu5GmF6sPd+hhg2ZlqBe
         SLfb+8STv0JRxK+bEWK+jmR5QtTbMh0wZSb+B3QFZQe09PkXo0yQsDQZx3iHAU/rQumQ
         aobdCuHbDLXUxRqCVsb8hAhSg43Vad5m6QlOh4l86W0IpJ7O91xEavQvszIJZ8UQilhY
         NK00KH7jBpIkdXMHfpCmSZXFJPYbtDzCrcVvJBsTGfn9c+Tcok47GCGFWnM+U8JIPEiX
         7IWMvOiYKDsguoiYhRP45lCjTHljus3aM6lsan2XKyVpwEiL50xy9DzAAWsXS0P1PHbp
         SLJg==
X-Gm-Message-State: AOAM533fz8mT+nGmcjsvxTrTjBxNZrt2WaoOvd3Da2t3gn33GuUi7e/C
	jf/22a1JC/zE/QlsviiuPB8owlfR+bNkD3YjaJnDMnfpLHBnKA==
X-Google-Smtp-Source: ABdhPJwuWLxF6u0DxbELv6rEgR5NjdnLoXRDv+T2a87rpd6Cxga78Sl8ZgRfgx2xEy67PJmXtGpkFfnKOsz7+jhndHU=
X-Received: by 2002:aa7:9464:0:b029:306:3984:b22a with SMTP id
 t4-20020aa794640000b02903063984b22amr555627pfq.81.1625157821848; Thu, 01 Jul
 2021 09:43:41 -0700 (PDT)
MIME-Version: 1.0
References: <1625154936008.2344593251.3098544446@optimcloud.com>
In-Reply-To: <1625154936008.2344593251.3098544446@optimcloud.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Jul 2021 18:43:30 +0200
Message-ID: <CAGAf8LzvNo-1CNgFxJb4Wmuw3LfEK76hB=NJwFBbYFLkcp89zg@mail.gmail.com>
Subject: Re: [yocto] run.do_image_zipabox2_sdimg.27223: parted: not found
To: Yocto <yocto@optimcloud.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ace01505c6128a93"

--000000000000ace01505c6128a93
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

having a really funky issue


This is the truth... Truly funky issue, no doubts! =F0=9F=92=A3

Zee
_______

On Thu, Jul 1, 2021 at 5:57 PM Yocto <yocto@optimcloud.com> wrote:

> having a really funky issue everything builds fine under pyro updated it
> all to dunfell, and now im hitting this failure below, i also pasted the
> log and the offending recipe on pastebin logfile:
> https://pastebin.com/38TzNa5h bb recipe: https://pastebin.com/jhfTBv58
> Logfile of failure stored in:
> /home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-pok=
y-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/log.do_image_zipabox2_sdim=
g.27223
> Log data follows: | DEBUG: Executing python function set_image_size |
> DEBUG: 1032444.400000 =3D 794188 * 1.300000 | DEBUG: 1032444.400000 =3D
> max(1032444.400000, 8192)[1032444.400000] + 0 | DEBUG: 1032445.000000 =
=3D
> int(1032444.400000) | DEBUG: 1032445 =3D aligned(1032445) | DEBUG: retur=
ning
> 1032445 | DEBUG: Python function set_image_size finished | DEBUG: Execut=
ing
> shell function do_image_zipabox2_sdimg | 0+0 records in | 0+0 records ou=
t |
> 0 bytes copied, 8.9773e-05 s, 0.0 kB/s |
> /home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-pok=
y-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdim=
g.27223:
> 124:
> /home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-pok=
y-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdim=
g.27223:
> parted: not found | WARNING: exit code 127 from a shell command. | ERROR=
:
> Execution of
> '/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-po=
ky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdi=
mg.27223'
> failed with exit code 127: | 0+0 records in | 0+0 records out | 0 bytes
> copied, 8.9773e-05 s, 0.0 kB/s |
> /home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-pok=
y-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdim=
g.27223:
> 124:
> /home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-pok=
y-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdim=
g.27223:
> parted: not found | WARNING: exit code 127 from a shell command. | ERROR=
:
> Task
> (/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/=
zipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_sdimg)
> failed with exit code '1' NOTE: Tasks Summary: Attempted 4542 tasks of
> which 4540 didn't need to be rerun and 2 failed. Summary: 2 tasks failed=
:
> /home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/z=
ipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_mender
> /home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/z=
ipabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_sdimg
> --
> Sent with Vivaldi Mail. Download Vivaldi for free at vivaldi.com
>
>=20
>
>

--000000000000ace01505c6128a93
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-gs"><div class=3D"gmail-gE gmail-iv gm=
ail-gt"><table class=3D"gmail-cf gmail-gJ" cellpadding=3D"0"><tbody><tr cla=
ss=3D"gmail-acZ"><td class=3D"gmail-gF gmail-gK"><table class=3D"gmail-cf g=
mail-ix" cellpadding=3D"0"><tbody><tr><td class=3D"gmail-c2"><br></td></tr>=
</tbody></table></td><td class=3D"gmail-gH gmail-bAk"><span style=3D"font-f=
amily:monospace;font-size:medium;white-space:pre-wrap;background-color:rgb(=
54,55,63)">having a=20
really funky issue</span></td></tr></tbody></table></div></div><table clas=
s=3D"gmail-cf gmail-gJ" cellpadding=3D"0"><tbody><tr class=3D"gmail-acZ"><t=
d class=3D"gmail-gH"><br></td><td class=3D"gmail-gH gmail-acX gmail-bAm" ro=
wspan=3D"2"><br></td></tr></tbody></table><table class=3D"gmail-cf gmail-gJ=
" cellpadding=3D"0"><tbody><tr class=3D"gmail-acZ gmail-xD"></tr></tbody></=
table><table class=3D"gmail-cf gmail-gJ" cellpadding=3D"0"><tbody><tr class=
=
=3D"gmail-acZ gmail-xD"><td colspan=3D"3"><table class=3D"gmail-cf gmail-a=
dz" cellpadding=3D"0"><tbody><tr><td class=3D"gmail-ady"><div id=3D"gmail-:=
125" aria-haspopup=3D"true" class=3D"gmail-ajy" role=3D"button" tabindex=3D=
"0" aria-label=3D"Show details"><span class=3D"gmail-hb"><span name=3D"yoct=
o" class=3D"gmail-g2"></span></span><img class=3D"gmail-ajz" src=3D"https:/=
/mail.google.com/mail/u/0/images/cleardot.gif" alt=3D"">This is the truth..=
. Truly funky issue, no doubts! =F0=9F=92=A3</div><div aria-haspopup=3D"tru=
e" class=3D"gmail-ajy" role=3D"button" tabindex=3D"0" aria-label=3D"Show de=
tails"><br></div><div aria-haspopup=3D"true" class=3D"gmail-ajy" role=3D"bu=
tton" tabindex=3D"0" aria-label=3D"Show details">Zee</div><div aria-haspopu=
p=3D"true" class=3D"gmail-ajy" role=3D"button" tabindex=3D"0" aria-label=3D=
"Show details">_______<br></div></td></tr></tbody></table></td></tr></tbody=
></table></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gma=
il_attr">On Thu, Jul 1, 2021 at 5:57 PM Yocto &lt;<a href=3D"mailto:yocto@o=
ptimcloud.com">yocto@optimcloud.com</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid =
rgb(204,204,204);padding-left:1ex"><div><span style=3D"font-family:monospac=
e;font-size:medium;white-space:pre-wrap;background-color:rgb(54,55,63)">hav=
ing a=20
really funky issue
everything builds fine under pyro

updated it all to dunfell, and now im hitting this failure below, i also=
=20
pasted the log and the offending recipe on pastebin=20
logfile: </span><a style=3D"color:rgb(101,144,253);font-family:monospace;f=
ont-size:medium;white-space:pre-wrap" href=3D"https://pastebin.com/38TzNa5h=
" target=3D"_blank">https://pastebin.com/38TzNa5h</a><span style=3D"font-fa=
mily:monospace;font-size:medium;white-space:pre-wrap;background-color:rgb(5=
4,55,63)">

bb recipe: </span><a style=3D"color:rgb(101,144,253);font-family:monospace=
;font-size:medium;white-space:pre-wrap" href=3D"https://pastebin.com/jhfTBv=
58" target=3D"_blank">https://pastebin.com/jhfTBv58</a><span style=3D"font-=
family:monospace;font-size:medium;white-space:pre-wrap;background-color:rgb=
(54,55,63)">

Logfile of failure stored in:=20
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-=
linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/log.do_image_zipabox2_sdimg.=
27223


Log data follows:
| DEBUG: Executing python function set_image_size
| DEBUG: 1032444.400000 =3D 794188 * 1.300000
| DEBUG: 1032444.400000 =3D max(1032444.400000, 8192)[1032444.400000] + 0
| DEBUG: 1032445.000000 =3D int(1032444.400000)
| DEBUG: 1032445 =3D aligned(1032445)
| DEBUG: returning 1032445
| DEBUG: Python function set_image_size finished
| DEBUG: Executing shell function do_image_zipabox2_sdimg
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 8.9773e-05 s, 0.0 kB/s
|=20
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-=
linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.=
27223:=20
124:=20
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-=
linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.=
27223:=20
parted: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Execution of=20
&#39;/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-=
poky-linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_s=
dimg.27223&#39;=20
failed with exit code 127:
| 0+0 records in
| 0+0 records out
| 0 bytes copied, 8.9773e-05 s, 0.0 kB/s
|=20
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-=
linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.=
27223:=20
124:=20
/home/dingo/TEST3/Zipato/zipato-yocto-public/build/tmp/work/zipabox2-poky-=
linux-gnueabi/zipabox2-image-blank/1.0-r0/temp/run.do_image_zipabox2_sdimg.=
27223:=20
parted: not found
| WARNING: exit code 127 from a shell command.
| ERROR: Task=20
(/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zi=
pabox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_sdimg)=20
failed with exit code &#39;1&#39;
NOTE: Tasks Summary: Attempted 4542 tasks of which 4540 didn&#39;t need to=
 be=20
rerun and 2 failed.

Summary: 2 tasks failed:
  =20
/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zip=
abox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_mender
  =20
/home/dingo/TEST3/Zipato/zipato-yocto-public/meta-zipato-public/images/zip=
abox2-image/zipabox2-image-blank_1.0.bb:do_image_zipabox2_sdimg

</span>--=C2=A0<br>Sent with Vivaldi Mail. Download Vivaldi for free at=20
<a href=3D"http://vivaldi.com" target=3D"_blank">vivaldi.com</a></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000ace01505c6128a93--
