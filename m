Received: from eastern.birch.relay.mailchannels.net (eastern.birch.relay.mailchannels.net [23.83.209.55])
 by mx.groups.io with SMTP id smtpd.web12.4732.1626767569808618854
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Jul 2021 00:52:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@scalardata.com header.s=scalardata.com header.b=ovLv2039;
 spf=pass (domain: scalardata.com, ip: 23.83.209.55, mailfrom: simon.haines@scalardata.com)
X-Sender-Id: dreamhost|x-authsender|simon.haines@scalardata.com
Received: from relay.mailchannels.net (localhost [127.0.0.1])
	by relay.mailchannels.net (Postfix) with ESMTP id 04E0B922C47
	for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 07:52:47 +0000 (UTC)
Received: from pdx1-sub0-mail-a47.g.dreamhost.com (100-98-55-150.trex-nlb.outbound.svc.cluster.local [100.98.55.150])
	(Authenticated sender: dreamhost)
	by relay.mailchannels.net (Postfix) with ESMTPA id 815E7922C45
	for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 07:52:46 +0000 (UTC)
X-Sender-Id: dreamhost|x-authsender|simon.haines@scalardata.com
Received: from pdx1-sub0-mail-a47.g.dreamhost.com (pop.dreamhost.com
 [64.90.62.162])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384)
	by 100.98.55.150 (trex/6.3.3);
	Tue, 20 Jul 2021 07:52:46 +0000
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|simon.haines@scalardata.com
X-MailChannels-Auth-Id: dreamhost
X-Irritate-Glossy: 1acf4d3e2db07048_1626767566799_4226558543
X-MC-Loop-Signature: 1626767566799:3531154714
X-MC-Ingress-Time: 1626767566798
Received: from pdx1-sub0-mail-a47.g.dreamhost.com (localhost [127.0.0.1])
	by pdx1-sub0-mail-a47.g.dreamhost.com (Postfix) with ESMTP id 498288BC45
	for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 00:52:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=scalardata.com; h=
	mime-version:references:in-reply-to:from:date:message-id:subject
	:to:cc:content-type; s=scalardata.com; bh=6gzKG8ltN6eLT+DFbJrF77
	3rh4A=; b=ovLv2039fuYUfT4ZjzfLPh2ij1IskukIltPm+ZCkaQwBmKcvrB20pB
	FQ9vIqgjnyfK9eK8rxiMNpH4Rq1XDaX/Ea3qwMTAHO5Gayd+4/dAUx+SY27g3baw
	+sqwAt+CVmWQkTraElDr5mlzxiBbpD/olCzJw4CvWevXQAUjSWUKw=
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: simon.haines@scalardata.com)
	by pdx1-sub0-mail-a47.g.dreamhost.com (Postfix) with ESMTPSA id 32A868BC43
	for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 00:52:45 -0700 (PDT)
Received: by mail-il1-f177.google.com with SMTP id z1so18441234ils.0
        for <yocto@lists.yoctoproject.org>; Tue, 20 Jul 2021 00:52:45 -0700 (PDT)
X-Gm-Message-State: AOAM530n+nQwlFgGCbajMjN3B+bWtvvz+9WEVmzs8wwmqBc0FAIhoQXY
	T19lpFWDS/bwPULWX+bqevcvO8uMO9Fve7E+Cg==
X-Google-Smtp-Source: ABdhPJzur3uy0+Tds7x8bVmBZWH5f9Z4hUxkumoymgd4m5WN+FayuoBc1v5G3eRwdW/ji80XnCSXwTPUNI7ieQqQLeU=
X-Received: by 2002:a92:c805:: with SMTP id v5mr18392403iln.293.1626767565273;
 Tue, 20 Jul 2021 00:52:45 -0700 (PDT)
MIME-Version: 1.0
References: <CACrbFVdaFGVGaSw0+WHSxb4Z05khof1y67wc_XDOWEzPqXLQNQ@mail.gmail.com>
 <0d6d45ddbf0c5a6e74f0ee3a465f591347fdd40c.camel@linuxfoundation.org>
In-Reply-To: <0d6d45ddbf0c5a6e74f0ee3a465f591347fdd40c.camel@linuxfoundation.org>
X-DH-BACKEND: pdx1-sub0-mail-a47
From: "Simon Haines" <simon.haines@scalardata.com>
Date: Tue, 20 Jul 2021 17:52:33 +1000
X-Gmail-Original-Message-ID: <CACrbFVc2JvGkkjW+9OuOeDLjMuvDbXCHBhnfecCwZkFnofG03g@mail.gmail.com>
Message-ID: <CACrbFVc2JvGkkjW+9OuOeDLjMuvDbXCHBhnfecCwZkFnofG03g@mail.gmail.com>
Subject: Re: [yocto] Exception: NotADirectoryError building Hardknott
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dc405005c789568f"

--000000000000dc405005c789568f
Content-Type: text/plain; charset="UTF-8"

On Mon, 19 Jul 2021 at 01:17, Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> How is your container filesystem setup/configured? It looks like the
> filesystem
> isn't liking the build trying to create hardlinked files. It is odd it
> would
> get as far as gmp-native before having problems. That file definitely
> isn't a
> directory too, it is an odd error.
>
>
Thanks Richard, I suspect you're right. I'm using fuse-overlayfs which I'm
mounting with the 'noxattrs' option because the host is Fedora and its
SELinux configuration interferes with yocto in other ways. It looks like
overlayfs uses xattrs in some cases for hard link resolution. I'll have to
dig in deeper there, thanks for the pointer.

Cheers,
Simon.

--000000000000dc405005c789568f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, 19 Jul 2021 at 01:17, Richard Purdie &lt;<a href=3D"mailto:r=
ichard.purdie@linuxfoundation.org">richard.purdie@linuxfoundation.org</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0p=
x 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">How is=
 your container filesystem setup/configured? It looks like the filesystem<b=
r>
isn&#39;t liking the build trying to create hardlinked files. It is odd it =
would<br>
get as far as gmp-native before having problems. That file definitely isn&#=
39;t a<br>
directory too, it is an odd error.<br>
<br></blockquote><div><br></div><div>Thanks Richard, I suspect you&#39;re r=
ight. I&#39;m using fuse-overlayfs which I&#39;m mounting with the &#39;nox=
attrs&#39; option because the host is Fedora and its SELinux configuration =
interferes with yocto in other ways. It looks like overlayfs uses xattrs in=
 some cases for hard link resolution. I&#39;ll have to dig in deeper there,=
 thanks for the pointer.</div><div><br></div><div>Cheers,</div><div>Simon.<=
/div></div><div class=3D"gmail_quote"><br></div><div class=3D"gmail_quote">=
<br></div></div>

--000000000000dc405005c789568f--
