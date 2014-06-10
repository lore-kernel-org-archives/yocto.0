Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3431E00BAE; Tue, 10 Jun 2014 11:23:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFEFDE00BF9
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:22:49 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id y10so1831263wgg.8
	for <yocto@yoctoproject.org>; Tue, 10 Jun 2014 11:22:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=laEz2c9QkuLOiiyjzhRT5D8hoOwkAxl04pPJKzt6jLg=;
	b=cWNlnIWtjeeh4Wk+y5PZKRlmeNimX7HVPQfG8RqXsNKkI6Ng+ttIPq1jB1nuuh3Uya
	pMCKb7YHTQVkJm8PO7LOmQydw4s5odGD5BHqq6dr7Zk403tKw++Sie592BUBpelLlUzr
	xYqNv/E6YgivGSWmvEyP/6NK4wYQNor272X0Lv2dIzjB7xR/YbvwWMBLR0wkOZzpJhhv
	qU79XwZTIgnu0q8LdvPkuFtzz75XCHtnHgwyYyPVFAPY66J5QUCxfAJ3C0pGiwgajnyb
	R9WfmxXpJeqVr2luzNPfk/p42OWjAMbrIC7bpzkIr6/W+EFS/5Au4aq/odzWWDrC/Evk
	xqkA==
X-Gm-Message-State: ALoCoQnHh/4V7vl+jgZ5/pMzaFdagzHOsvA8x/xZFqMZK7EpJzLcqHUtYH7dRnCyUgIbW/CgWotT
X-Received: by 10.180.39.66 with SMTP id n2mr43360313wik.17.1402424568229;
	Tue, 10 Jun 2014 11:22:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 10 Jun 2014 11:22:28 -0700 (PDT)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <f4ebcded14c4f0d1cf509ad58e3ba02a2ad71a89.1401706333.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1401706333.git.ajlennon@dynamicdevices.co.uk>
	<f4ebcded14c4f0d1cf509ad58e3ba02a2ad71a89.1401706333.git.ajlennon@dynamicdevices.co.uk>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 10 Jun 2014 21:22:28 +0300
Message-ID: <CAK18fxHD-SvL=6df=aW6LWG03Qb0rUCSHeS5F+LVgW5SCWj4KQ@mail.gmail.com>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>,
	jan alexandru vaduva <vaduva.jan.alexandru@gmail.com>
Subject: Re: [meta-raspberrypi][PATCH 1/2] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Tue, 10 Jun 2014 18:23:15 -0000
Content-Type: multipart/alternative; boundary=001a1135f0fc36c83b04fb7f6a75

--001a1135f0fc36c83b04fb7f6a75
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 2, 2014 at 1:58 PM, Alex J Lennon <ajlennon@dynamicdevices.co.uk
> wrote:

> libmmal_vc_client.so makes use of __attribute__(constructor) to ensure
> that supplier components (e.g. camera) are loaded when the static library
> is loaded.
>

There shouldn't be more than 78 characters per line. I did this change for
this patch (the other you already submited). More info:
http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines


>
> raspivid, and possibly other applications, link against
> libmmal_vc_client.so, causing the ctor to execute, but there is no needed
> dependency.
>
> Some build environments (e.g. Yocto/OpenEmbedded) pass the
> '--no-as-needed' linker flag which removes the dependency on
> libmmal_vc_client and thus components are not registered.
>
> In this situation raspivid then gives an error of the form
>
>   root@raspberrypi:~# raspivid -o test
>   mmal: mmal_component_create_core: could not find component
> 'vc.ril.camera'
>   mmal: Failed to create camera component
>   mmal: main: Failed to create camera component
>   mmal: Failed to run camera app. Please check for firmware updates
>
> For further details see:
> https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html
>
> Change-Id: I9d787fd83379e8b6428dde3827395c8b96be1f7f
> Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
> ---
>  recipes-graphics/userland/userland_git.bb | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/recipes-graphics/userland/userland_git.bb
> b/recipes-graphics/userland/userland_git.bb
> index a348090..4b405ee 100644
> --- a/recipes-graphics/userland/userland_git.bb
> +++ b/recipes-graphics/userland/userland_git.bb
> @@ -18,7 +18,7 @@ S = "${WORKDIR}/git"
>
>  inherit cmake
>
> -EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release"
> +EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release
> -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
>
>  # The compiled binaries don't provide sonames.
>  SOLIBS = "${SOLIBSDEV}"
> --
> 2.0.0
>
>
Thanks a lot. Merged.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a1135f0fc36c83b04fb7f6a75
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quo=
te">On Mon, Jun 2, 2014 at 1:58 PM, Alex J Lennon <span dir=3D"ltr">&lt;<a =
href=3D"mailto:ajlennon@dynamicdevices.co.uk" target=3D"_blank">ajlennon@dy=
namicdevices.co.uk</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D"">libmmal_vc_client.so makes use of __attrib=
ute__(constructor) to ensure that supplier components (e.g. camera) are loa=
ded when the static library is loaded.<br>

</div></blockquote><div><br></div><div>There shouldn&#39;t be more than 78 =
characters per line. I did this change for this patch (the other you alread=
y submited). More info:<br></div><div><a href=3D"http://www.openembedded.or=
g/wiki/Commit_Patch_Message_Guidelines">http://www.openembedded.org/wiki/Co=
mmit_Patch_Message_Guidelines</a><br>

</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex"><div class=3D"">
<br>
raspivid, and possibly other applications, link against libmmal_vc_client.s=
o, causing the ctor to execute, but there is no needed dependency.<br>
<br>
</div>Some build environments (e.g. Yocto/OpenEmbedded) pass the &#39;--no-=
as-needed&#39; linker flag which removes the dependency on libmmal_vc_clien=
t and thus components are not registered.<br>
<div class=3D""><br>
In this situation raspivid then gives an error of the form<br>
<br>
=C2=A0 root@raspberrypi:~# raspivid -o test<br>
=C2=A0 mmal: mmal_component_create_core: could not find component &#39;vc.r=
il.camera&#39;<br>
=C2=A0 mmal: Failed to create camera component<br>
=C2=A0 mmal: main: Failed to create camera component<br>
=C2=A0 mmal: Failed to run camera app. Please check for firmware updates<br=
>
<br>
For further details see: <a href=3D"https://lists.yoctoproject.org/pipermai=
l/yocto/2014-June/019933.html" target=3D"_blank">https://lists.yoctoproject=
.org/pipermail/yocto/2014-June/019933.html</a><br>
<br>
</div>Change-Id: I9d787fd83379e8b6428dde3827395c8b96be1f7f<br>
<div class=3D"">Signed-off-by: Alex J Lennon &lt;<a href=3D"mailto:ajlennon=
@dynamicdevices.co.uk">ajlennon@dynamicdevices.co.uk</a>&gt;<br>
---<br>
</div>=C2=A0recipes-graphics/userland/<a href=3D"http://userland_git.bb" ta=
rget=3D"_blank">userland_git.bb</a> | 2 +-<br>
=C2=A01 file changed, 1 insertion(+), 1 deletion(-)<br>
<br>
diff --git a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" t=
arget=3D"_blank">userland_git.bb</a> b/recipes-graphics/userland/<a href=3D=
"http://userland_git.bb" target=3D"_blank">userland_git.bb</a><br>
index a348090..4b405ee 100644<br>
--- a/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
+++ b/recipes-graphics/userland/<a href=3D"http://userland_git.bb" target=
=3D"_blank">userland_git.bb</a><br>
@@ -18,7 +18,7 @@ S =3D &quot;${WORKDIR}/git&quot;<br>
<div class=3D""><div class=3D"h5"><br>
=C2=A0inherit cmake<br>
<br>
-EXTRA_OECMAKE =3D &quot;-DCMAKE_BUILD_TYPE=3DRelease&quot;<br>
+EXTRA_OECMAKE =3D &quot;-DCMAKE_BUILD_TYPE=3DRelease -DCMAKE_EXE_LINKER_FL=
AGS=3D&#39;-Wl,--no-as-needed&#39;&quot;<br>
<br>
=C2=A0# The compiled binaries don&#39;t provide sonames.<br>
=C2=A0SOLIBS =3D &quot;${SOLIBSDEV}&quot;<br>
</div></div><span class=3D""><font color=3D"#888888">--<br>
2.0.0<br>
<br>
</font></span></blockquote></div><div class=3D"gmail_extra"><br></div>Thank=
s a lot. Merged.<br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"><d=
iv style=3D"text-align:center"></div><div style=3D"text-align:center"><div =
align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-size:med=
ium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =C2=A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--001a1135f0fc36c83b04fb7f6a75--
