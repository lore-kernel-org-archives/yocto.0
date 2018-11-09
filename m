Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82BA6E00A0A; Fri,  9 Nov 2018 06:53:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32A79E0053F
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 06:53:14 -0800 (PST)
Received: by mail-it1-f175.google.com with SMTP id m34-v6so3375375iti.1
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 06:53:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=fVUDlphyBZETbZmhWwhjVs9YjSy2feGmgNhoXYrv9EY=;
	b=2MeFl0T6vNKfhV0nTDCpQF/e687HjhYSFs5XnjIcQh57s3kPv7MCEKaid9nIfoFZky
	LsSMIqlDh66WXligFmyset82uS4rvj063o+5v7FNNnm+GEMkJgWOhRB+TGoqRovfJ/qx
	aItf4UMyoB6GjZopD0cCZ9A5+hGrVhPuIu/Kz6dhXTJpuAGy9Zwa1QJzNT5iMj6M20Au
	qNApaCrjtESDdz3NAV3iQjZg3UnW57SsQYP/EU4v2KzbTk4+B6ZlaT1Ft9vsWopb05tl
	b5UWC7qJyKvatfXBanSq8dHVAH5shfwiMAy18+Jvmoof0rd1VFB7W2I++kJgsu4N0yjt
	9RBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=fVUDlphyBZETbZmhWwhjVs9YjSy2feGmgNhoXYrv9EY=;
	b=BRJ5trj+Q+aRhPDISFwpso+etoZ7v1Ty/Bk6BuSoibdvPhu5UzFHtUpNz4mTLlUgBS
	DA/ZQKrQURwqurF0JQ3mI4bKLN0BkioEALqZ9CTrgJPfiGLys/9zndAj3GbsMLjENqG2
	ZeJXi5rsgX7GlUjBjRfY3dFiqO3hmXZY9iNa56YkcArMFVyKfM4palwhZNw81528RpCb
	sZhaSA7foe6gpPed3CuunbT26B6AY9HYF8y5im0biCjNku/B9yt+uu35uTnwdRuOvb3l
	Y05lg+7+Zc3jJxiXp8oeoywz2cjDKabVXHUU5c7tp/nXIozPh1JjW0Cpyn4moPoZpbn2
	wW+w==
X-Gm-Message-State: AGRZ1gKgcBHC5So7AIjdaqAv7fu7WFbNNJsVdgCEFLrZab0jLlJulZz2
	yQCqD/6bCnAGj09BTuqmxvc7ynHOzD+Fv4BpQrYu/w==
X-Google-Smtp-Source: AJdET5dD6fooPdH0TIzULChqNZZBpM4IItuM8FuLBCbqfghe19Bzz5r9BuDEjbzYKKK4Nhc1G77YRh7zNIkmgjfoxMw=
X-Received: by 2002:a02:b572:: with SMTP id
	z47-v6mr8399448jaj.79.1541775194544; 
	Fri, 09 Nov 2018 06:53:14 -0800 (PST)
MIME-Version: 1.0
References: <CABj1EzFR3oRx4JOzW3hxJdRmQW_jXZWP4G8sYWfD_+O96xfw_g@mail.gmail.com>
	<CAJTo0LY1F2fKx3gcsTEY56n2BEUAkoM73nhpSkMt_rzhQKXqMw@mail.gmail.com>
	<CABj1EzH57_FAWJGQdOeqNf3FwOOJxAafxx+=T4ANmUGA-b75LA@mail.gmail.com>
In-Reply-To: <CABj1EzH57_FAWJGQdOeqNf3FwOOJxAafxx+=T4ANmUGA-b75LA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 9 Nov 2018 14:53:02 +0000
Message-ID: <CAJTo0La2K+VqcE5WNAbyNsnFkiFazfKcQ5YZ6peTgK2W+=p0XQ@mail.gmail.com>
To: donal.morrissey@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: non-existent task do_package_write_ipk
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
X-List-Received-Date: Fri, 09 Nov 2018 14:53:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 9 Nov 2018 at 14:48, Donal Morrissey <donal.morrissey@gmail.com> wr=
ote:
> Thank you for your help. My build is using a layer which is generating a =
file in a ROOTFS_POSTPROCESS_COMMAND command. I would like to modify this f=
ile as part of the yocto build, but I'd prefer not to modify/fork this laye=
r as it is from a vender.
>
> I'm creating my own layer, which will modify the file created in the vend=
er layer's ROOTFS_POSTPROCESS_COMMAND command. If I use pkg_postinst, then =
the file will not have been created when pkg_postinst is called, because (a=
s far as i understand) the ROOTFS_POSTPROCESS_COMMAND commands will only be=
 executed after all packages have been installed on the root filesystem ima=
ge.

You'll have to set your own ROOTFS_POSTPROCESS_COMMAND in your image recipe=
.

Ross

