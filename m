Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 281ACC05027
	for <webhook@archiver.kernel.org>; Fri, 10 Feb 2023 07:46:44 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web10.9160.1676015195256286312
 for <yocto@lists.yoctoproject.org>;
 Thu, 09 Feb 2023 23:46:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=GlZEscMs;
 spf=pass (domain: gmail.com, ip: 209.85.218.50, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id ud5so13551908ejc.4
        for <yocto@lists.yoctoproject.org>; Thu, 09 Feb 2023 23:46:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lLTd/XIzRelEVRiSRJ0l8MDjCmMBhi0gIBnbFrOx0rY=;
        b=GlZEscMsRSsi9tY69m7hLAC8QpBDzQUUDMI31/vDv6k6EgRcX9i/oD2io3VLlGnAsH
         hfLJ4MbaJDOpR9yDAUvqEL5VfMGi0O9FEXCajV+Rxqsbc/oERfpY/CMf5cJN513amb0E
         ghoQwXKfSEzsXzGaZfklnbhR0Nqo6B+/Abg2DMax/JO4F9kDS28hfd1gQcveJwNU3a4j
         E82ouGBq9A+kBfais/dGhmPCZJHtm5mOCVVTBk9bDS1wAoCsKg4Zf4jc7Kqx9PqGddIx
         qy8EbPLfA3rE06+Sthf8bYGcC2KrTcwM15ulzNQD7e9zzwi46WS3aVjGsccYxrPVJkCw
         E6rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=lLTd/XIzRelEVRiSRJ0l8MDjCmMBhi0gIBnbFrOx0rY=;
        b=C7TDOM/24R3AE95jDgBRVR73+uUvQqiu+bdSBdrUml4jixxNI8+d531BVlEEa66WVO
         UlD+0S99fbYUVKCvS8GAaZ8GH5RYwjKOog9UqxXeJdo3zzOYhnt3FCiTILn7kjsdBP1G
         OARlGY2qrBx0lCRH/5Cjd5FgFUddwToh6TraMH9KQTfhUgi3j2ElIE+a4lbangNpx2fy
         ICkPaCRgMH9tSGqjPODH2azlM63ZTu6xxmNakN/ADmG9RtSXntKYk1q9QSo7s/4Rfh/j
         04IUemKsBk7GEGSuFHi+I/7j1CwW2sn1evTlA48/di9MH9WTrAk1ilQE5hgv9JxK0k0q
         xqmA==
X-Gm-Message-State: AO0yUKWvqtcn8lg6z3z5rBIXOdTqndBhcaeYv1O5ObMIn8xQZGanbawH
	nzokyshbpkK4YNAk8BW78vQ=
X-Google-Smtp-Source: AK7set/iqWrfDp0IOEQetjoBATtPKUXLQmgg8QKLZBiCWQhQRo0byV4zJ4/7YRkLGT0PbRgbOjYIVg==
X-Received: by 2002:a17:906:7704:b0:872:27cb:9436 with SMTP id q4-20020a170906770400b0087227cb9436mr15302470ejm.43.1676015193688;
        Thu, 09 Feb 2023 23:46:33 -0800 (PST)
Received: from af-t14s.fritz.box ([2a02:169:59a6:0:d8a2:5b3b:f3b9:237e])
        by smtp.gmail.com with ESMTPSA id k20-20020a1709061c1400b00871390a3b74sm2018253ejg.177.2023.02.09.23.46.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Feb 2023 23:46:33 -0800 (PST)
Message-ID: <ef9be68930e8a2a63b0665386f5d0182173a5604.camel@gmail.com>
Subject: Re: [yocto] error when try to use sudo command in recipe
From: adrian.freihofer@gmail.com
To: SIMON BABY <simonkbaby@gmail.com>, yocto@lists.yoctoproject.org
Date: Fri, 10 Feb 2023 08:46:32 +0100
In-Reply-To: <CAEFUPH2JJ6iiQvzT3bSrWDdM__Gf=XkDBRWg18XTu3B05dnFoA@mail.gmail.com>
References: 
	<39760b676a3d2a628a446e3031724b53c8941a88.camel@linuxfoundation.org>
	 <32073.1675641651799643620@lists.yoctoproject.org>
	 <CAEFUPH2JJ6iiQvzT3bSrWDdM__Gf=XkDBRWg18XTu3B05dnFoA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Feb 2023 07:46:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59207

Hi Simon

I guess in the deploy folder (build/tmp/deploy/...) you will find a tar
archive which can be used with e.g. docker import.

If you need to upload the OCI image to a container registry skopeo
might be used somehow like that:

bitbake "skopeo-native:do_addto_recipe_sysroot"
OCI_DIR=3D"build/tmp/deploy/images/${MACHINE}/${TARGET_IMAGE}-
${MACHINE}.rootfs-oci"
oe-run-native skopeo-native skopeo login -u "${CI_REGISTRY_USER}" -p
"${CI_REGISTRY_PASSWORD}" "${CI_REGISTRY}" --authfile
${HOME}/.registry-auth.json
oe-run-native skopeo-native skopeo copy oci:${OCI_DIR}
docker://${CI_REGISTRY_IMAGE}:${CI_COMMIT_REF_SLUG}-${OCI_ARCH} --
authfile ${HOME}/.registry-auth.json

If you need to provide the container for different architectures
manifest-tool can do that. After uploading images to a registry the
manifest tool can convert all the per ARCH images into a multi arch
container image.

Regards,
Adrian

On Thu, 2023-02-09 at 10:45 -0800, SIMON BABY wrote:
> Hello,
> =C2=A0
> I was testing the meta-virtualization/recipes-demo/images/ app-
> container. I was able to build the container. But I am not sure where
> is the image created =C2=A0and how do we run the image using docker
> commands. I also see the .yaml files.=C2=A0
> On the target I can see /usr/bin/flask-app. Below is the folder
> contents after bitbake.
> =C2=A0
> bitbake app-container
> =C2=A0
> build/tmp/work/armv8a-poky-linux/helloworld-flask$ ls
> 0.1-r0
> /build/tmp/work/armv8a-poky-linux/helloworld-flask$ cd 0.1-r0/
> build/tmp/work/armv8a-poky-linux/helloworld-flask/0.1-r0$ ls -ll
> total 84
> -rw-r--r--=C2=A0 1 tdydev tdydev=C2=A0=C2=A0=C2=A0 65 Feb=C2=A0 7 11:58 c=
onfigure.sstate
> drwxr-xr-x=C2=A0 3 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 deploy-debs
> drwxr-xr-x=C2=A0 2 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:38 deploy-sour=
ce-date-
> epoch
> -rwxrwxr-x=C2=A0 1 tdydev tdydev=C2=A0=C2=A0 518 Feb=C2=A0 2 14:24 flask-=
app
> -rw-r--r--=C2=A0 1 tdydev tdydev=C2=A0=C2=A0 511 Feb=C2=A0 7 11:58 flask-=
app-service.yaml
> -rw-r--r--=C2=A0 1 tdydev tdydev=C2=A0=C2=A0 178 Feb=C2=A0 7 11:58 flask-=
app.yaml
> drwxr-xr-x=C2=A0 2 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:35 helloworld-=
flask-0.1
> drwxr-xr-x=C2=A0 4 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:58 image
> drwxr-xr-x=C2=A0 3 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:38 license-des=
tdir
> drwxr-xr-x=C2=A0 4 tdydev tdydev=C2=A0 4096 Apr=C2=A0 5=C2=A0 2011 packag=
e
> drwxr-xr-x 10 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 packages-split
> drwxr-xr-x=C2=A0 7 tdydev tdydev=C2=A0 4096 Apr=C2=A0 5=C2=A0 2011 pkgdat=
a
> drwxr-xr-x=C2=A0 7 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:58 pkgdata-pda=
ta-input
> drwxr-xr-x=C2=A0 7 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:58 pkgdata-sys=
root
> drwxrwxr-x=C2=A0 2 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 pseudo
> drwxr-xr-x=C2=A0 5 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 recipe-sysr=
oot
> drwxr-xr-x=C2=A0 8 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 12:10 recipe-sysr=
oot-native
> drwxr-xr-x=C2=A0 2 tdydev tdydev=C2=A0 4096 Feb=C2=A0 7 11:35 source-date=
-epoch
> drwxr-xr-x=C2=A0 2 tdydev tdydev 12288=C2=A0
>=20
>=20
>=20
>=20
>=20
> Regards
> Simon
>=20
>=20
> On Sun, Feb 5, 2023 at 4:00 PM SIMON BABY via lists.yoctoproject.org
> <simonkbaby=3Dgmail.com@lists.yoctoproject.org> wrote:
> > Hi Richard,
> >=20
> > I added extra code in the recipe to print the sudo permissions to
> > compare with actual permissions.
> >=20
> > Regards
> > Simon
> >=20
> >=20
> >=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59204):
> https://lists.yoctoproject.org/g/yocto/message/59204
> Mute This Topic: https://lists.yoctoproject.org/mt/96733939/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/unsub=C2=A0[adrian.freihofer@gmail=
.com
> ]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


