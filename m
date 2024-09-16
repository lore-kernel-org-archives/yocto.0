Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F12E3C3ABCB
	for <webhook@archiver.kernel.org>; Mon, 16 Sep 2024 19:10:52 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web11.3473.1726513844621021730
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Sep 2024 12:10:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=NiguaP/n;
 spf=pass (domain: snapchat.com, ip: 209.85.208.52, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5c26815e174so4960597a12.0
        for <yocto@lists.yoctoproject.org>; Mon, 16 Sep 2024 12:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1726513843; x=1727118643; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tIuoW2762LKvb5RFdFgtghcKjcbctnEajBOgzUoS5AU=;
        b=NiguaP/nFxDYsiHRqIluk4NJMhRto+ZXGjAXWELDhuh3ElECalYPerF6lfAAAzEViQ
         fYbpZuUxNt9B+0DRZxBdxCHfEv4tbVHK85hHs/SvZC/9C+lIHhwVjk2FkY+Aj+E5zsp3
         4H6lG9Ho0O6XxdKb251q11Xi1hi6E9MZRLGiQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726513843; x=1727118643;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tIuoW2762LKvb5RFdFgtghcKjcbctnEajBOgzUoS5AU=;
        b=TZIgZjZ8/s93yNEMkmC8nVEmLDPn15x7gvFGrVVMqMahqQHDPbSOkryk6XOYgg385+
         O8RL7QpV0/hchPtY/HgCZLcIOzVPbsoHJjQ9oJc9vFiT5p2fg7yc2NX+bvK/vCjEQSHU
         jA1Y7NLpZGXAG0gCcx6IIEib/VxHcOl7zLYfY1HECr2zvEBR9wDfz/0ZwKBSxMNBdWzw
         ZjkLpN+h1MY6uhIJWd67z2uB4aFRJAuKNt3TFneFzGrwIt+8gOUvHTgCVzC6lF+7wwGA
         6bd1A+esD4/4gXPnRZvB4vyoWY1T/u6FtigriiutH5EQhLQaZkJ9AKm9pYDz2W36v2rK
         39iA==
X-Gm-Message-State: AOJu0YwZ4bJfu5q4SEMOFPHAgiwSB4j33zGxo6CUbHRBB8OJCWwXL9Gp
	PjlGkfATmGyA0is1J/Jo5Ir5VIFW2vvTE0s7XYUcE9F9xezmrFKzd9IKpp24G7v9+PFvn9I9Aby
	z+fUGYRZwEF8elBvgVZDBJUKpkCRJgJyOwBTmDPXnFjyYrgGvw6Om+w==
X-Google-Smtp-Source: AGHT+IE/+yTIy0yAdP6O2HesTwA1h5skcTly90apN03LUIEi2CRAXYKgOPQHu9UBLZ6CPqV2QtwZEzB+QfutV/OfuCg=
X-Received: by 2002:a17:906:c109:b0:a86:7a84:abb7 with SMTP id
 a640c23a62f3a-a9047ca076emr1129392266b.20.1726513842333; Mon, 16 Sep 2024
 12:10:42 -0700 (PDT)
MIME-Version: 1.0
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Mon, 16 Sep 2024 21:10:31 +0200
Message-ID: <CAHUKmYZ5UqqB7VAjTL9fZ3D3rdvohq-084SxF_6g9+MUxccV9w@mail.gmail.com>
Subject: kexec-tools dependency on makedumpfile
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000045cf170622415426"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 16 Sep 2024 19:10:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63843

--00000000000045cf170622415426
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,
the recipe kexec-tools (meta/recipes-kernel/kexec/kexec-tools) requires
makedumpfile since the kdump script was added in 2015.
makedumpfile is available in meta-openembedded (
https://github.com/openembedded/meta-openembedded/tree/master/meta-oe/recip=
es-kernel/makedumpfile
).

Also, the failure caused by the missing binary is non-trivial since it
happens while running the kdump capture kernel, and immediately reboots
after the error, leaving no logs of the error.

What would be the proper fix? Add a RDEPENDS to makedumpfile even though it
is not part of poky? Move makedumpfile from meta-openembedded to poky?

Thanks,
=C3=89tienne

--00000000000045cf170622415426
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br>the recipe kexec-tools (meta/recipes-kernel/kexec/k=
exec-tools) requires makedumpfile since the kdump script was added in 2015.=
<br>makedumpfile is available in meta-openembedded (=C2=A0<a href=3D"https:=
//github.com/openembedded/meta-openembedded/tree/master/meta-oe/recipes-ker=
nel/makedumpfile">https://github.com/openembedded/meta-openembedded/tree/ma=
ster/meta-oe/recipes-kernel/makedumpfile</a> ).<div><br>Also, the failure c=
aused by the=C2=A0missing binary is non-trivial since it happens while runn=
ing the=C2=A0kdump capture kernel,=C2=A0and immediately reboots after the e=
rror, leaving no logs of the error.<br><br></div><div>What would be the pro=
per fix? Add a RDEPENDS to makedumpfile even though it is not part of poky?=
 Move makedumpfile from meta-openembedded to poky?<br><br>Thanks,<br>=C3=89=
tienne</div></div>

--00000000000045cf170622415426--

