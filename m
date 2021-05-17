Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web12.17618.1621250759084037894
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 May 2021 04:25:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@apide.com header.s=google header.b=aJLxX/4/;
 spf=pass (domain: apide.com, ip: 209.85.222.171, mailfrom: morten.bruun@apide.com)
Received: by mail-qk1-f171.google.com with SMTP id x8so5321810qkl.2
        for <yocto@lists.yoctoproject.org>; Mon, 17 May 2021 04:25:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=apide.com; s=google;
        h=mime-version:from:date:message-id:subject:to;
        bh=MRx9nq36Szgf8HdgCqZ6SFvuxdlq/1ZTeTDu3JBqJdU=;
        b=aJLxX/4/kWTMNCIDZn4PgJn8e69LSLmhcKWMedxp6OIxaB6aoCq+CszWikRcmuGPuU
         IkP3z1sMat2whRnHbofN4Mslc4tIRQCpvm0ikDYjjkVQkTWaLkVYAhQ73JYlufptOCu3
         uUieTI2itwf3owBy4WiaN1J9MN+CMvBSy/TD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=MRx9nq36Szgf8HdgCqZ6SFvuxdlq/1ZTeTDu3JBqJdU=;
        b=FSRvYE5aO3OM2lj7bxoXkKgVQxeeY9PEvbByzCYYCI2vbgWGFuNxYuRSmnNVyDVQUs
         eto3rFzFtjJ0ZpMYidtsYcDMkDyh+iT5Y/4rKWnG1YE/y38waT1FqS4QRTfsN5T7z8DK
         TjCQgO19N/oLNAxYidR+3d1kP2xafxKfRABfSQx/dsvNL3tS9/3KdEoPgzNqikVwe2/7
         penEk45D1ZEQl8X5O56qAlFGbnd+gO0hko+i9p+5cPzMCnSZDxtw0RIxVWi6Nl4V4bt3
         D4iiEdwOz9okSBA6peTnXl/9zkFFQ7sgWMuB7PfQ8Veq1icePJKQV8rFlKJqpvykQ7u1
         8cLg==
X-Gm-Message-State: AOAM530nh/oLJzHXvjx/wd6J0SW/4NnFSfSN4dys8s3N7nj/qcQDa1T6
	vzXZ8QUP4r/gWR7gP1W5SfzQMhYaSX2+Ie/QC6nYZ0KAGvulUN89Y+Y=
X-Google-Smtp-Source: ABdhPJwKJYW/zaEsluQY296eHrXhDiNd47eUGW0IB9Kya70qqFezdNSkW3OOgazYUfwO/xboJA/NAK5nLNrSkR3/V/g=
X-Received: by 2002:a37:6688:: with SMTP id a130mr56617545qkc.168.1621250757972;
 Mon, 17 May 2021 04:25:57 -0700 (PDT)
MIME-Version: 1.0
From: "Morten Bruun" <morten.bruun@apide.com>
Date: Mon, 17 May 2021 13:25:47 +0200
Message-ID: <CAMrUZLiHJw4sUDQBdHycq9hFSV+qLucX_=tHOVQZC0VQsRuNAg@mail.gmail.com>
Subject: Opencv build generates Pseudo Abort
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000085686505c284db39"

--00000000000085686505c284db39
Content-Type: text/plain; charset="UTF-8"

Hi,

When building on the new hardknott branch I often get the error below, so
far the solution is to delete the tmp directory. Any suggestions?

debug_logfile: fd 2
pid 6668 [parent 6667], doing new pid setup and server start
Setup complete, sending SIGUSR1 to pid 6667.
creat for '
<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/stMOsGHa'
replaces existing 11214613 ['
<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/libopencv_xfeatures2d.so.4.5.2'].
creat for '
<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/stUxt79H'
replaces existing 11214665 ['
<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/libopencv_sfm.so.4.5.2'].
creat for '
<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/staYWmKL'
replaces existing 11214480 ['
<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/package/usr/lib/libopencv_imgproc.so.4.5.2'].
db cleanup for server shutdown, 00:12:21.579
memory-to-file backup complete, 00:12:21.579.
db cleanup finished, 00:12:21.579
debug_logfile: fd 2
pid 4234 [parent 4192], doing new pid setup and server start
Setup complete, sending SIGUSR1 to pid 4192.
db cleanup for server shutdown, 00:19:10.704
memory-to-file backup complete, 00:19:10.705.
db cleanup finished, 00:19:10.705
debug_logfile: fd 2
pid 17609 [parent 17585], doing new pid setup and server start
Setup complete, sending SIGUSR1 to pid 17585.
path mismatch [3 links]: ino 12076677 db
'
<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/package/usr/src/debug/opencv/4.5.2-r0/contrib/modules/intensity_transform/include/opencv2/intensity_transform.hpp'
req
'<path>/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/contrib/modules/intensity_transform/include/opencv2/intensity_transform.hpp'.
db cleanup for server shutdown, 10:55:44.549
memory-to-file backup complete, 10:55:44.549.
db cleanup finished, 10:55:44.549

/Morten

--00000000000085686505c284db39
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:arial,he=
lvetica,sans-serif">Hi,</div><div class=3D"gmail_default" style=3D"font-fam=
ily:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_default" styl=
e=3D"font-family:arial,helvetica,sans-serif">When building on the new hardk=
nott branch I often get the error below, so far the solution is to delete t=
he tmp directory. Any suggestions?</div><div class=3D"gmail_default" style=
=3D"font-family:arial,helvetica,sans-serif"><br></div><div class=3D"gmail_d=
efault" style=3D"font-family:arial,helvetica,sans-serif">debug_logfile: fd =
2<br>pid 6668 [parent 6667], doing new pid setup and server start<br>Setup =
complete, sending SIGUSR1 to pid 6667.<br>creat for &#39;

&lt;path&gt;/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5=
.2-r0/package/usr/lib/stMOsGHa&#39; replaces existing 11214613 [&#39;

&lt;path&gt;/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5=
.2-r0/package/usr/lib/libopencv_xfeatures2d.so.4.5.2&#39;].<br>creat for &#=
39;

&lt;path&gt;/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5=
.2-r0/package/usr/lib/stUxt79H&#39; replaces existing 11214665 [&#39;

&lt;path&gt;/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5=
.2-r0/package/usr/lib/libopencv_sfm.so.4.5.2&#39;].<br>creat for &#39;

&lt;path&gt;/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5=
.2-r0/package/usr/lib/staYWmKL&#39; replaces existing 11214480 [&#39;

&lt;path&gt;/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5=
.2-r0/package/usr/lib/libopencv_imgproc.so.4.5.2&#39;].<br>db cleanup for s=
erver shutdown, 00:12:21.579<br>memory-to-file backup complete, 00:12:21.57=
9.<br>db cleanup finished, 00:12:21.579<br>debug_logfile: fd 2<br>pid 4234 =
[parent 4192], doing new pid setup and server start<br>Setup complete, send=
ing SIGUSR1 to pid 4192.<br>db cleanup for server shutdown, 00:19:10.704<br=
>memory-to-file backup complete, 00:19:10.705.<br>db cleanup finished, 00:1=
9:10.705<br>debug_logfile: fd 2<br>pid 17609 [parent 17585], doing new pid =
setup and server start<br>Setup complete, sending SIGUSR1 to pid 17585.<br>=
path mismatch [3 links]: ino 12076677 db<br>&#39;

&lt;path&gt;/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5=
.2-r0/package/usr/src/debug/opencv/4.5.2-r0/contrib/modules/intensity_trans=
form/include/opencv2/intensity_transform.hpp&#39; req<br>&#39;&lt;path&gt;/=
tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/opencv/4.5.2-r0/contrib=
/modules/intensity_transform/include/opencv2/intensity_transform.hpp&#39;.<=
br>db cleanup for server shutdown, 10:55:44.549<br>memory-to-file backup co=
mplete, 10:55:44.549.<br>db cleanup finished, 10:55:44.549<br></div><div cl=
ass=3D"gmail_default" style=3D"font-family:arial,helvetica,sans-serif"><br>=
</div><div class=3D"gmail_default" style=3D"font-family:arial,helvetica,san=
s-serif">/Morten</div></div>

--00000000000085686505c284db39--
