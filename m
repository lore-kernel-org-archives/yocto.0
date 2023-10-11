Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0EB5ACD6E5D
	for <webhook@archiver.kernel.org>; Wed, 11 Oct 2023 11:42:01 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.14384.1697024514547344283
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Oct 2023 04:41:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aFpcSN+y;
 spf=pass (domain: gmail.com, ip: 209.85.208.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2c038a1e2e6so80839701fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 04:41:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697024513; x=1697629313; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+tXr+8Xa+2/NMxEUyrW/AqG4ECIGID6AnCvB5ICmf98=;
        b=aFpcSN+y7H5S6qebvvJv+Hhc3GsXruruQEoChwptP0XJ4h0TlGKDhZvXTJ03MC7i6Z
         OXuEM5hFazpW1qT223iZ0Jrsc+UCprJryRwS/cKLmDKRZ9oZlZq44om72zilZ6OFHLO6
         74cXSTKjlTdCeBMtuHJXWj/lmFTr2ozgk7TjIyVIqcTYYlbf2gxRbpBNRkV+eq5//Mi5
         vnUvWTdJg/70khjlHVI0IlKvJIYnHEcSXkXULKPUAeNy+jsbxJm9YbVu421cKijbU4Z6
         HWxRxEXLa4lGFuopYpORTapGvxAIrQOcd/2MCyohS/YF6dskmiyt2sFHXlYwzqos96XQ
         cYCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697024513; x=1697629313;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+tXr+8Xa+2/NMxEUyrW/AqG4ECIGID6AnCvB5ICmf98=;
        b=h0tDoyvYtaPYaMC6xb3P+tHszbVkxLOvETMancihshRWGieTX2PFHF9h2Ptb8JhsGu
         s64gbp4N8edHhAC7Yu2Px1cCJ1U2pkQ+H0u0jZ/+ryREBNxQgnPFXIoFbAEYlNP3vNHZ
         FWE4/lzpbOTrqcP4MJQX4jBywVnfc5GE8TJ3QDYF4c5bzokabU17wVVITKlmBB88U65s
         ztdPrKoU/B8QP6bxjZa3wuP7gq5RtmCFKWMd0mv8LRP4xJYIF4CePGHPb8QIoA77//l8
         IO2jFA+Vu0tELoYlxN49lWPhYJyEdeg9g4cJsKja3cNGv3fJkUTnvH7jcrcsabS8ixiI
         ugMw==
X-Gm-Message-State: AOJu0YwDjCHqReoZFuu/iz0zseZaz7xI2LCP31WU6M8zURa+efZHZJ45
	ladmvmzdjuwnPZXLXNKEK4cjqg5uNKj1rIIkHl4=
X-Google-Smtp-Source: AGHT+IEmW5mu4eQsP08QB0SBj1BKwmecw93s2/tmVnqgoEGlGyR1sabSORShMxHQcrjEn8+XuKcA72fpmbXuRnEcSAw=
X-Received: by 2002:a2e:7d03:0:b0:2b9:f13b:6139 with SMTP id
 y3-20020a2e7d03000000b002b9f13b6139mr19899941ljc.20.1697024512341; Wed, 11
 Oct 2023 04:41:52 -0700 (PDT)
MIME-Version: 1.0
References: <20231010144244.3810965-1-david.pierret@smile.fr>
In-Reply-To: <20231010144244.3810965-1-david.pierret@smile.fr>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 11 Oct 2023 13:41:41 +0200
Message-ID: <CANNYZj9tiUWxzOkUXOAixdC4VZ_vsvGDY4QLk58-k2h=s-Ec9A@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder-helper][PATCH] AUH: Add Openembedded
 auto-update-helper conf and run
To: David Pierret <david.pierret@smile.fr>, 
	Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Yoann Congal <yoann.congal@smile.fr>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003bbc3106076f4ff3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Oct 2023 11:42:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61321

--0000000000003bbc3106076f4ff3
Content-Type: text/plain; charset="UTF-8"

Please hold this until auch itself is improved to support the changing
parts as command line options (I requested that in a separate review), then
we can avoid sed and separate copies of scripts (I would like to have only
single setup-auh and run-auh).

Alex

On Tue 10. Oct 2023 at 16.42, David Pierret <david.pierret@smile.fr> wrote:

> - Add setup and run script openembedded specific
> - Add upgrade-helper.in config template
>
> auto-upgrade-helper script accept configurations to specify the layer
> to be analysed. The .in file is modified by sed command to generate
> the .conf file that match the meta to analyze.
>
> Signed-off-by: David Pierret <david.pierret@smile.fr>
> Reviewed-by: Yoann Congal <yoann.congal@smile.fr>
> ---
>  scripts/auh-config/upgrade-helper-oe.in | 40 +++++++++++++++++++++
>  scripts/run-auh-oe                      | 46 +++++++++++++++++++++++++
>  scripts/setup-auh-oe                    | 34 ++++++++++++++++++
>  3 files changed, 120 insertions(+)
>  create mode 100644 scripts/auh-config/upgrade-helper-oe.in
>  create mode 100755 scripts/run-auh-oe
>  create mode 100755 scripts/setup-auh-oe
>
> diff --git a/scripts/auh-config/upgrade-helper-oe.in b/scripts/auh-config/
> upgrade-helper-oe.in
> new file mode 100644
> index 0000000..79467e5
> --- /dev/null
> +++ b/scripts/auh-config/upgrade-helper-oe.in
> @@ -0,0 +1,40 @@
> +[maintainer_override]
> +# mails for recipe upgrades will go to john.doe instead of jane.doe, etc
> +#ross.burton@intel.com=anibal.limon@linux.intel.com
> +
> +[settings]
> +# recipes in blacklist will be skipped
> +blacklist=linux-libc-headers linux-yocto alsa-utils-scripts
> build-appliance-image
> +#blacklist=python python3 glibc gcc linux-libc-headers linux-yocto-rt
> linux-yocto linux-yocto-dev linux-yocto-tiny qt4-x11-free qt4-embedded
> qt4-x11-free qt4e-demo-image gnome-common gnome-desktop3
> gnome-desktop-testing adt-installer build-appliance-image
> +# only recipes belonging to maintainers in whitelist will be attempted
> +#maintainers_whitelist=anibal.limon@linux.intel.com
> +# SMTP server
> +smtp=localhost:25
> +# from whom should the mails arrive
> +from=auh@yoctoproject.org
> +# who should get the status mail with statistics, at the end
> +status_recipients=openembedded-core@lists.openembedded.org
> +# who should be CCd with upgrade emails
> +cc_recipients=openembedded-core@lists.openembedded.org
> +# clean sstate directory before upgrading
> +#clean_sstate=yes
> +# clean tmp directory before upgrading
> +#clean_tmp=yes
> +# machines to test build with
> +#machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
> +#machines=qemux86
> +
> +buildhistory=yes
> +#testimage=yes
> +#testimage_name=core-image-minimal
> +
> +#workdir=/home/auh/work/
> +publish_work_url=https://autobuilder.yocto.io/pub/auh
> +
> +commit_revert_policy=all
> +
> +layer_mode=yes
> +layer_name={meta}
> +layer_dir={layerdir}
> +layer_machines={machine}
> +
> diff --git a/scripts/run-auh-oe b/scripts/run-auh-oe
> new file mode 100755
> index 0000000..24d3a51
> --- /dev/null
> +++ b/scripts/run-auh-oe
> @@ -0,0 +1,46 @@
> +#!/bin/bash
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Run Auto Upgrade Helper in a directory set up by setup_auh.
> +#
> +# Called with $1 - the directory where the setup was created
> +
> +if [ -z $1 ]; then
> +  echo "Use: $0 auh_setup_dir [publish_dir]"
> +  exit 1
> +fi
> +
> +full_dir=$(readlink -e $1)
> +
> +auh_dir=$full_dir/auto-upgrade-helper
> +poky_dir=$full_dir/poky
> +openembedded_dir=$full_dir/meta-openembedded
> +build_dir=$full_dir/build
> +sstate_dir=$full_dir/build/sstate-cache
> +
> +meta_list="${openembedded_dir}/meta-*"
> +machine_list="qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_musl"
> +
> +pushd $openembedded_dir || exit 1
> +
> +# Base the upgrades on meta_openembedded master
> +git fetch origin
> +git checkout -B tmp-auh-upgrades origin/main
> +
> +source $poky_dir/oe-init-build-env $build_dir
> +for d in $meta_list; do
> +  meta=$(basename "$d")
> +  sed -E "s|\{meta\}|$meta| ; \
> +          s|\{layerdir\}|$openembedded_dir/$meta| ; \
> +          s|\{machine\}|$machine_list|" \
> +          $build_dir/upgrade-helper/upgrade-helper-oe.in \
> +          > $build_dir/upgrade-helper/upgrade-helper.conf
> +  $auh_dir/upgrade-helper.py -e all
> +done
> +
> +if [ -n $2 ]; then
> +  cp -rf $build_dir/upgrade-helper/* $2
> +fi
> +
> +popd
> diff --git a/scripts/setup-auh-oe b/scripts/setup-auh-oe
> new file mode 100755
> index 0000000..e5cdf9d
> --- /dev/null
> +++ b/scripts/setup-auh-oe
> @@ -0,0 +1,34 @@
> +#!/bin/bash
> +#
> +# SPDX-License-Identifier: GPL-2.0-only
> +#
> +# Initialize Auto Upgrade Helper in a directory.
> +#
> +# Called with $1 - the directory to place the setup
> +CONFIG_DIR=`dirname $0`/auh-config
> +
> +if [ -z $1 ]; then
> +  echo "Use: $0 target_dir"
> +  exit 1
> +fi
> +
> +mkdir -p $1
> +pushd $1
> +
> +git clone git://git.yoctoproject.org/poky
> +pushd poky
> +git config user.email auh@yoctoproject.org
> +git config user.name "Auto Upgrade Helper"
> +popd
> +git clone git://git.openembedded.org/meta-openembedded
> +pushd meta-openembedded
> +git config user.email auh@yoctoproject.org
> +git config user.name "Auto Upgrade Helper"
> +popd
> +git clone git://git.yoctoproject.org/auto-upgrade-helper
> +source poky/oe-init-build-env build
> +mkdir -p upgrade-helper
> +popd
> +
> +cp $CONFIG_DIR/upgrade-helper-oe.in $1/build/upgrade-helper
> +cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
> --
> 2.39.2
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61305):
> https://lists.yoctoproject.org/g/yocto/message/61305
> Mute This Topic: https://lists.yoctoproject.org/mt/101876421/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000003bbc3106076f4ff3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Please hold this until auch itself is improved to su=
pport the changing parts as command line options (I requested that in a sep=
arate review), then we can avoid sed and separate copies of scripts (I woul=
d like to have only single setup-auh and run-auh).</div><div dir=3D"auto"><=
br></div><div dir=3D"auto">Alex</div></div><div><div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue 10. Oct 2023 at 16.42=
, David Pierret &lt;<a href=3D"mailto:david.pierret@smile.fr" target=3D"_bl=
ank">david.pierret@smile.fr</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-l=
eft-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">- Add =
setup and run script openembedded specific<br>
- Add <a href=3D"http://upgrade-helper.in" rel=3D"noreferrer" target=3D"_bl=
ank">upgrade-helper.in</a> config template<br>
<br>
auto-upgrade-helper script accept configurations to specify the layer<br>
to be analysed. The .in file is modified by sed command to generate<br>
the .conf file that match the meta to analyze.<br>
<br>
Signed-off-by: David Pierret &lt;<a href=3D"mailto:david.pierret@smile.fr" =
target=3D"_blank">david.pierret@smile.fr</a>&gt;<br>
Reviewed-by: Yoann Congal &lt;<a href=3D"mailto:yoann.congal@smile.fr" targ=
et=3D"_blank">yoann.congal@smile.fr</a>&gt;<br>
---<br>
=C2=A0scripts/auh-config/<a href=3D"http://upgrade-helper-oe.in" rel=3D"nor=
eferrer" target=3D"_blank">upgrade-helper-oe.in</a> | 40 ++++++++++++++++++=
+++<br>
=C2=A0scripts/run-auh-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 46 +++++++++++++++++++++++++<br>
=C2=A0scripts/setup-auh-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 | 34 ++++++++++++++++++<br>
=C2=A03 files changed, 120 insertions(+)<br>
=C2=A0create mode 100644 scripts/auh-config/<a href=3D"http://upgrade-helpe=
r-oe.in" rel=3D"noreferrer" target=3D"_blank">upgrade-helper-oe.in</a><br>
=C2=A0create mode 100755 scripts/run-auh-oe<br>
=C2=A0create mode 100755 scripts/setup-auh-oe<br>
<br>
diff --git a/scripts/auh-config/<a href=3D"http://upgrade-helper-oe.in" rel=
=3D"noreferrer" target=3D"_blank">upgrade-helper-oe.in</a> b/scripts/auh-co=
nfig/<a href=3D"http://upgrade-helper-oe.in" rel=3D"noreferrer" target=3D"_=
blank">upgrade-helper-oe.in</a><br>
new file mode 100644<br>
index 0000000..79467e5<br>
--- /dev/null<br>
+++ b/scripts/auh-config/<a href=3D"http://upgrade-helper-oe.in" rel=3D"nor=
eferrer" target=3D"_blank">upgrade-helper-oe.in</a><br>
@@ -0,0 +1,40 @@<br>
+[maintainer_override]<br>
+# mails for recipe upgrades will go to john.doe instead of jane.doe, etc<b=
r>
+#<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@in=
tel.com</a>=3D<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_bl=
ank">anibal.limon@linux.intel.com</a><br>
+<br>
+[settings]<br>
+# recipes in blacklist will be skipped<br>
+blacklist=3Dlinux-libc-headers linux-yocto alsa-utils-scripts build-applia=
nce-image<br>
+#blacklist=3Dpython python3 glibc gcc linux-libc-headers linux-yocto-rt li=
nux-yocto linux-yocto-dev linux-yocto-tiny qt4-x11-free qt4-embedded qt4-x1=
1-free qt4e-demo-image gnome-common gnome-desktop3 gnome-desktop-testing ad=
t-installer build-appliance-image<br>
+# only recipes belonging to maintainers in whitelist will be attempted<br>
+#maintainers_whitelist=3D<a href=3D"mailto:anibal.limon@linux.intel.com" t=
arget=3D"_blank">anibal.limon@linux.intel.com</a><br>
+# SMTP server<br>
+smtp=3Dlocalhost:25<br>
+# from whom should the mails arrive<br>
+from=3D<a href=3D"mailto:auh@yoctoproject.org" target=3D"_blank">auh@yocto=
project.org</a><br>
+# who should get the status mail with statistics, at the end<br>
+status_recipients=3D<a href=3D"mailto:openembedded-core@lists.openembedded=
.org" target=3D"_blank">openembedded-core@lists.openembedded.org</a><br>
+# who should be CCd with upgrade emails<br>
+cc_recipients=3D<a href=3D"mailto:openembedded-core@lists.openembedded.org=
" target=3D"_blank">openembedded-core@lists.openembedded.org</a><br>
+# clean sstate directory before upgrading<br>
+#clean_sstate=3Dyes<br>
+# clean tmp directory before upgrading<br>
+#clean_tmp=3Dyes<br>
+# machines to test build with<br>
+#machines=3Dqemux86 qemux86-64 qemuarm qemumips qemuppc<br>
+#machines=3Dqemux86<br>
+<br>
+buildhistory=3Dyes<br>
+#testimage=3Dyes<br>
+#testimage_name=3Dcore-image-minimal<br>
+<br>
+#workdir=3D/home/auh/work/<br>
+publish_work_url=3D<a href=3D"https://autobuilder.yocto.io/pub/auh" rel=3D=
"noreferrer" target=3D"_blank">https://autobuilder.yocto.io/pub/auh</a><br>
+<br>
+commit_revert_policy=3Dall<br>
+<br>
+layer_mode=3Dyes<br>
+layer_name=3D{meta}<br>
+layer_dir=3D{layerdir}<br>
+layer_machines=3D{machine}<br>
+<br>
diff --git a/scripts/run-auh-oe b/scripts/run-auh-oe<br>
new file mode 100755<br>
index 0000000..24d3a51<br>
--- /dev/null<br>
+++ b/scripts/run-auh-oe<br>
@@ -0,0 +1,46 @@<br>
+#!/bin/bash<br>
+#<br>
+# SPDX-License-Identifier: GPL-2.0-only<br>
+#<br>
+# Run Auto Upgrade Helper in a directory set up by setup_auh.<br>
+#<br>
+# Called with $1 - the directory where the setup was created<br>
+<br>
+if [ -z $1 ]; then<br>
+=C2=A0 echo &quot;Use: $0 auh_setup_dir [publish_dir]&quot;<br>
+=C2=A0 exit 1<br>
+fi<br>
+<br>
+full_dir=3D$(readlink -e $1)<br>
+<br>
+auh_dir=3D$full_dir/auto-upgrade-helper<br>
+poky_dir=3D$full_dir/poky<br>
+openembedded_dir=3D$full_dir/meta-openembedded<br>
+build_dir=3D$full_dir/build<br>
+sstate_dir=3D$full_dir/build/sstate-cache<br>
+<br>
+meta_list=3D&quot;${openembedded_dir}/meta-*&quot;<br>
+machine_list=3D&quot;qemux86 qemux86-64 qemuarm qemumips qemuppc qemux86_m=
usl&quot;<br>
+<br>
+pushd $openembedded_dir || exit 1<br>
+<br>
+# Base the upgrades on meta_openembedded master<br>
+git fetch origin<br>
+git checkout -B tmp-auh-upgrades origin/main<br>
+<br>
+source $poky_dir/oe-init-build-env $build_dir<br>
+for d in $meta_list; do<br>
+=C2=A0 meta=3D$(basename &quot;$d&quot;)<br>
+=C2=A0 sed -E &quot;s|\{meta\}|$meta| ; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s|\{layerdir\}|$openembedded_dir/$meta|=
 ; \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s|\{machine\}|$machine_list|&quot; \<br=
>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 $build_dir/upgrade-helper/<a href=3D"ht=
tp://upgrade-helper-oe.in" rel=3D"noreferrer" target=3D"_blank">upgrade-hel=
per-oe.in</a> \<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 &gt; $build_dir/upgrade-helper/upgrade-=
helper.conf<br>
+=C2=A0 $auh_dir/upgrade-helper.py -e all<br>
+done<br>
+<br>
+if [ -n $2 ]; then<br>
+=C2=A0 cp -rf $build_dir/upgrade-helper/* $2<br>
+fi<br>
+<br>
+popd<br>
diff --git a/scripts/setup-auh-oe b/scripts/setup-auh-oe<br>
new file mode 100755<br>
index 0000000..e5cdf9d<br>
--- /dev/null<br>
+++ b/scripts/setup-auh-oe<br>
@@ -0,0 +1,34 @@<br>
+#!/bin/bash<br>
+#<br>
+# SPDX-License-Identifier: GPL-2.0-only<br>
+#<br>
+# Initialize Auto Upgrade Helper in a directory.<br>
+#<br>
+# Called with $1 - the directory to place the setup<br>
+CONFIG_DIR=3D`dirname $0`/auh-config<br>
+<br>
+if [ -z $1 ]; then<br>
+=C2=A0 echo &quot;Use: $0 target_dir&quot;<br>
+=C2=A0 exit 1<br>
+fi<br>
+<br>
+mkdir -p $1<br>
+pushd $1<br>
+<br>
+git clone git://<a href=3D"http://git.yoctoproject.org/poky" rel=3D"norefe=
rrer" target=3D"_blank">git.yoctoproject.org/poky</a><br>
+pushd poky<br>
+git config user.email <a href=3D"mailto:auh@yoctoproject.org" target=3D"_b=
lank">auh@yoctoproject.org</a><br>
+git config <a href=3D"http://user.name" rel=3D"noreferrer" target=3D"_blan=
k">user.name</a> &quot;Auto Upgrade Helper&quot;<br>
+popd<br>
+git clone git://<a href=3D"http://git.openembedded.org/meta-openembedded" =
rel=3D"noreferrer" target=3D"_blank">git.openembedded.org/meta-openembedded=
</a><br>
+pushd meta-openembedded<br>
+git config user.email <a href=3D"mailto:auh@yoctoproject.org" target=3D"_b=
lank">auh@yoctoproject.org</a><br>
+git config <a href=3D"http://user.name" rel=3D"noreferrer" target=3D"_blan=
k">user.name</a> &quot;Auto Upgrade Helper&quot;<br>
+popd<br>
+git clone git://<a href=3D"http://git.yoctoproject.org/auto-upgrade-helper=
" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/auto-upgrade-he=
lper</a><br>
+source poky/oe-init-build-env build<br>
+mkdir -p upgrade-helper<br>
+popd<br>
+<br>
+cp $CONFIG_DIR/<a href=3D"http://upgrade-helper-oe.in" rel=3D"noreferrer" =
target=3D"_blank">upgrade-helper-oe.in</a> $1/build/upgrade-helper<br>
+cat $CONFIG_DIR/local.conf.append &gt;&gt; $1/build/conf/local.conf<br>
-- <br>
2.39.2<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61305): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61305" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61305</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101876421/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101876421/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>
</div>

--0000000000003bbc3106076f4ff3--

