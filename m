Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78180E02285; Tue, 12 Jun 2018 00:33:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7200AE016F5
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 00:33:14 -0700 (PDT)
Received: by mail-io0-f181.google.com with SMTP id k3-v6so12879474iog.3
	for <yocto@yoctoproject.org>; Tue, 12 Jun 2018 00:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=jxQ2wSpZTi0s/PXdu4QhfcI1VaMBgNy/MsyKcgF7Np0=;
	b=h/+ab6cqvaXoea52vsPzMNNIb2fH4LBD2dLz+WIqGCsrHqACqqCL3re1FUSrLKdQXl
	x7NHpcb4tpqzufBJILMwYbSGiD5vTOIriJxMtDvGX9rEsnzQ2PrL2Mxd9UnCyiIUQtx6
	Y/RSrDCpzs9C5XQwvh1Rcg5WNfNnbORH3GBHw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=jxQ2wSpZTi0s/PXdu4QhfcI1VaMBgNy/MsyKcgF7Np0=;
	b=pGwA0jXZZGs75Akbnyhv987AQv2W0+z5pniic1CxRFO1LA/MDtsZUubGu0oa/V0/Qq
	npDPVoSOxpoOJZIibOBSIsjkD8jjYxs8O1rROSMnvpPrVLo3cqBsOwqbDCOK5N1i4Q8M
	q20og2GjQXv5CweNrHwz8otfgxNA/NbPn0JnQxPQ/22Bxo8SAv9gGyR7/7K+a3uvreTu
	eELEiWj21rqKH9z/TxgslcH+hKfIx+AFlPXmg+pkfIdTB8QMmyn7m3rae40IEiPLMHCX
	MNi4XNXkko0qvq/XygRtZZgMNyYCjwVPvNB0aw9P7bcENA3/rBJB8n+s76Y1NTHLLQe/
	Kv/g==
X-Gm-Message-State: APt69E3cBMZNYkJCDu+b49wUrGJe2dpLjwLsGPIaRJWc9ET/KzikEoJ3
	ePxeiPUhvcxkmn+GUvpeJNknwIvvVdAl6xx8Fuimw6g7
X-Google-Smtp-Source: ADUXVKLVRXyHbjhlCYWJbpxIXvwlDbgT0neEp0ol6vYl+vfw2CA4QsmhdNrb+sJ2OwevgQ1eCa3wpyHY44kbxIFK1rA=
X-Received: by 2002:a6b:588:: with SMTP id
	130-v6mr2053370iof.282.1528788793892; 
	Tue, 12 Jun 2018 00:33:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:4b86:0:0:0:0:0 with HTTP; Tue, 12 Jun 2018 00:33:13
	-0700 (PDT)
In-Reply-To: <CAMrvBPP=9vaErzvHjjxNrg674N+Hm3YE-La9ouxL+5DHkqW2TA@mail.gmail.com>
References: <CAMrvBPP=9vaErzvHjjxNrg674N+Hm3YE-La9ouxL+5DHkqW2TA@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Tue, 12 Jun 2018 09:33:13 +0200
Message-ID: <CAALXFYyic2am_6wjJGtfZmcC4Uaby=J6oLzGqux--Xof1_KWeQ@mail.gmail.com>
To: pravas kumar Panda <pandapravaskumar97@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Adding kernel module to yocto core-image-base
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
X-List-Received-Date: Tue, 12 Jun 2018 07:33:15 -0000
Content-Type: multipart/alternative; boundary="000000000000ff39b7056e6ce094"

--000000000000ff39b7056e6ce094
Content-Type: text/plain; charset="UTF-8"

Hello.

First you need to reconfigure your kernel configuration (ncurses must be
properly installed in your host PC):

    $ bitbake -c menuconfig virtual/kernel

After you need to generate a fragment.cfg (containing a diff betweeen your
default and your recently customized kernel config):

    $ bitbake -c diffconfig  virtual/kernel

Thak will generate the fragment.cfg fine into your ${WORKDIR}

Then you need to create a bbappend in your own BSP layer extending the
content of your working kernel recipe. Something similar to this:

    $ cat your-custom-bsp-layer/recipes-kernel/linux/linux-kernel_%.bbappend

    FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

    SUMMARY = "Linux kernel customization for your board"
    LINUX_VERSION = "x.y.z"

    inherit kernel

    SRC_URI += " \
        file://fragment.cfg \
    "

Just replace x.y.z by your specific kernel version. The fragment.cfg file
must be available inside your own kernel recipe, in a directory named ${PN}
(as indicated by FILESEXTRAPATHS_prepend):

    $ ls your-custom-bsp-layer/recipes-kernel/linux/linux-kernel
    fragment.cfg

Then you already can build your new kernel:

    $ bitbake virtual/kernel

Hope this helps!

--000000000000ff39b7056e6ce094
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello.<div><br></div><div>First you need to reconfigure yo=
ur kernel configuration (ncurses must be properly installed in your host PC=
):</div><div><br></div><div>=C2=A0 =C2=A0 $ bitbake -c menuconfig virtual/k=
ernel</div><div><br></div><div>After you need to generate a fragment.cfg (c=
ontaining a diff betweeen your default and your recently customized kernel =
config):</div><div><br></div><div>=C2=A0 =C2=A0 $ bitbake -c diffconfig=C2=
=A0 virtual/kernel<br></div><div><br></div><div>Thak will generate the frag=
ment.cfg fine into your ${WORKDIR}</div><div><br></div><div>Then you need t=
o create a bbappend in your own BSP layer extending the content of your wor=
king kernel recipe. Something similar to this:</div><div><br></div><div>=C2=
=A0 =C2=A0 $ cat your-custom-bsp-layer/recipes-kernel/linux/linux-kernel_%.=
bbappend</div><div><br></div><div><div>=C2=A0 =C2=A0 FILESEXTRAPATHS_prepen=
d :=3D &quot;${THISDIR}/${PN}:&quot;</div><div><br></div><div>=C2=A0 =C2=A0=
 SUMMARY =3D &quot;Linux kernel customization for your board&quot;</div><di=
v>=C2=A0 =C2=A0 LINUX_VERSION =3D &quot;x.y.z&quot;</div><div><br></div><di=
v>=C2=A0 =C2=A0 inherit kernel</div><div><br></div><div>=C2=A0 =C2=A0 SRC_U=
RI +=3D &quot; \</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 file://fragment.cfg =
\</div><div>=C2=A0 =C2=A0 &quot;<br></div></div><div><br></div><div><span s=
tyle=3D"font-size:small;background-color:rgb(255,255,255);text-decoration-s=
tyle:initial;text-decoration-color:initial;float:none;display:inline">Just =
replace x.y.z by your specific kernel version.=C2=A0</span>The fragment.cfg=
 file must be available inside your own kernel recipe, in a directory named=
 ${PN} (as indicated by=C2=A0FILESEXTRAPATHS_prepend):</div><div><br></div>=
<div>=C2=A0 =C2=A0 $ ls=C2=A0<span style=3D"font-size:small;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline">your-custom-bsp-layer/recipes-kernel/linux/l=
inux-kernel</span></div><div><span style=3D"font-size:small;background-colo=
r:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:init=
ial;float:none;display:inline">=C2=A0 =C2=A0 fragment.cfg</span></div><div>=
<span style=3D"font-size:small;background-color:rgb(255,255,255);text-decor=
ation-style:initial;text-decoration-color:initial;float:none;display:inline=
"><br></span></div><div><span style=3D"font-size:small;background-color:rgb=
(255,255,255);text-decoration-style:initial;text-decoration-color:initial;f=
loat:none;display:inline">Then you already can build your new kernel:</span=
></div><div><span style=3D"font-size:small;background-color:rgb(255,255,255=
);text-decoration-style:initial;text-decoration-color:initial;float:none;di=
splay:inline"><br></span></div><div><span style=3D"font-size:small;backgrou=
nd-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-col=
or:initial;float:none;display:inline">=C2=A0 =C2=A0 $ bitbake virtual/kerne=
l</span></div><div><span style=3D"font-size:small;background-color:rgb(255,=
255,255);text-decoration-style:initial;text-decoration-color:initial;float:=
none;display:inline"><br></span></div><div><span style=3D"font-size:small;b=
ackground-color:rgb(255,255,255);text-decoration-style:initial;text-decorat=
ion-color:initial;float:none;display:inline">Hope this helps!</span></div><=
div><br></div></div>

--000000000000ff39b7056e6ce094--
