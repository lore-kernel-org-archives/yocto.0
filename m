Return-Path: <piotr.piwko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E62DE00E23; Thu, 10 May 2018 01:59:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (piotr.piwko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89558E00D60
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 01:59:56 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id b18-v6so1179890lfa.9
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 01:59:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OjRWFABFrDlYb3SlfugtspJIYuxqBuHbHKK/gpSNZg8=;
	b=PFxAeFyLaXsGfiZiyTlfEPZ1rgI9Tdmcb1RbFL9jRqMebsbW70LFN+o2fyxo7KI7b0
	D5jAwzJ2XLWrxMi+xKJOUV8uKw2Cu2QhqMqs9pWQhRFHqWJDBrWYi+8OFBLIfJ6WPrCb
	IbPCMC00vn+XJusFbOX4LYKXMkR+9pBJjZb+okeTVakJAkP++kyv68TBKlDcrVLWVVZP
	/oUVazSkUP/S2MhxicMxVCStIaROB8M1f099WJZIX5q0PeSDKbRIFVz8f1q+a562OVl4
	I71xQ2kAh+2ie/JSjctQWlUVAZMuO61lC6H3aBH5IOHICS1f6386z7RR1aNbtSeJiDiw
	3Qyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OjRWFABFrDlYb3SlfugtspJIYuxqBuHbHKK/gpSNZg8=;
	b=TLL8PgO2f1bTlbVDvW0mjA/1ZyCwePCkaXtCmJNh6xJwFwEjeeY8GwKuuk1m+JRR9z
	xo/w3nTmjVt7EbSsoh/iGn6PNKA2pP78IAuK6hphXkzJCs6iCdhOfQax51y5mkl9SsVH
	dB3e1qkR14dQelodB1QtyD0wJmjZIppEmUnKFmsZTAZqOeO7y7kLXA3/6g4JOe36xauU
	FDd2+P1nvjVnzUfMmyV4cF5xa1sEPZ8bWSNlTJ0jDMfCg+xKHdC3mQygoEqfgjD6qydR
	CtKY6uSbOqlpgVOAXAWZ6oNTo2nGLmsYxrKkC2LKwKoYfXzDifJzWyKkFS2CcFW0B5o7
	byfw==
X-Gm-Message-State: ALKqPwdP7zNp+v0SPAB4tWbbGBtxj/fzxKAgcL1iHpeILNRG4NzoZ106
	ay3E+qikmGLSihXxgUIELKvxlSGrQJO2HsROtUo=
X-Google-Smtp-Source: AB8JxZr0vfEBeX3gKUpRD9E9ne1/2UebGjCBWfDuHEcREoH+S19dC5JVL4O1a/ZKAzYTHkb93lrwDgzblz+7NrAsTsU=
X-Received: by 2002:a2e:c41:: with SMTP id o1-v6mr511020ljd.87.1525942795336; 
	Thu, 10 May 2018 01:59:55 -0700 (PDT)
MIME-Version: 1.0
References: <CAMTWR-MFckD=GaqL-iteivzh7fPn+MHtYES+gGkWZyOMu7E9sQ@mail.gmail.com>
	<d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
In-Reply-To: <d2ed93c9-f746-6e37-c959-66a5eebfb93d@windriver.com>
From: Piotr Piwko <piotr.piwko@gmail.com>
Date: Thu, 10 May 2018 08:59:44 +0000
Message-ID: <CAMTWR-Np4pd8tytDdOoabzEZsqU=2w95Y9ddh6UOsD4-F4eDCw@mail.gmail.com>
To: Qi.Chen@windriver.com
Cc: yocto@yoctoproject.org
Subject: Re: Check IMAGE_FEATURES content in recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 May 2018 08:59:57 -0000
Content-Type: multipart/alternative; boundary="000000000000437e99056bd63e30"

--000000000000437e99056bd63e30
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

czw., 10 maj 2018 o 10:45 ChenQi <Qi.Chen@windriver.com> napisa=C5=82(a):

> Hi Piotr,
>
> VAR set in recipe A cannot be accessed by recipe B.
>

All right, but what about DISTRO_FEATURES? It is available everywhere, so
maybe there is some possibility to do so ...


> For 'read-only-rootfs' image feature, tweaks are done in functions
> executed after generating rootfs.
> meta/classes/rootfs-postcommands.bbclass:ROOTFS_POSTPROCESS_COMMAND +=3D
> '${@bb.utils.contains("IMAGE_FEATURES", "read-only-rootfs",
> "read_only_rootfs_hook; ", "",d)}'
>
> Can you use a similar approach to solve your problem?
>

Unfortunately, I can not. I would like to make a pkg_postinst() function of
my package dependent on the rootfs mount mode. It should be different if
the rootfs is going to be mounted as read-only.

--=20
Piotr Piwko
http://www.embedded-engineering.pl/

--000000000000437e99056bd63e30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr">czw., 10 maj 2=
018 o 10:45=C2=A0ChenQi &lt;<a href=3D"mailto:Qi.Chen@windriver.com">Qi.Che=
n@windriver.com</a>&gt; napisa=C5=82(a):<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"m_-3825394283286796240moz-cite-prefix">Hi Piotr,<br>
      <br>
      VAR set in recipe A cannot be accessed by recipe B.<br></div></div></=
blockquote><div><br></div><div>All right, but what about DISTRO_FEATURES? I=
t is available everywhere, so maybe there is some possibility to do so ...<=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div bgcolor=3D"#FFFFF=
F" text=3D"#000000"><div class=3D"m_-3825394283286796240moz-cite-prefix">
      For &#39;read-only-rootfs&#39; image feature, tweaks are done in func=
tions
      executed after generating rootfs.<br>
meta/classes/rootfs-postcommands.bbclass:ROOTFS_POSTPROCESS_COMMAND +=3D
      &#39;${@bb.utils.contains(&quot;IMAGE_FEATURES&quot;, &quot;read-only=
-rootfs&quot;,
      &quot;read_only_rootfs_hook; &quot;, &quot;&quot;,d)}&#39;<br>
      <br>
      Can you use a similar approach to solve your problem?<br></div></div>=
</blockquote><div><br></div><div>Unfortunately, I can not. I would like to =
make a pkg_postinst() function of my package dependent on the rootfs mount =
mode. It should be different if the rootfs is going to be mounted as read-o=
nly.</div><div><br></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signa=
ture" data-smartmail=3D"gmail_signature">Piotr Piwko<br><a href=3D"http://w=
ww.embedded-engineering.pl/" target=3D"_blank">http://www.embedded-engineer=
ing.pl/</a></div></div>

--000000000000437e99056bd63e30--
