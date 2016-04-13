Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FF16E00DF2; Wed, 13 Apr 2016 08:48:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9201E00948
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 08:48:08 -0700 (PDT)
Received: by mail-ig0-f172.google.com with SMTP id f1so123783579igr.1
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2016 08:48:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LRwfmB8S+H55038u2nRmMHG/vAkiMnxVjNbK5Hq6bqk=;
	b=z2XBCZpRwltWQr5L6t4V1l5j7af70AvaMqjlRG65HB4OpVnpQ3qIUvEQhO0szsGwEg
	nCqwBUfUmC4hmX4brCSj5gZLjIXelOKAyXZvrMpbSFwWpjOgciN7JpZLKwSSJ59qxzRm
	cCjotxPNVegvwzgYZIuMge0mez8K6fdb5hucqj6sYM4uib9cWjsMnPXjZpozoZDtPusm
	EajbfUIoatH5J+cd/Wyrv0lfmnTCvDFtXdDsF4McJe+q3BG1bwU01Xt0SzZu4T7tb7yg
	VZwX8VNG0fv1qD0vGYZxmjNNY9mxJM/v39AO08Kqa1Tb7soxboMwm+AcgIRgLNmS35+w
	sZeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LRwfmB8S+H55038u2nRmMHG/vAkiMnxVjNbK5Hq6bqk=;
	b=jnW+xpwLRI19ciS86rMj9IA6QGc8LRvcSruXwgTKefisjr19HJqUBrlzUItxO7Y0K4
	LoTTbmFwwCO/PpZpo7g6tOr0ffJCN0YisnSiHkRNOSvp4d/BH9d4C/7cvzB+L1t6W/xf
	qzfYGkV/z+E3dhMq/EH317ShsBSH8dGS928LkE6Fu/wlyZ/hJB+hJTwK0jN1cGRrtKYJ
	jYsvzROhETiWrmzwGpwX/AQaGBCOpzU+7zrFlJUU6EJ4Jrhq1k26HWZ8o7tuP2jWXUHk
	C6n4CgX8KQtBaYFMddIcpCLiH36tpPMnkom7neFo7n1K9Wx1aC6Wk6QFp8Jy5XyVzM2s
	ZIvQ==
X-Gm-Message-State: AD7BkJJrd+MUv3iFIeR8/j5IQzVsA/0kGs+OhXOmtQ2N2UKdGO77wqs1Qia9a9YIIZZ7yDb7bdvgcbS6qjHUNt0X
X-Received: by 10.50.155.67 with SMTP id vu3mr30459068igb.52.1460562486324;
	Wed, 13 Apr 2016 08:48:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Wed, 13 Apr 2016 08:47:46 -0700 (PDT)
In-Reply-To: <1460555872-27920-3-git-send-email-richard.leitner@skidata.com>
References: <1460555872-27920-1-git-send-email-richard.leitner@skidata.com>
	<1460555872-27920-3-git-send-email-richard.leitner@skidata.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 13 Apr 2016 16:47:46 +0100
Message-ID: <CAJTo0La1oj7So2Bv1nOuL0xxWf4Up8KSGfXd6XJYr3n0EM118Q@mail.gmail.com>
To: Richard Leitner <richard.leitner@skidata.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [psplash][PATCH 3/3] README: add "Contributing" guideline
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
X-List-Received-Date: Wed, 13 Apr 2016 15:48:14 -0000
Content-Type: multipart/alternative; boundary=001a1134dbec2b8a5805305fb402

--001a1134dbec2b8a5805305fb402
Content-Type: text/plain; charset=UTF-8

This series is now merged, thanks Richard.

Ross

On 13 April 2016 at 14:57, Richard Leitner <richard.leitner@skidata.com>
wrote:

> The "Contributing" guideline section should help people sending their
> patches correctly.
>
> A similar section is available in nearly all
> layers/repositories hosted on yoctoproject.org. Therefore add it also
> the the psplash repository.
>
> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
> ---
>  README | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
>
> diff --git a/README b/README
> index 86ef6ba..8779a38 100644
> --- a/README
> +++ b/README
> @@ -8,3 +8,21 @@ rotation. Its visual look is configurable by basic source
> changes.
>
>  Also included is a 'client' command utility for sending information to
>  psplash such as boot progress information.
> +
> +Contributing
> +============
> +To contribute to this layer you should submit the patches for review to
> the
> +mailing list (yocto@yoctoproject.org).
> +
> +Please refer to
> +    http://openembedded.org/wiki/Commit_Patch_Message_Guidelines
> +for some useful guidelines to be followed when submitting patches.
> +
> +Mailing list:
> +    https://lists.yoctoproject.org/listinfo/yocto
> +
> +When creating patches, please use something like:
> +    git format-patch -M -s --subject-prefix='psplash][PATCH' origin
> +
> +When sending patches, please use something like:
> +    git send-email --to yocto@yoctoproject.org <generated patch>
> --
> 2.1.4
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1134dbec2b8a5805305fb402
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This series is now merged, thanks Richard.<div><br></div><=
div>Ross</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">On 13 April 2016 at 14:57, Richard Leitner <span dir=3D"ltr">&lt;<a href=
=3D"mailto:richard.leitner@skidata.com" target=3D"_blank">richard.leitner@s=
kidata.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">The &quo=
t;Contributing&quot; guideline section should help people sending their<br>
patches correctly.<br>
<br>
A similar section is available in nearly all<br>
layers/repositories hosted on <a href=3D"http://yoctoproject.org" rel=3D"no=
referrer" target=3D"_blank">yoctoproject.org</a>. Therefore add it also<br>
the the psplash repository.<br>
<br>
Signed-off-by: Richard Leitner &lt;<a href=3D"mailto:richard.leitner@skidat=
a.com">richard.leitner@skidata.com</a>&gt;<br>
---<br>
=C2=A0README | 18 ++++++++++++++++++<br>
=C2=A01 file changed, 18 insertions(+)<br>
<br>
diff --git a/README b/README<br>
index 86ef6ba..8779a38 100644<br>
--- a/README<br>
+++ b/README<br>
@@ -8,3 +8,21 @@ rotation. Its visual look is configurable by basic source =
changes.<br>
<br>
=C2=A0Also included is a &#39;client&#39; command utility for sending infor=
mation to<br>
=C2=A0psplash such as boot progress information.<br>
+<br>
+Contributing<br>
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
+To contribute to this layer you should submit the patches for review to th=
e<br>
+mailing list (<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject=
.org</a>).<br>
+<br>
+Please refer to<br>
+=C2=A0 =C2=A0 <a href=3D"http://openembedded.org/wiki/Commit_Patch_Message=
_Guidelines" rel=3D"noreferrer" target=3D"_blank">http://openembedded.org/w=
iki/Commit_Patch_Message_Guidelines</a><br>
+for some useful guidelines to be followed when submitting patches.<br>
+<br>
+Mailing list:<br>
+=C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" re=
l=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/=
yocto</a><br>
+<br>
+When creating patches, please use something like:<br>
+=C2=A0 =C2=A0 git format-patch -M -s --subject-prefix=3D&#39;psplash][PATC=
H&#39; origin<br>
+<br>
+When sending patches, please use something like:<br>
+=C2=A0 =C2=A0 git send-email --to <a href=3D"mailto:yocto@yoctoproject.org=
">yocto@yoctoproject.org</a> &lt;generated patch&gt;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
2.1.4<br>
<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a1134dbec2b8a5805305fb402--
