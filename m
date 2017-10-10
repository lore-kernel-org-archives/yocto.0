Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9442BE00A9C; Tue, 10 Oct 2017 15:07:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49934E006CA
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 15:07:40 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id p138so529115itp.2
	for <yocto@yoctoproject.org>; Tue, 10 Oct 2017 15:07:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SZt93OOVW2S7SGvVdUZiNJkjX3Imw2yIt4dNAlyoLVM=;
	b=WQDzUZLcwm0ip8AM80/3D2zVyxm/JU9vieY6ayZI72EB3ZH0Bjy1CodJwrM5IYUXE8
	2/LTfaeoehrlrB66eoKLRqHd3CAuS3ksDWRoKmoZAha8c8x/KCSnrpKd+DkTIzSPjQa3
	UcwimFy8q29AqDZy0pPgvByFm1O8YgBipElvh62JbhqcMPboiaht9+vRxvne5fmSha6c
	m712O9DTIusMCFDvawXodRKWGu13bWUsdAnT7xeeIxm+nveJseJF69ruII9ruI7yeZsw
	YwvqR3SvcbryroH1kyTPE+Y8EuU1UnznzsavfEBwBhi/6Ob0EvnhhZyb2/xsHAOZr3GX
	52vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SZt93OOVW2S7SGvVdUZiNJkjX3Imw2yIt4dNAlyoLVM=;
	b=bOoA6oPi45XCa8SrtAvl6Zcu3UB1Dw12I/zQRiVEr7sd5fGi+3BnR4EgubWj7Po8/S
	jw0+ERqNCOyTBYl8T/zQyL0PPD9f0GuNfvDow0/LMu51j9/XIGIFPdpjxcRAquPrH8YO
	rT8G1B67sbHucDLBuhH/DnuIMitf2dEjFQbIi5M7NDnA3oNh75/ucwQmHlfF7jO7MUnx
	aMBIm+qyDReI9j0FPWUFyNQwKhqjO3d+m7JBF9oWaBWj/0WHk0q2jANHKI3Ip++jU3aD
	8jiqqRUViUgdz3E6d8srxOe3JoFTg1fmpLRg928keuuXGa8PLnBBWROe4xm9Xj8rGJVx
	mLuA==
X-Gm-Message-State: AMCzsaU9oM18f8GZdoeae1XlHJw/pPxCJUGOkF6/93SoIHA0jLnRCg30
	DtQvu0SqZ7RMomUR4Y7tIDisCQKqDtkY+2k0WmlKgQ==
X-Google-Smtp-Source: AOwi7QBvuVNEMihD3vgD3oYfEuJ2Fp+T3ItxoKDwJjU0kfflmaqi0tkidctoMIDm36EAZu1Qz2L1Qgw3QtZbOfrLx/M=
X-Received: by 10.36.167.79 with SMTP id s15mr19669283iti.6.1507673259731;
	Tue, 10 Oct 2017 15:07:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.205 with HTTP; Tue, 10 Oct 2017 15:07:19 -0700 (PDT)
In-Reply-To: <CAE0QtjN9VykaHZUQrkdmBjbnWFGtriW9zYnADBiWvNptT3APCw@mail.gmail.com>
References: <CAE0QtjN9VykaHZUQrkdmBjbnWFGtriW9zYnADBiWvNptT3APCw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 10 Oct 2017 23:07:19 +0100
Message-ID: <CAJTo0LbOEq=-uT2-KKq1goGYGQBm-WSbm3F=-S34K1AN_m4pVQ@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Basic question: "core-image-minimal" v.s "core-image-base" ?
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
X-List-Received-Date: Tue, 10 Oct 2017 22:07:40 -0000
Content-Type: multipart/alternative; boundary="f403045fb2181595a4055b38894a"

--f403045fb2181595a4055b38894a
Content-Type: text/plain; charset="UTF-8"

On 9 October 2017 at 16:08, Jerry Lian <jerry.lian@gmail.com> wrote:

> Hi, all:
>
> I have a basic question: how to tell the difference between
> "core-image-minimal" and "core-image-base"?
> * If we look at file* \poky\meta\recipes-core\images\core-image-base.bb
> <http://core-image-base.bb>*
> ============================================================
> =======================
> SUMMARY = "A console-only image that fully supports the target device
> hardware."
>
> IMAGE_FEATURES += "splash"
>
> LICENSE = "MIT"
>
> inherit core-image
> ============================================================
> =======================
> * how can we tell that "core-image-base" will include "support for a
> variety of hardware such as WIFI, bluetooth...", as compare to
> "core-image-minimal"?
> * Do I miss any other document that I need to read?
>

"diff" is your friend.  You'll see that core-image-minimal explicitly sets
IMAGE_INSTALL, which is otherwise set by core-image to respect
IMAGE_FEATURES and other variables.

Ross

--f403045fb2181595a4055b38894a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 9 October 2017 at 16:08, Jerry Lian <span dir=3D"ltr">&=
lt;<a href=3D"mailto:jerry.lian@gmail.com" target=3D"_blank">jerry.lian@gma=
il.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bor=
der-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div><div><div><=
div><div>Hi, all:<br><br></div>I have a basic question: how to tell the dif=
ference between &quot;core-image-minimal&quot; and &quot;core-image-base&qu=
ot;?<br></div>* If we look at file<b> \poky\meta\recipes-core\images<wbr>\<=
a href=3D"http://core-image-base.bb" target=3D"_blank">core-image-base.bb</=
a></b><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><div style=3D"margin-le=
ft:40px">SUMMARY =3D &quot;A console-only image that fully supports the tar=
get device hardware.&quot;<br><br>IMAGE_FEATURES +=3D &quot;splash&quot;<br=
><br>LICENSE =3D &quot;MIT&quot;<br><br>inherit core-image<br></div>=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br></div>*
 how can we tell that &quot;core-image-base&quot; will include &quot;suppor=
t for a=20
variety of hardware such as WIFI, bluetooth...&quot;, as compare to=20
&quot;core-image-minimal&quot;?<br></div>* Do I miss any other document tha=
t I need to read?<br></div></div></blockquote><div><br></div><div>&quot;dif=
f&quot; is your friend.=C2=A0 You&#39;ll see that core-image-minimal explic=
itly sets IMAGE_INSTALL, which is otherwise set by core-image to respect IM=
AGE_FEATURES and other variables.</div><div><br></div><div>Ross=C2=A0</div>=
</div></div></div>

--f403045fb2181595a4055b38894a--
