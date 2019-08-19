Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8F1BE00B1A; Mon, 19 Aug 2019 07:42:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com
	[209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E240E00AB6
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 07:42:45 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id r12so1900918edo.5
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 07:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=qsXPHID3RFgb3JDA53R63YdAHgb6uqH8CSdmjPc6NWM=;
	b=e/CdyG9sj0W6t/PT+GqLOeI2RW/OFUuIgLWIorQGG1u5GrDqvlxiCslKLhA9xMfeoM
	NPlqVBvAFVlI8MohH1OgZ/ieIsrYLjP8x17EZ3YzqdTwjiUUdUCYYFZNC/Edd5SIIFMz
	acYPadem52CaCubitHYZIffKu6V3UlR8DYhhOEhxu9s9xD/nowbR/+pb5Wh36O/8WXd4
	5JC9lE34mfo9n3GOd6u53iW04h58pRy+rQCDeb4OGEGS0qOfOBY/IohFcFt+PcnMEhrp
	XZ2tE9rCV63hXkisIpaBHVRJKvtJOi9oSYyK+K3Ion/x0VP2W7JUVMctXAWFzhqw+OoE
	Bewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=qsXPHID3RFgb3JDA53R63YdAHgb6uqH8CSdmjPc6NWM=;
	b=f70/7acXLuFVE/8XttwNlsxAVGk0gUj+Ry4vUoNXUmeYOuH/IdZJ16m4ZbfylVJ8Pd
	y4eaIuyaSYz3EAgLqHVMQVRlrc5H/qEEmxumZhVPnrrOJttjPZ3w15BP2uVRhEX+DDHe
	XeuS3aXVIvWP8KFgcLkKLwEpn73Qwb9AQqKba7DLPRC6QcUzDZdPmOTsfwq3RjeJsuQG
	vIvsi72NfQvRiWEUOGielu+C4C8W/WbgYWRhydIMIw0Cr33McLGtTa6rzQaAlpjSEEwU
	58krni3QtnfZ3JmX6bp1mD0IIPFgXxm9mhh2VzwAuqXdirzrntGDMLoalqlj4ovC4IJp
	UTlw==
X-Gm-Message-State: APjAAAV2SnodlZCQN94WUEsvTA3+rlGECrj+bTtKXMVRNZldoV09U9uw
	mLBYmvS9TnLVo5MzdZCpCx0ppSHNHSs0POH4Hr0=
X-Google-Smtp-Source: APXvYqyCzEJwBn7n2SowpMN+oRC+tveEr23r0XSb9x0HLFRWzyK0FrOv8J3YiF1HmHTPDDgHA4XAj24G5ae3iDUjh8A=
X-Received: by 2002:a17:906:1845:: with SMTP id
	w5mr3128726eje.53.1566225764992; 
	Mon, 19 Aug 2019 07:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <e916cb6cb6d8dbb629e11a42bc0c8561@mail.kylheku.com>
In-Reply-To: <e916cb6cb6d8dbb629e11a42bc0c8561@mail.kylheku.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 19 Aug 2019 16:42:34 +0200
Message-ID: <CA+chaQdocSOLRY_g3FoL+=WrXrW3MWrXPQHyQVUCixb17f+RRw@mail.gmail.com>
To: Kaz Kylheku <kaz@kylheku.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH] In Yocto 2.7 powertop package is broken.
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
X-List-Received-Date: Mon, 19 Aug 2019 14:42:46 -0000
Content-Type: multipart/alternative; boundary="0000000000005c4b4f0590795a99"

--0000000000005c4b4f0590795a99
Content-Type: text/plain; charset="UTF-8"

See
https://www.mail-archive.com/openembedded-core@lists.openembedded.org/msg126436.html

On Mon, Aug 19, 2019 at 11:35 AM Kaz Kylheku <kaz@kylheku.com> wrote:

> Hi all,
>
> Via a .bbappend file in my own layers, I added the following patch to
> build powertop, which is enabled when tools-profile is added to
> EXTRA_IMAGE_FEATURES.
>
> * recipes-profiling/powertop/files/posix-path-max-not-defined.patch:
> Patch for build issue. The C++ code needs to including <limits.h> which
> defines the POSIX PATH_MAX preprocessor symbol.
>
> Index: powertop-v2.10/src/wakeup/wakeup_ethernet.h
> ===================================================================
> --- powertop-v2.10.orig/src/wakeup/wakeup_ethernet.h
> +++ powertop-v2.10/src/wakeup/wakeup_ethernet.h
> @@ -25,6 +25,7 @@
>   #ifndef _INCLUDE_GUARD_ETHERNET_WAKEUP_H
>   #define _INCLUDE_GUARD_ETHERNET_WAKEUP_H
>
> +#include <limits.h>
>   #include <vector>
>
>   #include "wakeup.h"
> Index: powertop-v2.10/src/wakeup/wakeup_usb.h
> ===================================================================
> --- powertop-v2.10.orig/src/wakeup/wakeup_usb.h
> +++ powertop-v2.10/src/wakeup/wakeup_usb.h
> @@ -26,6 +26,7 @@
>   #define _INCLUDE_GUARD_USB_WAKEUP_H
>
>   #include <vector>
> +#include <limits.h>
>
>   #include "wakeup.h"
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000005c4b4f0590795a99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">See=C2=A0<a href=3D"https://www.mail-archive.com/openembed=
ded-core@lists.openembedded.org/msg126436.html">https://www.mail-archive.co=
m/openembedded-core@lists.openembedded.org/msg126436.html</a></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Aug 19=
, 2019 at 11:35 AM Kaz Kylheku &lt;<a href=3D"mailto:kaz@kylheku.com">kaz@k=
ylheku.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hi all,<br>
<br>
Via a .bbappend file in my own layers, I added the following patch to<br>
build powertop, which is enabled when tools-profile is added to<br>
EXTRA_IMAGE_FEATURES.<br>
<br>
* recipes-profiling/powertop/files/posix-path-max-not-defined.patch:<br>
Patch for build issue. The C++ code needs to including &lt;limits.h&gt; whi=
ch<br>
defines the POSIX PATH_MAX preprocessor symbol.<br>
<br>
Index: powertop-v2.10/src/wakeup/wakeup_ethernet.h<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
--- powertop-v2.10.orig/src/wakeup/wakeup_ethernet.h<br>
+++ powertop-v2.10/src/wakeup/wakeup_ethernet.h<br>
@@ -25,6 +25,7 @@<br>
=C2=A0 #ifndef _INCLUDE_GUARD_ETHERNET_WAKEUP_H<br>
=C2=A0 #define _INCLUDE_GUARD_ETHERNET_WAKEUP_H<br>
<br>
+#include &lt;limits.h&gt;<br>
=C2=A0 #include &lt;vector&gt;<br>
<br>
=C2=A0 #include &quot;wakeup.h&quot;<br>
Index: powertop-v2.10/src/wakeup/wakeup_usb.h<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
--- powertop-v2.10.orig/src/wakeup/wakeup_usb.h<br>
+++ powertop-v2.10/src/wakeup/wakeup_usb.h<br>
@@ -26,6 +26,7 @@<br>
=C2=A0 #define _INCLUDE_GUARD_USB_WAKEUP_H<br>
<br>
=C2=A0 #include &lt;vector&gt;<br>
+#include &lt;limits.h&gt;<br>
<br>
=C2=A0 #include &quot;wakeup.h&quot;<br>
<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000005c4b4f0590795a99--
