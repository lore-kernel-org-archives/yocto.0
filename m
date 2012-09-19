Return-Path: <andrei@gherzan.ro>
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69063E0027F
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 15:16:56 -0700 (PDT)
Received: by ieak12 with SMTP id k12so490433iea.35
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 15:16:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type:x-gm-message-state;
	bh=DAOj77oD0Myg8J+RSEQLCQnApMDp3Xkv1+f5YeZL9ag=;
	b=ZF0wn/XC7/bpegLaBRe4LD4T9Y8po3pinaVgOTLwaR251hW9bvF4zkZKCsNWzDu334
	spSFF3g6F3m7TnpJFivlUM00CBeVM07RR/fNglEWR/SsdWG6enfEcE4PTQIAUsJuevsq
	8TaqjWA2811HRWVliCnkV4/+O/OAyDNoGsQF6C7KZ7fCfZMMlm5LL33GeQdnk0rompZM
	WwL8IgDBmvzeZCEm9N5Z/wc4NOe37s1HGYEsHwIv8XT619E/6Lr/ucKWE1lEx8M/tWpe
	/PsEy95FNWvvGmqN/eOmwZp82QvfX7Gq5rIml2yXOpre5xozMAR+9FfhnCRgNLvHouqL
	Putw==
MIME-Version: 1.0
Received: by 10.50.41.129 with SMTP id f1mr603162igl.57.1348093015703; Wed, 19
	Sep 2012 15:16:55 -0700 (PDT)
Received: by 10.64.52.8 with HTTP; Wed, 19 Sep 2012 15:16:55 -0700 (PDT)
X-Originating-IP: [79.118.166.187]
Received: by 10.64.52.8 with HTTP; Wed, 19 Sep 2012 15:16:55 -0700 (PDT)
In-Reply-To: <1348091516-4221-1-git-send-email-aalonso@freescale.com>
References: <yocto@yoctoproject.org>
	<1348091516-4221-1-git-send-email-aalonso@freescale.com>
Date: Thu, 20 Sep 2012 01:16:55 +0300
Message-ID: <CAK18fxET+vOt6Sy56sggcc_8D09wdf7Q6ORrX5dLXNCy3JPXnQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Adrian Alonso <aalonso@freescale.com>
X-Gm-Message-State: ALoCoQn6HNUvR+TR0zYj36gI42jnZk5BSRw2vxD46RJ5B/qJenG7HKsGiybGnrOQfuByRc3b2ImG
Cc: Florin Ionut <florin.sarbu@windriver.com>,
	Yocto Project <yocto@yoctoproject.org>
Subject: Re: imx6 meta-ivi support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 19 Sep 2012 22:16:56 -0000
Content-Type: multipart/alternative; boundary=14dae934068353407d04ca155da4

--14dae934068353407d04ca155da4
Content-Type: text/plain; charset=ISO-8859-1

Ack.
On Sep 20, 2012 12:56 AM, "Adrian Alonso" <aalonso@freescale.com> wrote:

> This patch series enables imx6 target support for meta-ivi based
> on denzil branch.
>
> [meta-ivi][PATCH 1/3] pormap: append portmap.service
> [meta-ivi][PATCH 2/3] wpa-supplicant: append wpa-supplicant.service
> [meta-ivi][PATCH 3/3] layer-management: fix machine search string
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--14dae934068353407d04ca155da4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Ack.</p>
<div class=3D"gmail_quote">On Sep 20, 2012 12:56 AM, &quot;Adrian Alonso&qu=
ot; &lt;<a href=3D"mailto:aalonso@freescale.com">aalonso@freescale.com</a>&=
gt; wrote:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
This patch series enables imx6 target support for meta-ivi based<br>
on denzil branch.<br>
<br>
[meta-ivi][PATCH 1/3] pormap: append portmap.service<br>
[meta-ivi][PATCH 2/3] wpa-supplicant: append wpa-supplicant.service<br>
[meta-ivi][PATCH 3/3] layer-management: fix machine search string<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--14dae934068353407d04ca155da4--
