Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6658E0079D; Thu, 30 Aug 2018 07:12:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2D58E003D7
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 07:12:33 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id l202-v6so15632630oig.7
	for <yocto@yoctoproject.org>; Thu, 30 Aug 2018 07:12:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=NVDd7eMzALLPwXZkHlLFv7DvIkEFkSBmBA58luQv4ls=;
	b=p/iOGsb5CSZibrRgxAtyXrsGrbCWO1gkQaIviBcfJCFbrUKAFWEQHINI7uRd7GCHEi
	VrFJL1/F4rkSjnxgjzljBWRdlV/2UAu736uFaTZ0mPGrxl9bL76Adbsf6RyAA85tM5EU
	GWmjurA2beWKCw05TVWzVLIUoiAIyaM06x0yoZiSK4SInfreEjUd4FwsSkx7Vwj60xHL
	Lx5Iqq5lZK21K0A/l63A/b172STIU5paoeYYt8+bLldc/HcBEFZbdkRwwozI77WTd/wT
	6LX9L5DBKLQM3N5eqSCJ3SR1l0QPyQ7xZqewypt6UXozwokNVS0zBgg//+3l8z9pMgbv
	pCcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=NVDd7eMzALLPwXZkHlLFv7DvIkEFkSBmBA58luQv4ls=;
	b=pfszGqBn4b1vdKfJif2+b7fxRvY80sEalbmEbK5+ETykNtnbcBKCn7EGay0GjHDgN+
	2rXnkNBGoJo64Fz7MaJCVyefvsMjF6ti7tS05Y5PM2bIPfwRqeZ2rTk4ZHUwH+jWXlw4
	VYoxRc9YRM3UTjaX8XOGaeHBwF7tAlVYhoR3HUWwGtwtOOqz4u6vtKEjMn8e0uFz6j/2
	77xjetAksOKewZP/DeT2bG27NUV1AwIauh6ijWyeHSw05NB5NO8tR0J+KhSYGJjh74nd
	RBLtyOoreNX2XRIkkOgEtLSgpb5Wj+3pQLJAMrtvrtDzjjPYhCNOO/jyiNRwXcED+1V6
	T6Jg==
X-Gm-Message-State: APzg51Bp2szLhcz8UwDV2Q2oAuubRfMeb1A9A2zTQ550qxWxvPf5ZoMe
	a6cGP9qluA/hnvRXq/pvKL4Xuza/wLDgDG0mLjpU0g==
X-Google-Smtp-Source: ANB0VdY0Uep2r9rF1jsHVS5MK7FJvXVweTH6JlPgOBUn+v9KY6HanlrhWXw6AJsVT214mI46gEbeOp3m2iDqL6FcM18=
X-Received: by 2002:aca:e6cd:: with SMTP id
	d196-v6mr2565167oih.94.1535638352777; 
	Thu, 30 Aug 2018 07:12:32 -0700 (PDT)
MIME-Version: 1.0
References: <20180824145347.15795-1-JPEWhacker@gmail.com>
In-Reply-To: <20180824145347.15795-1-JPEWhacker@gmail.com>
From: Joshua Watt <jpewhacker@gmail.com>
Date: Thu, 30 Aug 2018 09:12:21 -0500
Message-ID: <CAJdd5GbsEhoY8np0-j0mBzVmE9XkkeFdz5T8Ve+6CHygAByDgg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [meta-mingw][master/sumo][PATCH] swig: Add swig environment setup for SDK
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
X-List-Received-Date: Thu, 30 Aug 2018 14:12:34 -0000
Content-Type: multipart/alternative; boundary="0000000000008555530574a7aa5d"

--0000000000008555530574a7aa5d
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 24, 2018, 09:54 Joshua Watt <jpewhacker@gmail.com> wrote:

> Configures the mingw SDK environment to set the SWIG_LIB environment
> variable so that swig can find its core library. Otherwise, swig will
> look for a directory called "Lib" next to the executable.
>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  recipes-devtools/swig/swig_%.bbappend | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
>  create mode 100644 recipes-devtools/swig/swig_%.bbappend
>
> diff --git a/recipes-devtools/swig/swig_%.bbappend
> b/recipes-devtools/swig/swig_%.bbappend
> new file mode 100644
> index 0000000..de40609
> --- /dev/null
> +++ b/recipes-devtools/swig/swig_%.bbappend
> @@ -0,0 +1,12 @@
> +# A wrapper script won't work to set SWIG_LIB for a mingw SDK. Instead,
> add an
> +# environment setup batch file to set SWIG_LIB when the SDK is configured.
> +do_install_append_class-nativesdk_mingw32() {
> +    install -d ${D}${SDKPATHNATIVE}/environment-setup.d
> +
> +    cat <<HEREDOC > ${D}${SDKPATHNATIVE}/environment-setup.d/swig.bat
> +set SWIG_LIB=%OECORE_NATIVE_SYSROOT%\\usr\\share\\${BPN}\\${PV}
> +HEREDOC
> +}
> +
> +FILES_${PN}_append_class-nativesdk_mingw32 = "
> ${SDKPATHNATIVE}/environment-setup.d"
> +
> --
> 2.17.1
>

Ping

>

--0000000000008555530574a7aa5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><div data-smartmail=3D"gmail_signature"><br></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr">On Fri, Aug 24, 2018, 09:54 J=
oshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewhacker@gmail.com=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Configures the ming=
w SDK environment to set the SWIG_LIB environment<br>
variable so that swig can find its core library. Otherwise, swig will<br>
look for a directory called &quot;Lib&quot; next to the executable.<br>
<br>
Signed-off-by: Joshua Watt &lt;<a href=3D"mailto:JPEWhacker@gmail.com" targ=
et=3D"_blank" rel=3D"noreferrer">JPEWhacker@gmail.com</a>&gt;<br>
---<br>
=C2=A0recipes-devtools/swig/swig_%.bbappend | 12 ++++++++++++<br>
=C2=A01 file changed, 12 insertions(+)<br>
=C2=A0create mode 100644 recipes-devtools/swig/swig_%.bbappend<br>
<br>
diff --git a/recipes-devtools/swig/swig_%.bbappend b/recipes-devtools/swig/=
swig_%.bbappend<br>
new file mode 100644<br>
index 0000000..de40609<br>
--- /dev/null<br>
+++ b/recipes-devtools/swig/swig_%.bbappend<br>
@@ -0,0 +1,12 @@<br>
+# A wrapper script won&#39;t work to set SWIG_LIB for a mingw SDK. Instead=
, add an<br>
+# environment setup batch file to set SWIG_LIB when the SDK is configured.=
<br>
+do_install_append_class-nativesdk_mingw32() {<br>
+=C2=A0 =C2=A0 install -d ${D}${SDKPATHNATIVE}/environment-setup.d<br>
+<br>
+=C2=A0 =C2=A0 cat &lt;&lt;HEREDOC &gt; ${D}${SDKPATHNATIVE}/environment-se=
tup.d/swig.bat<br>
+set SWIG_LIB=3D%OECORE_NATIVE_SYSROOT%\\usr\\share\\${BPN}\\${PV}<br>
+HEREDOC<br>
+}<br>
+<br>
+FILES_${PN}_append_class-nativesdk_mingw32 =3D &quot; ${SDKPATHNATIVE}/env=
ironment-setup.d&quot;<br>
+<br>
-- <br>
2.17.1<br></blockquote></div></div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Ping</div><div dir=3D"auto"><div class=3D"gmail_quote"><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"></blockquote></div></div></div>

--0000000000008555530574a7aa5d--
