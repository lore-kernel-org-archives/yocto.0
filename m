Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 426A2E00B3E; Mon, 19 Aug 2019 16:12:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f178.google.com (mail-qk1-f178.google.com
	[209.85.222.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 889EDE00961
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 16:12:31 -0700 (PDT)
Received: by mail-qk1-f178.google.com with SMTP id 201so2947453qkm.9
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2019 16:12:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=u5wOrieQYDFFDK8jkkZpVM+wz5dgqf7IuGtxBJgNJ2A=;
	b=tWSgf7S3i0w+Ad6kr0GozSYRvCGjJjKPDykf0FqYsqcG/buV4WWOUTaK0WiAvRAX70
	ZI1uICe5DRjidm4rwKTPvGJd6HXdu0gZaOb+PZF9kMVnGMZHEnXdI9pBzJJ4UZWjaaAs
	l0fUtMp0k82MOSPSDYDlzY1m/AqRCryNtRBVXHHJEvsddZCSrhh9VARICQxIe9bUPxWO
	Jx207uaJ2jfAxCCzlGGZSQKOepNbmVuaMPXleJlab/+hk8NaCvwblIO/2/+3ZW+x1z9h
	F0LKvJFedMWMATyDwBz5So9obbtlePHy3jCGV1Jf4wWgSUsHHlASsNA22yWw9uoriF7H
	6yAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=u5wOrieQYDFFDK8jkkZpVM+wz5dgqf7IuGtxBJgNJ2A=;
	b=geW4vmnNTCjkL3Rjk+448Te+HQb1eoUKoJgv0NB3QjDvVP2dKKQpdMRq2n1mBOjAWh
	vuDLTYdmGCgk/bnEGnjnZlVtk54p8OLgCHawmG3HIIgLS0sf7lYTdMHJA1QjLA/6z6sC
	Li39GHoLOwBpxnWbUtcnMNtJv2Mfef8MoCe5Zcsw58PT9J2Eb/r5Rzux0LHS5CepVzwp
	mxJcyAI1ZorDJae34UPRNEuSHq1hqHhqumLzv+Nd2TLGJR+AvtpiEDjJYJzogMBnh3vw
	07WZyWtNqW8IWT2DvnFksPa6GrmwEKU+4sKshu+Mtx15kE5PIiaKN3c5DCc5yZUjbkIu
	4NWw==
X-Gm-Message-State: APjAAAXN0h8KlViu/h5a9X/8uZuXIKZY4V8EddtypB0+uHPnlPzwll84
	Vf4fDTNrQqrYm3uAxNZvCjQw4B52TZ3M7+DnLC0b/SefOhU=
X-Google-Smtp-Source: APXvYqxPnd4z2rrUiao3eQBcPrgjk81D+5q6HGi49VReJ9NWQOH0OO31aPLfo0nI+ltoyTSA8lYzQ7j9F1x4BRS9nh4=
X-Received: by 2002:a37:a20f:: with SMTP id l15mr23753224qke.212.1566256350596;
	Mon, 19 Aug 2019 16:12:30 -0700 (PDT)
MIME-Version: 1.0
References: <000501d55633$28008060$78018120$@ppsinternational.in>
In-Reply-To: <000501d55633$28008060$78018120$@ppsinternational.in>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 19 Aug 2019 16:12:04 -0700
Message-ID: <CAMKF1sqy5cqL_hxxdVX3s3WH3jx2wsPYRrgY2qCADKL0mgtyNA@mail.gmail.com>
To: Bhupendra Singh <bhupendra.singh@ppsinternational.in>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Your GStreamer installation is missing a plug-in
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
X-List-Received-Date: Mon, 19 Aug 2019 23:12:32 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

might be you need to install gstreamer1.0-omx on target.

On Mon, Aug 19, 2019 at 12:48 AM Bhupendra Singh
<bhupendra.singh@ppsinternational.in> wrote:
>
> Dear All
>
> I am trying to make a Qt application QML-GUI that will show live streamin=
g of ip-camera. but when in run qt-application on my Embedded Device then I=
 got
>
> Some problem .
>
>
>
> (gst-plugin-scanner:1296): GStreamer-WARNING **: Failed to load plugin '/=
usr/lib/gstreamer-0.10/libgstopengl.so': /usr/lib/libgstgl-0.10.so.1: undef=
ined symbol: gst_gl_shader_set_uniform_matrix_2x3fv
>
> ** (gst-plugin-scanner:1296): WARNING **: could not find config file '/ho=
me/root/.config/gst-openmax.conf'.. using defaults!
>
> (gst-plugin-scanner:1296): GLib-GObject-WARNING **: cannot register exist=
ing type 'GstVorbisDec'
>
> (gst-plugin-scanner:1296): GLib-CRITICAL **: g_once_init_leave: assertion=
 'result !=3D 0' failed
>
> (gst-plugin-scanner:1296): GStreamer-CRITICAL **: gst_element_register: a=
ssertion 'g_type_is_a (type, GST_TYPE_ELEMENT)' failed
>
> shared memfd open() failed: Function not implemented
>
> Warning: "No decoder available for type 'application/x-rtp, media=3D(stri=
ng)video, payload=3D(int)35, clock-rate=3D(int)90000, encoding-name=3D(stri=
ng)H264, packetization-mode=3D(string)1, profile-level-id=3D(string)4d0029,=
 sprop-parameter-sets=3D(string)\"Z00AKZpkA8ARPy4C1AQEFAg\\=3D\\,aO48gA\\=
=3D\\=3D\", a-recvonly=3D(string)\"\", npt-start=3D(guint64)0, play-speed=
=3D(double)1, play-scale=3D(double)1'."
>
> Error: "Your GStreamer installation is missing a plug-in."
>
>
>
> I am using =E2=80=93
>
> Embedded Device(SOC) =E2=80=93 Colibri-T20  (NVIDIA,Toradex)
>
> Os -    Angstrom v2017.12 =E2=80=93 Kernel
>
>             Colibri-T20_Qt5-X11-Image 2.8b6 20190816
>
>
>
> Which package I am missing in my os
>
> If am running this application on my Desktop it works correctly .
>
>
>
>
>
> Thanks & Regards
>
> Bhupendra Singh
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

