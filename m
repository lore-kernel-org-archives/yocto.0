Return-Path: <bobadeshrikant@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDD44E00942; Mon,  5 Jan 2015 03:43:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bobadeshrikant[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99180E008A6
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 03:43:31 -0800 (PST)
Received: by mail-ie0-f173.google.com with SMTP id y20so19399251ier.32
	for <yocto@yoctoproject.org>; Mon, 05 Jan 2015 03:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=m55wtpdwQPpBPgOdSEM90rm0CYz4a2N3/fmTYQcEsmY=;
	b=SOTBjZf4rQCql2Wk0HxHloB3wwrif+iSZO//3zTBcWfBQyX3awgjO/1nOZ7x83pN2j
	gtJk0VKbXRPMEIN8Isr6f4TmdK+oSDcpGEFrjUpYx8kQ89JNtG/QSKEk8EQnFF88g0C2
	J7jbtNrxqWO+0p2Ic8BYMooZpoR97ks8n3sHLkAPkhmYWn+VCI9ns2Cj8jvsmSa2uPjI
	FiUymXAlM4Z3uHuXe1hVUoVe8iyxay2xSWTzvsOaOYclEgmf006KMd+M8ffYyF4UFhNC
	GckzAYpdlEkBYnm64jwTXR0rsy1ywPedwqrajsIIs2uYsVsopJq7dLBjN/xBdPv3/Zu8
	ndTg==
MIME-Version: 1.0
X-Received: by 10.42.150.70 with SMTP id z6mr24101794icv.42.1420458210848;
	Mon, 05 Jan 2015 03:43:30 -0800 (PST)
Received: by 10.50.88.3 with HTTP; Mon, 5 Jan 2015 03:43:30 -0800 (PST)
In-Reply-To: <1416384818-18472-1-git-send-email-bobadeshrikant@gmail.com>
References: <1416384818-18472-1-git-send-email-bobadeshrikant@gmail.com>
Date: Mon, 5 Jan 2015 17:13:30 +0530
Message-ID: <CALwQEroR-DBTowPXN1c0_9zuAYbuGZpoZgbP5zQ-6AYQvGaK=A@mail.gmail.com>
From: Shrikant Bobade <bobadeshrikant@gmail.com>
To: yocto@yoctoproject.org
Cc: Shrikant Bobade <Shrikant_Bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH 2/3] selinux-init: update for systemd
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
X-List-Received-Date: Mon, 05 Jan 2015 11:43:36 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e8d861375db050be6334f

--90e6ba6e8d861375db050be6334f
Content-Type: text/plain; charset=UTF-8

Hello,

Please provide review comments or feedback if any, It will be a great
help.
@Ping.

Thanks
Shrikant

On Wed, Nov 19, 2014 at 1:43 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
wrote:

> From: Shrikant Bobade <Shrikant_Bobade@mentor.com>
>
> selinux-init.sh updated to reboot system
> normally to fix the labelling during systemd
> execution. Due to force reboot labelling won't
> be proper and system continuously reboot to
> label it like first time boot.
>
> Signed-off-by: Shrikant Bobade <Shrikant_Bobade@mentor.com>
> ---
>  .../selinux/selinux-config/selinux-init.sh         |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-security/selinux/selinux-config/selinux-init.sh
> b/recipes-security/selinux/selinux-config/selinux-init.sh
> index 9aaf454..f9f0914 100644
> --- a/recipes-security/selinux/selinux-config/selinux-init.sh
> +++ b/recipes-security/selinux/selinux-config/selinux-init.sh
> @@ -48,7 +48,7 @@ if [ -f /.autorelabel ]; then
>         ${FIXFILES} -F -f relabel
>         /bin/rm -f /.autorelabel
>         echo " * Relabel done, rebooting the system."
> -       /sbin/reboot -f
> +       /sbin/reboot
>  fi
>
>  # If first booting, the security context type of init would be
> @@ -62,7 +62,7 @@ if [ "`${SECON} -t --pid 1`" = "kernel_t" ]; then
>         ${RESTORECON} -RF /
>         ${RESTORECON} -F /
>         echo " * Relabel done, rebooting the system."
> -       /sbin/reboot -f
> +       /sbin/reboot
>  fi
>
>  # Now, we should relabel /dev for most services.
> --
> 1.7.9.5
>
>

--90e6ba6e8d861375db050be6334f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hello,<br><br></div>Please provide rev=
iew comments or feedback if any, It will be a great help.=C2=A0 <br></div>@=
Ping. <br><br></div>Thanks<br></div>Shrikant<div class=3D"gmail_extra"><br>=
<div class=3D"gmail_quote">On Wed, Nov 19, 2014 at 1:43 PM, Shrikant Bobade=
 <span dir=3D"ltr">&lt;<a href=3D"mailto:bobadeshrikant@gmail.com" target=
=3D"_blank">bobadeshrikant@gmail.com</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">From: Shrikant Bo=
bade &lt;<a href=3D"mailto:Shrikant_Bobade@mentor.com">Shrikant_Bobade@ment=
or.com</a>&gt;<br>
<br>
selinux-init.sh updated to reboot system<br>
normally to fix the labelling during systemd<br>
execution. Due to force reboot labelling won&#39;t<br>
be proper and system continuously reboot to<br>
label it like first time boot.<br>
<br>
Signed-off-by: Shrikant Bobade &lt;<a href=3D"mailto:Shrikant_Bobade@mentor=
.com">Shrikant_Bobade@mentor.com</a>&gt;<br>
---<br>
=C2=A0.../selinux/selinux-config/selinux-init.sh=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0|=C2=A0 =C2=A0 4 ++--<br>
=C2=A01 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-security/selinux/selinux-config/selinux-init.sh b/reci=
pes-security/selinux/selinux-config/selinux-init.sh<br>
index 9aaf454..f9f0914 100644<br>
--- a/recipes-security/selinux/selinux-config/selinux-init.sh<br>
+++ b/recipes-security/selinux/selinux-config/selinux-init.sh<br>
@@ -48,7 +48,7 @@ if [ -f /.autorelabel ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${FIXFILES} -F -f relabel<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 /bin/rm -f /.autorelabel<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot; * Relabel done, rebooting the syste=
m.&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/sbin/reboot -f<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/sbin/reboot<br>
=C2=A0fi<br>
<br>
=C2=A0# If first booting, the security context type of init would be<br>
@@ -62,7 +62,7 @@ if [ &quot;`${SECON} -t --pid 1`&quot; =3D &quot;kernel_t=
&quot; ]; then<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${RESTORECON} -RF /<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ${RESTORECON} -F /<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 echo &quot; * Relabel done, rebooting the syste=
m.&quot;<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0/sbin/reboot -f<br>
+=C2=A0 =C2=A0 =C2=A0 =C2=A0/sbin/reboot<br>
=C2=A0fi<br>
<br>
=C2=A0# Now, we should relabel /dev for most services.<br>
--<br>
1.7.9.5<br>
<br>
</div></div></blockquote></div><br></div></div>

--90e6ba6e8d861375db050be6334f--
