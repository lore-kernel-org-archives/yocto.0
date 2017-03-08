Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 028AAE00566; Wed,  8 Mar 2017 06:33:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f178.google.com (mail-qk0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4D8FE003C1
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 06:33:31 -0800 (PST)
Received: by mail-qk0-f178.google.com with SMTP id y76so68616208qkb.0
	for <yocto@yoctoproject.org>; Wed, 08 Mar 2017 06:33:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Na6cb9InDKPmzW03ts//PvpHVcc8WhrlL7qxk5fehQE=;
	b=GuqAB42DMBvRPiqV5lKE2I52s8lE0P/whb096UjRUNGpmj7bonvtaBzsUWKFVfCGUn
	QnxY4MpL2NdBJbuiV1RekpVkqukTM1dz4q3FLcKlRAjMUpl9K8T7f/HJd97xa3d1+Djv
	vFKoKYDmdtK/RfS3NpiNPGm6fkwxGpCZRB7o4q6MtoKqbjIsCSK/3fafA1Iqt1pysuGy
	mqWqSBeRIClUu3W90yvaOofJ8LaLBM+J1aMduZhJ+0dviGRmh4L2uyyYAoUHHFL4bay1
	8x84zyMwGI5rOQTM6YF+qkOlMVDK9MAnLl55QS/dbXVX15W4fRXblrbspc7aqQMqdmoa
	TP6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Na6cb9InDKPmzW03ts//PvpHVcc8WhrlL7qxk5fehQE=;
	b=MxTZyHcoCtgwOJvRPIkPo2403++FA369mkdCB/oNkVVxPvEpRFcA57P3481kd4IeOI
	chFP+sX/cVd5KnxouzWpt0bZqOCEK3xTQKw2B6n2eI5AwpWkGd3oDOADfMPDSA7DrMKg
	LLJQhPba5lmTpzBgEaMJTU76VnrRBUvt86FV33hzVo3E6ojCbRtUQAd2r0l9/HUzAZMS
	gliOmyNr7iCq8wrptnwxhKGVMJgZ/99jUlxiOaayimSx5ApdnnoF23ziPfY+Xnz94h/A
	ozq3+oif5ZHiqTs6X33LTUgPQOnJW1hDXRLRemjNYy7evsJrhnRDxoxBN+5YuOPQ26aT
	NMLA==
X-Gm-Message-State: AMke39mKrdT73sRFzeYqVI5v/b0SHhXYzY/Te9ONlAMMtMrhspO+wIpM0ZlpQVbKmdxbu30B4Sjk+7+FjMUxoOoY
X-Received: by 10.237.42.164 with SMTP id t33mr8144143qtd.105.1488983610739;
	Wed, 08 Mar 2017 06:33:30 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.106.137 with HTTP; Wed, 8 Mar 2017 06:33:09 -0800 (PST)
In-Reply-To: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
References: <5b2fcd4d-acd2-bfe3-5d91-1f713054ad92@fridu.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 8 Mar 2017 14:33:09 +0000
Message-ID: <CAJTo0LbfX7tfNxuBB2df3XYvM2zKEDis4zMtpD3KcgEaQtJk3A@mail.gmail.com>
To: "Dominig ar Foll (Intel Open Source)" <dominig.arfoll@fridu.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gst-plugins-bad- Patch fails 'ensure-valid-sentinels-for-gst_structure_get-etc.patch'
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
X-List-Received-Date: Wed, 08 Mar 2017 14:33:35 -0000
Content-Type: multipart/alternative; boundary=94eb2c0cfe22325154054a39038e

--94eb2c0cfe22325154054a39038e
Content-Type: text/plain; charset=UTF-8

On 8 March 2017 at 14:29, Dominig ar Foll (Intel Open Source) <
dominig.arfoll@fridu.net> wrote:

> ERROR: Task (/home/dominig/AGL/poky/meta/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_git.bb:do_patch) failed with exit code '1'
>
> Are you aware that you're building the _git recipe and not the release?

Ross

--94eb2c0cfe22325154054a39038e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 8 March 2017 at 14:29, Dominig ar Foll (Intel Open Source) <span dir=3D"=
ltr">&lt;<a href=3D"mailto:dominig.arfoll@fridu.net" target=3D"_blank">domi=
nig.arfoll@fridu.net</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><pre class=3D"m_-3444064254734171432moz-signature" cols=3D"72">ERROR: Tas=
k (/home/dominig/AGL/poky/meta/<wbr>recipes-multimedia/gstreamer/<wbr>gstre=
amer1.0-plugins-bad_git.<wbr>bb:do_patch) failed with exit code &#39;1&#39;
</pre></blockquote></div>Are you aware that you&#39;re building the _git re=
cipe and not the release?</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></div>

--94eb2c0cfe22325154054a39038e--
