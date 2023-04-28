Return-Path: <nowlans@ieee.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B25CC77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 17:06:50 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.web11.25560.1682701602055497190
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 10:06:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@ieee.org header.s=google header.b=UMUtEvP6;
 spf=pass (domain: ieee.org, ip: 209.85.128.50, mailfrom: nowlans@ieee.org)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-3f1763ee8f8so70621615e9.1
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 10:06:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ieee.org; s=google; t=1682701600; x=1685293600;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BuSF2o/ZmU3SpYluo749J2sBDqrgoV6O68SYpRy3DUI=;
        b=UMUtEvP6p91l2jd/WabTQrlwxeA+sY0EvnWq8J7JdDEhTKgQeVyKQgV30veKo1j+rx
         ESYguoVvABtzcYodiQBsVxljqTH+ZjswH6Lk6pIrf2nDuGB/DkshwgBPocv7mCfQeBix
         qH5VjAvkJEqp1LVziNq0u64jT8gUid1bSHp7s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682701600; x=1685293600;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BuSF2o/ZmU3SpYluo749J2sBDqrgoV6O68SYpRy3DUI=;
        b=Weizc1L67LwXzGGb3nX8+rTPtOWXGhnUoMJ8mHHvixtZazN1sueUCtc1cRM7+xVd6o
         jYVQ4QctYuadjMwVinqpQHIHT0Puj71cOCc2qgIV12wP7iaZRsN7mRXm6pnkoSCA2zyi
         MyMY6J18R4A2Y1rFKWoGX7Q+BTHffjl8YDC/aJYxXM1WE2ppqRH6E1PehD2SncEoG7vL
         zOh581Q8TU4vtPDtK2ztpA/jjmYx8j9o61wRnJYvJ1h0/j52uSbhpd4fikdEakYVjWRK
         1Wr+rsgGxGSmfmuApNSI0iu+VXB5A/+Etd992D2i/TXPgSVg6F4XzS7qRvW3tksP8oTM
         MVng==
X-Gm-Message-State: AC+VfDxFDUYEWAhisesscbNNA14jiDduxMCtRcMvSddq1ZllmCzXiA08
	O03LnoVKFO2fKmEWc0GsSdWYB3fyCXZhVADQnfTACNmNTUJUHKbs80U=
X-Google-Smtp-Source: ACHHUZ5Cuc8s7t75dnQAK+MGtQhfvc1l3ZSxeDGbNsXGRfL7aEccvyBJEWr27kdlcytG2MPZVUxu6U2ZaffFm30/KS0=
X-Received: by 2002:a05:600c:224a:b0:3f2:4fca:1b0f with SMTP id
 a10-20020a05600c224a00b003f24fca1b0fmr4762859wmm.24.1682701599995; Fri, 28
 Apr 2023 10:06:39 -0700 (PDT)
MIME-Version: 1.0
References: <IbiD.1655163893899168352.gQ8H@lists.yoctoproject.org>
In-Reply-To: <IbiD.1655163893899168352.gQ8H@lists.yoctoproject.org>
From: Sean Nowlan <nowlans@ieee.org>
Date: Fri, 28 Apr 2023 13:06:29 -0400
Message-ID: <CALcGr3NnrehPcuRKVTQcQ6tD5huXS9Vx9UabhySAepbzmhi6sQ@mail.gmail.com>
Subject: Re: [yocto] Manipulating users/groups in helper class with fakeroot/pseudo
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000021dfec05fa687fb1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 17:06:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59820

--00000000000021dfec05fa687fb1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can someone with knowledge of pseudo and fakeroot please shed some light on
this issue? Is there a reason that system calls are not being intercepted
correctly by pseudo/fakeroot to look up appropriate UIDs and GIDs to apply
to the migrated files? Is this due to Python shutil.chown?

On Mon, Jun 13, 2022 at 7:44=E2=80=AFPM Sean via lists.yoctoproject.org <no=
wlans=3D
ieee.org@lists.yoctoproject.org> wrote:

> I wrote a class, call it MYCLASS, whose purpose is to migrate certain
> files installed by standard recipes into a different directory and create
> symlinks to those files.
>
> The reason for this is to have a disk partition layout with a read-only,
> replaceable rootfs partition and a persistent storage partition. The idea
> is to move certain configuration files installed by a recipe into
> persistent storage and replace the rootfs version with a symlink.
>
> The user inherits this class in a .bbappend file in another layer and
> specifies the list of files that should have this treatment inside a
> MYCLASS_CONFFILES variable.
>
> I implemented this logic in a Python function and added it as a task as
> follows. I abstracted away some details and used "example.conf" as a
> hardcoded example configuration file being moved to a partition mounted a=
t
> "/persistent".
>
> fakeroot python myclass_copy_and_symlink_conffiles() {
> ...
>     sysconfdir_absfile =3D os.path.join(d.getVar('D'),
> d.getVar('sysconfdir'), 'example.conf')
>     destdir_absfile =3D os.path.join(d.getVar('D', 'persistent/example.co=
nf')
>
>     st =3D os.stat(sysconfdir_absfile)
>     shutil.copy(sysconfdir_absfile, destdir_absfile)
>     shutil.chown(destdir_absfile, user=3Dst.st_uid, group=3Dst.st_gid)
>
>     # omitted: replace original file with symlink to copied file
>
> ...
>
> }
>
> myclass_copy_and_symlink_conffiles[depends] +=3D
> "virtual/fakeroot-native:do_populate_sysroot"
>
> do_install[postfuncs] +=3D "${MYCLASSINSTALLFUNCS}"
>
> MYCLASSINSTALLFUNCS_class-target =3D "myclass_copy_and_symlink_conffiles"
> MYCLASSINSTALLFUNCS =3D ""
>
>
> The problem I'm having is that UID and GID don't seem to be available to
> the shutil.chown function or they're not read correctly from the pseudo
> database when os.stat is called. Using the function as shown above, MYCLA=
SS
> doesn't preserve the UID/GID of the original file (as known to
> fakeroot/pseudo) and falls back to setting UID:GID=3Droot:root on the cop=
ied
> file instead.
>
> Any hints on how I can improve this approach? Is the problem that the
> system calls made by shutil/os functions aren't handled by pseudo? Should=
 I
> replace this Python function with a shell function that can use fakeroot?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57328):
> https://lists.yoctoproject.org/g/yocto/message/57328
> Mute This Topic: https://lists.yoctoproject.org/mt/91739241/5997375
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> nowlans@ieee.org]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000021dfec05fa687fb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Can someone with knowledge of pseudo and =
fakeroot please shed some light on this issue? Is there a reason that syste=
m calls are not being intercepted correctly by pseudo/fakeroot to look up a=
ppropriate UIDs and GIDs to apply to the migrated files? Is this due to Pyt=
hon shutil.chown?<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, Jun 13, 2022 at 7:44=E2=80=AFPM Sean via <a hr=
ef=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;nowlans=
=3D<a href=3D"mailto:ieee.org@lists.yoctoproject.org">ieee.org@lists.yoctop=
roject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><p>I wrote a class, call it MYCLASS, whose purpose is to migrate=
 certain files installed by standard recipes into a different directory and=
 create symlinks to those files.<br><br>The reason for this is to have a di=
sk partition layout with a read-only, replaceable rootfs partition and a pe=
rsistent storage partition. The idea is to move certain configuration files=
 installed by a recipe into persistent storage and replace the rootfs versi=
on with a symlink.<br><br>The user inherits this class in a .bbappend file =
in another layer and specifies the list of files that should have this trea=
tment inside a MYCLASS_CONFFILES variable.<br><br>I implemented this logic =
in a Python function and added it as a task as follows. I abstracted away s=
ome details and used &quot;example.conf&quot; as a hardcoded example config=
uration file being moved to a partition mounted at &quot;/persistent&quot;.=
<br><br></p>
<p>fakeroot python myclass_copy_and_symlink_conffiles() {<br>...<br>=C2=A0 =
=C2=A0 sysconfdir_absfile =3D os.path.join(d.getVar(&#39;D&#39;), d.getVar(=
&#39;sysconfdir&#39;), &#39;example.conf&#39;)<br>=C2=A0 =C2=A0 destdir_abs=
file =3D os.path.join(d.getVar(&#39;D&#39;, &#39;persistent/example.conf&#3=
9;)</p>
<p>=C2=A0 =C2=A0 st =3D os.stat(sysconfdir_absfile)<br>=C2=A0 =C2=A0 shutil=
.copy(sysconfdir_absfile, destdir_absfile)<br>=C2=A0 =C2=A0 shutil.chown(de=
stdir_absfile, user=3Dst.st_uid, group=3Dst.st_gid)</p>
<p>=C2=A0 =C2=A0 # omitted: replace original file with symlink to copied fi=
le</p>
<p>...</p>
<p>}</p>
<p>myclass_copy_and_symlink_conffiles[depends] +=3D &quot;virtual/fakeroot-=
native:do_populate_sysroot&quot;</p>
<p>do_install[postfuncs] +=3D &quot;${MYCLASSINSTALLFUNCS}&quot;</p>
<p>MYCLASSINSTALLFUNCS_class-target =3D &quot;myclass_copy_and_symlink_conf=
files&quot;<br>MYCLASSINSTALLFUNCS =3D &quot;&quot;</p>
<div>=C2=A0</div>
<p>The problem I&#39;m having is that UID and GID don&#39;t seem to be avai=
lable to the shutil.chown function or they&#39;re not read correctly from t=
he pseudo database when os.stat is called. Using the function as shown abov=
e, MYCLASS doesn&#39;t preserve the UID/GID of the original file (as known =
to fakeroot/pseudo) and falls back to setting UID:GID=3Droot:root on the co=
pied file instead.</p>
<p>Any hints on how I can improve this approach? Is the problem that the sy=
stem calls made by shutil/os functions aren&#39;t handled by pseudo? Should=
 I replace this Python function with a shell function that can use fakeroot=
?</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57328): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57328" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57328</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/91739241/5997=
375" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/91739241/5997375</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:nowlans@ieee.org" target=3D"_blank">nowlans@ieee=
.org</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--00000000000021dfec05fa687fb1--

