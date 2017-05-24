Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F838E0053F; Wed, 24 May 2017 09:17:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f47.google.com (mail-it0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1911E0048B
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 09:17:48 -0700 (PDT)
Received: by mail-it0-f47.google.com with SMTP id c15so41532868ith.0
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 09:17:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=L5fl31Mq3UvsRgB9CxG/47a1H8xnYcTQQ9s/qbUvKnI=;
	b=1ct1jfQBFQQj3079duO7/oQAHGPG1gSCEHgpG91jUy6UGwtHwt/wTzMbluNWDbvTIZ
	Ux7ViYaXy1IHYIxN+DfyZ1LG6xfkXx3C6j/Im8rD44/U/4yYtyZS/G9w+4qqOQd6Klpx
	yX+JCBlcNN+n74NCKXOsn685QB2A2ZqD0u1+syenJ2DS5sXKT1lPblLbOaElQAjX9vt/
	CLb9750b44eIoGcXmbyWf/pGipRIhfFNQfb/DPhG4LZNrX/cnaYYwRy54W7wt6xgVfgA
	ULU0rNCupGng+LT0WaTQv9MGkOmxEz94UEcDR4SBEEoCuaIH6Jl7edTBx7u6dkJz/cUz
	vptQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=L5fl31Mq3UvsRgB9CxG/47a1H8xnYcTQQ9s/qbUvKnI=;
	b=DXEa0+JixX54zSUtDP4i9iiK1/HRrJk5itQsoJ78SHPSVXntEx/2IMC9kIJUCOfdO7
	7wjPt+sy6GEHT7+GpYSvwdif9WWiJIaFogBQNYFJdnuVnvVkHLZA300w1Taij0H3PZjy
	4LrA+FcqyivKEMWnwZuX57Kn8kCEWbPbUjBWxjHra9UANygON0NWLdmtpy0sSQV9PpAP
	0D9F1lH98WE96NrOexLf+Wr44FjGPGt0B2bVT70UueD2OfmE7CqIK+4RKe2gSMGpGFSX
	2536kGiNI5vUt+NTcq8h0q8X2+X8kwetekWnoHtqQI0ZEyl/+S7KXhLdWA9PMXIOQ4Fb
	O99w==
X-Gm-Message-State: AODbwcD7+JmbWzW8EKnIls5GQZxc8BbJyalnIZJPGAFBJTz5aKR4uSdR
	rRfSN8Y1Cyfo0DsJweNKeFkyW9KHD37XCVN/EQ==
X-Received: by 10.36.193.134 with SMTP id e128mr8504658itg.43.1495642667863;
	Wed, 24 May 2017 09:17:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 24 May 2017 09:17:07 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <1480365948-13507-1-git-send-email-frank@meerkoetter.org>
References: <1480365948-13507-1-git-send-email-frank@meerkoetter.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 24 May 2017 17:17:07 +0100
Message-ID: <CAK18fxHTHm-HPweYNwEMf1KHCuhyX+mA7CrDouSZNdqcHzVcgA@mail.gmail.com>
To: Frank Meerkoetter <meerkoetter@googlemail.com>
Cc: yocto@yoctoproject.org, Frank Meerkoetter <frank@meerkoetter.org>
Subject: Re: [meta-chip][PATCH] Fix missing LICENSE field for u-boot-chip
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
X-List-Received-Date: Wed, 24 May 2017 16:17:51 -0000
Content-Type: multipart/alternative; boundary="94eb2c08ebd2edf079055047714a"

--94eb2c08ebd2edf079055047714a
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 28, 2016 at 8:45 PM, Frank Meerkoetter <
meerkoetter@googlemail.com> wrote:

> ERROR: /projects/meta-chip/recipes-bsp/u-boot/u-boot-chip_git.bb: This
> recipe does not have the LICENSE field set (u-boot-chip)
> ERROR: Failed to parse recipe: /data/projects/rpi-a2dp-sink/
> meta-chip/recipes-bsp/u-boot/u-boot-chip_git.bb
> ---
>  recipes-bsp/u-boot/u-boot-chip_git.bb | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/recipes-bsp/u-boot/u-boot-chip_git.bb b/recipes-bsp/u-boot/
> u-boot-chip_git.bb
> index 60db3e0..a5f2624 100644
> --- a/recipes-bsp/u-boot/u-boot-chip_git.bb
> +++ b/recipes-bsp/u-boot/u-boot-chip_git.bb
> @@ -2,6 +2,7 @@ require recipes-bsp/u-boot/u-boot.inc
>
>  DESCRIPTION = "U-Boot port for C.H.I.P. boards"
>
> +LICENSE = "GPLv2+"
>  LIC_FILES_CHKSUM = "file://Licenses/README;md5=
> 0507cd7da8e7ad6d6701926ec9b84c95"
>
>  DEPENDS += "dtc-native"
>
>
Fixed in master and pyro. Thank you.
--
Andrei Gherzan

--94eb2c08ebd2edf079055047714a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Nov 28, 2016 at 8:45 PM, Frank Meerkoetter <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:meerkoetter@googlemail.com" target=3D"_blank">meerkoetter@g=
ooglemail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padd=
ing-left:1ex">ERROR: /projects/meta-chip/recipes-<wbr>bsp/u-boot/<a href=3D=
"http://u-boot-chip_git.bb" rel=3D"noreferrer" target=3D"_blank">u-boot-chi=
p_git.bb</a>: This recipe does not have the LICENSE field set (u-boot-chip)=
<br>
ERROR: Failed to parse recipe: /data/projects/rpi-a2dp-sink/<wbr>meta-chip/=
recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"noreferrer"=
 target=3D"_blank">u<wbr>-boot-chip_git.bb</a><br>
---<br>
=C2=A0recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"noref=
errer" target=3D"_blank">u-boot-<wbr>chip_git.bb</a> | 1 +<br>
=C2=A01 file changed, 1 insertion(+)<br>
<br>
diff --git a/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=
=3D"noreferrer" target=3D"_blank">u-boot-<wbr>chip_git.bb</a> b/recipes-bsp=
/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"noreferrer" target=3D"=
_blank">u-boot-<wbr>chip_git.bb</a><br>
index 60db3e0..a5f2624 100644<br>
--- a/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"noref=
errer" target=3D"_blank">u-boot-<wbr>chip_git.bb</a><br>
+++ b/recipes-bsp/u-boot/<a href=3D"http://u-boot-chip_git.bb" rel=3D"noref=
errer" target=3D"_blank">u-boot-<wbr>chip_git.bb</a><br>
@@ -2,6 +2,7 @@ require recipes-bsp/u-boot/u-boot.inc<br>
<br>
=C2=A0DESCRIPTION =3D &quot;U-Boot port for C.H.I.P. boards&quot;<br>
<br>
+LICENSE =3D &quot;GPLv2+&quot;<br>
=C2=A0LIC_FILES_CHKSUM =3D &quot;file://Licenses/README;md5=3D<wbr>0507cd7d=
a8e7ad6d6701926ec9b84c<wbr>95&quot;<br>
<br>
=C2=A0DEPENDS +=3D &quot;dtc-native&quot;<br><span class=3D"gmail-HOEnZb"><=
font color=3D"#888888"><br></font></span></blockquote><div><br></div>Fixed =
in master and pyro. Thank you.<br clear=3D"all"><div><div class=3D"gmail_si=
gnature"><div dir=3D"ltr"><div dir=3D"ltr"><div>--</div></div></div></div><=
/div><div>Andrei Gherzan=C2=A0</div></div></div></div>

--94eb2c08ebd2edf079055047714a--
