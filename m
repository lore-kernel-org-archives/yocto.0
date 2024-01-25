Return-Path: <sateesh0457@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1314C47258
	for <webhook@archiver.kernel.org>; Thu, 25 Jan 2024 05:22:42 +0000 (UTC)
Subject: /etc/passwd  root login issue. 
To: yocto@lists.yoctoproject.org
From: "sateesh m" <sateesh0457@gmail.com>
X-Originating-Location: Taipei, Taipei City, TW (163.116.222.124)
X-Originating-Platform: Linux Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Jan 2024 21:22:34 -0800
Message-ID: <qQid.1706160154734923728.6tWV@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="zTiBZg60hjFGMEpUCbyK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Jan 2024 05:22:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62281

--zTiBZg60hjFGMEpUCbyK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I have created MP.appl, MP.prod, MP.serv three users and root user. After c=
ompile my recipe my order is coming as mentioned below /etc/passwd
MP.appl:x:0:1000::/home/MP.appl:/bin/sh
MP.prod:x:0:1001::/home/MP.prod:/bin/sh
MP.serv:x:0:1002::/home/MP.serv:/bin/sh
root:x:0:0:root:/home/root:/bin/sh

Because of this reason my credentials login is correct root & my password.=
=C2=A0 But it is entering to=C2=A0MP.appl@ even root.
So manually I rearrange oder as mentioned below root@=C2=A0 its coming. I w=
ant this order and why it is changing. if I want to get as mentioned below =
How can I rectify it.
root:x:0:0:root:/home/root:/bin/sh
MP.appl:x:0:1000::/home/MP.appl:/bin/sh
MP.prod:x:0:1001::/home/MP.prod:/bin/sh
MP.serv:x:0:1002::/home/MP.serv:/bin/sh

Thanks & Regards,
Sateesh

--zTiBZg60hjFGMEpUCbyK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I have created MP.appl, MP.prod, MP.serv three users and root user. Af=
ter compile my recipe my order is coming as mentioned below /etc/passwd<br =
/>MP.appl:x:0:1000::/home/MP.appl:/bin/sh</div>
<div>MP.prod:x:0:1001::/home/MP.prod:/bin/sh</div>
<div>MP.serv:x:0:1002::/home/MP.serv:/bin/sh</div>
<div>root:x:0:0:root:/home/root:/bin/sh<br /><br />Because of this reason m=
y credentials login is correct root &amp; my password.&nbsp; But it is ente=
ring to&nbsp;MP.appl@ even root.&nbsp;<br />So manually I rearrange oder as=
 mentioned below root@&nbsp; its coming. I want this order and why it is ch=
anging. if I want to get as mentioned below How can I rectify it.&nbsp;<br =
/>root:x:0:0:root:/home/root:/bin/sh<br />
<div style=3D"line-height: 1.42857;">MP.appl:x:0:1000::/home/MP.appl:/bin/s=
h</div>
<div style=3D"line-height: 1.42857;">MP.prod:x:0:1001::/home/MP.prod:/bin/s=
h</div>
<div style=3D"line-height: 1.42857;">MP.serv:x:0:1002::/home/MP.serv:/bin/s=
h</div>
<div style=3D"line-height: 1.42857;"><br />Thanks &amp; Regards,<br />Satee=
sh</div>
</div>

--zTiBZg60hjFGMEpUCbyK--

