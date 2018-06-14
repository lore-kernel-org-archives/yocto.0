Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65A74E016AC; Thu, 14 Jun 2018 12:44:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f47.google.com (mail-vk0-f47.google.com
	[209.85.213.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3AF8E016A7
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 12:44:50 -0700 (PDT)
Received: by mail-vk0-f47.google.com with SMTP id o71-v6so4389341vke.7
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2018 12:44:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=zIiixuM8JybB6CI5CED3UbHaNKmc5+9ik6incSkgPh4=;
	b=VD4g1KwXL8+hzUTFd9zbD7kjIbfnTBGQblXaTkizzUPpTAZ1bJ/AjBNtubzrH7QL6Y
	TfjBP/9VWOMVEtE2oPMKeRwBqJ637Fb6KSwRhn2eH9xvffVnjyohlkV1hJRS205azyvg
	xT4jgQp+cfMqYXjz+nIkhXB+nXgRNyX2HpBtxYyJAQZwJNFkmB/PEmUHlBK9lmBCQfn8
	A91iCVI9iyiJJwnvQTGz9ipxXzsfKKtbDWkP3K8IL5ogu4FhDjvMhHkA8jvtQmXSG8xC
	RUlPx+FetMtydajE4OfX/6AfFD2HArcv5CHsN/v0R99/xJYNWYH2H0q0obQJ/m66t98O
	QfbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=zIiixuM8JybB6CI5CED3UbHaNKmc5+9ik6incSkgPh4=;
	b=AD5JUnECYP2/D77fcQps69U4NmC2c4yr/sRJFsflS9dVYhg/DqZ7zZqj8xtOPDShe7
	kHaPhbmETCpADfJ5q3jptycDRGd3EH8Popgq4LDwta4i2rjN8jzSHy/CuuUDTUtTojY2
	0iSO/is/A7E0zk0QEqtrM6VRAxDINkBd8RI+NtoUcjWMsI/S5BITIWU4XBD6fpJYUa0F
	Xa920/y4xuQm2DSvnRKh2xzGzbFXoqHg5e+NAhaPrPf/MPGiw8uZ2PevDYij9RaQWy0C
	jEDwwmtmZZ4KzoBtejVDi9aXGnbmE9BGVOGP2GndV/zT6khbtdcagBbPXZOmVLEXkX5H
	HDsQ==
X-Gm-Message-State: APt69E0WXiGTXEd4rkRsXVyoc9JksuIskSa1an/i/rWupkUgTHw32sJf
	/deGC9IgSTCTDtclklOXLbdQlj878vl3FtdCMaE=
X-Google-Smtp-Source: ADUXVKKqaiHXAtOLWRVWWnleaqgoV5h/PuejF0bKAdPMsGAqdYoD2cZJ8kC6qgiU6akk9xNWAdDJ1+6RsPfJ4eeLf9w=
X-Received: by 2002:a1f:7c4:: with SMTP id 187-v6mr2463618vkh.60.1529005489917;
	Thu, 14 Jun 2018 12:44:49 -0700 (PDT)
MIME-Version: 1.0
References: <CANge7vVKTT8x6BCVm0iG28yiFhfj6HR9J51L4Kw+f7R5ySPBqw@mail.gmail.com>
In-Reply-To: <CANge7vVKTT8x6BCVm0iG28yiFhfj6HR9J51L4Kw+f7R5ySPBqw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 14 Jun 2018 12:44:23 -0700
Message-ID: <CAMKF1soM6rZs5aJHANdN4g7f1rgOR4_+pv=P0f7NSqeOo+OnQw@mail.gmail.com>
To: Jon Szymaniak <jon.szymaniak.foss@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Build failure when BUILDHISTORY_FEATURES includes "package"
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
X-List-Received-Date: Thu, 14 Jun 2018 19:44:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Jun 14, 2018 at 10:58 AM Jon Szymaniak
<jon.szymaniak.foss@gmail.com> wrote:
>
> Hi all,
>
> I'm encountering the following error, which I can reproduce with qemu
> targets, core-image-minimal, a default bblayers.conf, and the
> following additions to an otherwise default local.conf:
>
> INHERIT += "buildhistory"
> BUILDHISTORY_COMMIT = "0"
> BUILDHISTORY_FEATURES = "package"
>
>
> ERROR: core-image-minimal-dev-1.0-r0 do_packagedata_setscene: The
> recipe core-image-minimal-dev is trying to install files into a shared
> area when those files already exist. Those files and their manifest
> location are:
>   ${TMPDIR}/pkgdata/qemux86-64/runtime/core-image-minimal-dev
>     (matched in manifest-qemux86_64-core-image-minimal.packagedata)
> Please verify which recipe should provide the above files.
>
> My build host is XUbuntu-17.10 -- not officially supported so I
> understand my mileage may vary.  If no one else is seeing this, I can
> follow up with some logs, try a supported LTS next week, and try to
> report back with a root cause.
>
> Mostly just trying to confirm this isn't PEBKAC ... ;)
>

I tried with these options added, I do not see the errors you are seeing

NOTE: Tasks Summary: Attempted 2305 tasks of which 1745 didn't need to
be rerun and all succeeded.
NOTE: No commit since BUILDHISTORY_COMMIT != '1'
NOTE: Build completion summary:


> Cheers,
> Jon
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

