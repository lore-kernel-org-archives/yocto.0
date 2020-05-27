Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
 by mx.groups.io with SMTP id smtpd.web10.3244.1590545953452479473
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 May 2020 19:19:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=onDDg5e3;
 spf=pass (domain: linaro.org, ip: 209.85.221.51, mailfrom: anibal.limon@linaro.org)
Received: by mail-wr1-f51.google.com with SMTP id t18so8388211wru.6
        for <yocto@lists.yoctoproject.org>; Tue, 26 May 2020 19:19:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BF0mloJItPgpAatT5MKOt+zCB6Mc0qvUhwOtY8C+/Gg=;
        b=onDDg5e3O0+8Lg3dArgdXtvSifJS0RiyU3L+YEUOXdO+Y7Dm9/SngXxRxqVkkDM2x3
         M75cPE+ak61mTZwiJARML+MJZDHbu1Bc3LwzrxHO0sss2mrLRLkFk0SC1CtMQUrpiK5z
         CMDWGs1GJhiNqYmlON3ObyvpAkbPNh6DShTGDLZze8z5RxxeobkkgZmaoZVOeProFwGS
         hzbGycweW0hdOvsE64T5KINCHYp5uPh+REUuoSHHNg3sUAgM1FbjH/yRuYMD4V973ubG
         vCncJaD1nqfHasVdcKcFAMgPU5gNOqpyugO4SVgMWsthq3nD+NcvSs/hEzBoHW8oXqyw
         CCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BF0mloJItPgpAatT5MKOt+zCB6Mc0qvUhwOtY8C+/Gg=;
        b=ML1uncZQo7qFIyID/tbDkumz18jSG/1AuP1JyLvuHXnNmo4nanl3tTG0VaTMX2nMEa
         3JfeX3bIG/EqIeob4BhwqOOHD0bfchMzrue5+G/+v9CLpI8x5foJLpJBJLFpeHEk4AZP
         AyvKdEqaLvliGpbQCanQ/PmLjt5QzPAKxtgxdEHUQ0kaAWZtASwIQGh8H9V8syDPmwV+
         NmVXRHrE8ZESb4hw/AJDWYiB4wMwRFQ1pW2ivydn0rH9uMbTMfhyHx8czIsBm9gaNkW/
         Eg02SdsDNX5sydulf5/gwx7tzy6L0nH080SgKaAr4A4ciOT7v3s/OO86q3TxqIsxb8KD
         5A9A==
X-Gm-Message-State: AOAM5318k+ZO7lwHTisFe//Z8sUwm7qVSIEYl1UsBg1wQoebo4OZi2+s
	I5ytIUC7iDX/uW4EVeKvS51avFMAE70dnVJ1nrMNhQ==
X-Google-Smtp-Source: ABdhPJwpeAOF0rcTQw572DUvdSVm8uCwkMDrWDYKqmlNRdmA6Gy3/C0hpUcmna3lyxG8XoMDjNSdOZmMgvKc46bjvz4=
X-Received: by 2002:adf:e68a:: with SMTP id r10mr7529685wrm.384.1590545951909;
 Tue, 26 May 2020 19:19:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200517152109.23350-1-alex.kanavin@gmail.com> <CAP71WjyMG4-DzrmvkoE8jC+Lpm96Xj-qB17H3w+QzA23PBocew@mail.gmail.com>
In-Reply-To: <CAP71WjyMG4-DzrmvkoE8jC+Lpm96Xj-qB17H3w+QzA23PBocew@mail.gmail.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Tue, 26 May 2020 21:19:01 -0500
Message-ID: <CA+_AqitPQ_b=nTQTNYpiUZp6tG8WkiQoLQ8udYh9ZeTotge05Q@mail.gmail.com>
Subject: Re: [yocto] [PATCH yocto-autobuilder-helper] scripts: add a pair of scripts to set up and run Auto Upgrade Helper
To: Alexander Kanavin <alex.kanavin@gmail.com>, Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000767ddd05a697d66e"

--000000000000767ddd05a697d66e
Content-Type: text/plain; charset="UTF-8"

On Mon, 18 May 2020 at 02:03, Nicolas Dechesne <nicolas.dechesne@linaro.org>
wrote:

>
>
> On Sun, May 17, 2020 at 5:21 PM Alexander Kanavin <alex.kanavin@gmail.com>
> wrote:
>
>> This allows automating its setup and execution on all autobuilder worker
>> machines;
>> previously there was a static setup on a dedicated machine, which wasn't
>> great from maintenance perspective.
>>
>> To use:
>>
>> scripts/setup-auh target_dir
>> scripts/run-auh target_dir
>>
>> (run-auh can be run several times in a directory that
>> was previously set up)
>>
>> Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
>> ---
>>  scripts/auh-config/local.conf.append   |  3 +++
>>  scripts/auh-config/upgrade-helper.conf | 33 ++++++++++++++++++++++++++
>>  scripts/run-auh                        | 32 +++++++++++++++++++++++++
>>  scripts/setup-auh                      | 26 ++++++++++++++++++++
>>  4 files changed, 94 insertions(+)
>>  create mode 100644 scripts/auh-config/local.conf.append
>>  create mode 100644 scripts/auh-config/upgrade-helper.conf
>>  create mode 100755 scripts/run-auh
>>  create mode 100755 scripts/setup-auh
>>
>> diff --git a/scripts/auh-config/local.conf.append
>> b/scripts/auh-config/local.conf.append
>> new file mode 100644
>> index 0000000..9628737
>> --- /dev/null
>> +++ b/scripts/auh-config/local.conf.append
>> @@ -0,0 +1,3 @@
>> +
>> +INHERIT += "buildhistory"
>> +LICENSE_FLAGS_WHITELIST = "commercial"
>> diff --git a/scripts/auh-config/upgrade-helper.conf
>> b/scripts/auh-config/upgrade-helper.conf
>> new file mode 100644
>> index 0000000..fbf5d8a
>> --- /dev/null
>> +++ b/scripts/auh-config/upgrade-helper.conf
>> @@ -0,0 +1,33 @@
>> +[maintainer_override]
>> +# mails for recipe upgrades will go to john.doe instead of jane.doe, etc
>> +#ross.burton@intel.com=anibal.limon@linux.intel.com
>
>
> unrelated.. but I just spotted this ^. I am cc'ing Anibal new email
> address. it's in a few other places.
>

Right, Looks good to me since Alexander cleaned-up the AUH after some
tinfoil improvements, he is the new maintainer :).

Cheers,
Anibal


>
>
>>
>> +
>> +[settings]
>> +# recipes in blacklist will be skipped
>> +blacklist=linux-libc-headers linux-yocto alsa-utils-scripts
>> build-appliance-image
>> +#blacklist=python python3 glibc gcc linux-libc-headers linux-yocto-rt
>> linux-yocto linux-yocto-dev linux-yocto-tiny qt4-x11-free qt4-embedded
>> qt4-x11-free qt4e-demo-image gnome-common gnome-desktop3
>> gnome-desktop-testing adt-installer build-appliance-image
>> +# only recipes belonging to maintainers in whitelist will be attempted
>> +#maintainers_whitelist=anibal.limon@linux.intel.com
>> +# SMTP server
>> +smtp=smtp1.yoctoproject.org:25
>> +# from whom should the mails arrive
>> +from=auh@auh.yoctoproject.org
>> +# who should get the status mail with statistics, at the end
>> +status_recipients=openembedded-core@lists.openembedded.org
>> +# clean sstate directory before upgrading
>> +#clean_sstate=yes
>> +# clean tmp directory before upgrading
>> +#clean_tmp=yes
>> +# machines to test build with
>> +#machines=qemux86 qemux86-64 qemuarm qemumips qemuppc
>> +#machines=qemux86
>> +
>> +buildhistory=yes
>> +#testimage=yes
>> +#testimage_name=core-image-minimal
>> +
>> +#workdir=/home/auh/work/
>> +#publish_work_url=https://logs.yoctoproject.org/auh/
>> +
>> +commit_revert_policy=all
>> +
>> diff --git a/scripts/run-auh b/scripts/run-auh
>> new file mode 100755
>> index 0000000..29a8044
>> --- /dev/null
>> +++ b/scripts/run-auh
>> @@ -0,0 +1,32 @@
>> +#!/bin/bash
>> +# Run Auto Upgrade Helper in a directory set up by setup_auh.
>> +#
>> +# Called with $1 - the directory where the setup was created
>> +
>> +if [ -z $1 ]; then
>> +  echo "Use: $0 auh_setup_dir"
>> +  exit 1
>> +fi
>> +
>> +full_dir=$(readlink -e $1)
>> +
>> +auh_dir=$full_dir/auto-upgrade-helper
>> +poky_dir=$full_dir/poky
>> +build_dir=$full_dir/build
>> +sstate_dir=$full_dir/build/sstate-cache
>> +
>> +pushd $poky_dir
>> +
>> +# Base the upgrades on poky master
>> +git fetch origin
>> +git checkout -B tmp-auh-upgrades origin/master
>> +
>> +source $poky_dir/oe-init-build-env $build_dir
>> +$auh_dir/upgradehelper.py -e all
>> +
>> +# clean up to avoid the disk filling up
>> +rm -rf $build_dir/tmp/
>> +rm -rf $build_dir/workspace/sources/*
>> +find $sstate_dir -atime +10 -delete
>> +
>> +popd
>> diff --git a/scripts/setup-auh b/scripts/setup-auh
>> new file mode 100755
>> index 0000000..23f3d44
>> --- /dev/null
>> +++ b/scripts/setup-auh
>> @@ -0,0 +1,26 @@
>> +#!/bin/bash
>> +# Initialize Auto Upgrade Helper in a directory.
>> +#
>> +# Called with $1 - the directory to place the setup
>> +CONFIG_DIR=`dirname $0`/auh-config
>> +
>> +if [ -z $1 ]; then
>> +  echo "Use: $0 target_dir"
>> +  exit 1
>> +fi
>> +
>> +mkdir -p $1
>> +pushd $1
>> +
>> +git clone git://git.yoctoproject.org/poky
>> +pushd poky
>> +git config user.email auh@auh.yoctoproject.org
>> +git config user.name "Auto Upgrade Helper"
>> +popd
>> +git clone git://git.yoctoproject.org/auto-upgrade-helper
>> +source poky/oe-init-build-env build
>> +mkdir -p upgrade-helper
>> +popd
>> +
>> +cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper
>> +cat $CONFIG_DIR/local.conf.append >> $1/build/conf/local.conf
>> --
>> 2.26.2
>>
>> 
>>
>

--000000000000767ddd05a697d66e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Mon, 18 May 2020 at 02:03, Nicolas=
 Dechesne &lt;<a href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.deches=
ne@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, May 17, 2020 at =
5:21 PM Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.com" tar=
get=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">This allows automating its setup and e=
xecution on all autobuilder worker machines;<br>
previously there was a static setup on a dedicated machine, which wasn&#39=
;t<br>
great from maintenance perspective.<br>
<br>
To use:<br>
<br>
scripts/setup-auh target_dir<br>
scripts/run-auh target_dir<br>
<br>
(run-auh can be run several times in a directory that<br>
was previously set up)<br>
<br>
Signed-off-by: Alexander Kanavin &lt;<a href=3D"mailto:alex.kanavin@gmail.=
com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt;<br>
---<br>
=C2=A0scripts/auh-config/local.conf.append=C2=A0 =C2=A0|=C2=A0 3 +++<br>
=C2=A0scripts/auh-config/upgrade-helper.conf | 33 ++++++++++++++++++++++++=
++<br>
=C2=A0scripts/run-auh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | 32 +++++++++++++++++++++++++<br>
=C2=A0scripts/setup-auh=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 | 26 ++++++++++++++++++++<br>
=C2=A04 files changed, 94 insertions(+)<br>
=C2=A0create mode 100644 scripts/auh-config/local.conf.append<br>
=C2=A0create mode 100644 scripts/auh-config/upgrade-helper.conf<br>
=C2=A0create mode 100755 scripts/run-auh<br>
=C2=A0create mode 100755 scripts/setup-auh<br>
<br>
diff --git a/scripts/auh-config/local.conf.append b/scripts/auh-config/loc=
al.conf.append<br>
new file mode 100644<br>
index 0000000..9628737<br>
--- /dev/null<br>
+++ b/scripts/auh-config/local.conf.append<br>
@@ -0,0 +1,3 @@<br>
+<br>
+INHERIT +=3D &quot;buildhistory&quot;<br>
+LICENSE_FLAGS_WHITELIST =3D &quot;commercial&quot;<br>
diff --git a/scripts/auh-config/upgrade-helper.conf b/scripts/auh-config/u=
pgrade-helper.conf<br>
new file mode 100644<br>
index 0000000..fbf5d8a<br>
--- /dev/null<br>
+++ b/scripts/auh-config/upgrade-helper.conf<br>
@@ -0,0 +1,33 @@<br>
+[maintainer_override]<br>
+# mails for recipe upgrades will go to john.doe instead of jane.doe, etc<=
br>
+#<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@i=
ntel.com</a>=3D<a href=3D"mailto:anibal.limon@linux.intel.com" target=3D"_b=
lank">anibal.limon@linux.intel.com</a></blockquote><div><br></div><div>unre=
lated.. but I just spotted this ^. I am cc&#39;ing Anibal new email address=
. it&#39;s in a few other places.</div></div></div></blockquote><div><br></=
div><div>Right, Looks good to me since Alexander cleaned-up the AUH after s=
ome tinfoil improvements, he is the new maintainer :).</div><div><br></div>=
<div>Cheers,</div><div>Anibal</div><div>=C2=A0</div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_quote"><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
+<br>
+[settings]<br>
+# recipes in blacklist will be skipped<br>
+blacklist=3Dlinux-libc-headers linux-yocto alsa-utils-scripts build-appli=
ance-image<br>
+#blacklist=3Dpython python3 glibc gcc linux-libc-headers linux-yocto-rt l=
inux-yocto linux-yocto-dev linux-yocto-tiny qt4-x11-free qt4-embedded qt4-x=
11-free qt4e-demo-image gnome-common gnome-desktop3 gnome-desktop-testing a=
dt-installer build-appliance-image<br>
+# only recipes belonging to maintainers in whitelist will be attempted<br=
>
+#maintainers_whitelist=3D<a href=3D"mailto:anibal.limon@linux.intel.com" =
target=3D"_blank">anibal.limon@linux.intel.com</a><br>
+# SMTP server<br>
+smtp=3D<a href=3D"http://smtp1.yoctoproject.org:25" rel=3D"noreferrer" ta=
rget=3D"_blank">smtp1.yoctoproject.org:25</a><br>
+# from whom should the mails arrive<br>
+from=3D<a href=3D"mailto:auh@auh.yoctoproject.org" target=3D"_blank">auh@=
auh.yoctoproject.org</a><br>
+# who should get the status mail with statistics, at the end<br>
+status_recipients=3D<a href=3D"mailto:openembedded-core@lists.openembedde=
d.org" target=3D"_blank">openembedded-core@lists.openembedded.org</a><br>
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
+#publish_work_url=3D<a href=3D"https://logs.yoctoproject.org/auh/" rel=3D=
"noreferrer" target=3D"_blank">https://logs.yoctoproject.org/auh/</a><br>
+<br>
+commit_revert_policy=3Dall<br>
+<br>
diff --git a/scripts/run-auh b/scripts/run-auh<br>
new file mode 100755<br>
index 0000000..29a8044<br>
--- /dev/null<br>
+++ b/scripts/run-auh<br>
@@ -0,0 +1,32 @@<br>
+#!/bin/bash<br>
+# Run Auto Upgrade Helper in a directory set up by setup_auh.<br>
+#<br>
+# Called with $1 - the directory where the setup was created<br>
+<br>
+if [ -z $1 ]; then<br>
+=C2=A0 echo &quot;Use: $0 auh_setup_dir&quot;<br>
+=C2=A0 exit 1<br>
+fi<br>
+<br>
+full_dir=3D$(readlink -e $1)<br>
+<br>
+auh_dir=3D$full_dir/auto-upgrade-helper<br>
+poky_dir=3D$full_dir/poky<br>
+build_dir=3D$full_dir/build<br>
+sstate_dir=3D$full_dir/build/sstate-cache<br>
+<br>
+pushd $poky_dir<br>
+<br>
+# Base the upgrades on poky master<br>
+git fetch origin<br>
+git checkout -B tmp-auh-upgrades origin/master<br>
+<br>
+source $poky_dir/oe-init-build-env $build_dir<br>
+$auh_dir/upgradehelper.py -e all<br>
+<br>
+# clean up to avoid the disk filling up<br>
+rm -rf $build_dir/tmp/<br>
+rm -rf $build_dir/workspace/sources/*<br>
+find $sstate_dir -atime +10 -delete<br>
+<br>
+popd<br>
diff --git a/scripts/setup-auh b/scripts/setup-auh<br>
new file mode 100755<br>
index 0000000..23f3d44<br>
--- /dev/null<br>
+++ b/scripts/setup-auh<br>
@@ -0,0 +1,26 @@<br>
+#!/bin/bash<br>
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
+git clone git://<a href=3D"http://git.yoctoproject.org/poky" rel=3D"noref=
errer" target=3D"_blank">git.yoctoproject.org/poky</a><br>
+pushd poky<br>
+git config user.email <a href=3D"mailto:auh@auh.yoctoproject.org" target=
=3D"_blank">auh@auh.yoctoproject.org</a><br>
+git config <a href=3D"http://user.name" rel=3D"noreferrer" target=3D"_bla=
nk">user.name</a> &quot;Auto Upgrade Helper&quot;<br>
+popd<br>
+git clone git://<a href=3D"http://git.yoctoproject.org/auto-upgrade-helpe=
r" rel=3D"noreferrer" target=3D"_blank">git.yoctoproject.org/auto-upgrade-h=
elper</a><br>
+source poky/oe-init-build-env build<br>
+mkdir -p upgrade-helper<br>
+popd<br>
+<br>
+cp $CONFIG_DIR/upgrade-helper.conf $1/build/upgrade-helper<br>
+cat $CONFIG_DIR/local.conf.append &gt;&gt; $1/build/conf/local.conf<br>
-- <br>
2.26.2<br>
<br>
<br>
</blockquote></div></div>
</blockquote></div></div>

--000000000000767ddd05a697d66e--
