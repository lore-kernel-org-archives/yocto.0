Received: from mail-vs1-f67.google.com (mail-vs1-f67.google.com [209.85.217.67])
 by mx.groups.io with SMTP id smtpd.web11.31867.1597615087475401168
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Aug 2020 14:58:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MhPU/HVb;
 spf=pass (domain: gmail.com, ip: 209.85.217.67, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f67.google.com with SMTP id o184so7330198vsc.0
        for <yocto@lists.yoctoproject.org>; Sun, 16 Aug 2020 14:58:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=cgFbUU6Gts7CQBijtHd2ScAbzo+Z0IiKyfS7++fRqj4=;
        b=MhPU/HVb/1K8dN2vPKmuhzffe27rX02NsYiaMXlkvPPBKzKzCuAhRne3bjvDS8HZyy
         t7c7tQ10u9tMRTGIAlVrq4ZpWQrrmMvYjcbdKQTP8VP8qYpQGsTZzXBNEqsZCwDuZ8Gs
         fJmkfmT9EfAij6l1Y5BPCcfIHp6yQv8gsG8XVdIa1i7IFbvp17pRPdoFex5Y44f9071/
         qJO9ZE9lBA/nLAgtuYlMxvoOPwAESAX5wihzzSzEVav9JtnZr4HApZ8YMnz2jLEG2XAO
         hW0Kr+Iat59K4G7esmCwGfXGzqSgcPJiTYyKrKXWNagYPYBVcZLmB4y1GDuAGu2FHUQW
         oeyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=cgFbUU6Gts7CQBijtHd2ScAbzo+Z0IiKyfS7++fRqj4=;
        b=adfnKw18U2dsI8kljcY+jl5SW9QHqosFfoc+W7GfkJ+s7/e5mluQFp0U2Bd2OvGW/w
         5giTHtkMIeY/sM9pNKaT9CK/TTj/YLuX3cNlqzTXjZMgWTGj5eSd4LNp8goEyYTmAFJU
         EAoiC3Xc8CzFAg+VdBvYG6cVU1g5+M/FXB3O58jl/vLR3SUajiVvYwkjY00UhUTPxsDf
         keyG5w8UuJxXKxVMWhjM6KSYfouAUPNJ7CHa8+k7WyWDIBpKX4iDFmuMXmP8pv/WrkI4
         500S8+OGsch457QQbvGkAGfOHih5cuP4vj2PrzWZoLtMnlSYmlUGBaSjPRXNEqGGMZyv
         4ufg==
X-Gm-Message-State: AOAM533ucuOee05D1phlBcuBmvkP4ao38kjXooGixAPLC+4kV3R9eneH
	IJhBAdif4d5BHdB332hrzSLUxb6gSH3INalbICQ=
X-Google-Smtp-Source: ABdhPJw7x+w+YdtKAipI+ETV+ls4BCUG6YZew4/XJYACj9EiD2HluoE5bl0/1NGaJz49RYH66vQPAqj4HbtolLUhido=
X-Received: by 2002:a67:f550:: with SMTP id z16mr6590281vsn.94.1597615086559;
 Sun, 16 Aug 2020 14:58:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200816213935.7733-1-foss@0leil.net> <20200816213935.7733-5-foss@0leil.net>
In-Reply-To: <20200816213935.7733-5-foss@0leil.net>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 16 Aug 2020 23:57:54 +0200
Message-ID: <CANNYZj9Yiwb8D0Dyy_OW2j5K2OhWyXdp7KVL8y1Vw9ZALB29zQ@mail.gmail.com>
Subject: Re: [yocto] [auh] [PATCH RESEND 5/5] consistent naming for upgradehelper.py
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b8e9be05ad05bfed"

--000000000000b8e9be05ad05bfed
Content-Type: text/plain; charset="UTF-8"

Thanks, I have added this to AUH repo too now; I assume there are no
changes in the re-sent patchset otherwise?

Alex

On Sun, 16 Aug 2020 at 23:39, Quentin Schulz <foss@0leil.net> wrote:

> Rename upgradehelper.py into upgrade-helper.py since the conf file and the
> git
> repo are named with a dash to separate "upgrade" and "helper".
>
> The documentation in the README and upgradehelper.py were also already
> using
> upgrade-helper.py instead of upgradehelper.py.
>
> For all those reasons, let's be consistent and rename the python script.
>
> Signed-off-by: Quentin Schulz <foss@0leil.net>
> ---
>  - RESEND because I was not subscribed to the ML with this address already,
>
>  upgradehelper.py => upgrade-helper.py | 0
>  weeklyjob.sh                          | 2 +-
>  2 files changed, 1 insertion(+), 1 deletion(-)
>  rename upgradehelper.py => upgrade-helper.py (100%)
>
> diff --git a/upgradehelper.py b/upgrade-helper.py
> similarity index 100%
> rename from upgradehelper.py
> rename to upgrade-helper.py
> diff --git a/weeklyjob.sh b/weeklyjob.sh
> index 412685e..94598a2 100755
> --- a/weeklyjob.sh
> +++ b/weeklyjob.sh
> @@ -20,7 +20,7 @@ git fetch origin
>  git checkout -B tmp-auh-upgrades origin/master
>
>  source $poky_dir/oe-init-build-env $build_dir
> -$auh_dir/upgradehelper.py -e all
> +$auh_dir/upgrade-helper.py -e all
>
>  # clean up to avoid the disk filling up
>  rm -rf $build_dir/tmp/
> --
> 2.26.2
>
> 
>

--000000000000b8e9be05ad05bfed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Thanks, I have added this to AUH repo too now; I assu=
me there are no changes in the re-sent patchset otherwise?</div><div><br></=
div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr=
" class=3D"gmail_attr">On Sun, 16 Aug 2020 at 23:39, Quentin Schulz &lt;<a =
href=3D"mailto:foss@0leil.net">foss@0leil.net</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Rename upgradehelper.py into u=
pgrade-helper.py since the conf file and the git<br>
repo are named with a dash to separate &quot;upgrade&quot; and &quot;helpe=
r&quot;.<br>
<br>
The documentation in the README and upgradehelper.py were also already usi=
ng<br>
upgrade-helper.py instead of upgradehelper.py.<br>
<br>
For all those reasons, let&#39;s be consistent and rename the python scrip=
t.<br>
<br>
Signed-off-by: Quentin Schulz &lt;<a href=3D"mailto:foss@0leil.net" target=
=
=3D"_blank">foss@0leil.net</a>&gt;<br>
---<br>
=C2=A0- RESEND because I was not subscribed to the ML with this address al=
ready,<br>
<br>
=C2=A0upgradehelper.py =3D&gt; upgrade-helper.py | 0<br>
=C2=A0weeklyjob.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 2 +-<br>
=C2=A02 files changed, 1 insertion(+), 1 deletion(-)<br>
=C2=A0rename upgradehelper.py =3D&gt; upgrade-helper.py (100%)<br>
<br>
diff --git a/upgradehelper.py b/upgrade-helper.py<br>
similarity index 100%<br>
rename from upgradehelper.py<br>
rename to upgrade-helper.py<br>
diff --git a/weeklyjob.sh b/weeklyjob.sh<br>
index 412685e..94598a2 100755<br>
--- a/weeklyjob.sh<br>
+++ b/weeklyjob.sh<br>
@@ -20,7 +20,7 @@ git fetch origin<br>
=C2=A0git checkout -B tmp-auh-upgrades origin/master<br>
<br>
=C2=A0source $poky_dir/oe-init-build-env $build_dir<br>
-$auh_dir/upgradehelper.py -e all<br>
+$auh_dir/upgrade-helper.py -e all<br>
<br>
=C2=A0# clean up to avoid the disk filling up<br>
=C2=A0rm -rf $build_dir/tmp/<br>
-- <br>
2.26.2<br>
<br>
<br>
</blockquote></div>

--000000000000b8e9be05ad05bfed--
