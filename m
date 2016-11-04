Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 543A9E00BF8; Fri,  4 Nov 2016 08:09:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.194 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2DF0E00BB0
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 08:09:55 -0700 (PDT)
Received: by mail-ua0-f194.google.com with SMTP id b35so3257619uaa.1
	for <yocto@yoctoproject.org>; Fri, 04 Nov 2016 08:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EEZal+plqq2wGrQN+YCMMdhT3Ka5SDfHOBntGCIG3Ig=;
	b=VF6HBvv+WbCe05Ip9gzb4byAv3+qhRp+LqhxNn8SaReEhnVfTIwB9yMH6QUW8vCnms
	7NCLU6dm1fi7+9xPzrpBzNuF+0I4eceXfW0hpNluvugycSgFXQF09pQ5BBCY3Y+ROPUv
	31z6IrRIpSg5uuI1ZExGljEPySQDRyP8Y5a9I7rZahoZiqw4TEz3oBa0ADrq2M3R/ftx
	xYoNTBOT0xK0rWbNKjefvn5xenb58TU74q+8t7LvwfTmpJMV0triLqnv6/OcR+xrpvD8
	bJN7/wWzjWzYGLToP0SStVDrETVcaZz6CaUmHHTQePRMFlH/6zAEnf3qrPKkH5Wybkd1
	a5zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EEZal+plqq2wGrQN+YCMMdhT3Ka5SDfHOBntGCIG3Ig=;
	b=jXfAk7K/sJO0u78uaypYPAhp4yZjaTyoJwR/MxJVlM+Nv9f8h0LYllfWDsubPIn09H
	vaBeLWOO+keuFc318JHDXdeJYNISIqdqssaDOZz2KuxO2QQvL9IwUaf6El+tK4iqqQb1
	BGSbcm7Nt7Bn5rG9oJERw/ojvSuWdf26hbC+3ileXcxwxXf1oxnr/rBCmsFx/04TmWKK
	+0gMoZ1IKqOsiojlktiY443wqPHaHbzmtD7QBhTu6WRXmzDg6Omsk58OpM3iU9OazOl9
	7RxbNs11bE86n/3CnTSQeQotw7Q1g0pJopExeu7bjj7WTvw75nOhYJ5uVj0Mbt5mBiT6
	l/TA==
X-Gm-Message-State: ABUngvel4zM40B93DCr7ReFy9w36ZNvlacgEgxwzKMauDqREgxzjKOqaVfU4cQtzBhZWc8/DDM5SU7VHvQFmFw==
X-Received: by 10.159.48.146 with SMTP id j18mr11314982uab.6.1478272194717;
	Fri, 04 Nov 2016 08:09:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Fri, 4 Nov 2016 08:09:24 -0700 (PDT)
In-Reply-To: <HE1PR01MB188327BC8192C8A96AC6D31B92A20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
References: <20161103205709.32535-1-raj.khem@gmail.com>
	<HE1PR01MB188355B9382AA3E56FECCD9092A30@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<1B1AB8C7-B125-4187-B7AF-4EBEA5D3D133@gmail.com>
	<HE1PR01MB188327BC8192C8A96AC6D31B92A20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 Nov 2016 08:09:24 -0700
Message-ID: <CAMKF1srCCZ_EhMK3biQ4vT9vXSfNdwnWFTGnyUyXPivgXr2aMw@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
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
X-List-Received-Date: Fri, 04 Nov 2016 15:09:57 -0000
Content-Type: multipart/alternative; boundary=f403045dc5ea0c2e0905407b1100

--f403045dc5ea0c2e0905407b1100
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

thx

On Fri, Nov 4, 2016 at 3:10 AM, Karim ATIKI <karim_atiki@hotmail.com> wrote=
:

> Khem,
>
>
> It worked successfuly.
>
> No errors, no warnings.
>
> Cheers,
>
> Karim
>
> ------------------------------
> *De :* Khem Raj <raj.khem@gmail.com>
> *Envoy=C3=A9 :* jeudi 3 novembre 2016 22:44
> *=C3=80 :* Karim ATIKI
> *Cc :* yocto@yoctoproject.org
> *Objet :* Re: [yocto] [meta-raspberrypi][PATCH V2]
> gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
>
> here is reworked patch
> https://github.com/kraj/meta-raspberrypi/commit/
> 468e28084a4d41e71fc0fde53b43033cd19ef9d5.patch
>
> try it again
>
> On Nov 3, 2016, at 2:27 PM, Karim ATIKI <karim_atiki@hotmail.com> wrote:
>
> Hi Khem,
>
> I just tried to rebuild gstreamer1.0-plugins-bad from a clean checkout
> with your patch.
> At first glance, it's working.
>
> "bitbake gstreamer1.0-plugins-bad" succeeded but with a QA Warning:
>
> gstreamer1.0-plugins-bad-1.8.3-r0 do_configure: QA Issue:
> gstreamer1.0-plugins-bad: invalid PACKAGECONFIG: "dispmanx
> [invalid-packageconfig]
>
> Karim
>
>
>
> ------------------------------
> *De :* yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> de
> la part de Khem Raj <raj.khem@gmail.com>
> *Envoy=C3=A9 :* jeudi 3 novembre 2016 21:57
> *=C3=80 :* yocto@yoctoproject.org
> *Objet :* [yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%=
.bbappend:
> Set PACKAGECONFIG_GL for RPi
>
> Enable dispmanx support if using bcm driver
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
> Changes from V1->V2:
> - Remove spurious "
> - Rearrange code
> - Remove duplicate packageconfig for dispmanx
>
>  .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend          | 14
> ++++++++++++--
>  1 file changed, 12 insertions(+), 2 deletions(-)
>
> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbap=
pend
> b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> index ab0280e..7292f90 100644
> --- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
> @@ -1,2 +1,12 @@
> -EXTRA_OECONF_append_rpi =3D " CPPFLAGS=3D'-I${STAGING_DIR_
> TARGET}/usr/include/interface/vcos/pthreads \
> -                                   -I${STAGING_DIR_TARGET}/usr/
> include/interface/vmcs_host/linux'"
> +EXTRA_OECONF_append_rpi =3D " CPPFLAGS=3D'-I${STAGING_INCDIR}/interface/=
vcos/pthreads
> \
> +                                   -I${STAGING_INCDIR}/interface/
> vmcs_host/linux'"
> +
> +# if using bcm driver enable dispmanx not when using VC4 driver
> +
> +PACKAGECONFIG_append_rpi =3D "${@bb.utils.contains('MACHINE_FEATURES',
> 'vc4graphics', '', ' dispmanx', d)}"
> +
> +PACKAGECONFIG_GL_rpi =3D "egl gles2"
> +
> +PACKAGECONFIG_append_rpi =3D " hls libmms faad"
> +
> +PACKAGECONFIG[dispmanx] =3D "--enable-dispmanx,--disable-dispmanx,userla=
nd"
> --
> 2.10.2
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> yocto Info Page <https://lists.yoctoproject.org/listinfo/yocto>
> lists.yoctoproject.org
> Discussion of all things about the Yocto Project. Read our Community
> Guidelines or learn more about how to participate in other community
> discussions.
>
>
>

--f403045dc5ea0c2e0905407b1100
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace">thx</div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Fri, Nov 4, 2016 at 3:10 AM, Karim ATIKI <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:karim_atiki@hotmail.com" target=3D"_blank">karim_atiki@hotmai=
l.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">




<div dir=3D"ltr">
<div id=3D"m_-8212659869609567290divtagdefaultwrapper" style=3D"font-size:1=
2pt;color:#000000;font-family:Calibri,Arial,Helvetica,sans-serif">
<p>Khem,</p>
<p><br>
</p>
<p>It worked successfuly.=C2=A0</p>
<p><span style=3D"font-size:12pt">No errors, no warnings.</span><br></p>
<div><br>
</div>
Cheers,
<div><br>
</div>
<div>Karim<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr style=3D"display:inline-block;width:98%">
<div id=3D"m_-8212659869609567290divRplyFwdMsg" dir=3D"ltr"><font face=3D"C=
alibri, sans-serif" color=3D"#000000" style=3D"font-size:11pt"><b>De :</b> =
Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.kh=
em@gmail.com</a>&gt;<br>
<b>Envoy=C3=A9 :</b> jeudi 3 novembre 2016 22:44<br>
<b>=C3=80 :</b> Karim ATIKI<br>
<b>Cc=C2=A0:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank=
">yocto@yoctoproject.org</a><br>
<b>Objet :</b> Re: [yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugin=
s-bad_%.<wbr>bbappend: Set PACKAGECONFIG_GL for RPi</font>
<div>=C2=A0</div>
</div><div><div class=3D"h5">
<div>here is reworked patch
<div><a href=3D"https://github.com/kraj/meta-raspberrypi/commit/468e28084a4=
d41e71fc0fde53b43033cd19ef9d5.patch" id=3D"m_-8212659869609567290LPlnk72449=
9" target=3D"_blank">https://github.com/kraj/meta-<wbr>raspberrypi/commit/<=
wbr>468e28084a4d41e71fc0fde53b4303<wbr>3cd19ef9d5.patch</a></div>
<div><br>
</div>
<div>try it again=C2=A0</div>
<div><br>
<div>
<blockquote type=3D"cite">
<div>On Nov 3, 2016, at 2:27 PM, Karim ATIKI &lt;<a href=3D"mailto:karim_at=
iki@hotmail.com" target=3D"_blank">karim_atiki@hotmail.com</a>&gt; wrote:</=
div>
<br class=3D"m_-8212659869609567290Apple-interchange-newline">
<div>
<div id=3D"m_-8212659869609567290divtagdefaultwrapper" style=3D"font-style:=
normal;font-weight:normal;letter-spacing:normal;text-align:start;text-inden=
t:0px;text-transform:none;white-space:normal;word-spacing:0px;font-size:12p=
t;font-family:Calibri,Arial,Helvetica,sans-serif">
<div style=3D"margin-top:0px;margin-bottom:0px">Hi Khem,</div>
<div style=3D"margin-top:0px;margin-bottom:0px"><br>
</div>
<div style=3D"margin-top:0px;margin-bottom:0px">I just tried to rebuild gst=
reamer1.0-plugins-bad from a clean checkout with your patch.</div>
<div style=3D"margin-top:0px;margin-bottom:0px">At first glance, it&#39;s w=
orking.</div>
<div style=3D"margin-top:0px;margin-bottom:0px"><br>
</div>
<div style=3D"margin-top:0px;margin-bottom:0px">&quot;bitbake gstreamer1.0-=
plugins-bad&quot; succeeded but with a QA Warning:</div>
<div style=3D"margin-top:0px;margin-bottom:0px"><br>
</div>
<div style=3D"margin-top:0px;margin-bottom:0px"><span>gstreamer1.0-plugins-=
bad-1.8.<wbr>3-r0 do_configure: QA Issue: gstreamer1.0-plugins-bad: invalid=
 PACKAGECONFIG: &quot;dispmanx [invalid-packageconfig]</span><br>
</div>
<div style=3D"margin-top:0px;margin-bottom:0px"><br>
</div>
<div style=3D"margin-top:0px;margin-bottom:0px">Karim</div>
<div style=3D"margin-top:0px;margin-bottom:0px"><br>
</div>
<br>
<br>
<div>
<div>
<hr style=3D"display:inline-block;width:1041.734375px">
<div id=3D"m_-8212659869609567290x_divRplyFwdMsg" dir=3D"ltr"><font face=3D=
"Calibri, sans-serif" style=3D"font-size:11pt"><b>De :</b><span class=3D"m_=
-8212659869609567290Apple-converted-space">=C2=A0</span><a href=3D"mailto:y=
octo-bounces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject=
.<wbr>org</a><span class=3D"m_-8212659869609567290Apple-converted-space">=
=C2=A0</span>&lt;<a href=3D"mailto:yocto-bounces@yoctoproject.org" target=
=3D"_blank">yocto-bounces@<wbr>yoctoproject.org</a>&gt;
 de la part de Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank">raj.khem@gmail.com</a>&gt;<br>
<b>Envoy=C3=A9 :</b><span class=3D"m_-8212659869609567290Apple-converted-sp=
ace">=C2=A0</span>jeudi 3 novembre 2016 21:57<br>
<b>=C3=80 :</b><span class=3D"m_-8212659869609567290Apple-converted-space">=
=C2=A0</span><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a><br>
<b>Objet :</b><span class=3D"m_-8212659869609567290Apple-converted-space">=
=C2=A0</span>[yocto] [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_=
%.<wbr>bbappend: Set PACKAGECONFIG_GL for RPi</font>
<div>=C2=A0</div>
</div>
</div>
<font size=3D"2"><span style=3D"font-size:10pt">
<div class=3D"m_-8212659869609567290PlainText">Enable dispmanx support if u=
sing bcm driver<br>
<br>
Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D=
"_blank">raj.khem@gmail.com</a>&gt;<br>
---<br>
Changes from V1-&gt;V2:<br>
- Remove spurious &quot;<br>
- Rearrange code<br>
- Remove duplicate packageconfig for dispmanx<br>
<br>
=C2=A0.../gstreamer/gstreamer1.0-<wbr>plugins-bad_%.bbappend=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0 | 14 ++++++++++++--<br>
=C2=A01 file changed, 12 insertions(+), 2 deletions(-)<br>
<br>
diff --git a/recipes-multimedia/<wbr>gstreamer/gstreamer1.0-<wbr>plugins-ba=
d_%.bbappend b/recipes-multimedia/<wbr>gstreamer/gstreamer1.0-<wbr>plugins-=
bad_%.bbappend<br>
index ab0280e..7292f90 100644<br>
--- a/recipes-multimedia/<wbr>gstreamer/gstreamer1.0-<wbr>plugins-bad_%.bba=
ppend<br>
+++ b/recipes-multimedia/<wbr>gstreamer/gstreamer1.0-<wbr>plugins-bad_%.bba=
ppend<br>
@@ -1,2 +1,12 @@<br>
-EXTRA_OECONF_append_rpi =3D &quot; CPPFLAGS=3D&#39;-I${STAGING_DIR_<wbr>TA=
RGET}/usr/include/interface/<wbr>vcos/pthreads \<br>
-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -I${STAGING_=
DIR_TARGET}/usr/<wbr>include/interface/vmcs_host/<wbr>linux&#39;&quot;<br>
+EXTRA_OECONF_append_rpi =3D &quot; CPPFLAGS=3D&#39;-I${STAGING_INCDIR}/<wb=
r>interface/vcos/pthreads \<br>
+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 -I${STAGING_=
INCDIR}/interface/<wbr>vmcs_host/linux&#39;&quot;<br>
+<br>
+# if using bcm driver enable dispmanx not when using VC4 driver<br>
+<br>
+PACKAGECONFIG_append_rpi =3D &quot;${@bb.utils.contains(&#39;<wbr>MACHINE_=
FEATURES&#39;, &#39;vc4graphics&#39;, &#39;&#39;, &#39; dispmanx&#39;, d)}&=
quot;<br>
+<br>
+PACKAGECONFIG_GL_rpi =3D &quot;egl gles2&quot;<br>
+<br>
+PACKAGECONFIG_append_rpi =3D &quot; hls libmms faad&quot;<br>
+<br>
+PACKAGECONFIG[dispmanx] =3D &quot;--enable-dispmanx,--disable-<wbr>dispman=
x,userland&quot;<br>
--<span class=3D"m_-8212659869609567290Apple-converted-space">=C2=A0</span>=
<br>
2.10.2<br>
<br>
--<span class=3D"m_-8212659869609567290Apple-converted-space">=C2=A0</span>=
<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" id=3D"m_-82126598=
69609567290LPlnk447668" target=3D"_blank">https://lists.yoctoproject.<wbr>o=
rg/listinfo/yocto</a>
<div id=3D"m_-8212659869609567290LPBorder_GT_14782080361260.661253834512391=
5" style=3D"margin-bottom:20px;overflow:auto;width:1063px;text-indent:0px">
<table id=3D"m_-8212659869609567290LPContainer_14782080361210.0386619171376=
4899" cellspacing=3D"0" style=3D"width:956px;background-color:rgb(255,255,2=
55);overflow:auto;padding-top:20px;padding-bottom:20px;margin-top:20px;bord=
er-top-width:1px;border-top-style:dotted;border-top-color:rgb(200,200,200);=
border-bottom-width:1px;border-bottom-style:dotted;border-bottom-color:rgb(=
200,200,200)">
<tbody>
<tr valign=3D"top" style=3D"border-spacing:0px">
<td id=3D"m_-8212659869609567290TextCell_14782080361230.44613243419282544" =
colspan=3D"2" style=3D"vertical-align:top;padding:0px;display:table-cell">
<div id=3D"m_-8212659869609567290LPRemovePreviewContainer_14782080361230.36=
011063713095415"></div>
<div id=3D"m_-8212659869609567290LPTitle_14782080361230.833436019926242" st=
yle=3D"color:rgb(0,120,215);font-weight:normal;font-size:21px;font-family:w=
f_segoe-ui_light,&#39;Segoe UI Light&#39;,&#39;Segoe WP Light&#39;,&#39;Seg=
oe UI&#39;,&#39;Segoe WP&#39;,Tahoma,Arial,sans-serif;line-height:21px">
<a id=3D"m_-8212659869609567290LPUrlAnchor_14782080361230.8981496760712158"=
 href=3D"https://lists.yoctoproject.org/listinfo/yocto" style=3D"text-decor=
ation:none" target=3D"_blank">yocto Info Page</a></div>
<div id=3D"m_-8212659869609567290LPMetadata_14782080361230.4148812972269915=
" style=3D"margin:10px 0px 16px;color:rgb(102,102,102);font-weight:normal;f=
ont-family:wf_segoe-ui_normal,&#39;Segoe UI&#39;,&#39;Segoe WP&#39;,Tahoma,=
Arial,sans-serif;font-size:14px;line-height:14px">
<a href=3D"http://lists.yoctoproject.org/" target=3D"_blank">lists.yoctopro=
ject.org</a></div>
<div id=3D"m_-8212659869609567290LPDescription_14782080361260.8517236209021=
737" style=3D"display:block;color:rgb(102,102,102);font-weight:normal;font-=
family:wf_segoe-ui_normal,&#39;Segoe UI&#39;,&#39;Segoe WP&#39;,Tahoma,Aria=
l,sans-serif;font-size:14px;line-height:20px;max-height:100px;overflow:hidd=
en">
Discussion of all things about the Yocto Project. Read our Community Guidel=
ines or learn more about how to participate in other community discussions.=
</div>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</span></font></div>
</div>
</div>
</blockquote>
</div>
<br>
</div>
</div>
</div></div></div>
</div>
</div>
</div>

</blockquote></div><br></div></div>

--f403045dc5ea0c2e0905407b1100--
