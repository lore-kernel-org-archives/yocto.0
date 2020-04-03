Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.7815.1585909323737988993
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Apr 2020 03:22:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=Gid8XdLa;
 spf=pass (domain: konsulko.com, ip: 209.85.221.50, mailfrom: pbarker@konsulko.com)
Received: by mail-wr1-f50.google.com with SMTP id g3so5565673wrx.2
        for <yocto@lists.yoctoproject.org>; Fri, 03 Apr 2020 03:22:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=date:from:to:cc:subject:message-id:in-reply-to:references
         :organization:mime-version:content-transfer-encoding;
        bh=q0Y1ghnQi9H0v/Veq60s4wIahxDx7VYwqHRLkf81THY=;
        b=Gid8XdLa4rV11kHlwCdYYk6qcYOpwjE0DbmIb8azlkzJnURTYsxJsxYcf3oEllGP3B
         zzkfryAElpLXwAzJmXCdXhm4L3STFYDu45Ez+/MXjBww/OvybFLIo3ljVDCO2/+uL8SQ
         dSxcavNr4IKkLJULVXcIP45KIk/iUPa+Pxr64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
         :references:organization:mime-version:content-transfer-encoding;
        bh=q0Y1ghnQi9H0v/Veq60s4wIahxDx7VYwqHRLkf81THY=;
        b=ZXP3T6MaUy8bQUNkbDTEznjhvL1tbiGtMSqae6ItRr8WZ3QrTySnqCQjHq/sAh/pK2
         LghY1DFswwRClbPMfyFu31l+K+OQ0hqOmuEKP5sGCNkZY6Kqn696se5Lv5q4CAd7mBwe
         g6DMNAGLHRNc7N6kvMSvh6Mq1rVYAVXWg8Jqs7+pzQbQqEGnhDCEKAVT5wq5XJcN7Czi
         1NaNgsGghuRN3ioozWb3U/yzI4isYZn/Vdvjxxgysg1KSTQFKCnPblh7/U5YOUzf5SGh
         oA3TvWEXZdGMQMf9SYvHa2oUDToZtB7/ckEKnODF2zy4+Aq3bF8Ay6I8e4+GlrhYPIWP
         QNpw==
X-Gm-Message-State: AGi0PuZ2uAMGmCbKgQeSlCJ0Z9HHZqCleM2yZfzRfnHyXJ7RgtaAxcrf
	LjhX0JjW+thQQHXEAfPfzFo/3w==
X-Google-Smtp-Source: APiQypIfFkIIvjT2NCJI58mfon/26MyNvKpYUoIGiz1uuN5P3qWyqSKgpnYf6ESNo6QP8tARJMaZEQ==
X-Received: by 2002:a5d:4401:: with SMTP id z1mr7169088wrq.412.1585909322337;
        Fri, 03 Apr 2020 03:22:02 -0700 (PDT)
Return-Path: <pbarker@konsulko.com>
Received: from ub1910 ([213.48.11.149])
        by smtp.gmail.com with ESMTPSA id w4sm10789729wmc.18.2020.04.03.03.22.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Apr 2020 03:22:01 -0700 (PDT)
Date: Fri, 3 Apr 2020 11:21:59 +0100
From: "Paul Barker" <pbarker@konsulko.com>
To: Thomas =?UTF-8?B?S8O2bGxlcg==?= <thomas@koeller.dyndns.org>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Inappropriate error handling
Message-ID: <20200403112159.5c1ba1b2@ub1910>
In-Reply-To: <Dj2j.1585907456892659579.aMsW@lists.yoctoproject.org>
References: <Dj2j.1585907456892659579.aMsW@lists.yoctoproject.org>
Organization: Konsulko Group
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, 03 Apr 2020 02:50:56 -0700
Thomas K=C3=B6ller <thomas@koeller.dyndns.org> wrote:

> Hi,
>=20
> here is an excerpt from a log of a failed build:
>=20
> WARNING: icu-60.2-r0 do_populate_sysroot_setscene: Failed to fetch URL fi=
le://bd/sstate:icu:aarch64-poky-linux:60.2:r0:aarch64:3:bd6b12b7f20a46d35ce=
4d9382c306075_populate_sysroot.tgz;downloadfilename=3Dbd/sstate:icu:aarch64=
-poky-linux:60.2:r0:aarch64:3:bd6b12b7f20a46d35ce4d9382c306075_populate_sys=
root.tgz, attempting MIRRORS if available
> ERROR: icu-60.2-r0 do_populate_sysroot_setscene: Fetcher failure: Unable =
to find file file://bd/sstate:icu:aarch64-poky-linux:60.2:r0:aarch64:3:bd6b=
12b7f20a46d35ce4d9382c306075_populate_sysroot.tgz;downloadfilename=3Dbd/sst=
ate:icu:aarch64-poky-linux:60.2:r0:aarch64:3:bd6b12b7f20a46d35ce4d9382c3060=
75_populate_sysroot.tgz anywhere. The paths that were searched were:
>     /mnt/data/jenkins/workspace/imx-manifest_warrior/sstate
>     /mnt/data/jenkins/workspace/imx-manifest_warrior/sstate
> ERROR: icu-60.2-r0 do_populate_sysroot_setscene: No suitable staging pack=
age found
> WARNING: Logfile for failed setscene task is /mnt/data/jenkins/workspace/=
imx-manifest_warrior/buildroot/imx8mqevk-basler/imx-4.14.98-2.0.0_ga_basler=
/basler-dart-bcon-mipi-dev/build/tmp/work/aarch64-poky-linux/icu/60.2-r0/te=
mp/log.do_populate_sysroot_setscene.44028
> WARNING: Setscene task (/mnt/data/jenkins/workspace/imx-manifest_warrior/=
buildroot/imx8mqevk-basler/imx-4.14.98-2.0.0_ga_basler/basler-dart-bcon-mip=
i-dev/sources/poky/meta/recipes-support/icu/icu_60.2.bb:do_populate_sysroot=
_setscene) failed with exit code '1' - real task will be run instead
>=20
> As can be seen, a setscene task failed. I do not (yet) know why this happ=
ened, but that is not what this message is about. What matters is that the =
real task will be executed later, which works just fine, and the entire bui=
ld runs to completion without any further errors. However, at the very end =
I get the following output:
>=20
> Summary: There were 2 WARNING messages shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit cod=
e.
>=20
> And then the non-zero exit code that is returned causes my script to take=
 the error exit, even though the build products are all fine and perfectly =
usable. This really should not happen.

This has been discussed last month:
https://lists.yoctoproject.org/g/yocto/topic/71426351.

I ended up using Joshua Watt's suggestion to run the setscene tasks in a
separate bitbake process and ignore failure:

    bitbake --setscene-only <target> || true
    bitbake --skip-setscene <target>

I'd like to come up with something better but I don't have the bandwidth to
look into it further right now.

Thanks,

--=20
Paul Barker
Konsulko Group
