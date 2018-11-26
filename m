Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2F54E00AD8; Mon, 26 Nov 2018 03:04:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.46 listed in list.dnswl.org]
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com
	[209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 848D3E0095C
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:04:13 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id t24so7813352ioi.0
	for <yocto@yoctoproject.org>; Mon, 26 Nov 2018 03:04:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=XD2spPYtmxDq+p7MAOBvBkrhf6P0QKgVUaZlywluLuM=;
	b=GG55UXi1qOfqJ6BB8xtNGYxglXwL5WLDuZlpSXDvzOf7EPqJ3meym72230xuE/d3pc
	XJxq974Ra+42QlKKA8J56+lRqOmMLL95VVrjEngbTtPG+gsBwsP2FnlX11Nq5mTXmxEB
	2qZbPe7SlRgSQ+RjRFATfJWibhd+09zJui9WqV4LMYYZeRB42J4qRyNUiNvCKq8OZX88
	Jhrydjx1Zl1WLvWM7kVAg+q/MBrKSuWuax7o9j2HpFtHujB11sNHVEyj3qu9g7ev11j8
	XxoYQjqao7fpucWRtWboo4OEBle4OYZpDMT0zQzYO/vHYWX11do9v5WMJDVRL1xMXipe
	qfNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=XD2spPYtmxDq+p7MAOBvBkrhf6P0QKgVUaZlywluLuM=;
	b=CsKtEf2d5UbWrx3sd543RROje+MTtvwL/07TACsIEm3rJqq2OQ0QUDK2a8ipBnSY96
	SA530ErzJ97nQ5qFnZ7Vnngdd6v2h+yqOGqa6Eb2Y07jBiuQVm46yA7MBvuQ8zTP7Oif
	QUlopajjKkUeOOKCOrLV6jwIZGpMGhALWHSXU4DvJHgLXUGyUUaWkRwQq5UuLQTFA/Yg
	1Q1dxcR5S/M/KSce6FwUlZMgNwBAyKRhyFla9X2/ui+x5rWD5sRRTKREStUzobOSQIqR
	rOL1YgWtDRSqoqVCy+h4j/Xxgj0x/J6OvaCsshJrTmFWj7tg7HVWVrVfDMBVHskUnqq/
	rzYw==
X-Gm-Message-State: AA+aEWY/Vsum6Iaz6+yTooP4EMblBfEVS0WRwt8FuWOVU18FYnDMcg8v
	/sBvus20vJ0FNT/uVFj8qwaLRq1jcoKluTW9m5WbnA==
X-Google-Smtp-Source: AFSGD/Wk8xblGFVU/A9fAAKPrZ63gbeuSpStNHl4jbNMoe4DqMKdegtIivZVEHV7GHARcZcpYRx/rUUP3lVdi9T0QFM=
X-Received: by 2002:a6b:b844:: with SMTP id i65mr19807657iof.20.1543230252719; 
	Mon, 26 Nov 2018 03:04:12 -0800 (PST)
MIME-Version: 1.0
References: <CAH+z4xSGhYr_KdE1_k+9ro2W1qqFQcv+_XkBUdOpREQrEHLGuQ@mail.gmail.com>
In-Reply-To: <CAH+z4xSGhYr_KdE1_k+9ro2W1qqFQcv+_XkBUdOpREQrEHLGuQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Nov 2018 11:04:01 +0000
Message-ID: <CAJTo0LZd=u-Dks-0WG_syqsYZ9FiyLRUscQXutjdJrGPyqddKA@mail.gmail.com>
To: slaterc@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: meta/recipes-devtools/python/python3_3.5.5.bb - no venv module
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
X-List-Received-Date: Mon, 26 Nov 2018 11:04:14 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 26 Nov 2018 at 08:11, Conor Slater <slaterc@gmail.com> wrote:
> After adding python3 to the install I appear to be missing the standard Python module venv. The module should be a standard part of Python 3.5.5.
>
> Has this been disabled? If so, how and where?
>
> How do I enable it so it is built?

What release are you using?  There was a slight packaging problem so
it only just got put in the 'proper' place.  You can use
oe-pkgdata-util to find out what package it is in, so you can add it
to your image.  For example for me:

$ oe-pkgdata-util find-path */venv/*.py
python3-venv: /usr/lib/python3.5/venv/__main__.py
python3-venv: /usr/lib/python3.5/venv/__init__.py

Ross

