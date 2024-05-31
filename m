Return-Path: <bbergquist@epc-instore.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ECC4AC25B74
	for <webhook@archiver.kernel.org>; Fri, 31 May 2024 00:28:51 +0000 (UTC)
Received: from mail-qv1-f43.google.com (mail-qv1-f43.google.com [209.85.219.43])
 by mx.groups.io with SMTP id smtpd.web11.585.1717115323226711381
 for <yocto@lists.yoctoproject.org>;
 Thu, 30 May 2024 17:28:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@epc-instore.com header.s=google header.b=MwAVyC2K;
 spf=permerror, err=too many SPF records (domain: epc-instore.com, ip: 209.85.219.43, mailfrom: bbergquist@epc-instore.com)
Received: by mail-qv1-f43.google.com with SMTP id 6a1803df08f44-6ab9d9f0ee2so5776866d6.3
        for <yocto@lists.yoctoproject.org>; Thu, 30 May 2024 17:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=epc-instore.com; s=google; t=1717115322; x=1717720122; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=0+GOgDUCoXN+xlgTlwWVk9MEfWmYm6TK8bMHMFRGb7I=;
        b=MwAVyC2KDnN40yw1IXYjyal0AeZysyrOmcs+eptLnjQLyybxuWb5HRLtVqyRSF2cT0
         J4KDY8Gt7dn9FHcP87XGPY8/0cWqz/pmuRqfOI2uJpIhqseZAyLJIoK2PWpRn6MQwGxB
         Vx4q5z7vFcFaYXVIcrW/CZt8oaWRhiXggq0+yw1Bn4Y8JQ6byU5FCej+BEJ9+l3j7pUe
         gc4bIP67eI4n3WmVQAfuL0tIfH7x/r0YTC+aoJAk3uAIfDyVhNwFqHM7jyZeBv7+rJqm
         HsjWSKy5z2SuFvqnaY8RxdG0B56Qb73Lfhudk1Q2KaOj5OJ4g+zPagBk3eSud/PM8g1h
         tO6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717115322; x=1717720122;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0+GOgDUCoXN+xlgTlwWVk9MEfWmYm6TK8bMHMFRGb7I=;
        b=hrp646fSs3Y4PnU3MDt4k1tri5M9P/oe+q2aoR7DPlcLTHkmYCF4+NY82YcRZWxIYE
         q2QmSHXA5Eu8d1vbZlMgl4MWJE38dt/sGpgH+QX1fIUIYCP65dnYl89QVdemrNUmsYuR
         5WibbIta6wuwEYS4AwWUBB7VJz2giDmzVpEVN93Py/R4j+jmiyJfQMZKL/twl3azmxGQ
         TunFeen0HTQlUGfO54BZ+GWL3mDru+RkVLCXwRbMyCDsX+eTcBA2gfbYDHDogynKtaWU
         QEJ21PPzCLn8JrcVfu6GSwgkyIVuXpHuv/i2JDNPDtF4FOjMCxDGhGKBZ87GyA9T0hnQ
         lApQ==
X-Gm-Message-State: AOJu0YzbC5CYOJLJ60BTc7+t/sYMqFrpliaRPiZn6qbQBHoROTDjMNok
	HbW6b22StW4xVuUoL2Fj4+6oeKV5nPhtMgMr0J2TiyH79yMGPik1Awb9tjCvkiXSwThLIUxk3eL
	A9xhKGwiQgcUipGTD8r456NXoXtBl0yjxYOAMPp5EtIY8awCX8uI=
X-Google-Smtp-Source: AGHT+IGHAOoJsO31lrxqm3wbzsvnZHQ7NNJF+hPdkXpbeCqf9/TOawbbwlONZwupgk+uS9Pj8yDj/YaDykmtGh6d014=
X-Received: by 2002:a0c:fb08:0:b0:6ae:d383:d707 with SMTP id
 6a1803df08f44-6aed383d732mr1610416d6.27.1717115322038; Thu, 30 May 2024
 17:28:42 -0700 (PDT)
MIME-Version: 1.0
From: Brett Bergquist <bbergquist@epc-instore.com>
Date: Thu, 30 May 2024 20:28:31 -0400
Message-ID: <CAH+ZgJu01xTWKoB95KaDGeC8fYR+dUhWYMDOztHgrocYXJCJmQ@mail.gmail.com>
Subject: Trying to build a self-installing Yocto image but with an multiconfig initramfs
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cf18440619b510c9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 May 2024 00:28:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63245

--000000000000cf18440619b510c9
Content-Type: text/plain; charset="UTF-8"

I am trying to build a self-installing Yocto image.  I started by following
this blog

https://www.thegoodpenguin.co.uk/blog/self-installing-yocto-image-from-a-usb-drive/

and that worked fine.  However I need to change my main image to use the
full set of packages instead of the busybox ones.  So I set

#
# Use a full set of packages instead of busybox for base utils
#
PREFERRED_PROVIDER_base-utils = "packagegroup-core-base-utils"
VIRTUAL-RUNTIME_base-utils = "packagegroup-core-base-utils"
VIRTUAL-RUNTIME_base-utils-hwclock = "util-linux-hwclock"
VIRTUAL-RUNTIME_base-utils-syslog = ""


But that bleeds over into the intramfs image.  I am trying to use the
multiconfig setup for the initramfs which I have done and it in fact does
built the core-image-minimal-initramfs which I have
building in ${TOPDIR}/tmp-initramfs.

The problem that I am having is that when wic is run, it is looking in the
DEPLOY_DIR_IMAGE of my main image and the wic copy step fails.  This is in
the "boot-efi.py" wic plugin:

        if initrd:
            bootimg_dir = get_bitbake_var("DEPLOY_DIR_IMAGE")
            if not bootimg_dir:
                raise WicError("Couldn't find DEPLOY_DIR_IMAGE, exiting")

            initrds = initrd.split(';')
            for rd in initrds:
                cp_cmd = "cp %s/%s %s" % (bootimg_dir, rd, hdddir)
                exec_cmd(cp_cmd, True)


That is hard coded to look in DEPLOY_DIR_IMAGE which for a multiconfig
build is not the correct value.

I am wondering what I can do to get this to work and any suggestions will
be most appreciated.

--000000000000cf18440619b510c9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am trying to build a self-installing Yocto image.=C2=A0 =
I started by following this blog<div><br></div><div><a href=3D"https://www.=
thegoodpenguin.co.uk/blog/self-installing-yocto-image-from-a-usb-drive/">ht=
tps://www.thegoodpenguin.co.uk/blog/self-installing-yocto-image-from-a-usb-=
drive/</a><br></div><div><br></div><div>and that worked fine.=C2=A0 However=
 I need to change my main image to use the full set of packages instead of =
the busybox ones.=C2=A0 So I set</div><blockquote style=3D"margin:0 0 0 40p=
x;border:none;padding:0px"><div>#</div><div># Use a full set of packages in=
stead of busybox for base utils</div><div>#</div><div>PREFERRED_PROVIDER_ba=
se-utils =3D &quot;packagegroup-core-base-utils&quot;</div><div>VIRTUAL-RUN=
TIME_base-utils =3D &quot;packagegroup-core-base-utils&quot;</div><div>VIRT=
UAL-RUNTIME_base-utils-hwclock =3D &quot;util-linux-hwclock&quot;</div><div=
>VIRTUAL-RUNTIME_base-utils-syslog =3D &quot;&quot;</div></blockquote><div>=
<br></div><div>But that bleeds over into the intramfs=C2=A0image.=C2=A0 I a=
m trying to use the multiconfig setup for the initramfs which I have done a=
nd it in fact does built the=C2=A0core-image-minimal-initramfs which I have=
 building=C2=A0in=C2=A0${TOPDIR}/tmp-initramfs.=C2=A0 =C2=A0</div><div><br>=
</div><div>The problem that I am having is that when wic is run, it is look=
ing in the DEPLOY_DIR_IMAGE of my main image and the=C2=A0wic copy step fai=
ls.=C2=A0 This is in the &quot;boot-efi.py&quot; wic plugin:</div><div><br>=
</div><div><blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px">=
<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 if initrd:<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 bootimg_dir =3D get_bitbake_var(&quot;DEPLOY_DIR_IMAGE&quot;)=
<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if not bootimg_dir:<br>=C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 raise WicError(&quot;Coul=
dn&#39;t find DEPLOY_DIR_IMAGE, exiting&quot;)<br><br>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 initrds =3D initrd.split(&#39;;&#39;)<br>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 for rd in initrds:<br>=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 cp_cmd =3D &quot;cp %s/%s %s&quot; % (booti=
mg_dir, rd, hdddir)<br>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 exec_cmd(cp_cmd, True)</div></blockquote><div><br></div>That is hard co=
ded to look in DEPLOY_DIR_IMAGE which for a multiconfig build is not the co=
rrect value.=C2=A0 =C2=A0</div><div><br></div><div>I am wondering what I ca=
n do to get this to work and any suggestions will be most appreciated.<br><=
blockquote style=3D"margin:0 0 0 40px;border:none;padding:0px"><div><br></d=
iv></blockquote></div></div>

--000000000000cf18440619b510c9--

