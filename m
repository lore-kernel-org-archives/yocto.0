Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web12.12322.1631294225481279782
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Sep 2021 10:17:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Dvj0bVN+;
 spf=pass (domain: gmail.com, ip: 209.85.216.53, mailfrom: rustyhowell@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id u13-20020a17090abb0db0290177e1d9b3f7so1988663pjr.1
        for <yocto@lists.yoctoproject.org>; Fri, 10 Sep 2021 10:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=6KNxSsxOYuwRU/ILAngWe9yhlvl/YwGt8TQ2Utep86U=;
        b=Dvj0bVN+01Oj2I2H3pt13a63AAyTncDgz83k2GEdnF0iovUxmiL+tlZtulGviahUVH
         FvbSr2E0ItsWHkP2Jhl4hEoRERtzba4U8AvPR+ZUbxu1a5Qo1qycfoM7Za7VdDYt1Axl
         AdVQz5WDdJh48MRGgng81DzVlSt6YuEVk7MkO+K5YRufRx+18BevyfU+h9Th8+qP8n1W
         hbAUxmrbLXCItgN3AYoivjbNSSSniDh21rDJkAjYL97z45wGB19kMDYUH8LGC2A2gLWt
         WfWeLIU28hgxWPooQ7nrDhHE60j8wbMRWkbI8hGWhiYEwYyLOJts77PaCz0aC3bV9uSL
         zG3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=6KNxSsxOYuwRU/ILAngWe9yhlvl/YwGt8TQ2Utep86U=;
        b=dMLaJBfq/XoJKh2euKySlCsZsAVEr9PhShcSa8fDhk9TXD7gPHTx13drMYUhMKfeDU
         Rvw8G2lhhz04JpyfRoS+P5+abtl6CcWUYua1MtwvyjDTWAz3lSnsA/ffo1lPJxvrirHh
         4W06TWxBPTLdJx5WayrlTuINA7RUDx5dSr0FRcVJrdNO/BEypBUfv+giNN0kZ/mjttjj
         LJxtgfpfpUMrqDzztrZp8eiUHSebN+YKGGp9UMW0b72WvuBiGry2/HDQnVMcIWpwGD5h
         9ytuOTuWFpQEZkigRQoBbA8zBlVm2B1YKREF/NkoZ5FbHKhZCfKZ6OK4IkhH7w97hBfT
         OcYg==
X-Gm-Message-State: AOAM530t3pA4eQEyYXxT7HQELhUOWg/2BHJEdUHVRJBcmGEs7Oi5a87B
	wHpYOXjry7ylp2vyyBooDs064nifzKWrwLEmTyoTyDbNza3PoA==
X-Google-Smtp-Source: ABdhPJzkGKDKyWFSlIM/H7n0IM3x6QON1Z92ACWawLT+ba0/Uv92SX6mHUob9yQOPU+ta6YNwCNbJrw6CCRbvwR1hug=
X-Received: by 2002:a17:90a:7f85:: with SMTP id m5mr10828731pjl.185.1631294224433;
 Fri, 10 Sep 2021 10:17:04 -0700 (PDT)
MIME-Version: 1.0
From: "Rusty Howell" <rustyhowell@gmail.com>
Date: Fri, 10 Sep 2021 11:16:48 -0600
Message-ID: <CAE+BM3=TP+2KtovT+csfZKRZTnvG68aoQbX=JPS2H6=umoN0zg@mail.gmail.com>
Subject: Sharing sstate cache across build nodes
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c587cc05cba748a9"

--000000000000c587cc05cba748a9
Content-Type: text/plain; charset="UTF-8"

Hello,
We are having a problem with the PR server resetting the PR number it is
returning for a given package/arch/checksum.  Our setup is as follows:  We
have multiple linux servers being used as build nodes. Each node can build
any one of four MACHINE types that we have defined in our distro. These
builds actually happen inside a docker container on the build nodes.  We
have a global PR server running on a separate server.

Each node has it's own SSTATE_DIR, DL_DIR, and all bitbake builds on a node
will use the same SSTATE_DIR, DL_DIR. Those directories are shared with the
docker containers.

Our distro has many recipes that have a git SRC_URI with a branch name as
the rev. So they need to use AUTOINC.
What we are noticing is that once in a while, the revs being served out by
the PR server will be reset back to 0, and thus break upgrade-ability with
the debian packages.

I have been unable to find much information about how to properly configure
multiple build nodes so that they all have consistent PR values from the PR
server.

I know there are several directories that might be necessary to achieve my
goal.
PERSISTENT_DIR, SSTATE_DIR, BUILDHISTORY_DIR, DL_DIR

Can someone help explain which dirs should/must be shared via NFS/smb
across all build nodes? Which directories are node-specific and only need
to be cached locally (but not NFS) and used for all local build jobs? Does
changing the MACHINE type on the build affect how/if these directories can
be shared?
Thanks a lot

--000000000000c587cc05cba748a9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div>We are having a problem with the PR =
server resetting the PR number it is returning for a given package/arch/che=
cksum.=C2=A0 Our setup is as follows:=C2=A0 We have multiple linux servers =
being used as build nodes. Each node can build any one of four MACHINE type=
s that we have defined in our distro. These builds actually happen inside a=
 docker container on the build nodes.=C2=A0 We have a global PR server runn=
ing on a separate server. <br></div><div><br></div><div>Each node has it&#3=
9;s own SSTATE_DIR, DL_DIR, and all bitbake builds on a node will use the s=
ame SSTATE_DIR, DL_DIR. Those directories are shared with the docker contai=
ners.<br></div><div><br></div><div>Our distro has many recipes that have a =
git SRC_URI with a branch name as the rev. So they need to use AUTOINC.<br>=
</div><div>What we are noticing is that once in a while, the revs being ser=
ved out by the PR server will be reset back to 0, and thus break upgrade-ab=
ility with the debian packages. <br></div><div><br></div><div>I have been u=
nable to find much information about how to properly configure multiple bui=
ld nodes so that they all have consistent PR values from the PR server.</di=
v><br><div>I know there are several directories that might be necessary to =
achieve my goal.</div><div>PERSISTENT_DIR, SSTATE_DIR, BUILDHISTORY_DIR, DL=
_DIR</div><div><br></div><div>Can someone help explain which dirs should/mu=
st be shared via NFS/smb across all build nodes? Which directories are node=
-specific and only need to be cached locally (but not NFS) and used for all=
 local build jobs? Does changing the MACHINE type on the build affect how/i=
f these directories can be shared?</div><div>Thanks a lot<br></div></div>

--000000000000c587cc05cba748a9--
