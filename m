Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BC82E0078E; Sun, 24 Aug 2014 06:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.173 listed in list.dnswl.org]
Received: from mail-we0-f173.google.com (mail-we0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C73BEE00576
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 06:58:15 -0700 (PDT)
Received: by mail-we0-f173.google.com with SMTP id q58so12352741wes.4
	for <yocto@yoctoproject.org>; Sun, 24 Aug 2014 06:58:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=VDkQAcGh32uKu54N3ayj9fzpl6QoH5GPUOzA+REZ9PA=;
	b=jovqb9DlVWoc8MChRsor4fT5qnnuFqRNqMw/NETJVnOz5dKtVKz1jiw3Dy9Ix4KGM+
	gNj3UNTS5xmNkiWYaftYZ+0TBuRdgAVDNVLy3pZXjVCxCvO+s9NQjGTLotXYW4A/VSHr
	lcSQWO/Y8y/Qdnr/bgNVT71+bI9GK2siYlebzvkC58pGt9QFsHWIduomUPlmV0nRBYAV
	1aN08sTXFuzj24liq8DWQe+V2qGOfrGx98leZN/HDij9kxxa7+ROZiy+/fKgcmMSeXZj
	L77/zU4ncKtaEOnJE/5Bk/84IR3cPz1N3fautJU3/AJ+DGGvTefSVUNcGRpM6A7Ire3h
	KJeQ==
X-Gm-Message-State: ALoCoQnv5WBnCFFrRZ4lIr9qFopt/MpTLwjO9Haoiwy/tUpH+BJ6BgphljlKPZKSBNfZkqJSLagW
X-Received: by 10.180.73.139 with SMTP id l11mr9273109wiv.30.1408888694355;
	Sun, 24 Aug 2014 06:58:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.76.5 with HTTP; Sun, 24 Aug 2014 06:57:54 -0700 (PDT)
X-Originating-IP: [195.249.189.34]
In-Reply-To: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
References: <1408842576-30267-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 24 Aug 2014 15:57:54 +0200
Message-ID: <CAK18fxG6ORuHTe5jS_9buK48vq7W=C7AmxuhhS5jq+cUvDMShg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/5] firmware: Update to remote's HEAD
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
X-List-Received-Date: Sun, 24 Aug 2014 13:58:21 -0000
Content-Type: multipart/alternative; boundary=f46d043c07de27ce7c0501607624

--f46d043c07de27ce7c0501607624
Content-Type: text/plain; charset=UTF-8

Hi,


On Sun, Aug 24, 2014 at 3:09 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Change-Id: I320ceb1f6c0015d5ce48028b0e3581d2f4d52a3b
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-bcm/common/firmware.inc | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-bcm/common/firmware.inc
> b/recipes-bcm/common/firmware.inc
> index 168cd37..3223330 100644
> --- a/recipes-bcm/common/firmware.inc
> +++ b/recipes-bcm/common/firmware.inc
> @@ -1,5 +1,5 @@
> -RPIFW_SRCREV ?= "c8881991d9181779aee9637d6f4b215f108021a3"
> -RPIFW_DATE ?= "20140508"
> +RPIFW_SRCREV ?= "43c5b2fc9bdb0a43ba67661b8677445e71ae9e82"
> +RPIFW_DATE ?= "20140817"
>  RPIFW_SRC_URI ?= "git://
> github.com/raspberrypi/firmware.git;protocol=git;branch=master"
>  RPIFW_S ?= "${WORKDIR}/git"
>
> --
> 1.9.3
>
>
All 5 patches merged to master.

-- 
*Andrei Gherzan*

--f46d043c07de27ce7c0501607624
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div class=3D"gmail_extra"><br><br><div class=3D"gm=
ail_quote">On Sun, Aug 24, 2014 at 3:09 AM, Andrei Gherzan <span dir=3D"ltr=
">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan=
.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Change-Id: I320ceb1f6c0015d5ce48028b0e3581d2=
f4d52a3b<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=C2=A0recipes-bcm/common/firmware.inc | 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-bcm/common/firmware.inc b/recipes-bcm/common/firmware.=
inc<br>
index 168cd37..3223330 100644<br>
--- a/recipes-bcm/common/firmware.inc<br>
+++ b/recipes-bcm/common/firmware.inc<br>
@@ -1,5 +1,5 @@<br>
-RPIFW_SRCREV ?=3D &quot;c8881991d9181779aee9637d6f4b215f108021a3&quot;<br>
-RPIFW_DATE ?=3D &quot;20140508&quot;<br>
+RPIFW_SRCREV ?=3D &quot;43c5b2fc9bdb0a43ba67661b8677445e71ae9e82&quot;<br>
+RPIFW_DATE ?=3D &quot;20140817&quot;<br>
=C2=A0RPIFW_SRC_URI ?=3D &quot;git://<a href=3D"http://github.com/raspberry=
pi/firmware.git;protocol=3Dgit;branch=3Dmaster" target=3D"_blank">github.co=
m/raspberrypi/firmware.git;protocol=3Dgit;branch=3Dmaster</a>&quot;<br>
=C2=A0RPIFW_S ?=3D &quot;${WORKDIR}/git&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.9.3<br>
<br>
</font></span></blockquote></div><br>All 5 patches merged to master.<br cle=
ar=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:=
center"></div><div style=3D"text-align:center"><div align=3D"left"><b style=
=3D"font-family:Arial;font-size:small;color:rgb(51,51,51);text-align:center=
">Andrei Gherzan</b><br>

</div></div></div>
</div></div>

--f46d043c07de27ce7c0501607624--
