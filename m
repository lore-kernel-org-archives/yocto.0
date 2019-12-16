Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.5720.1576499005079497784
 for <yocto@lists.yoctoproject.org>;
 Mon, 16 Dec 2019 04:23:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=KBKukqsZ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: aj.ci.01.239@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6279EE011E3; Mon, 16 Dec 2019 04:23:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (aj.ci.01.239[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.169 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2FDBE010D8
	for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 04:23:22 -0800 (PST)
Received: by mail-lj1-f169.google.com with SMTP id z17so6533564ljk.13
        for <yocto@yoctoproject.org>; Mon, 16 Dec 2019 04:23:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Yv178heC2zzDlW7tJkqXXc/4/3wxfIlKQ/IWcA44MWE=;
        b=KBKukqsZ4wVjUOSTVAVzZcq9IIU806/DvLYIGBCWcn4GobJJcDI1BPEUgl8n68qt70
         5wgBNJgQ6V0p2eie+yGRRB860XhnX8PJ1RBDzQdKV3BUVmuNlBm86EEWbOQlwO+d8nfZ
         9xsUm5+Z+izw1MfaMub4jQLi5IHgViuPYHwrhI8eUdHORrAnsmXU6aJa4lPcrUelOBIe
         vTrp5u0H5DYEt2cSEKwKUSN1atyPS/mGcI+kZzdFgTSUQgEf82NK5NJy2arsCeKJX4Cj
         dZWLDvljKPT8+jyGJNyZqmzp0MJkLQQbj9qrt7Njy2pJViT1fLHOTlR46eaBfZBFlsv8
         3l4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Yv178heC2zzDlW7tJkqXXc/4/3wxfIlKQ/IWcA44MWE=;
        b=DgbeXFb4nec772yOrqo6qz9KVsSt2pgpqYV5j5o9ZQlffnku1as39GuONuVlg85e6R
         bU+8H8HOGiZcEzZqiW0vPNtwhhcVCEtKu2zBLB1CPNybcX+Reh3JFZL1JwTiuzi7nDUB
         inTPsvMs/FJC9nvEpldOMLHfDVvYMgYmkkkJJLmLZNvuhYU+wZ0V+alsCyc3y5JOj/a6
         RLAhYq+QkbgjxCubSjKC9lbdeEN75Bw8VbuBVSEi4twx8lSIQeYWSwMtGWXjkXh+Eyol
         SvZfLmzo7nPcZhqPp/CVqkDAs0MNh9bQAzlqi1hPljc4IJHWLyWa90RdCShC+Z1KUrel
         gYBw==
X-Gm-Message-State: APjAAAWkAYFwX+ab29zRiy/FOrhAQknvs9hR0ln6gJ6o/Ft/YgPPaxev
	JQX84IaiKLorCsprvphhXxA+GQgc+nzAPYx6fljvo6o=
X-Google-Smtp-Source: APXvYqx6e/RYi+8ZzifK5XHJDeJPNqia6qXo8dwyPZEa9YDWr0bMZbwLQhDRg+cI3Vdxl0HLkFWvTLaDRPNTxBfCSIE=
X-Received: by 2002:a2e:8505:: with SMTP id j5mr17181004lji.235.1576499001665;
 Mon, 16 Dec 2019 04:23:21 -0800 (PST)
MIME-Version: 1.0
From: "Aj Cit" <aj.ci.01.239@gmail.com>
Date: Mon, 16 Dec 2019 17:53:10 +0530
Message-ID: <CALSaBR-MfrzMpF53_-JM0pnJ5ZBAnVj22UqK8Kzsqnc3sYY9FA@mail.gmail.com>
Subject: Docker Error on Yocto Build on ARM
To: yocto@yoctoproject.org
Cc: kurup.avinash@gmail.com
Content-Type: multipart/alternative; boundary="000000000000fbaaba0599d146e9"

--000000000000fbaaba0599d146e9
Content-Type: text/plain; charset="UTF-8"

Hi,

We are getting the following error while building yocto -warrior QEMUarm64;
however we are getting the following error while running the docker
service.:

systemctl status docker, returned error.
Dec 16 09:00:19 qemuarm64 dockerd[340]: Error starting daemon: Error
initializing network controller: Error creating default "bridge" network:
Failed to program NAT chain: Failed to inject DOCKER in PRERO
UTING chain: iptables failed: iptables --wait -t nat -A PREROUTING -m
addrtype --dst-type LOCAL -j DOCKER: iptables: No chain/target/match by
that name.


also. Dec 16 05:58:53 qemuarm64 dockerd[628]:
time="2019-12-16T05:58:53.499510946Z" level=warning msg="Running modprobe
bridge br_netfilter failed with message: modprobe: WARNING: Module
br_netfilter not found
in directory /lib/modules/5.0.19-yocto-standard\n, error: exit status 1"

Any help will be much appreciated.

Thanks
Aj

--000000000000fbaaba0599d146e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>We are getting the following error =
while building yocto -warrior QEMUarm64; however we are getting the followi=
ng error while running the docker service.:</div><div><br></div><div>system=
ctl status docker, returned error.<br>Dec 16 09:00:19 qemuarm64 dockerd[340=
]: Error starting daemon: Error initializing network controller: Error crea=
ting default &quot;bridge&quot; network: Failed to program NAT chain: Faile=
d to inject DOCKER in PRERO<br>UTING chain: iptables failed: iptables --wai=
t -t nat -A PREROUTING -m addrtype --dst-type LOCAL -j DOCKER: iptables: No=
 chain/target/match by that name.<br></div><div><br></div><div><br></div><d=
iv>also. Dec 16 05:58:53 qemuarm64 dockerd[628]: time=3D&quot;2019-12-16T05=
:58:53.499510946Z&quot; level=3Dwarning msg=3D&quot;Running modprobe bridge=
 br_netfilter failed with message: modprobe: WARNING: Module br_netfilter n=
ot found<br>in directory /lib/modules/5.0.19-yocto-standard\n, error: exit =
status 1&quot;<br></div><div><br></div><div>Any help will be much appreciat=
ed.</div><div><br></div><div>Thanks</div><div>Aj</div></div>

--000000000000fbaaba0599d146e9--
