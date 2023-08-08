Return-Path: <joel.winarske@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939EAC04A6A
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 18:07:51 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web11.69153.1691518071129728776
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 11:07:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Z8jDZbJ2;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: joel.winarske@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-686efb9ee0cso5657380b3a.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 11:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691518070; x=1692122870;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9/RGuNnbLXwODWOBFLekV18WAvJFUF69JlVlnXIXah0=;
        b=Z8jDZbJ2kUQx66eC02hxetQssa7G93cbiVqw7Xi2AjuV64or83UKNYM5/4xelWr9CJ
         i/l40TlQzs9FV7gIhEOFD8XzQdVRO6hJw6GoakafWoKbAsO9wGnw56qtMft78fCqUNes
         2QZarUNfAWHs7P9Y25gY7pb/QuGPdeHNdUDmSO1q0znzcIZK/cICGFsAWyFIp/mthD3r
         ZU/8HZkZ/55rfAF/tIuCLEia/EcwO0r0TtoaDNSWC5MHXnGhuXn/I+yxOziKqXoP0vNC
         ThpMcU3GTYmOVVB3acliG6cvZyuwF6dJ7oiB/x6pPMyWBK6mYtvO7z76YFYWL6zwTVB6
         g4pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691518070; x=1692122870;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9/RGuNnbLXwODWOBFLekV18WAvJFUF69JlVlnXIXah0=;
        b=MAd+fbg5jy9zplG/PUDtLNr5lFH6zaD34X4umYWy4JmeXv+8ycptHyJjHQAnvjooFs
         NLuyQztIG7tMjlRYIlGBhLseHn6+oago30Zai8EIkaTAB/5ZURNwY3mkjT3++FWAjqV8
         ZCHeoerh2dBLleBfA7HxERlZNQsRH79c8y67yisxIR27lJMi73pCAWBbTFhuLy4BCNeO
         F+1+ixZYuRWlVazKsIH0jb1YWwdnf4u9L4W46/6kmrHafQDhn8ViA8DcZPajvAC8QLiP
         x2vNyCgV4FLtBl1ELr1Wl93H4iKTqUMIiKDZEmw7tph1ipL+7KLACuc9tji8xhKMU45U
         Gi2g==
X-Gm-Message-State: AOJu0YzDPpMDhpn/g3tQopHfd6iRPygpnhKPVU1keg/BTBK6P227sXiS
	94raWFMVk2Yr3lH/DeCeIvlFUvzPWHHMNArqO81F0uyCmGg=
X-Google-Smtp-Source: AGHT+IH/bUU2IVUxNg9Af0ckQfG1kmM40A0HyjSjI6DoT0v7k8RoUBo9jWQ0QLZdHSjo8rXIPd+XGPERO8gZBgz1ISw=
X-Received: by 2002:a05:6a00:21d0:b0:682:713e:e510 with SMTP id
 t16-20020a056a0021d000b00682713ee510mr259604pfj.27.1691518070166; Tue, 08 Aug
 2023 11:07:50 -0700 (PDT)
MIME-Version: 1.0
From: Joel Winarske <joel.winarske@gmail.com>
Date: Tue, 8 Aug 2023 11:07:39 -0700
Message-ID: <CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
Subject: Rootless Podman
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b419fa06026d3d73"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 18:07:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60743

--000000000000b419fa06026d3d73
Content-Type: text/plain; charset="UTF-8"

Anyone successfully building using Rootless Podman?

I'm seeing a variety of strange issues.

My baseline podman config:
--user 1001:1001
--ipc host
--privileged
--security-opt label=disable
--pid host
--userns keep-id
--ulimit host
--mount type=devpts,destination=/dev/pts
--security-opt label=disable
--group-add keep-groups

--000000000000b419fa06026d3d73
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Anyone successfully building using Rootless Podman?</=
div><div><br></div><div>I&#39;m seeing a variety of strange issues.<br><br>=
</div><div>My baseline podman config:<br><div style=3D"color:rgb(204,204,20=
4);background-color:rgb(31,31,31);font-family:&quot;Droid Sans Mono&quot;,&=
quot;monospace&quot;,monospace;font-weight:normal;font-size:14px;line-heigh=
t:19px;white-space:pre"><div><span style=3D"color:rgb(204,204,204)">       =
 </span><span style=3D"color:rgb(206,145,120)">--user 1001:1001</span></div=
><div><span style=3D"color:rgb(204,204,204)">        </span><span style=3D"=
color:rgb(206,145,120)">--ipc host</span></div><div><span style=3D"color:rg=
b(204,204,204)">        </span><span style=3D"color:rgb(206,145,120)">--pri=
vileged</span></div><div><span style=3D"color:rgb(204,204,204)">        </s=
pan><span style=3D"color:rgb(206,145,120)">--security-opt label=3Ddisable</=
span></div><div><span style=3D"color:rgb(204,204,204)">        </span><span=
 style=3D"color:rgb(206,145,120)">--pid host</span></div><div><span style=
=3D"color:rgb(204,204,204)">        </span><span style=3D"color:rgb(206,145=
,120)">--userns keep-id</span></div><div><span style=3D"color:rgb(204,204,2=
04)">        </span><span style=3D"color:rgb(206,145,120)">--ulimit host</s=
pan><span style=3D"color:rgb(204,204,204)"> </span></div><div><span style=
=3D"color:rgb(204,204,204)">        </span><span style=3D"color:rgb(206,145=
,120)">--mount type=3Ddevpts,destination=3D/dev/pts</span></div><div><span =
style=3D"color:rgb(204,204,204)">        </span><span style=3D"color:rgb(20=
6,145,120)">--security-opt label=3Ddisable</span></div><div><span style=3D"=
color:rgb(204,204,204)">        </span><span style=3D"color:rgb(206,145,120=
)">--group-add keep-groups</span></div><div><span style=3D"color:rgb(204,20=
4,204)"><br></span></div></div></div><div><br><br></div></div>

--000000000000b419fa06026d3d73--

