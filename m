Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com [209.85.217.42])
 by mx.groups.io with SMTP id smtpd.web10.373.1598461281634106180
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Aug 2020 10:01:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=A8uvNUxj;
 spf=pass (domain: gmail.com, ip: 209.85.217.42, mailfrom: mdrizwan827@gmail.com)
Received: by mail-vs1-f42.google.com with SMTP id e14so1319327vsa.9;
        Wed, 26 Aug 2020 10:01:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=m12TaRCya6U94fLCVkt5Ylm5rt+03KRTpDtPijGSmbQ=;
        b=A8uvNUxjy+AgpDzAKT7ht8Iaui4m4WZWYoEJmeru9EHz0L3D556ZAKvDtrI09f4/UA
         n2erH1x3CINcg76z5lkYmmOSwCkpR7mB0ybbZjhbyBYAZEp7PhXzTNWEjWvxTgviRe2w
         OidmEp/LP0AL5whRsgGvwSEdB5CzEJFDoVdR4ySsga0aQkfqPinkpAyw+ia6ieCs7zyC
         EpJ7s9rRgPyhDTBaLdUd+Fir1o9dmbIPhVugKEBV14qfCfC2/0H/3qZO17vx/Iis2zcs
         KumijsUyZ9DV5aTA/AMYIcdUWRJMghyT5WVjVGzqEQsHPINA5RWc6MrfkWTpvoje+yr0
         WwZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=m12TaRCya6U94fLCVkt5Ylm5rt+03KRTpDtPijGSmbQ=;
        b=ukLrkcadRwKtGH7uabalodyUcBQmOPJrNnZYxJSM/Y0faNII9EUhb6RbwBu0rsZ2Mq
         yhGQsdv24eTMp/YbcsP3kPeKRO7+igSY94PNEUzyXPK816sVgOHrNOgYleVXtVJb6V/5
         +D7mOBrlJU1QPOjgfhKC+0dCqtvIft0z/8KkagyszVAZSQNRjjlpGEW/0q8mdGa4Diy8
         myiKKZ21DnpNsl2vvAL/LJcFRAwySoe391my2Y2+6FU+z7HI3pfRqwboAp85+Gg7tf9n
         YF01nYOnzwn7Z8PUMj+ixWI/8p/PYi7JpeA+NAgZt9bjB7D4b0I+BtM0o8MdPJzXvbNU
         QZkw==
X-Gm-Message-State: AOAM531TySi0lqRDIOSF+K5Z7Wna/mdf68RxIblgda9PPDQDbBw0wGfI
	Aj0Ma3TnQEbDQSmrflzctfdpNIJNxDL/aT7fiUupChlIS5I=
X-Google-Smtp-Source: ABdhPJwAAZYZR3KdHrR5AjlY0VhFLk38OIL/Cp5+49kJfPimEwjseoQzvXVFCAyrtbrAKuAsfKuZW+Sf1PXVW9qHonU=
X-Received: by 2002:a67:bb06:: with SMTP id m6mr10051901vsn.54.1598461280319;
 Wed, 26 Aug 2020 10:01:20 -0700 (PDT)
MIME-Version: 1.0
From: "Riz" <mdrizwan827@gmail.com>
Date: Wed, 26 Aug 2020 22:30:53 +0530
Message-ID: <CA+FSg4r7ZkyPTFNcfK+bo_u9HSYZibeGDSGRppbadx1k-7juJQ@mail.gmail.com>
Subject: Identifying already created partitions in wic
To: yocto@lists.yoctoproject.org, intel-iot-refkit@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ccfcae05adcac440"

--000000000000ccfcae05adcac440
Content-Type: text/plain; charset="UTF-8"

Hello,
I have been trying to find out a better way to "identify" the already
prepared partition in WKS.
I have written a custom source WIC plugin that needs the information about
the already prepared partitions above.

For example,
part / --source rootfs --label rootfs --ondisk sda
part --source myplygin --label rootfs --ondisk sda

The myplugin.py needs to know the first partition (/) which is already
prepared.

I got a reference from the Intel IOT-refkit, in which they identify based
on the label.
This is a somewhat restrictive approach I feel since it depends on the
label and also the fact that squashfs doesn't support the label parameter
itself.
Reference here:
https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/scripts/lib/wic/plugins/source/dm-verity.py

I see that in partition.py, the rootfs partition is specified in the
following format
        rootfs = "%s/rootfs_%s.%s.%s" % (cr_workdir, self.label,
                                         self.lineno, self.fstype)

Hence I think the refkit implementation preferred to use labels rather than
using lineno and fstype.

So, is there any better way using which we can identify the already
prepared partition?

Can't we use some other unique identifier like a uuid provided by the user
for the particular partitoin while* preparing the partition*?
Is there any plan for doing it?

Thanks you.
.

--000000000000ccfcae05adcac440
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<br><div>I have been trying to find out a=C2=A0bette=
r=C2=A0way to &quot;identify&quot; the=C2=A0already prepared=C2=A0partition=
 in WKS.</div><div>I have written a=C2=A0custom source WIC plugin that need=
s=C2=A0the information about the already prepared partitions above.</div><d=
iv><br></div><div>For example,</div><div>part / --source rootfs --label roo=
tfs --ondisk sda=C2=A0</div><div>part --source myplygin=C2=A0--label rootfs=
 --ondisk sda</div><div><br></div><div>The myplugin.py needs to know the fi=
rst partition (/) which is already prepared.</div><div><br></div><div>I got=
 a=C2=A0reference from the Intel IOT-refkit, in which they identify based o=
n the label.</div><div>This is a somewhat restrictive approach I feel since=
 it depends=C2=A0on the label and also the fact that squashfs doesn&#39;t s=
upport the label parameter itself.</div><div>Reference here:=C2=A0<a href=
=3D"https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/=
scripts/lib/wic/plugins/source/dm-verity.py">https://github.com/intel/intel=
-iot-refkit/blob/master/meta-refkit-core/scripts/lib/wic/plugins/source/dm-=
verity.py</a></div><div><br></div><div>I see that in partition.py, the root=
fs partition is specified in the following format</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 rootfs =3D &quot;%s/rootfs_%s.%s.%s&quot; % (cr_workdir, self=
.label,<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0self.lineno, self.fstype)<br></div><div><br></div><div>Hence I th=
ink the refkit implementation=C2=A0preferred to use=C2=A0labels rather than=
 using lineno and fstype.</div><div><br></div><div>So, is=C2=A0there any be=
tter way using which we can identify the already prepared partition?</div><=
div><br></div><div>Can&#39;t we use some other unique identifier like a uui=
d provided by the user for the particular partitoin while<b> preparing the =
partition</b>?</div><div>Is there any plan for doing it?</div><div><br></di=
v><div>Thanks you.<br></div><div>.</div></div>

--000000000000ccfcae05adcac440--
