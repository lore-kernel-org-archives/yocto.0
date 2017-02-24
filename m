Return-Path: <maciej.borzecki@rndity.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2F6C1E00724; Fri, 24 Feb 2017 01:21:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f48.google.com (mail-wm0-f48.google.com [74.125.82.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBD6DE00405
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 01:21:44 -0800 (PST)
Received: by mail-wm0-f48.google.com with SMTP id v77so9659654wmv.1
	for <yocto@yoctoproject.org>; Fri, 24 Feb 2017 01:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=rndity-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yC9N42BVc7dnMnRiQZhShViT4HbNO95tH8Dx1MCQYAQ=;
	b=Aau1RDEfTHrxCH1jv6bwy9e7bnt1Ghp5qI+AKZaQ5/Gw3HRXcel706sjL5gp4Rm0k9
	ekDaji7B6y/enHF3EL6xVkZigd+Hfys0OAEuy4Zufh+gEP2pQz5MkmY34IUKWPwaOmJ3
	xjUN8qdHLjpgIkL/hv/lHL3TqM6YjiVADEJTgZZb14ZwapsYNF7tyVMDj76OIbutQmV1
	c7UjhtN3SOh3147+k/lU/eW8D32WlfznnfdNLlSJcsEQEOQoR/jdmBSgL6wiDFBIM7Ua
	lKPlDM1lIl9V7NIaclKkt3XpBVTECNeqL9renArwMXinuZGtxL+vv5Ft8YT5sDlModcC
	YVQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yC9N42BVc7dnMnRiQZhShViT4HbNO95tH8Dx1MCQYAQ=;
	b=oS2qKFLqNWejtnmdF4mKD/tORhzGkQj/1WdXley/I+bU2zTFFIZE+LIfifk9rGR+jF
	vLBwoYlNBpXBrP0rq8JrABg+Z+fZ+EYMyKuAdKhXWlZz7Kuf+3XXVmoxUBD3mj7onLmA
	DeOiJuYvB95w7+ngSP4DsLY98vQRngjmJ7qr6r85tpM5rbIC7MhN66opN4dMw/QRFy+a
	RzzczMR5tpUecWiI8o/8lk0q2w585/7KA7m0Anb2zOk5VKkgXFF+/LQ/YD9ztITRLADd
	14xUFi082NpKUlSIa8e58FfPvnH/S4slPmQcCj2Ni5seBsLGQOeu27nPSeaKVIxF8UTm
	Ec5w==
X-Gm-Message-State: AMke39lfXk2gwx5AMO+ScP9MHeQxnJmgGwp61eqyh+qeZ+bm1GW/z6rmZ4EGZDbmotVXAUGEtWiuzCTDpeOixA==
X-Received: by 10.28.20.209 with SMTP id 200mr1792780wmu.64.1487928103482;
	Fri, 24 Feb 2017 01:21:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.28.52.78 with HTTP; Fri, 24 Feb 2017 01:21:23 -0800 (PST)
In-Reply-To: <CACr_9kHaf_Jqogt0BK8LaXXxrb_L6uhq3=z1ZXvo6M8Dvs4Tiw@mail.gmail.com>
References: <CACr_9kHaf_Jqogt0BK8LaXXxrb_L6uhq3=z1ZXvo6M8Dvs4Tiw@mail.gmail.com>
From: =?UTF-8?Q?Maciej_Borz=C4=99cki?= <maciej.borzecki@rndity.com>
Date: Fri, 24 Feb 2017 10:21:23 +0100
Message-ID: <CAD4b0_JR7jfR9QfADu3j0xAv85otVmeDdwTLqVEJSDF-xnAnCw@mail.gmail.com>
To: Jakob Simon-Gaarde <jakobsg@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Python3 partial rootfs installation
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
X-List-Received-Date: Fri, 24 Feb 2017 09:21:53 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 24, 2017 at 9:50 AM, Jakob Simon-Gaarde <jakobsg@gmail.com> wrote:
> Hi.
>
> I want to use Python3 on yocto 2.2 so I added it as a dependency in my
> project. Python3.5 was added to the final rootfs
> but it is partial. Many of the standard libraries that are build during the
> image creation does not end up in the target rootfs.
>
> For instance socketserver.py which was the first missing module I
> encountered.
>
> Is there any way to make a full standard python3 install?

Installing python3-modules should cover most of your needs.


Cheers,
-- 
Maciej Borzecki
RnDity

