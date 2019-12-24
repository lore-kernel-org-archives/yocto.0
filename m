Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.7719.1577225932041568410
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Dec 2019 14:18:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ix9CxExp;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: raj.khem@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 925DAE011BF; Tue, 24 Dec 2019 14:18:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 298C4E00EBC
	for <yocto@yoctoproject.org>; Tue, 24 Dec 2019 14:18:49 -0800 (PST)
Received: by mail-qt1-f182.google.com with SMTP id l12so19036870qtq.12
        for <yocto@yoctoproject.org>; Tue, 24 Dec 2019 14:18:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KjAE1shzpC0f9zyWQZO7yGQ4F6jPMoY2g/9iPgl1YAM=;
        b=Ix9CxExpE6Nk7NAvCcsKQtbBtojHD6E9+u1R3xLXwEvNut03/GVmylDhN5+jVRDi7q
         UKVIKvP0mMhJKDjrp4TWothE3lEvpxEytXZlZtnphPQOK5AMuayKqsw5zfPn6WMa3R/z
         qPoMo4dJwEl2S/AhyGLhZFzR78fveajgsxGA8uQz7VqXfE0o0o3GDmxyB1ulDi5L9uJS
         jZMeo0SBdjMh9ul7vY4EiJQqC8U2giJLvAN6KrEVZFVfak6QtTUjtKwaT+5MNNrXkeCG
         mFVvpxQ3R/v38qyy65DVx/YHroyGUVs3GozblAKrPGObh2cfx6zOwRIFjWI4sYcGtsom
         B8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KjAE1shzpC0f9zyWQZO7yGQ4F6jPMoY2g/9iPgl1YAM=;
        b=SRBjYwLyprHG17ZnnehrgRNw02WPh1vFCs/pX1Nx9CBuzRALsDyUci531ac/QG58m/
         7uwq948HXt/DiOi+tW+mGSOic4oKkKcSa9+v3+PsazCX7qTaeYVABj8FmH88aLPRja76
         /MwyGGJRjPUT8mYGaVpCsdp1gHmcUA6i2iQqfxmnI5oON/GtAwbblFtzrYI8UYcTe6tQ
         xspVt69SVp4/Cvk5jfr/do5fIgN8Zgr+rIyCi2/q71cMTGKv4F2E0dSRMoqsaXrMakJE
         NXrCPDEIVraHaQrwAmYZxzuuZ96zrD/+75dw02yqZurDcAb/vVUvJajT0A/PPs2zovwd
         9+cg==
X-Gm-Message-State: APjAAAXjCuipbM8OT4mTrihSBZAq0Gb81eNUIaA27K6rn8GpcEcCuUcT
	uSS89YP9Ubgf14KlsZfEB1Ox362PheNJx0yiFGAqvh/H
X-Google-Smtp-Source: APXvYqzBtA6adDvO9YTtfYHg8Q7/o7IObxKUhpTbL6NcZd+M1ZG3J9f8AZziu7SRKfH6uXHRT6J4Bqr0LiKWaUK0zQ4=
X-Received: by 2002:ac8:7592:: with SMTP id s18mr18846464qtq.378.1577225929104;
 Tue, 24 Dec 2019 14:18:49 -0800 (PST)
MIME-Version: 1.0
References: <bd578e85-f9f0-51c4-052f-eca47d95b508@iwavesystems.com>
In-Reply-To: <bd578e85-f9f0-51c4-052f-eca47d95b508@iwavesystems.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 24 Dec 2019 14:18:38 -0800
Message-ID: <CAMKF1sqNqOjXvhAr-ZBOpBt0WVGjgpUGsUuWJB+NmYTCCKYyOA@mail.gmail.com>
Subject: Re: [yocto] building vlc
To: Sheraz Ali <sheraz.ali@iwavesystems.com>
Cc: Yocto <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000003c2000059a7a8720"

--0000000000003c2000059a7a8720
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 24, 2019 at 4:31 AM Sheraz Ali <sheraz.ali@iwavesystems.com>
wrote:

> Hi,
>
>     I am trying to build vlc,
>
> I have added vlc to rootfs by adding following line in conf/local.conf
>
> IMAGE_INSTALL_append =3D " vlc "
>
> CORE_IMAGE_EXTRA_INSTALL +=3D"vlc"
>
> In both the cases i was getting the following error when i was try to
> start the vlc player
>
> root@iWave-G15:~# vlc -vvv
> VLC media player 2.2.2 Weatherwax (revision 2.2.2-0-g6259d80)
> [001450d0] core libvlc debug: VLC media player - 2.2.2 Weatherwax
> [001450d0] core libvlc debug: Copyright =EF=BF=BD=C2=A9 1996-2016 the Vid=
eoLAN team
> [001450d0] core libvlc debug: revision 2.2.2-0-g6259d80
> [001450d0] core libvlc debug: configured with ../vlc-2.2.2/configure
> '--build=3Dx86_64-linux' '--host=3Darm-poky-linux-gnueabi'
> '--target=3Darm-poky-linux-gnueabi' '--prefix=3D/usr' '
> [001450d0] core libvlc debug: searching plug-in modules
> [001450d0] core libvlc debug: loading plugins cache file
> /usr/lib/vlc/plugins/plugins.dat
> [001450d0] core libvlc warning: cannot read
> /usr/lib/vlc/plugins/plugins.dat: No such file or directory
> [001450d0] core libvlc debug: recursively browsing `/usr/lib/vlc/plugins'
> Segmentation fault
>

Perhaps you should connect gdb to it and see if you can get stacktrace at
this segfault

> Am i missing any steps?
>
> --
> Thanks and Regards
> Sheraz Ali Shah
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
>
> View/Reply Online (#47815):
> https://lists.yoctoproject.org/g/yocto/message/47815
> Mute This Topic: https://lists.yoctoproject.org/mt/69248290/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

--0000000000003c2000059a7a8720
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Dec 24, 2019 at 4:31 AM Sheraz Ali &lt;<a href=3D"m=
ailto:sheraz.ali@iwavesystems.com">sheraz.ali@iwavesystems.com</a>&gt; wrot=
e:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">
 =20

   =20
 =20
  <div text=3D"#000000" bgcolor=3D"#FFFFFF">
    <div lang=3D"x-unicode">
      <p>Hi,</p>
      <p>=C2=A0=C2=A0=C2=A0 I am trying to build vlc,</p>
      <p>I have added vlc to rootfs by adding following line in
        conf/local.conf</p>
      <blockquote>
        <p>IMAGE_INSTALL_append =3D &quot; vlc <span style=3D"color:#0000ff=
"><em></em></span>&quot;</p>
        <p>CORE_IMAGE_EXTRA_INSTALL +=3D&quot;vlc&quot;</p>
        <p>In both the cases i was getting the following error when i
          was try to start the vlc player<br>
        </p>
      </blockquote>
      <p>root@iWave-G15:~# vlc -vvv<br>
        VLC media player 2.2.2 Weatherwax (revision 2.2.2-0-g6259d80)<br>
        [001450d0] core libvlc debug: VLC media player - 2.2.2
        Weatherwax<br>
        [001450d0] core libvlc debug: Copyright =EF=BF=BD=C2=A9 1996-2016 t=
he
        VideoLAN team<br>
        [001450d0] core libvlc debug: revision 2.2.2-0-g6259d80<br>
        [001450d0] core libvlc debug: configured with
        ../vlc-2.2.2/configure &#39;--build=3Dx86_64-linux&#39;
        &#39;--host=3Darm-poky-linux-gnueabi&#39;
        &#39;--target=3Darm-poky-linux-gnueabi&#39; &#39;--prefix=3D/usr&#3=
9; &#39;<br>
        [001450d0] core libvlc debug: searching plug-in modules<br>
        [001450d0] core libvlc debug: loading plugins cache file
        /usr/lib/vlc/plugins/plugins.dat<br>
        [001450d0] core libvlc warning: cannot read
        /usr/lib/vlc/plugins/plugins.dat: No such file or directory<br>
        [001450d0] core libvlc debug: recursively browsing
        `/usr/lib/vlc/plugins&#39;<br>
        Segmentation fault</p></div></div></blockquote><div dir=3D"auto"><b=
r></div><div dir=3D"auto">Perhaps you should connect gdb to it and see if y=
ou can get stacktrace at this segfault</div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div text=3D"#000000" bgcolor=3D"#FFFFFF"><div lang=3D"x-unicode"><p></p>
      <p>Am i missing any steps?<br>
      </p>
      <pre cols=3D"72">--=20
Thanks and Regards
Sheraz Ali Shah
</pre>
    </div>
  </div>

-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
<br>
View/Reply Online (#47815): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47815" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47815</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/69248290/1997=
914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/69248290/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.=
khem@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div></div>

--0000000000003c2000059a7a8720--
