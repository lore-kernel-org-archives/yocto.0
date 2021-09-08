Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com [209.85.221.169])
 by mx.groups.io with SMTP id smtpd.web12.7584.1631077994709188292
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 Sep 2021 22:13:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=jz9cPSLy;
 spf=pass (domain: gmail.com, ip: 209.85.221.169, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f169.google.com with SMTP id k124so349431vke.5
        for <yocto@lists.yoctoproject.org>; Tue, 07 Sep 2021 22:13:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q73glD186mUgslw6TFRCX/3AJue0PD6+Ytquv485eKg=;
        b=jz9cPSLyhXflRuNX3829bXTSpC76mS0Wu7lCqYJhS9YT9bSUDhq859l9h9ZqCdJ+D5
         vYbogYz8O83Ode5sPvjvc4qnncQrhLFJIexeQJo+atzhlLCuQ0mia30JOE/Dmgi7tQXS
         BWi694oWhdRbE2/JkEBaj1QgZKBj7o3sOSwkyIQgr+gEukFOjNSRKgTcVl+6bmzmjJB6
         l2Mn/xfPUQ4/WxBV8jebwr49sbaWe80MYBjmGERLZv9r1cSa02dDq6S2uX6Oh0yrjLPz
         Z/VSGLziABuOLoeSUcbVeArbKizMQvkGdgztoMSkQzu1264LWkr4VVkIgXpuiUtImF9P
         FuQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q73glD186mUgslw6TFRCX/3AJue0PD6+Ytquv485eKg=;
        b=Jmq5aM8JwV+xxUgqbxrZc7y2tD3/oGHY4+7a6hSHbo8yJDefZ0sk1CORBeSgNoMb2I
         oQRL1cs1eL8W6FeP6dP+5J0fQ3J5VlSutn6kMheyGdVmbCaM+qo8gah3svMBB/DaCZSY
         fZS9NJ1AziHDaMVoa+++CKRp06qCoBR2srDtMFolqegotRO9agg3eVYQdHM5uqJNEXS4
         fSWI4hfEC9HIWEph0SfxEEolDwIwUU5fxq+9FJaO148FfSwTv3H5ShOCVppDHIvVCxom
         PGENqVCtqly1YK61pkcm9gZqYG2OsjrWSsU3lAD855rkKyVFQ1ecJ+LBQTiHiUI/BDM+
         KMBg==
X-Gm-Message-State: AOAM530xDek6DHWUxhPoCzTdaTt5Y2/dyznKxGZz9H+Xzr1xM7YFVNnN
	SarOoPmBIvbEx/kWZRgDwasziw5xxPzWHj8RKL0=
X-Google-Smtp-Source: ABdhPJwgIOchFzolMF6EmIi/7O++uaFQ0f5eNaVF6AVYcZRkEcDVUGeAWzKl7ooSjE1PdO5aQRHDBkr1oMtnLLzbv4Y=
X-Received: by 2002:a1f:608e:: with SMTP id u136mr1013003vkb.15.1631077993791;
 Tue, 07 Sep 2021 22:13:13 -0700 (PDT)
MIME-Version: 1.0
References: <CAMKF1sqaUHdLOfeiFL7+7CN92wwWMermhSgjK5YXmfzUuGYRWQ@mail.gmail.com>
 <30732.1631076442697613961@lists.yoctoproject.org>
In-Reply-To: <30732.1631076442697613961@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Wed, 8 Sep 2021 07:13:02 +0200
Message-ID: <CANNYZj_0JxquV82oZxtyq3FrtghtxxZuNxEkia-1-DBY+Dyd_A@mail.gmail.com>
Subject: Re: [yocto] Building Yocto on AWS container getting ERROR: The postinstall intercept hook 'update_icon_cache' failed, #yocto
To: mail2uvijay@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006bc4e005cb74f049"

--0000000000006bc4e005cb74f049
Content-Type: text/plain; charset="UTF-8"

It's right there at the very end:
NOTE: Exit code 127. Output:
/home/wlsom/YoctoCode/poky/build-microchip/tmp/work/sama5d27_wlsom1_ek_sd-poky-linux-gnueabi/utec-mcdgrill-image/1.0-r0/intercept_scripts-7f1ca27092c337bb8d06dfe7837dad99a9fb3e5e5ff266e8ce34762c23025acb/update_icon_cache:
9:
/home/wlsom/YoctoCode/poky/build-microchip/tmp/work/sama5d27_wlsom1_ek_sd-poky-linux-gnueabi/utec-mcdgrill-image/1.0-r0/intercept_scripts-7f1ca27092c337bb8d06dfe7837dad99a9fb3e5e5ff266e8ce34762c23025acb/update_icon_cache:
/home/wlsom/YoctoCode/poky/build-microchip/tmp/work/sama5d27_wlsom1_ek_sd-poky-linux-gnueabi/utec-mcdgrill-image/1.0-r0/recipe-sysroot-native//gdk-pixbuf-2.0/gdk-pixbuf-query-loaders:
not found

This isn't easy to diagnose without having access to your build tree, but
you can build plain core-image-sato for example and check that the binary
does exist there and gets executed, and then untangle where the difference
come from.

Alex

On Wed, 8 Sept 2021 at 06:47, <mail2uvijay@gmail.com> wrote:

>
> Raj thanks for the response. Couldnt able to find error from the logs..
>
> Attached detailed logs..
> 
>
>

--0000000000006bc4e005cb74f049
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>It&#39;s right there at the very end:</div><div>NOTE:=
 Exit code 127. Output:<br>/home/wlsom/YoctoCode/poky/build-microchip/tmp/w=
ork/sama5d27_wlsom1_ek_sd-poky-linux-gnueabi/utec-mcdgrill-image/1.0-r0/int=
ercept_scripts-7f1ca27092c337bb8d06dfe7837dad99a9fb3e5e5ff266e8ce34762c2302=
5acb/update_icon_cache: 9: /home/wlsom/YoctoCode/poky/build-microchip/tmp/w=
ork/sama5d27_wlsom1_ek_sd-poky-linux-gnueabi/utec-mcdgrill-image/1.0-r0/int=
ercept_scripts-7f1ca27092c337bb8d06dfe7837dad99a9fb3e5e5ff266e8ce34762c2302=
5acb/update_icon_cache: /home/wlsom/YoctoCode/poky/build-microchip/tmp/work=
/sama5d27_wlsom1_ek_sd-poky-linux-gnueabi/utec-mcdgrill-image/1.0-r0/recipe=
-sysroot-native//gdk-pixbuf-2.0/gdk-pixbuf-query-loaders: not found</div><d=
iv><br></div><div>This isn&#39;t easy to diagnose without having access to =
your build tree, but you can build plain core-image-sato for example and ch=
eck that the binary does exist there and gets executed, and then untangle w=
here the difference come from.</div><div><br></div><div>Alex<br></div></div=
><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On We=
d, 8 Sept 2021 at 06:47, &lt;<a href=3D"mailto:mail2uvijay@gmail.com">mail2=
uvijay@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex"><br>Raj thanks for the response. Couldnt able to find error=
 from the logs..<br><br>Attached detailed logs..
<br>
<br>
<br>
</blockquote></div>

--0000000000006bc4e005cb74f049--
