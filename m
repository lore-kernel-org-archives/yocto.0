Received: from mail-io1-f65.google.com (mail-io1-f65.google.com [209.85.166.65])
 by mx.groups.io with SMTP id smtpd.web10.5629.1584677422920680761
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 21:10:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S8AaoVWk;
 spf=pass (domain: gmail.com, ip: 209.85.166.65, mailfrom: easmith5555@gmail.com)
Received: by mail-io1-f65.google.com with SMTP id v3so4625864iot.11
        for <yocto@lists.yoctoproject.org>; Thu, 19 Mar 2020 21:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=oLjXYdp7sURBgtMSgOAKH9evadlmpJMTEIQ0WW5HRVE=;
        b=S8AaoVWkenykOetqjqMgQ6PvfkTlSK0rznP7pBJla+eVcMkg7EJljnslKWambffvRZ
         a117EXAA1cwJDJULjKHkgKPYxDiR40suTqCMNDCP/RxNHxlwpBJ3otgQhdaQl0otVwET
         zE9l3aOMmdCP7fRs/uRLFB5J+jfG2ZSEVEaF0bZHu4OGFMRwWUgwpUNgpjv3UiHMa8gP
         51oU9aWX7eLxVPJ0DHB7KHfOa8b1CESjzOt2ICmx+cVKvNq4hXyNzP3sZDk4nwZmyqzm
         5qrE8nyozSv4wsP9Y95Zx99SDRD03nKtjyOUupMOEGQEkgjncxa5mmoC6Qc7IpdPpFa6
         VbCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=oLjXYdp7sURBgtMSgOAKH9evadlmpJMTEIQ0WW5HRVE=;
        b=f7CzSX33lC+i+ttkMa6WcLKulCWFztA7QffJLKxvd+SBALqh3bJDAzna/8ZcL8VWHt
         wlnWx3DIcNptQz8mFr23L8uwFBLdwdzQbbBJvGP3WaKIFJk2BPNKgJgefu4HdNCLK1kY
         infh1Og98ERDHPkUHnGly4Y5emqmR8v4wZrzfNIVa2wob+unAdFcEEm36mOQy40qQi1H
         aojj+RS3WDbnKMvC2cio71ltrRzoRYRYtuZ9JyPEfu+/40Wx5PFw+Djvb0pqcslmMAbS
         DoRiWn72zxL3bPDVE7Jh0PM8+/c4b8UOSGe7i6YIxY4NeY+7wh2lVXxdBAoLQeqYivUM
         skvQ==
X-Gm-Message-State: ANhLgQ184hKZAj0XsGCJRvAT5e46j5ZikdDao+aSX6l6Fu5VtSqLr8JK
	AuuKrpChZe22AjgSYdenjMxPBALKuVGuOwFsDOu2rK3+x1U=
X-Google-Smtp-Source: ADFU+vu7QEpVvCL/YUIeKPwz5sVa/oSWOpM5Ox/Os6VmIp/0h47NphTcjNFm5JFb98ftEhemKZoI+37uQSzs5/lMDLs=
X-Received: by 2002:a02:c792:: with SMTP id n18mr2319391jao.5.1584677421854;
 Thu, 19 Mar 2020 21:10:21 -0700 (PDT)
MIME-Version: 1.0
From: "Emily" <easmith5555@gmail.com>
Date: Thu, 19 Mar 2020 23:10:11 -0500
Message-ID: <CAAV2bM0jA_0QbKaRPmWMXss+Kt5kv_KbLvLHaCRKpY9PeVxM4w@mail.gmail.com>
Subject: Patching submodules
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d0317505a14176b3"

--000000000000d0317505a14176b3
Content-Type: text/plain; charset="UTF-8"

Hi all -

I have a recipe that I'd like to patch - the source is in a repo which has
a submodule, and the patch occurs in the submodule. Is there a way I can
apply this patch without getting an error? I do kind of understand why it's
a problem - the patch is changing the pointer of the submodule to a
commit which doesn't actually exist. Do I need to build the submodule as a
separate recipe and patch it separately maybe?

I used devtool for the patch and if I don't run the devtool reset command,
then everything builds, but I think this is just because the workspace
created by devtool was added as a layer, which probably isn't a good
long term solution.

The error I get (pasted below) says I can "enforce with -f" but I'm not
sure where that option goes exactly. Thanks for the help!

Emily

Error on build:
ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Command
Error: 'quilt --quiltrc
/local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/etc/quiltrc
push' exited with 0  Output:
Applying patch 0001-Update-Poverty-to-point-to-boost-python3.patch
File Poverty is not a regular file -- refusing to patch
1 out of 1 hunk ignored -- rejects in file
Patch 0001-Update-Poverty-to-point-to-boost-python3.patch does not apply
(enforce with -f)
ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Function
failed: patch_do_patch

--000000000000d0317505a14176b3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all -=C2=A0<div><br></div><div>I have a recipe that I&#=
39;d like to patch - the source is in a repo which has a submodule, and the=
 patch occurs in the submodule. Is there a way I can apply this patch witho=
ut getting an error? I do kind of understand why it&#39;s a problem - the p=
atch is changing the pointer of the submodule to a commit=C2=A0which doesn&=
#39;t actually exist. Do I need to build the submodule as a separate recipe=
 and patch it separately maybe?=C2=A0</div><div><br></div><div>I used devto=
ol for the patch and if I don&#39;t run the devtool reset command, then eve=
rything builds, but I think this is just because the workspace created by d=
evtool was added as a layer, which probably isn&#39;t a good long=C2=A0term=
 solution.=C2=A0</div><div><br></div><div>The error I get (pasted below) sa=
ys I can &quot;enforce with -f&quot; but I&#39;m not sure where that option=
 goes exactly. Thanks for the help!=C2=A0<br></div><div><br></div><div>Emil=
y</div><div><br></div><div>Error on build:=C2=A0</div><div>ERROR: opc-ua-se=
rver-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Command Error: &#39;quilt =
--quiltrc /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky=
-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-nativ=
e/etc/quiltrc push&#39; exited with 0 =C2=A0Output:<br>Applying patch 0001-=
Update-Poverty-to-point-to-boost-python3.patch<br>File Poverty is not a reg=
ular file -- refusing to patch<br>1 out of 1 hunk ignored -- rejects in fil=
e<br>Patch 0001-Update-Poverty-to-point-to-boost-python3.patch does not app=
ly (enforce with -f)<br>ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309=
-r0 do_patch: Function failed: patch_do_patch<br></div></div>

--000000000000d0317505a14176b3--
