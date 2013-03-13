Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0993EE0071D
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:44:38 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id ft2so651764vbb.9
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:44:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=Go1/atT7diF7PmISnS517pBfSzqXBkUUKESb7hyoDsM=;
	b=nCzINwgFihFEhVhssbW4TlowCXbA//Iij0eVyOOwYNawRuWyTvnt9hQfMbf1jecS10
	dBlCX227GUUhSdbGkM8/baspUVxrbj0lU0sy8LvwMZ6tLhl9r/U6QRYxnNYomfejIFDP
	Zt/UwhGO2CHyvfamTDfTybgIiAewot8qXcLfgvFH8zb5WWib/NA87RHiOhcBfHB9ThkI
	AJQ6/m9LCunfnFsmZLnZ7uT1rwsk6AWA406LgjcsLPkwoL/mH43uxa3V+1ePPHiUFsFh
	iE09p6d/xnRbUOYGWdFQ8zq+FIMrUs4blz4489uzFa9RSD0EhQ9b7lQeEWsWjjZIejPW
	CgFg==
X-Received: by 10.59.3.9 with SMTP id bs9mr8841296ved.38.1363196678338; Wed,
	13 Mar 2013 10:44:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:44:17 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1360447871-10982-3-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
	<1360447871-10982-3-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:44:17 +0200
Message-ID: <CAK18fxFdyNoUTrdbVQeLmxvtp3a_KsV18ENDmuF-ShPRJ6VELg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQkpTbKgrqxlQ2hcvZnRDQ9+iaRzp1/P3N32ymkp2gJQn6W4L6GY/ghBc+aDQlPmvCYVzNQo
Subject: Re: [meta-raspberrypi][PATCH 3/7] custom-licenses: Add directory to hold custom licenses
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
X-List-Received-Date: Wed, 13 Mar 2013 17:44:39 -0000
Content-Type: multipart/alternative; boundary=e89a8f921936c5962904d7d1f591

--e89a8f921936c5962904d7d1f591
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Add Broadcom license to this directory.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  files/custom-licenses/Broadcom |   25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
>  create mode 100644 files/custom-licenses/Broadcom
>
> diff --git a/files/custom-licenses/Broadcom
> b/files/custom-licenses/Broadcom
> new file mode 100644
> index 0000000..2582681
> --- /dev/null
> +++ b/files/custom-licenses/Broadcom
> @@ -0,0 +1,25 @@
> +Copyright (c) 2012, Broadcom Europe Ltd
> +All rights reserved.
> +
> +Redistribution and use in source and binary forms, with or without
> +modification, are permitted provided that the following conditions are
> met:
> +    * Redistributions of source code must retain the above copyright
> +      notice, this list of conditions and the following disclaimer.
> +    * Redistributions in binary form must reproduce the above copyright
> +      notice, this list of conditions and the following disclaimer in the
> +      documentation and/or other materials provided with the distribution.
> +    * Neither the name of the copyright holder nor the
> +      names of its contributors may be used to endorse or promote products
> +      derived from this software without specific prior written
> permission.
> +
> +THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
> IS" AND
> +ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
> IMPLIED
> +WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
> +DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
> LIABLE FOR ANY
> +DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
> +(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
> SERVICES;
> +LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
> AND
> +ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
> +(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
> THIS
> +SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
> +
> --
> 1.7.9.5
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--e89a8f921936c5962904d7d1f591
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Add Broadcom license to this directory.<br>
<br>
Signed-off-by: Andrei Gherzan &lt;<a href=3D"mailto:andrei@gherzan.ro">andr=
ei@gherzan.ro</a>&gt;<br>
---<br>
=A0files/custom-licenses/Broadcom | =A0 25 +++++++++++++++++++++++++<br>
=A01 file changed, 25 insertions(+)<br>
=A0create mode 100644 files/custom-licenses/Broadcom<br>
<br>
diff --git a/files/custom-licenses/Broadcom b/files/custom-licenses/Broadco=
m<br>
new file mode 100644<br>
index 0000000..2582681<br>
--- /dev/null<br>
+++ b/files/custom-licenses/Broadcom<br>
@@ -0,0 +1,25 @@<br>
+Copyright (c) 2012, Broadcom Europe Ltd<br>
+All rights reserved.<br>
+<br>
+Redistribution and use in source and binary forms, with or without<br>
+modification, are permitted provided that the following conditions are met=
:<br>
+ =A0 =A0* Redistributions of source code must retain the above copyright<b=
r>
+ =A0 =A0 =A0notice, this list of conditions and the following disclaimer.<=
br>
+ =A0 =A0* Redistributions in binary form must reproduce the above copyrigh=
t<br>
+ =A0 =A0 =A0notice, this list of conditions and the following disclaimer i=
n the<br>
+ =A0 =A0 =A0documentation and/or other materials provided with the distrib=
ution.<br>
+ =A0 =A0* Neither the name of the copyright holder nor the<br>
+ =A0 =A0 =A0names of its contributors may be used to endorse or promote pr=
oducts<br>
+ =A0 =A0 =A0derived from this software without specific prior written perm=
ission.<br>
+<br>
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS &quot;=
AS IS&quot; AND<br>
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPL=
IED<br>
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE<br>
+DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIAB=
LE FOR ANY<br>
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES=
<br>
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICE=
S;<br>
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AN=
D<br>
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT=
<br>
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF T=
HIS<br>
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.<br>
+<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
1.7.9.5<br>
<br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"tex=
t-align:center"><div align=3D"left" style=3D"font-family:&#39;Times New Rom=
an&#39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div>

--e89a8f921936c5962904d7d1f591--
