Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99B20E0096C; Sun, 11 May 2014 03:54:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RDNS_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-wg0-f45.google.com (unknown [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F22E0094D
	for <yocto@yoctoproject.org>; Sun, 11 May 2014 03:54:46 -0700 (PDT)
Received: by mail-wg0-f45.google.com with SMTP id m15so5802263wgh.16
	for <yocto@yoctoproject.org>; Sun, 11 May 2014 03:54:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=sD76YaLrfI8NnU9c3UDxybzDs6lKMFK+ext7KGf8a+c=;
	b=LvnaX8q8D/osAo88WWgCQAXScyHezRD2vh2SRhNiFCBbhPaG0ZND7i5FIVXJaVfnZ0
	WBIqTOfHdWKKjAZA8okzaJrCp57tsREkzCZMLSq0CvEP4lxcHAg2UwAphffJtMzX1eHQ
	uBxTQ3dkMJGKRGoUFYAXEqhKjHPfjo67HSXB+/jN0TNcE4K0Wr830RGdb8nDgd6Fz7aW
	87ZKVNrZwn+Xj1WWYHqU5h/Lswvzut/apXjvwf9gySEK3L37d4eK0Xga9oT8j7jXRWri
	HY7pA2dZXx1+wdJAxQgGcOmhOs9JBFPHGtnIR4AFWzVC771PdEuKXldnhsL5kaMpG4Hz
	C3mg==
X-Gm-Message-State: ALoCoQltVOFmBmvGeG8IRinMyKGuw86Jn7G8t4SnlRKAXF1prF28jn9lU7hhTv5F3b4KrzTq+fSg
X-Received: by 10.194.92.177 with SMTP id cn17mr16667332wjb.18.1399805685345; 
	Sun, 11 May 2014 03:54:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Sun, 11 May 2014 03:54:25 -0700 (PDT)
X-Originating-IP: [5.13.208.17]
In-Reply-To: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
References: <1399640946-21680-1-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sun, 11 May 2014 13:54:25 +0300
Message-ID: <CAK18fxHmsDztnf6YeSPxn-yQ_bDjhF6musYxYxFW59C40hcCNw@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/9] rpi-default-versions: Use 3.12.X as default kernel version
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
X-List-Received-Date: Sun, 11 May 2014 10:54:52 -0000
Content-Type: multipart/alternative; boundary=047d7beb91aaa1420204f91da866

--047d7beb91aaa1420204f91da866
Content-Type: text/plain; charset=UTF-8

On Fri, May 9, 2014 at 4:08 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Change-Id: Ief7949be4b9726b5b6ba58e6280f6b6ca3fdfdc4
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/machine/include/rpi-default-versions.inc | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/conf/machine/include/rpi-default-versions.inc
> b/conf/machine/include/rpi-default-versions.inc
> index 04297ba..1ca9701 100644
> --- a/conf/machine/include/rpi-default-versions.inc
> +++ b/conf/machine/include/rpi-default-versions.inc
> @@ -1,3 +1,3 @@
>  # RaspberryPi BSP default versions
>
> -PREFERRED_VERSION_linux-raspberrypi ?= "3.10.%"
> +PREFERRED_VERSION_linux-raspberrypi ?= "3.12.%"
> --
> 1.8.5.3
>
>
Merged.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7beb91aaa1420204f91da866
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On F=
ri, May 9, 2014 at 4:08 PM, Andrei Gherzan <span dir=3D"ltr">&lt;<a href=3D=
"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt;</spa=
n> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Change-Id: Ief7949be4b9726b5b6ba58e6280f6b6c=
a3fdfdc4<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=C2=A0conf/machine/include/rpi-default-versions.inc | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/conf/machine/include/rpi-default-versions.inc b/conf/machine/i=
nclude/rpi-default-versions.inc<br>
index 04297ba..1ca9701 100644<br>
--- a/conf/machine/include/rpi-default-versions.inc<br>
+++ b/conf/machine/include/rpi-default-versions.inc<br>
@@ -1,3 +1,3 @@<br>
=C2=A0# RaspberryPi BSP default versions<br>
<br>
-PREFERRED_VERSION_linux-raspberrypi ?=3D &quot;3.10.%&quot;<br>
+PREFERRED_VERSION_linux-raspberrypi ?=3D &quot;3.12.%&quot;<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.8.5.3<br>
<br>
</font></span></blockquote></div><br>Merged.<br clear=3D"all"><div><br></di=
v>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=
=3D"text-align:center"><div align=3D"left" style=3D"font-family:&#39;Times =
New Roman&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--047d7beb91aaa1420204f91da866--
