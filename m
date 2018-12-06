Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 338A7E00C59; Thu,  6 Dec 2018 08:02:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f170.google.com (mail-it1-f170.google.com
	[209.85.166.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0020E00C7B
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 08:02:09 -0800 (PST)
Received: by mail-it1-f170.google.com with SMTP id z7so2132899iti.0
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2018 08:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Bdtv0rxlfsx2lFD73zhYqPbPUpeL5+za6+j9J+heBI4=;
	b=rWECJOHKmokaJbuNJGLehaq5y/84pDQPZvlXxNaF3bukchdyIVft0NqnUIKBHNlX//
	boadpt6M1D/U6/Tw+MkpvrxjMkScNAe6+saz92mMRE2YWgGb+9LAU13IKHUUkZ/HMdeW
	V/joiIuAfv4IIsrprz+PN5Pd/3iKpNFfhDiGv6fu8SdPdDVV8TfcpZeF726Xr6bfPsEv
	oGaNMHQy3pWaCXj+ik+LBfflQw3ezfWqGqlrFzmxact6nyLq+Bl/fPnHVdYTtGom7Ilc
	qYnc6vkaXPQlKduAiCTGjpZZjGfV0eeDKmeULQodHPciGWLPUjMNeBlJ89tcFHv0ysOz
	aDTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Bdtv0rxlfsx2lFD73zhYqPbPUpeL5+za6+j9J+heBI4=;
	b=gT8X7epl/otvWeOyLJsbB7oZnAA9A/dE+EPFhQ4Nb8rJrzBu7rJ6IN0PiW4A+dQms/
	wwEIb3VyQ11APK5MLxEGZzoGmNP/T7IXnq8epUu7HJMboFJeXDrAhWhl+4HFPSUrlTx1
	7U6ig308XDj9oBf1Q1Veg4wFK2I80v4L09leVjyjmsreV9WESuAyKYIHnKzOzoVtpJ2n
	vEOWJLj62CFLgvIQxp4AbXuh3k48BO3fwXYwK2tIpYWoEvg1Ue2DebzLHq6mbCcwpEyl
	lJekp494DQZZCMNA47tH7/X7QVShqM3rk9rESpls9GdNbEviSKPt0/F6CvxqqwB5i9QW
	xwnw==
X-Gm-Message-State: AA+aEWYB4BOXGaWUZZuHEo735WK7vvKPJ2q0J2IstYWoEH9Cewmt3eQb
	VA5B0K53hX5p23U62MWwTsJ8tGdKL0G3qgcY5o2LhA==
X-Google-Smtp-Source: AFSGD/WSmajKof12+WbYnk/spsIT+6ajGZbLmTGL+gQ9Ppppv5w26gTgzm2vpYJeQHW0lLqP+Xh00lA+DXqbPJmCw40=
X-Received: by 2002:a24:8e43:: with SMTP id h64mr8642795ite.26.1544112129096; 
	Thu, 06 Dec 2018 08:02:09 -0800 (PST)
MIME-Version: 1.0
References: <b982d678-8d83-cbdf-27ef-4df8a5f29d7f@faresoftware.it>
In-Reply-To: <b982d678-8d83-cbdf-27ef-4df8a5f29d7f@faresoftware.it>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 6 Dec 2018 16:01:57 +0000
Message-ID: <CAJTo0Lb=Tb+5QQx1C9szgvkDWO17KiuQ8r6Dg3LnyN0BEmuoOw@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Content of a packagegroup
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
X-List-Received-Date: Thu, 06 Dec 2018 16:02:53 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 6 Dec 2018 at 14:47, Mauro Ziliani <mauro@faresoftware.it> wrote:
> There is the possibility to known which recipes are included in a
> packagroup?
>
> Toaster can be the solution or there a cli command to know which recipes
> are in a packagegroup?

No idea about Toaster but assuming you've built the packagegroup then
you can just ask pkgdata:

$ oe-pkgdata-util read-value RDEPENDS packagegroup-core-boot
base-files base-passwd busybox busybox-hwclock init-ifupdown
initscripts intel-microcode kernel keymaps [...]

Ross

