Return-Path: <andrei@gherzan.ro>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20DD5E017DD
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:18:59 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id ey16so986837wid.1
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:18:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=tByn3ir2XnYWPN3mhpxx0prn1tWy2F/qdtmAVyXO0qw=;
	b=mIG0NClxdgrAlvi1nQnnui7QGtiUtP3YI2x5CtDoeIObOuCXwK98qRLcZNwoZJHulL
	MA8EmLtbhYI2I4ZAu8XZXQW92KnjIwSdGtF6jI7K82Fn/evwKB48wUmFw0vbttx6eakc
	nvymqRUU5wQczyDSum5bpHdGdmqiTvJOtMOqV7z7FPaRAvSTFJZD2zhkNpGl+SzQQ8Vp
	aBoV3CXJNNKk79BDeaiMYmmDj/yOCNkSS8+6EgT1JjgZm1mqTEL92xyKvA2y3h/5iM3n
	5f2X0MhcQzq/c1kBKqw8Gu4P0e7bhVxgEdloG7ZphIAGWS7oKq2QGBtcaQWPKnatcG5e
	ZgPw==
X-Gm-Message-State: ALoCoQlfj9KfurGz/xYAegcKyAodJQdAhFOifGRGIW6QC7DYlkhfmonY6IhozM1r5pQwi+W9L5zw
X-Received: by 10.180.11.37 with SMTP id n5mr3257321wib.25.1384442338632; Thu,
	14 Nov 2013 07:18:58 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.91.202 with HTTP; Thu, 14 Nov 2013 07:18:38 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384359566-32315-5-git-send-email-andrei@gherzan.ro>
References: <1384359566-32315-1-git-send-email-andrei@gherzan.ro>
	<1384359566-32315-5-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 14 Nov 2013 17:18:38 +0200
Message-ID: <CAK18fxEkV=yUiYvSNOFbpZ-UDb8eo9rOQsXcODiJ76OeaPRSgA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2 5/6] firmware.inc: Update to HEAD on 2013-11-13
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
X-List-Received-Date: Thu, 14 Nov 2013 15:19:00 -0000
Content-Type: multipart/alternative; boundary=001a11c25b48ce6d6504eb249982

--001a11c25b48ce6d6504eb249982
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Change-Id: I00ace3f8575015612ae09dfb99e2a33d87ddc4cb
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-bcm/common/firmware.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bcm/common/firmware.inc
> b/recipes-bcm/common/firmware.inc
> index 5bad182..c780e63 100644
> --- a/recipes-bcm/common/firmware.inc
> +++ b/recipes-bcm/common/firmware.inc
> @@ -1,6 +1,6 @@
>  # 19/08/2013 firmware; this can be overridden from distro config
> -RPIFW_SRCREV ?= "5b37b2a7f357236210eef1a438becaa2a57148f2"
> -RPIFW_DATE ?= "20130819"
> +RPIFW_SRCREV ?= "3e92add424c3c2617d5df65caa307c808017a9ea"
> +RPIFW_DATE ?= "20131113"
>  RPIFW_SRC_URI ?= "git://
> github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>  RPIFW_S ?= "${WORKDIR}/git"
>
> --
> 1.8.1.4
>
>
Merged.

ag

--001a11c25b48ce6d6504eb249982
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Wed, Nov 13, 2013 at 6:19 PM, Andrei Gherzan <span dir=3D"ltr">&=
lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D""><div class=3D"h5">Change-Id: I00ace3f85750=
15612ae09dfb99e2a33d87ddc4cb<br>


Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0recipes-bcm/common/firmware.inc | 4 ++--<br>
=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.=
inc<br>
index 5bad182..c780e63 100644<br>
--- a/recipes-bcm/common/firmware.inc<br>
+++ b/recipes-bcm/common/firmware.inc<br>
@@ -1,6 +1,6 @@<br>
=A0# 19/08/2013 firmware; this can be overridden from distro config<br>
-RPIFW_SRCREV ?=3D &quot;5b37b2a7f357236210eef1a438becaa2a57148f2&quot;<br>
-RPIFW_DATE ?=3D &quot;20130819&quot;<br>
+RPIFW_SRCREV ?=3D &quot;3e92add424c3c2617d5df65caa307c808017a9ea&quot;<br>
+RPIFW_DATE ?=3D &quot;20131113&quot;<br>
=A0RPIFW_SRC_URI ?=3D &quot;git://<a href=3D"http://github.com/raspberrypi/=
firmware.git;protocol=3Dgit;branch=3Dmaster" target=3D"_blank">github.com/r=
aspberrypi/firmware.git;protocol=3Dgit;branch=3Dmaster</a>&quot;<br>
=A0RPIFW_S ?=3D &quot;${WORKDIR}/git&quot;<br>
<br>
--<br>
1.8.1.4<br>
<br>
</div></div></blockquote></div><br><div class=3D"gmail_extra">Merged.</div>=
<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">ag</div>
</div></div>

--001a11c25b48ce6d6504eb249982--
