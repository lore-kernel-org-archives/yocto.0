Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f177.google.com (mail-ve0-f177.google.com
	[209.85.128.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A73E01431
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 07:02:57 -0700 (PDT)
Received: by mail-ve0-f177.google.com with SMTP id cz11so799330veb.36
	for <yocto@yoctoproject.org>; Mon, 29 Jul 2013 07:02:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=/MoykpBXuE0pMDwk+29hv9eqhdZlEDSefHJYh+pBoyM=;
	b=JBHXVF4NS+x+ScO5O8PrrDnKs34oNO5By9XiOP90E2s4Ic+5BQbe+L4XYqjCIW67we
	eNWoER2LmzagkcusifT6PLXPr2K0O94H7NKwL0qavwCGwAIs7u+JLehnHee2aJBz1Ulo
	h6zcpQLKp4sSoBDK5QnfPgpyGxxV0SCnt/v97XEiszeEhdmdyjUXV5zZ3FbEfymJx51T
	UvHjscqGpseNfzElylLAI4thPqi8UvGZL5jvUSDkz0yVxni6Nv1DxvaCUEGAdGpGH+VM
	FHm1GIzeMeGvtt4Pg24nHQfGySPUfsi6Q/xDV77ylgMoo2eWkknrMonte7u4hIhFtwrJ
	ufpg==
X-Received: by 10.52.174.234 with SMTP id bv10mr1858089vdc.6.1375106577187;
	Mon, 29 Jul 2013 07:02:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Mon, 29 Jul 2013 07:02:36 -0700 (PDT)
In-Reply-To: <CA+Z6RkV9ZL57uYyuaCVXKJG52EbMb72ZnPP5KKXKVoJvjehdZg@mail.gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1C406793@POCITMSEXMB06.LntUniverse.com>
	<CA+Z6RkV9ZL57uYyuaCVXKJG52EbMb72ZnPP5KKXKVoJvjehdZg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Jul 2013 15:02:36 +0100
Message-ID: <CAJTo0La7z576ofKxqrr_WcgCKuP-SN32QndmA+Eg7GUmdsn7XQ@mail.gmail.com>
To: Navani Srivastava <navani.srivastava@gmail.com>
X-Gm-Message-State: ALoCoQlvPPei0nt7qYag3HDH8hujbKoOIH8Ru4yagfO7eSTuVGvITADcAo+I5tTSBr79V922hLg2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Cleaning dependent package
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
X-List-Received-Date: Mon, 29 Jul 2013 14:02:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 29 July 2013 14:54, Navani Srivastava <navani.srivastava@gmail.com> wrot=
e:
> Is it possible to clean any dependent package from some other recipe?
>
> As an example-
>
> =E2=80=9Cbitbake core-image-minimal.bb=E2=80=9D will build u-boot and lin=
ux package as a
> part of dependent package. Is it possible to clean u-boot and linux by
> making changes in core-image-minimal.bb recipe?

If you're goal is to save space, why not use rm_work, which will clean
the work directory after a build.  Just add this to your local.conf:

     INHERIT +=3D "rm_work"

If this isn't your goal, what is it?

Ross

