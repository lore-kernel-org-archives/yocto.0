Return-Path: <andrei@gherzan.ro>
Received: from mail-wg0-f43.google.com (mail-wg0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2217E008DD
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 04:03:17 -0800 (PST)
Received: by mail-wg0-f43.google.com with SMTP id k14so288149wgh.2
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 04:03:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=EygHz4GW8R6I5vxKdbFpvl7GsjTfjgyXxCjQoEZUIu4=;
	b=QeEtq0058y8/qZzDv4dq4W66fWm/d/V8Pj3Y2KPlk0hShXPj0aFnyBXFCnu02h0eR9
	R5rvvWS0HbtuYdJzNyHPX6P7HPaqSokyXx2l/TpSAcA8x7NF/VcELNC9LyVHLzAEBeBd
	v8ZeK0GgiU2fRFdEqancd7EXNjoOzuUA6HllIcx5JPhoIzp2rdrQh2lnH6oNg2/bFRNl
	/xKNbdlWr75aa7sEDU2Ay1LtAatXNB5BdRpsNl72HUYXUmjjyvr0kA6u7IbVPxErdKfK
	xT1CeLA7nW4QGlvCL8PZH69iOWGgL4TPd+bh5TAfKxZE2yR/72F/6sIPz8mgPB1j/Utb
	XiHQ==
X-Gm-Message-State: ALoCoQkjeHwtRMgC04BoaKfvQOyMM8+TkrGzb+XZXtpchkz6TtV2WUCQQgRQ6ugxtTgmQg8EMSSb
X-Received: by 10.194.119.168 with SMTP id kv8mr23996558wjb.41.1393329794761; 
	Tue, 25 Feb 2014 04:03:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.31.129 with HTTP; Tue, 25 Feb 2014 04:02:54 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <CAJTo0LYU0kgLA-BAUnQ5odLotjSjpPGtw72w8CGT=UKsvQ4pLA@mail.gmail.com>
References: <1393329130-17062-1-git-send-email-andrei@gherzan.ro>
	<CAJTo0LYU0kgLA-BAUnQ5odLotjSjpPGtw72w8CGT=UKsvQ4pLA@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 25 Feb 2014 14:02:54 +0200
Message-ID: <CAK18fxFJkqucO1-HxtYBZ0j-SiezVS9hUHRfrzP+Y=TuQVBvFg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] mesa: Replace ugly fix with PACKAGECONFIG
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
X-List-Received-Date: Tue, 25 Feb 2014 12:03:18 -0000
Content-Type: multipart/alternative; boundary=089e01176b1d78d30904f339df19

--089e01176b1d78d30904f339df19
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Feb 25, 2014 at 2:00 PM, Burton, Ross <ross.burton@intel.com> wrote:

> On 25 February 2014 11:52, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > +# EGL and GLES are provided by userland package
> > +PACKAGECONFIG_remove_raspberrypi = "egl gles"
> > +PROVIDES_remove_raspberrypi = "\
> > +    virtual/libgles1 \
> > +    virtual/libgles2 \
> > +    virtual/egl"
>
> Are you aware of mesa-gl?  This recipe builds a GL-only Mesa (no gles
> or egl), and is designed to sit alongside binary drivers that provide
> EGL and GLES to avoid exactly this sort of hackery to Mesa.
>

Good hint. Thanks.

-- 
*ag*

--089e01176b1d78d30904f339df19
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Tue, Feb 25, 2014 at 2:00 PM, Burton, Ross <span dir=3D"ltr">&lt=
;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@int=
el.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>On 25 February 2014 11:52, Andrei Gherz=
an &lt;<a href=3D"mailto:andrei@gherzan.ro" target=3D"_blank">andrei@gherza=
n.ro</a>&gt; wrote:<br>



&gt; +# EGL and GLES are provided by userland package<br>
&gt; +PACKAGECONFIG_remove_raspberrypi =3D &quot;egl gles&quot;<br>
&gt; +PROVIDES_remove_raspberrypi =3D &quot;\<br>
&gt; + =A0 =A0virtual/libgles1 \<br>
&gt; + =A0 =A0virtual/libgles2 \<br>
&gt; + =A0 =A0virtual/egl&quot;<br>
<br>
</div>Are you aware of mesa-gl? =A0This recipe builds a GL-only Mesa (no gl=
es<br>
or egl), and is designed to sit alongside binary drivers that provide<br>
EGL and GLES to avoid exactly this sort of hackery to Mesa.<br></blockquote=
><div><br></div><div>Good hint. Thanks.</div><div>=A0</div></div>--=A0</div=
><div class=3D"gmail_extra"><b style=3D"text-align:center;color:rgb(51,51,5=
1);font-family:Arial">ag</b>
</div></div>

--089e01176b1d78d30904f339df19--
