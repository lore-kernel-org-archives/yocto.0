Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4263E0079B
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:38:42 -0800 (PST)
Received: by mail-oa0-f48.google.com with SMTP id i11so734818oag.7
	for <yocto@yoctoproject.org>; Tue, 14 Jan 2014 05:38:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=w6+fUMqH8uClif55vBA2XuRimACyISQI/pKAzyOIJKw=;
	b=EQqTYAl4ZCHQ8TOcQOEi7hFtlhgwyw4sN+SNKGLVEf3G1+Q820o1WPy2MU5a0LT/J4
	2Ywkqpi7BI49AqDBSAqD/J59qRdnT6/MXeGLH49lHIR7fcUlN7DB5k6bAxDrmKWGC4JZ
	z4ITSsip/FdQ1vjJcikW+8Cy7iVWzi8m7iv8RdDyu1jCVNGVIKL9zCKuLTps486rnITo
	QlsIfWiYcsXWhz4qRpse9IlFwIF7cKFej46FzjKDP3mxCzzx5AWpxTrrfj/rcM4c0x1V
	vQAIQ7/oKWcmWUKQaUHSirPxFAR4af7gMP3Rsg8E2XXIyPgpYsuvGuIKFt363Ujc8kpK
	rD6g==
X-Gm-Message-State: ALoCoQmzLD830m6/RMl9xJBsbMKSxeusCoGbsHHvO1fOWSmM8/ppUaZvmDh24OuQNxSpCjTJ3/3K
X-Received: by 10.60.123.19 with SMTP id lw19mr1158500oeb.24.1389706721616;
	Tue, 14 Jan 2014 05:38:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.84.233 with HTTP; Tue, 14 Jan 2014 05:38:21 -0800 (PST)
In-Reply-To: <52D53D02.1050207@mlbassoc.com>
References: <52D536A0.5060307@mlbassoc.com>
	<CAP71Wjw=Q3m-bEPMniCMug0Pn4d=VoQ5VqLHGNck29XqzDkbzA@mail.gmail.com>
	<52D53908.30304@mlbassoc.com>
	<CAJTo0LaY3r6f+VER=+Nnh3du9KG=tcJ6KiNW0oK_1yBiv6K=pQ@mail.gmail.com>
	<52D53D02.1050207@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Tue, 14 Jan 2014 14:38:21 +0100
Message-ID: <CAP71Wjyb+tQwYWKZgxiV8bcBvKj4=RrjeXZBiwkv2m838EF9Xg@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gstreamer without X11?
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
X-List-Received-Date: Tue, 14 Jan 2014 13:38:42 -0000
Content-Type: multipart/alternative; boundary=047d7b5d2f887bfa6c04efee4f65

--047d7b5d2f887bfa6c04efee4f65
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Jan 14, 2014 at 2:34 PM, Gary Thomas <gary@mlbassoc.com> wrote:

> Not sure exactly what you mean, but this showed nothing as well:
>   $ bitbake -e gst-plugins-base | grep PACKAGECONFIG
>

what do you mean, 'it shows nothing'? it show show 'something'. if x11 is
enabled:

$ bitbake -e gst-plugins-base | grep PACKAGECONFIG
# $PACKAGECONFIG_pn-qemu-native
PACKAGECONFIG_pn-qemu-native="sdl"
# $PACKAGECONFIG [6 operations]
PACKAGECONFIG="x11"

and if it's not:

$ bitbake -e gst-plugins-base | grep PACKAGECONFIG
# $PACKAGECONFIG_pn-qemu-native
PACKAGECONFIG_pn-qemu-native="sdl"
# $PACKAGECONFIG [6 operations]
PACKAGECONFIG=""

--047d7b5d2f887bfa6c04efee4f65
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 14, 2014 at 2:34 PM, Gary Thomas <span dir=3D"ltr">&lt;<a href=
=3D"mailto:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":28x" style=3D"overflow:hidden">Not sure exactl=
y what you mean, but this showed nothing as well:<br>


=A0 $ bitbake -e gst-plugins-base | grep PACKAGECONFIG<div class=3D""><div =
id=3D":26t" class=3D"" tabindex=3D"0"></div></div></div></blockquote></div>=
<br>what do you mean, &#39;it shows nothing&#39;? it show show &#39;somethi=
ng&#39;. if x11 is enabled:</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><div class=
=3D"gmail_extra">$ bitbake -e gst-plugins-base | grep PACKAGECONFIG</div><d=
iv class=3D"gmail_extra"># $PACKAGECONFIG_pn-qemu-native</div><div class=3D=
"gmail_extra">

PACKAGECONFIG_pn-qemu-native=3D&quot;sdl&quot;</div><div class=3D"gmail_ext=
ra"># $PACKAGECONFIG [6 operations]</div><div class=3D"gmail_extra">PACKAGE=
CONFIG=3D&quot;x11&quot;</div><div><br></div><div>and if it&#39;s not:</div=
><div>

<br></div><div><div>$ bitbake -e gst-plugins-base | grep PACKAGECONFIG</div=
><div># $PACKAGECONFIG_pn-qemu-native</div><div>PACKAGECONFIG_pn-qemu-nativ=
e=3D&quot;sdl&quot;</div><div># $PACKAGECONFIG [6 operations]</div><div>
PACKAGECONFIG=3D&quot;&quot;</div>
</div><div><br></div></div></div>

--047d7b5d2f887bfa6c04efee4f65--
