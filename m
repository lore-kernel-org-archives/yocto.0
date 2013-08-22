Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFAFDE013D6
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:32:19 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id e12so1107733vbg.29
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2013 03:32:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2lnW/CfFcbt95q2alTNV51waBjnBksJoegceP6XMMEs=;
	b=FGuJHj9YbtFC4B0nXMimWworWZGSflBeYEilP5hX/VNguWdRfQ4htfS/d0zIpb60jf
	of11GEY9qx87iiMvrDlqdefq2iEKaFaFzmrt4jGD/uAaUVXzVb+ZwmqmGOp/1NtiHXI7
	NtwRyN8aXjx9qvk0VtTQoiUdGjeoom1zccPLV+Dm0aRmW4gPQrUYsv7Aqasp/dbmLKVH
	cN0Bnyv098NZfakQTJV6/gNsfciuihtPNdj6l6zUCom+Kd+qMUlY1PuIyhGDP8HS0XAY
	L+vzpqoc9N0aoyWE8HGB0rga1YzK76chv/ZCtMRT+PsN/gzUxyoKireZB0dXgcUL1B1t
	l9Tw==
X-Gm-Message-State: ALoCoQmMTLfYNYlfe3Q9ltTbPYWOjqUxPFi235+VIcd9Dx7Nj/cKnMCYLArWB4ano9/J+p2dIrp0
X-Received: by 10.52.164.102 with SMTP id yp6mr9436573vdb.14.1377167538515;
	Thu, 22 Aug 2013 03:32:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 22 Aug 2013 03:31:58 -0700 (PDT)
In-Reply-To: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
References: <CAAGt+t0w9Rtia4vVJujgjTfmEU709WyhjCYSPP7PThMN+vpOdg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 22 Aug 2013 11:31:58 +0100
Message-ID: <CAJTo0LYTB2eby76YsAtj+YM9jfAo1oia4TvRUXgiNU+DKiuOFQ@mail.gmail.com>
To: Zafrullah Syed <zafrullahmehdi@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: bitbake with cmake recipe
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
X-List-Received-Date: Thu, 22 Aug 2013 10:32:20 -0000
Content-Type: text/plain; charset=UTF-8

On 22 August 2013 11:30, Zafrullah Syed <zafrullahmehdi@gmail.com> wrote:
> I am trying to integrate my own package which should use cmake.
> I regularly use do_compile() and do_install().

Pasting your recipe would be useful, but there's a cmake class you can
simply inherit that should just work.

Ross

