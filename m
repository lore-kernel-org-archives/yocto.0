Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 933B2E013CE
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 03:18:54 -0800 (PST)
Received: by mail-vb0-f48.google.com with SMTP id fc21so3725643vbb.35
	for <yocto@yoctoproject.org>; Fri, 14 Dec 2012 03:18:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=mV0wndOah/y898IBdDDb8A7SVJ3saeQf9IGAuWYtjJU=;
	b=EYyru+YNKko/0YVeuGgKmXv5LInZ+aI9TCAPLVksHKGEEGQdSH9S8Maz/AMD6OlTCt
	9n7J3Pnvmk45k4cuX1Ep1L73P4ZuNmLqmuuei6ZG0dkVwNq4u8QBOITl8sBj8Bki6agi
	vwAuXPDHU6yqXETI8CSPhcVv24vTc3+eAP9yj9wIGRyiYyfklBhGZvLD80KcNwZQiT/u
	P5I6MIUxx+lJq1hvWWX/LHfC5GESEqmCOxh2HFTQiAE0KT1WQc8vmyD0M63wFvWW/Kqc
	lUmr+lSI0HwPJt/ZafNoBaoDFa50f+KDLCUgbAPk549YlYvHzjeAjp55NAM15BwX4/+1
	AWkg==
Received: by 10.58.74.196 with SMTP id w4mr8345608vev.7.1355483933972; Fri, 14
	Dec 2012 03:18:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.102.132 with HTTP; Fri, 14 Dec 2012 03:18:33 -0800 (PST)
X-Originating-IP: [5.13.212.252]
In-Reply-To: <CAJTo0LYSNbPTLQMKg6REuiW64Sc2TbLLow8VEVOPPAbdXXeSBw@mail.gmail.com>
References: <1355451995-29313-1-git-send-email-andrei.gherzan@windriver.com>
	<CAJTo0LYSNbPTLQMKg6REuiW64Sc2TbLLow8VEVOPPAbdXXeSBw@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 14 Dec 2012 13:18:33 +0200
Message-ID: <CAK18fxG=pktrp16N8hJRA3U=NUQF9_dNYFUaoY38d0-B=T+A1w@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
X-Gm-Message-State: ALoCoQniHDDPeu7jMG3XW/bqUSa5TZSPSbNOI6eROCcEz4Y4eB/kyK3DJknvdsdYMwD8wieJD5DK
Cc: Florin Sarbu <florin.sarbu@windriver.com>,
	Yocto Project <yocto@yoctoproject.org>,
	Andrei Gherzan <andrei.gherzan@windriver.com>
Subject: Re: [meta-ivi][PATCH 1/2] mesa-dri: Sync bbappend version with oe-core
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 14 Dec 2012 11:18:54 -0000
Content-Type: multipart/alternative; boundary=047d7b86edf66217ec04d0ce32d4

--047d7b86edf66217ec04d0ce32d4
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Dec 14, 2012 at 1:07 PM, Burton, Ross <ross.burton@intel.com> wrote:

> Hi,
>
> That append just does:
>
> PACKAGECONFIG_append_vexpressa9 = " gles egl"
>
> But 8.0.5 (and actually some of the 8.0.4 releases) have:
>
> PACKAGECONFIG ??= "${@base_contains('DISTRO_FEATURES', 'x11', 'x11',
> '', d)} egl gles"
>
> So you can drop the bbappend entirely on your master branch.
>

Will do but right now we need a fast solution to fix build.
Soon I will cleanup master.

ag

--047d7b86edf66217ec04d0ce32d4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 14, 2012 at 1:07 PM, Burton, Ross <span dir=3D"ltr">&lt;<a href=
=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</=
a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gmail_quot=
e"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left=
:1px #ccc solid;padding-left:1ex">

Hi,<br>
<br>
That append just does:<br>
<br>
PACKAGECONFIG_append_vexpressa9 =3D &quot; gles egl&quot;<br>
<br>
But 8.0.5 (and actually some of the 8.0.4 releases) have:<br>
<br>
PACKAGECONFIG ??=3D &quot;${@base_contains(&#39;DISTRO_FEATURES&#39;, &#39;=
x11&#39;, &#39;x11&#39;,<br>
&#39;&#39;, d)} egl gles&quot;<br>
<br>
So you can drop the bbappend entirely on your master branch.<br></blockquot=
e><div><br></div><div>Will do but right now we need a fast solution to fix =
build.=A0</div><div>Soon I will cleanup master.</div><div><br></div><div>

ag</div></div></div>

--047d7b86edf66217ec04d0ce32d4--
