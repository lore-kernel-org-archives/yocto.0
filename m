Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 294BAE00CB6; Mon, 18 Feb 2019 07:46:10 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.171 listed in list.dnswl.org]
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
	[209.85.222.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A19E9E00BC8
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 07:46:09 -0800 (PST)
Received: by mail-qk1-f171.google.com with SMTP id y195so10175639qka.12
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2019 07:46:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ocW6E66NMIav3VFI1pQQYUWDbylPpwRWP6wgMvOYF14=;
	b=o+Qo6I1mvb8F5YPv+OWq6DkrhWuQP11uG1pOcmWMufqgz1+bZh3lMOG4otidSc6cwT
	9muLZVsMqFc6Ok2LaFOCqgc5ig+UpycpsZ5MM7BzKTXdOLtpo2i5HOZQtt+tVZVlRMfw
	8W0I5h1DTINCrciSnMhzfWx6DQACo2/JK8ftnYT/oyXcygiAmGwgc0qa8iVQJ2l/QTwS
	84E4QZXYvzo9yn2eOClYwUWKCFVy7X4euWnuLbvAbJlqwo/6C7Xb4HxhGnYvtDkesJ3S
	hXz1B540gBYqQ935IYmX0kHCGD7oTVbXOdCxUs8kf6HPiOwD+pOvbrQBmp7OCOFxQ8Bw
	hJjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ocW6E66NMIav3VFI1pQQYUWDbylPpwRWP6wgMvOYF14=;
	b=KC2eMz3T0eMtBDgySiw/DYzSRUW6KrkCGtd74sHTywT8WVOlXR8cpE5qPUnDjJ74Qy
	VfFSTISaaEXuH64zk0cYKJs2Ci5TwZ8Lxsfo1SsofKSU9MYMJVaQaD8nilvHKkgaxmxB
	nvtx5h/GJ/Hz37O9Bb9913S8thGSedwcBLi2w/gMaIVn0zmrwCsPvX54neex4OoFfGwU
	ZJn090iNrQOmbHG0Nwuaj+x1Z/1y2D5wMljrXNn1mYtj1K0xnWtdmFeMDwHJanPbk4D9
	djH85Hy6PR78pOyFvnQWGYCU9JzsQY14YgfW/vu4xjw0Wdh95Jw3aznMeJ5VFfO3mCHd
	uUvA==
X-Gm-Message-State: AHQUAuZ9oywSNJ2N+Ofvw5ow1DKguJV8dhr/yUSVLpDbuVcblWHAcm7e
	a3ID6m9lu0CXbk7NA/q3k7BAJypSWaaOfpsXqJE=
X-Google-Smtp-Source: AHgI3IZrNs9W8eYHR7xYx5gX4eFJznXo0//ab5IYtq92sr2ra842xTfKkTvACbdnrCS2DfkT2Mi+7JPNxtx9nyIR/Wo=
X-Received: by 2002:a37:9e15:: with SMTP id h21mr17870020qke.2.1550504768661; 
	Mon, 18 Feb 2019 07:46:08 -0800 (PST)
MIME-Version: 1.0
References: <279332559.340239.1550504527934@mail.libero.it>
In-Reply-To: <279332559.340239.1550504527934@mail.libero.it>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 18 Feb 2019 07:45:42 -0800
Message-ID: <CAMKF1sqSdKEnWfar6npeHwqV84tbbdV+_afMA4jJSHTdbXTe+Q@mail.gmail.com>
To: luciosantinell@libero.it
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Add new compiler macro
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
X-List-Received-Date: Mon, 18 Feb 2019 15:46:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 18, 2019 at 7:43 AM <luciosantinell@libero.it> wrote:
>
> Hi, i wanted to add a compiler macro (NEW_MACRO) in order to compile all the code hidden beetween
> #ifdef NEW_MACRO
>
> #endif
> in all my recipes. I think that the right place to do that is in bitbake.conf file present under poky/meta/conf but when i try to do:
>
> TARGET_CPPFLAGS += "-MMC_WRITE"

it depends on recipes respecting compiler flags from environment but
most of them do.

CFLAGS += "-DMMC_WRITE" could do it.

>
> I get the error :
> configure: error: cannot compute suffix of object files: cannot compile
>
> How can i send the macro to the compiler in the correct way?
>
> Thanks
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

