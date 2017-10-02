Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5B1CE00A9C; Mon,  2 Oct 2017 08:58:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.172 listed in dnsbl.sorbs.net]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4BA30E006CA
	for <yocto@yoctoproject.org>; Mon,  2 Oct 2017 08:58:34 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id v36so5144805ioi.1
	for <yocto@yoctoproject.org>; Mon, 02 Oct 2017 08:58:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Kz4RCDTmc3BK8l8+Ppcsy8VPvne8f7H45m8zuJqgmoU=;
	b=BipX8VD2ZuwjXX1qTpqz5E+oNBNNyIiClKVNdX12Uga4TJWjow0yk+P4tmiNu1FZXZ
	A9KXxTlaqpv93jsL+pz+AQcR5TljHL4AKYDzf5gvgnTQ1pQ06Xz8yzhfKvT1dr1k3RIb
	K2okX4wRE9MdbCyKUsOabIVrNVcz1E//zCph4HYAYGgOFDI3UtbcTyNCnohD0Z5+wUnD
	8AZOtgd0KO18Hn7vcZaF6uTYBQwIJ3v0WEHywUwLI7ef4xV3f5ORL6SWRabcoponbxUn
	TDcRCzprE1Q/5Dht+H+p4v1k5xxNDWKPHQi53N2NdBLW+SW7ibs1mDjFxKbmwgeIWyPu
	G0Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Kz4RCDTmc3BK8l8+Ppcsy8VPvne8f7H45m8zuJqgmoU=;
	b=uL0jNm1n+ga96g7PWbQuzlo4Z2ITtzA8Tw2TvOD9yus3Nh1mWIykjfVu6B7i0PQAck
	WulGOE4w6yRWJR9FCDVC6zxXZupJQuISYpwIhqLIaXYg22BFoVYEyaKl3lkhU+psG8kP
	1RZJ39lXiRaM9tc4U4yYowpP9CYMtd7OVD46nS5zbZRjOxg6wDRDr/KP/xwrh79bpUdX
	Dn5v29yuVX3Q0Z27dTQLhZcrsq3KzOkhvDqDshwGJor2I6dLD77yxkGmqLxqRJuxke9K
	l0tnw1XfbUr3zfeLf2+XCTfHhHcruoGjmDfbBpTLQq34IrXYKUGA/6wKJCPkbOaJZ4XM
	VhVA==
X-Gm-Message-State: AHPjjUgegcbHsHB9+StcCRiGyBdN13oTlTg46+IumX2WRSxf8Vgfuzvo
	GFcn9zZ0nctRKYihkA/E1XROscZcHSNoQnUkmfJw3A==
X-Google-Smtp-Source: AOwi7QDmAM38OqFBmv6yAuFKSk/Doqytcfxx/PDC4fHqrh9atF04NUcgTzuWGxnelaz4bS6lNuRRR1qmJ+KtxpTA+co=
X-Received: by 10.107.41.135 with SMTP id p129mr23754626iop.142.1506959913438; 
	Mon, 02 Oct 2017 08:58:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.19.68 with HTTP; Mon, 2 Oct 2017 08:58:12 -0700 (PDT)
In-Reply-To: <1BBEA542-0994-4239-8593-A48C6476B7E3@gmail.com>
References: <1BBEA542-0994-4239-8593-A48C6476B7E3@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 2 Oct 2017 16:58:12 +0100
Message-ID: <CAJTo0LaJPuk9dV-EB9Ai2XDwExLxBCiK=gSjD6rkWSp_5kLCGQ@mail.gmail.com>
To: Aaron Sarginson <windswept321@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems when adding custom layer
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
X-List-Received-Date: Mon, 02 Oct 2017 15:58:35 -0000
Content-Type: multipart/alternative; boundary="001a1141f226656365055a9272db"

--001a1141f226656365055a9272db
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 2 October 2017 at 16:55, Aaron Sarginson <windswept321@gmail.com> wrote:

> When added, I receive parsing errors at the inherit =E2=80=9Csystemd=E2=
=80=9D line.
>

No quotes needed, just:

inherit systemd

Ross

--001a1141f226656365055a9272db
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 2 October 2017 at 16:55, Aaron Sarginson <span dir=3D"l=
tr">&lt;<a href=3D"mailto:windswept321@gmail.com" target=3D"_blank">windswe=
pt321@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div cl=
ass=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:=
break-word"><div>When added, I receive parsing errors at the=C2=A0<font col=
or=3D"#454545" face=3D"Helvetica Neue">inherit=C2=A0=E2=80=9Csystemd=E2=80=
=9D line.</font></div></div></blockquote><div><br></div><div>No quotes need=
ed, just:</div><div><br></div><div>inherit systemd</div><div><br></div><div=
>Ross=C2=A0</div></div></div></div>

--001a1141f226656365055a9272db--
