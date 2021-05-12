Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web10.7721.1620829248693111136
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 May 2021 07:20:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=YZKwnAu5;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id m124so18267957pgm.13
        for <yocto@lists.yoctoproject.org>; Wed, 12 May 2021 07:20:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=993l4De8Zd00/QjY/m7FkOxMQ1ertc3c58VTufy3RdA=;
        b=YZKwnAu5j7OaxG3gEqTMbUVamZXzgBCMAKKIaeXWBPnuzojtjqNLL/I5LuNKkR4Urx
         dXHC1SJJPRuBKFwNo3I1vYb/8OJHZbWS6wlupCjicG1LdcaJpK6554C8ps29QXS0zuOz
         RZjyAL/MQeG7RMwxelq5WVPSrLn5ZomRAz+EmYPQUvbv4VUOEXYL1tOqg3yKagBnYIpi
         yeHPL51qEsPUQ4X0+R1i2am0XJZWGuZPfp3NzKaGILDnOFUdLhPDGJdzBBF4wrwR5ef5
         XEHmPhiOdAOhINN+vfD+EbO7EykSO8oTPXP1jTBNaWsElrANNO/yIaGsjUTqMfb7yl28
         NwcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=993l4De8Zd00/QjY/m7FkOxMQ1ertc3c58VTufy3RdA=;
        b=rS9UNAluiJPcEErp/obLa19KE9ySefjmdsh3VBW9QCi+OgYeh/iOdgl1KU+Oz/lUFc
         /pI4bbHrCe2BQJ04x0WUaFUCAroDC8MiKxCZCQq3zePxjE2rBFYNJCuMdfhJdQUMueO5
         BQVuMYYGlN4/xxQXG3ss0HpFUrRgvSCEQuVcoFRkn9ELMyaxeZAatGOEK4Clpp3zKz5d
         ZffCPTrjih/b8OxhP1R673aTUgvkpNviM1n8Iq9Nr7pYQ97zZW8KaDT87reHs5/iGAqR
         4ugzx95/Y5v/bfK0xU7hhXsM9xjmkDA00b10KU+RGtFQwkVDDnRVtKWuMALni8hZtnUA
         vOuA==
X-Gm-Message-State: AOAM533xp1SiR4Voz5JNUTrlliUcrqTX0tj7iK10e78H4XTMTxw/itFi
	hv7khFvOH/gKs7BPOlvdndeKqEJsW32DBMhaEYc=
X-Google-Smtp-Source: ABdhPJyTqr6bSQ3pgTK4xN5UlcbU33+QtFfKh7Qh912pIWUSAbJbtKVvrN6JrN1keZGRQBDUD4rRE6ggdjWrdaKhz4s=
X-Received: by 2002:a05:6a00:1630:b029:2c0:a1eb:d77 with SMTP id
 e16-20020a056a001630b02902c0a1eb0d77mr15405717pfc.81.1620829247960; Wed, 12
 May 2021 07:20:47 -0700 (PDT)
MIME-Version: 1.0
References: <v3iM.1620820893433035646.BQdl@lists.yoctoproject.org>
In-Reply-To: <v3iM.1620820893433035646.BQdl@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Wed, 12 May 2021 16:20:36 +0200
Message-ID: <CAGAf8Ly_r-CoF9c+7OuSuZUb9wsFxsDdb28mEVmdw1jk9YMXtw@mail.gmail.com>
Subject: Re: [yocto] Yocto Zeus : facing error regarding hostapd #zeus
To: rohit jadhav <rohitbjadhav1@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000090f95905c222b7ba"

--00000000000090f95905c222b7ba
Content-Type: text/plain; charset="UTF-8"

> Log file in:
> /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/
> imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/
*log.do_rootfs.31340*

Could you, please, attach a log file?

Thank you,
Zoran
_______


On Wed, May 12, 2021 at 2:01 PM rohit jadhav <rohitbjadhav1@gmail.com>
wrote:

> Facing following issue :
> ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall scriptlets of
> ['hostapd'] have failed. If the intention is to defer them to first boot,
> then please place them into pkg_postinst_ontarget_${PN} ().
> Deferring to first boot via 'exit 1' is no longer supported.
> Details of the failure are in
> /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.
> ERROR: Logfile of failure stored in:
> /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.31340
> ERROR: Task
> (/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/sources/poky/meta/recipes-core/images/core-image-minimal.bb:do_rootfs)
> failed with exit code '1'
>
> Please guide me if anyone have any idea to resolve.
>
> Thanks in advance.
> 
>
>

--00000000000090f95905c222b7ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>&gt; Log file in:</div><div>&gt; /home/tel/imx_yocto_=
bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/</div><div>&gt; imx6ull14x14evk=
-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/</div><div><span style=
=3D"color:rgb(255,0,0)"><i><b>log.do_rootfs.31340</b></i></span><span clas=
s=3D""><br></span></div><div><br></div><div>Could you, please, attach a log=
 file?</div><div><br></div><div>Thank you,</div><div>Zoran</div><div>______=
_<br></div></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, May 12, 2021 at 2:01 PM rohit jadhav &lt;<a href=
=3D"mailto:rohitbjadhav1@gmail.com">rohitbjadhav1@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Facing followin=
g issue :<br>ERROR: core-image-minimal-1.0-r0 do_rootfs: Postinstall script=
lets of [&#39;hostapd&#39;] have failed. If the intention is to defer them =
to first boot,<br>then please place them into pkg_postinst_ontarget_${PN} (=
).<br>Deferring to first boot via &#39;exit 1&#39; is no longer supported.<=
br>Details of the failure are in /home/tel/imx_yocto_bsp_Zeus/Yocto_setup/b=
uild_imx6ull/tmp/work/imx6ull14x14evk-poky-linux-gnueabi/core-image-minimal=
/1.0-r0/temp/log.do_rootfs.<br>ERROR: Logfile of failure stored in: /home/t=
el/imx_yocto_bsp_Zeus/Yocto_setup/build_imx6ull/tmp/work/imx6ull14x14evk-po=
ky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.31340<br>ERRO=
R: Task (/home/tel/imx_yocto_bsp_Zeus/Yocto_setup/sources/poky/meta/recipes=
-core/images/core-image-minimal.bb:do_rootfs) failed with exit code &#39;1&=
#39;<br><br>Please guide me if anyone have any idea to resolve.<br><br>Than=
ks in advance.
<br>
<br>
<br>
</blockquote></div>

--00000000000090f95905c222b7ba--
