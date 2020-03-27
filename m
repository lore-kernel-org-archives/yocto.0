Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web12.7930.1585301440101383391
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 02:30:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LD7RpyTp;
 spf=pass (domain: gmail.com, ip: 209.85.217.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id a63so5750032vsa.8
        for <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2020 02:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=f0J6FUoiN+pzqsuwwTqesb7CoVrS1MmeS5PhPWaHPQM=;
        b=LD7RpyTpgAN+fXXrkXsptvRr2S8DDHMLn9Qk5sMx/ERz1EkOMCaNzjd+W3RnRYf95U
         IFZMROYy1vRJsfDdCPVw8sUT2PgtYOQV15SDCYICZSvJHr7wFspdAZOFTuhkcBI8nugm
         +qcSeklyrnpijstN2mzMuw2+HBpbn+eNOp4y1lE5dQGiMOdPAPzD4HxGQBMnyFj+V7sf
         GgVNvV+ZhO78mvuA9U04e9EkTCnX4LVNKxEWMExLwdbpjhpl0daXQP9nnN10BTGSFu+K
         bxMwZgU4Lwv+64grmW7o97KuSU+GMDFdZ0vfoyvV7aX6RzJlFRdK9+3kaPT941/IeRYC
         kx7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=f0J6FUoiN+pzqsuwwTqesb7CoVrS1MmeS5PhPWaHPQM=;
        b=TbMIZkVZgNEJl8rIhcjMLKja+UtERgGc/LZHIeI+A12Blk/AMCwejhFjhhKS7DhLuP
         H/1pdl3B54HDMwy0gpkdpVt2ICbbyxpZgxWTM4PVT7RIDQOq7mzo0p9+Cl5bh9jGYphb
         RndH9ZoLjV85sEUScOcksO16Muo6xtxvdQrIVzKz3iM/ZoL2WGpq5Z+KFTWO5gCMURY7
         684+JForw0kn4l/vQYpDWZYCzKXRAhxfDR/UCE9paJTrf9JTF+sOh8AfyCqZNO7FPttr
         Ah7YEq8MAnm/mvjG6IOu4jc/OJUErP4JtL9033U8imFazxpAP4xBrh78ulvRL+QTah2c
         2MQg==
X-Gm-Message-State: ANhLgQ20RhAbZS0mCjud/9L32MgmeUpWv/q74gNWwM13y+QgTUKz5QrT
	FgnM4wAmyd3/QFUuDEp2JiLUdwzYWtJc/lEAIr4=
X-Google-Smtp-Source: ADFU+vtHS/8GIQC4ItWU3HHN13ditEDHK1xlXNd5JtXJlzJ7H5iRjZYEOxO4BYft4ncr0zQUNzN4aNmljN5/y8epFJQ=
X-Received: by 2002:a05:6102:31b7:: with SMTP id d23mr10524449vsh.25.1585301439129;
 Fri, 27 Mar 2020 02:30:39 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9JKutRV2p93WD2p6i31M-jeUJubAaVc7ggms8e_jDpeA@mail.gmail.com>
 <17939.1585301216508919705@lists.yoctoproject.org>
In-Reply-To: <17939.1585301216508919705@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 27 Mar 2020 10:30:27 +0100
Message-ID: <CANNYZj943hZyGefTNaAvjtcL=wK38N4pWB=RVQE89Aa_skJGWg@mail.gmail.com>
Subject: Re: [yocto] Mechanism behind pkg_postinst_ontarget_${PN} #yocto
To: stefan.wenninger@evopro-ag.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000242c3705a1d2c16f"

--000000000000242c3705a1d2c16f
Content-Type: text/plain; charset="UTF-8"

I am not sure about deb-postinsts. What I see the script doing is:

eval dpkg --configure -a $append_log

Alex

On Fri, 27 Mar 2020 at 10:26, <stefan.wenninger@evopro-ag.de> wrote:

> I am using deb as my package class. What I am gathering from that
> run-postinsts directory is that there is a systemd service that starts and
> executes the run-postinsts script.
> That script looks for a directory /etc/deb-postinsts and executes all
> scripts in there. Does that mean, that the mechanism used in the end is the
> post-install scripts of deb packages?
> So basically the *pkg_postinst_ontarget_${PN}* function adds a
> postinstall script to the .deb package of the recipe it is in, correct?
> That should mean that I can expect to see a script in /etc/deb-postinsts
> that contains my commands. I will verify that right away.
>
> If these assumptions are correct, you have already greatly improved my
> understanding of this process. Thank you for that.
>
> Stefan 
>

--000000000000242c3705a1d2c16f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am not sure about deb-postinsts. What I see the scr=
ipt doing is:</div><div><br></div><div>eval dpkg --configure -a $append_log=
</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 at 10:26, &lt;<=
a href=3D"mailto:stefan.wenninger@evopro-ag.de">stefan.wenninger@evopro-ag.=
de</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
">I am using deb as my package class. What I am gathering from that run-pos=
tinsts directory is that there is a systemd service that starts and execute=
s the run-postinsts script.<br>That script looks for a directory /etc/deb-p=
ostinsts and executes all scripts in there. Does that mean, that the mechan=
ism used in the end is the post-install scripts of deb packages?<br>So basi=
cally the <em>pkg_postinst_ontarget_${PN}</em> function adds a postinstall =
script to the .deb package of the recipe it is in, correct?<br>That should =
mean that I can expect to see a script in /etc/deb-postinsts that contains =
my commands. I will verify that right away.<br><br>If these assumptions are=
 correct, you have already greatly improved my understanding of this proces=
s. Thank you for that.<br><br>Stefan
<br>
</blockquote></div>

--000000000000242c3705a1d2c16f--
