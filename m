Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2662E007F6
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 00:17:44 -0800 (PST)
Received: by mail-vc0-f180.google.com with SMTP id ks9so2949759vcb.39
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 00:17:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=wgHItPfU/MkKLVOU0gZPzfhKIkZ4td11hj9QbrHbIMY=;
	b=T9iYq7+lyZIPSSh070ETaO9AzWilQK0oDhg6TEnmyYZU39ydYMTXzENpmmFDhXyRAm
	OH/op0PO8alWzB8xmT4DWiJ56KSDN2CmVauiyEhw0ISJGtN6ddT+GUSTeuakberxmuDa
	ExBY9j8MPmNAs3TTxRzcjR3WofnDvYOcVLVAHSZjk8dnAvAGAybYoXXNax4DmGO8f8lg
	ZvJCh60PfmtTD1Ufv+PTQNKHBBlbnMGIa1bG4CnCOA75ySH7qCmrIl0dRYxfayQFHWhc
	QcoE91Ag7doZ18CZ+bFOTKMWLm41jIaEwePgC4YI49+KJPRiUPKtfYuw2wARVte7D7EA
	c6WQ==
X-Gm-Message-State: ALoCoQmzEsFe9rd46i81bxOdMXl2tj5GntyiHWGMQA6ZlYj5WAFEG6x7o2WFuywlbBFhWrJ/BdxI
X-Received: by 10.52.94.77 with SMTP id da13mr3299062vdb.55.1392970663829;
	Fri, 21 Feb 2014 00:17:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.244.138 with HTTP; Fri, 21 Feb 2014 00:17:22 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1392724329-14226-1-git-send-email-net147@gmail.com>
References: <1392724329-14226-1-git-send-email-net147@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 21 Feb 2014 10:17:22 +0200
Message-ID: <CAK18fxFDqgVOZa_wsb98QtDy8R0JCBubGJotc7WTN3EoREpxgA@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: use absolute path to rootfs
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
X-List-Received-Date: Fri, 21 Feb 2014 08:17:47 -0000
Content-Type: multipart/alternative; boundary=20cf307f3bf099b6cf04f2e6414a

--20cf307f3bf099b6cf04f2e6414a
Content-Type: text/plain; charset=ISO-8859-1

Hello Jonathan,


On Tue, Feb 18, 2014 at 1:52 PM, Jonathan Liu <net147@gmail.com> wrote:

> Change-Id: Ib513f195351b379dbb9f503dc5927f2018169b95
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  classes/sdcard_image-rpi.bbclass | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>

This was merged in master. Thank you for your contribution.

---
ag

--20cf307f3bf099b6cf04f2e6414a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Jonathan,<br><div class=3D"gmail_extra"><br><br><div=
 class=3D"gmail_quote">On Tue, Feb 18, 2014 at 1:52 PM, Jonathan Liu <span =
dir=3D"ltr">&lt;<a href=3D"mailto:net147@gmail.com" target=3D"_blank">net14=
7@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Change-Id: Ib513f195351b379dbb9f503dc5927f20=
18169b95<br>
Signed-off-by: Jonathan Liu &lt;<a href=3D"mailto:net147@gmail.com">net147@=
gmail.com</a>&gt;<br>
---<br>
=A0classes/sdcard_image-rpi.bbclass | 2 +-<br>
=A01 file changed, 1 insertion(+), 1 deletion(-)<br></blockquote><div><br><=
/div><div>This was merged in master. Thank you for your contribution.</div>=
<div><br></div><div>---</div><div>ag=A0</div></div>
</div></div>

--20cf307f3bf099b6cf04f2e6414a--
