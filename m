Return-Path: <rakeshkumar0815@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6059DC433EF
	for <webhook@archiver.kernel.org>; Tue, 14 Dec 2021 19:34:04 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
 [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web09.30564.1639510442582596206
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 11:34:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o9vHn7R0;
 spf=pass (domain: gmail.com, ip: 209.85.219.172,
 mailfrom: rakeshkumar0815@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id v138so48958801ybb.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 14 Dec 2021 11:34:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=w6ANwEhUz2XzOKkSHENvhr8XEiFlrnXDeyuNn4sC204=;
        b=o9vHn7R0yuaVHB5Sh0BpljG93NouFHNlE8ZfrdDrCL0ULsHAgk9JBkoRa8ic69CyrZ
         Ajjh4VWbr2FeNqqFV/cJpgUr2WIb4Ji7hJ6hUabHZLz20CpK0LR2AW6vygdKuffFIz+8
         GtiO6o3geBOWkW/e2IddX5sxUnlk/j1LjFCzbNtMd7HL/d6rmfgGzAQaXWL++pSC7gbZ
         HhfkNMNvB9djTkJEQI9R0bpnN4BKIAy1b9UZRsoewKu2Inka0XIneqVzW8tRhLMcp6Wz
         OHODXMkn+GGKpwEq9Gb84nN+L6bVVZ5+RpIKrbxrC2T1IXuu0tS+WvsVmLyMnKsriwhu
         oY0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=w6ANwEhUz2XzOKkSHENvhr8XEiFlrnXDeyuNn4sC204=;
        b=4nTvMTb1XrFsjc4j3hU7evHLO5NW+V42YeEx+gZg9FZc3CU6N1Flm/Avn3pkx6ZU95
         MU/N+YdQQVRdX46GdBFBUwLGXlajGS60Tg1P/8q5sXBP+AFNjHuhqSwXgELvJ9E9UJLH
         niby+BI/30i0MZS3JQTco/25NgHt44wzGz8OYJYz3TeLpjpGNdLLvvZoL6pUWEWSxC0q
         aVJ68iw4MVpFzJXBHI8jBERPngB5/VDhwk9UaNS+uOlXP06zXCem8YjvzaWDWbwS+XA9
         x0Zx4kFK0db6G04trL54KB1DolKhw9Y/dmbpnJd9Mt9NKYZHqB8M/nSc+kuCbQk+n7nr
         pbxg==
X-Gm-Message-State: AOAM532sKFcWABhxir30UyHZTXDXjPO3sFYFjVJN+Nb5p1hjBScVuUT7
	xz2ZrGyK/RFrKuKoIOO/OX47vejLX8CfHU7f5hlBvEzl
X-Google-Smtp-Source: 
 ABdhPJz7WRYQBJ9b6yTLfQR4h9HSGiO0fA+FBb3p96r8XIaBrpEgXofnSKVWuNsNnrTXBm7SGmjADG4YKEd6fXo9w+s=
X-Received: by 2002:a25:3082:: with SMTP id w124mr1251028ybw.6.1639510441730;
 Tue, 14 Dec 2021 11:34:01 -0800 (PST)
MIME-Version: 1.0
From: Rakesh Kumar <rakeshkumar0815@gmail.com>
Date: Wed, 15 Dec 2021 01:03:51 +0530
Message-ID: 
 <CAOQhzYZG8V6tfY7oy863_4s+a3y1WFc2aSOPMag2b89pLgA+=g@mail.gmail.com>
Subject: [Yocto]Using FreeRadius project on Yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007c242b05d3204541"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 Dec 2021 19:34:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55588

--0000000000007c242b05d3204541
Content-Type: text/plain; charset="UTF-8"

Hi Team,


I am trying to build radius server with the use of Yocto project and looks
like freeradius recipe is already included in
meta-openembedded/meta-networking/recipes-connectivity/freeradius


I have included meta-openembedded layer in my conf/bblayers.conf file and
built core-image-base image.


But I couldn't see anything related to radius server in my <workspace>/tmp
directory


"tmp/work/ccimx6ul/core-image-base/1.0-r0/rootfs/etc/init.d"


Could you please let me know do I need to add anything specific to build
radius server apart from using meta-openembedded recipe? I apologize if
this is the wrong mailing list.


Thanks much!


Best Regards

Rakesh kumar

--0000000000007c242b05d3204541
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><=
div dir=3D"auto">Hi Team,</div><div dir=3D"auto"><br></div><div dir=3D"auto=
"><br></div><div dir=3D"auto">I am trying to build radius server with the u=
se of Yocto project and looks like freeradius recipe is already included in=
 meta-openembedded/meta-networking/recipes-connectivity/freeradius=C2=A0</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto=
">I have included meta-openembedded layer in my conf/bblayers.conf file and=
 built core-image-base image.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto"><br></div><div dir=3D"auto">But I couldn&#39;t see anything related t=
o radius server in my &lt;workspace&gt;/tmp directory=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">&quot;tmp=
/work/ccimx6ul/core-image-base/1.0-r0/rootfs/etc/init.d&quot;</div><div dir=
=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Could you=
 please let me know do I need to add anything specific to build radius serv=
er apart from using meta-openembedded recipe? I apologize if this is the wr=
ong mailing list.</div><div dir=3D"auto"><br></div><div dir=3D"auto"><br></=
div><div dir=3D"auto">Thanks much!</div><div dir=3D"auto"><br></div><div di=
r=3D"auto"><br></div><div dir=3D"auto">Best Regards</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Rakesh kumar</div><div dir=3D"auto"><br></div><=
div dir=3D"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto"><br></div></div>

--0000000000007c242b05d3204541--

