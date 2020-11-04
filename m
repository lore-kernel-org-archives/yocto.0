Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web11.16379.1604513066191536737
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Nov 2020 10:04:26 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=ivIbicCF;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: krantzj84@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id dj6so6355637qvb.3
        for <yocto@lists.yoctoproject.org>; Wed, 04 Nov 2020 10:04:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=M9WvAv+QbEtpVVFSj2zCUUpWCeEv7F0wyoKp7gzI1sI=;
        b=ivIbicCFJjDlDK4cCKbkySQzHCoY+4+0tKATCdXPTEK+oPAdBp1umzpNjiJK2accZE
         4XJiRc7eGqpOCRtEPZKjhijQenQYKJnBhPMZFNZSwRnlq9EIKE+HjtutUpf8q+Pr4VtM
         E7fl1H2jNmiY1pAwu7IpMsr6zuxGPvk5ZzBbzKQZz4Pqv98ZfXzIukVILLzc0IsPNpD+
         f87EQGv+CS/MIpFy+RHj9mCXjmzaUW3inTXFWM5dXj1uqDBbDmqjw0bb/84kFIvIdb0X
         qYDq4Jm4KgapqqWGn66vMxKD6U/cghXTjYjDTRnzmGtC29x8ySYjWq/R3FCGNf/KLmL/
         h0EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=M9WvAv+QbEtpVVFSj2zCUUpWCeEv7F0wyoKp7gzI1sI=;
        b=H46JbGuWM3xpEmDu1HJjVAlZfHlYURlKIus0HCYxVLu11iQKDA/7EeAds5RpUk48S3
         12TZBGEJ7b/mreTxWuY6+IKGE8mHOjOlnt1RATcErCgquWrse7B8b6BwOAW1FQeazn3j
         sn4NpG13N70W9KgK6kyyM/lnGPwZjZhZLfs92nUucQzigk7pp6R9WgD9bbRy6NxFcNHK
         HNIYJbrQ+HwpwxBXkl8VQU7lNAu2uEPNA1Tx61wS/RRXjoVH/+CE7veomNSSYznvVPD0
         VPtH+vyKjUizFRF7H0pz+XNmwEVGElVBaRc6Q6KkJo/wyhHidem8J6i2zjJfKQNHgguF
         K69g==
X-Gm-Message-State: AOAM533/i/y98t4IWrDemE47sVfx9v3L9/i/lcUrG3knEKVOH+y/PL5T
	mQp+DwsZgLVP65ZoaYgwVNteGSfJGomGR6z3706V/uT5En56Dg==
X-Google-Smtp-Source: ABdhPJxKKSWih00LuUDsCD4lriN1btLMAEaaXr0AEbuWTCeZi3siJX/AeNcLD0uuIBR+kcM3EV2SF1/z+OyAtBvCuK0=
X-Received: by 2002:ad4:4443:: with SMTP id l3mr15896571qvt.53.1604513065047;
 Wed, 04 Nov 2020 10:04:25 -0800 (PST)
MIME-Version: 1.0
From: krantzj84@gmail.com
Date: Wed, 4 Nov 2020 13:04:13 -0500
Message-ID: <CAFVJ0t4U0PWpKK4-X0Tpim6Ee6yCcrJbBi_1b54KBrjwbKcOfg@mail.gmail.com>
Subject: Removing postinst script in bbappend
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000479a6a05b34bcf2c"

--000000000000479a6a05b34bcf2c
Content-Type: text/plain; charset="UTF-8"

Hey folks,

We're doing builds using Yocto 3.1 and are attempting to revise a recipe
from another layer we don't control. The recipe we want to make alterations
to is from an open source project, so we'd prefer to not make changes
directly to the recipe, rather change it using a bbappend.

The issue we're having is that the recipe has a pkg_postinst_ontarget
function defined, but we have our filesystem set to read only via
'read-only-rootfs'. The result is a build time failure:

'The following packages could not be configured offline and rootfs is
read-only: ['<package>']

Looking at the Yocto code, it appears that this error is detected by
checking for the presence of any files in the image rootfs/rpm-postinsts
directory. If something is found and the rootfs is read only, then the
error above is thrown and the build fails.

We also looked at emit_pkgdata() and noted it was checking for the
pkg_postinst/pkg_postinst_ontarget globals, so we attempted to add a task
that set those to 'None', hoping it would result in the conditional checks
for these resolving to 'false', however this did not seem to work either.
I'm somewhat new to Yocto, so may have misunderstood how this code is
applied.

We've also tried simpler solutions, like implementing a blank
pkg_postinst_ontarget_{PN} and using deltask, however this also failed.

So the question I have is: is there a way for us to remove the
pkg_postinst_ontarget_{PN} from the recipe in the original layer using a
bbappend file in our layer, so that the read only error is not thrown?

Thanks!

--000000000000479a6a05b34bcf2c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey folks,<div><br></div><div>We&#39;re doing builds using=
 Yocto 3.1 and are attempting to revise a recipe from another layer we don&=
#39;t control. The recipe we want to make alterations to is from an open so=
urce project, so we&#39;d prefer to not make changes directly to the recipe=
, rather change it using a bbappend.=C2=A0</div><div><br></div><div>The iss=
ue we&#39;re having is that the recipe has a pkg_postinst_ontarget function=
 defined, but we have our filesystem set to read only via &#39;read-only-ro=
otfs&#39;. The result is a build time failure:</div><div><br></div><div>&#3=
9;The following packages could not be configured offline and rootfs is read=
-only: [&#39;&lt;package&gt;&#39;]</div><div><br></div><div>Looking at the =
Yocto code, it appears that this error is detected by checking for the pres=
ence of any files in the image rootfs/rpm-postinsts directory. If something=
 is found and the rootfs is read only, then the error above is thrown and t=
he build fails.=C2=A0</div><div><br></div><div>We also looked at emit_pkgda=
ta() and noted it was checking for the pkg_postinst/pkg_postinst_ontarget g=
lobals, so we attempted to add a task that set those to &#39;None&#39;, hop=
ing it would result in the conditional checks for these resolving to &#39;f=
alse&#39;, however this did not seem to work either. I&#39;m somewhat new t=
o Yocto, so may have misunderstood how this code is applied.</div><div><br>=
</div><div>We&#39;ve also tried simpler solutions, like implementing a blan=
k pkg_postinst_ontarget_{PN} and using deltask, however this also failed.=
=C2=A0</div><div><br></div><div>So the question I have is: is there a way f=
or us to remove the pkg_postinst_ontarget_{PN} from the recipe in the origi=
nal layer using a bbappend file in our layer, so that the read only error i=
s not thrown?</div><div><br></div><div>Thanks!</div></div>

--000000000000479a6a05b34bcf2c--
