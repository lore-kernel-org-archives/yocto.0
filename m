Received: from mail-ua1-f67.google.com (mail-ua1-f67.google.com [209.85.222.67])
 by mx.groups.io with SMTP id smtpd.web10.22431.1597577445888840481
 for <yocto@lists.yoctoproject.org>;
 Sun, 16 Aug 2020 04:30:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=paf/GUVD;
 spf=pass (domain: gmail.com, ip: 209.85.222.67, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f67.google.com with SMTP id g20so3928939uap.8
        for <yocto@lists.yoctoproject.org>; Sun, 16 Aug 2020 04:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KXjArVjzDQOGh/q/4b2yWlFYscnuvD44oWg7ccGQz20=;
        b=paf/GUVDveaebUomdLtCBKTv29Dzg6AcuuS0frGfYylvWo691KvqZ1pGfmiqygZWke
         n46NK+imDRNrG1CXG0MjDrcnQCTsDcoW1MK2o8ML7fi/UVDHxtKptmaMFCIYNrvdzUQ2
         vsoz64ZQ82mEZ75oaptsKs+mbM8jXpkQjigkP3Fn61PiB4Yf/3Lyd7qbjiNpzWXrMUnN
         78UaiLIJpZqnCBk30YsxtWsxHu1RyZxqUGdtqv2P0ZJeixYdUjaTCbng85m8qcNQB+1K
         /vmFnwS9zm/EI5oRttId08wRoj3gHaieHq7ze7i2DDFA8JIsQPyr/7PfrNGvNXj1CJVt
         EJsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KXjArVjzDQOGh/q/4b2yWlFYscnuvD44oWg7ccGQz20=;
        b=LwCAMvb6TEBLEiiNXwqgotvUOqjnMPM7XGQQAuFFrARSVurxb2QnLgaZCgZvtRMMUi
         QrYdEF5MCMH65qQCz070pl63vDGihWTLWT1rh9JOeBCW8A48XaGMsdwV/Mex5zT4X5BP
         PeMgCuUG9AJx62WwenQ/hEMKl2hR3+ixx+m+sqoktKj4an9CDYTxZLQUtAupSJ0ioj39
         fEcc29tMRLDAW3KtlGizXzW8x73Jn+/u7VcrhsdNknPUKtPwwQqbWvqAaUhsr+8Ar+ZP
         qT0bsLnTPmMgm2AYhRqVRjopYLFpcxpEreVudphaWYiIbevHuqIYxwy0fZDPKz5fO4lK
         3/8w==
X-Gm-Message-State: AOAM532s0Nf26pupEnBzv+I5Zsv4brGdxTero9YnW+cfTIbLguFwO2Qk
	rwXLT1WLhLo50FxC4QMMaNmbHJryc7LoM5oSX5Y=
X-Google-Smtp-Source: ABdhPJwQ1VlFxGd6zXiVxY+XRFaD5xStRAGW/47+AjGeEEMa5hFoaOrj6flhDUeTDKIcl/+Oh86a9U8UmpXyB0oSqiw=
X-Received: by 2002:a9f:3e8d:: with SMTP id x13mr5129257uai.22.1597577444991;
 Sun, 16 Aug 2020 04:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200815195452.138360-1-foss@0leil.net> <20200815195452.138360-5-foss@0leil.net>
In-Reply-To: <20200815195452.138360-5-foss@0leil.net>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Sun, 16 Aug 2020 13:30:33 +0200
Message-ID: <CANNYZj8CEQc4s+2d+=Cn=VO4NufM3maRkwBts=m4jsdvPkXRxg@mail.gmail.com>
Subject: Re: [auh] [PATCH 5/5] consistent naming for upgradehelper.py
To: Quentin Schulz <foss@0leil.net>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000001c281405acfcfc73"

--0000000000001c281405acfcfc73
Content-Type: text/plain; charset="UTF-8"

Can you please also send a patch to update
http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/scripts/run-auh#n25
?
Then I can take this patch.

I will add the first four patches now, thanks!

Alex

On Sat, 15 Aug 2020 at 21:55, Quentin Schulz <foss@0leil.net> wrote:

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

--0000000000001c281405acfcfc73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Can you please also send a patch to update <a href=3D=
"http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuilder-helper/tree/sc=
ripts/run-auh#n25">http://git.yoctoproject.org/cgit/cgit.cgi/yocto-autobuil=
der-helper/tree/scripts/run-auh#n25</a> ?</div><div>Then I can take this pa=
tch.<br></div><div><br></div><div>I will add the first four patches now, th=
anks!</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_=
quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 15 Aug 2020 at 21:55, =
Quentin Schulz &lt;<a href=3D"mailto:foss@0leil.net">foss@0leil.net</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Rename u=
pgradehelper.py into upgrade-helper.py since the conf file and the git<br>
repo are named with a dash to separate &quot;upgrade&quot; and &quot;helper=
&quot;.<br>
<br>
The documentation in the README and upgradehelper.py were also already usin=
g<br>
upgrade-helper.py instead of upgradehelper.py.<br>
<br>
For all those reasons, let&#39;s be consistent and rename the python script=
.<br>
<br>
Signed-off-by: Quentin Schulz &lt;<a href=3D"mailto:foss@0leil.net" target=
=3D"_blank">foss@0leil.net</a>&gt;<br>
---<br>
=C2=A0upgradehelper.py =3D&gt; upgrade-helper.py | 0<br>
=C2=A0weeklyjob.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
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
</blockquote></div>

--0000000000001c281405acfcfc73--
