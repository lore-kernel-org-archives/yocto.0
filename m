Return-Path: <andrei@gherzan.ro>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59672E0073E
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:44:51 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id m8so701229vcd.9
	for <yocto@yoctoproject.org>; Wed, 13 Mar 2013 10:44:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=pz1IrECMXZ2+RHAv4QlbRc7dJlRhsPvoVG7www2CLnQ=;
	b=ngxSD7j5sieXwHEy7d8Ld/t0xmw8aGNVVZ0/Vv5LKWlOtLBkkq9sB1XLWsIjGcx7rO
	YD4XWrQ6vInQ+W/AZGMPsTwrTpShjHafQr8cdmDpCzibxz6nAZT84+iDRYhzk3czqE34
	O04phoD1JIys8vSceTp13st8oD+9V1ynxG3AIGMDnLn+2vD6eoTKOMKIA/zAYfN9RImp
	je64vulO323YKc3LXZgPDH8lN4Md9XPFgXZr2zzqwAp6OOFD9juH5Fu9/ZRNeN+wHT57
	kpu050Mf2jqH1yCX9Xylr3TLMqTL64skViTbw16kg7ra/ZMH6pHqu65UJ50vj5AkTweL
	r6XQ==
X-Received: by 10.221.11.16 with SMTP id pc16mr6552175vcb.48.1363196690854;
	Wed, 13 Mar 2013 10:44:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Wed, 13 Mar 2013 10:44:30 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1360447871-10982-4-git-send-email-andrei@gherzan.ro>
References: <1360447871-10982-1-git-send-email-andrei@gherzan.ro>
	<1360447871-10982-4-git-send-email-andrei@gherzan.ro>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 13 Mar 2013 19:44:30 +0200
Message-ID: <CAK18fxF_B1E3aunPVu7Fti=F3s3WyiBVALoiiMdcnt3OKVXKGg@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQluT+xcM9+IMT/umFdmKpJ+xgPsFcYtKH5dgdRnFG38cFnmHJOHkdiA1tXhkFGv16jruhNZ
Subject: Re: [meta-raspberrypi][PATCH 4/7] layer.conf: Set LICENSE_PATH to layers's custom licenses directory
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
X-List-Received-Date: Wed, 13 Mar 2013 17:44:51 -0000
Content-Type: multipart/alternative; boundary=bcaec54eee8084895f04d7d1f639

--bcaec54eee8084895f04d7d1f639
Content-Type: text/plain; charset=ISO-8859-1

Merged.


On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:

> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  conf/layer.conf |    4 ++++
>  1 file changed, 4 insertions(+)
>
> diff --git a/conf/layer.conf b/conf/layer.conf
> index e8b87b2..7bffd4b 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -8,3 +8,7 @@ BBFILES += "${LAYERDIR}/recipes*/*/*.bb \
>  BBFILE_COLLECTIONS += "raspberrypi"
>  BBFILE_PATTERN_raspberrypi := "^${LAYERDIR}/"
>  BBFILE_PRIORITY_raspberrypi = "6"
> +
> +# Additional license directories.
> +LICENSE_PATH += "${LAYERDIR}/files/custom-licenses"
> +
> --
> 1.7.9.5
>
>


-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--bcaec54eee8084895f04d7d1f639
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged.</div><div class=3D"gmail_extra"><br><br><div class=
=3D"gmail_quote">On Sun, Feb 10, 2013 at 12:11 AM, Andrei Gherzan <span dir=
=3D"ltr">&lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@=
gherzan.ro</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Signed-off-by: Andrei Gherzan &lt;<a href=3D=
"mailto:andrei@gherzan.ro">andrei@gherzan.ro</a>&gt;<br>
---<br>
=A0conf/layer.conf | =A0 =A04 ++++<br>
=A01 file changed, 4 insertions(+)<br>
<br>
diff --git a/conf/layer.conf b/conf/layer.conf<br>
index e8b87b2..7bffd4b 100644<br>
--- a/conf/layer.conf<br>
+++ b/conf/layer.conf<br>
@@ -8,3 +8,7 @@ BBFILES +=3D &quot;${LAYERDIR}/recipes*/*/*.bb \<br>
=A0BBFILE_COLLECTIONS +=3D &quot;raspberrypi&quot;<br>
=A0BBFILE_PATTERN_raspberrypi :=3D &quot;^${LAYERDIR}/&quot;<br>
=A0BBFILE_PRIORITY_raspberrypi =3D &quot;6&quot;<br>
+<br>
+# Additional license directories.<br>
+LICENSE_PATH +=3D &quot;${LAYERDIR}/files/custom-licenses&quot;<br>
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

--bcaec54eee8084895f04d7d1f639--
