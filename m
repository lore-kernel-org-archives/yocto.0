Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A5B2E00D53; Tue, 16 Jul 2019 01:34:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB0F6E00D47
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 01:34:29 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id m10so18699126edv.6
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 01:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2JE80PCS4ZbexoxZiWB2GOvheFD9Q/ctd0wKmNLq+1o=;
	b=CyzavUT2O9860i2oPv2ahfo2nMdj4jKJQMS5FvRnxdVqxGxwv3TUbQRgwquMj3eNJM
	37qyUTuxZs7ZhoIBsiYNBfBq5CkiSoPg+ftJ13uvrPfiUYM+udBBU6aL2y/4HDAxQLRL
	HriuJ0VBXH/EKasoi55RqztFnfuDCMhTTrqD8igCcD1tOiW916I1iaa60XCbcldULAH2
	s1myTckuxCOGJNhYwyofENiMQzc4syxg6uA37o0BGQOrcvuPBAeMjkquFsath/wlbHPE
	E+XETZ/AT8ifZvBMhXfoTUFr8TPzTiIXyNAI+GjG5zzjpxxrlMUYfrAWx0Gh63jsaIRW
	zc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2JE80PCS4ZbexoxZiWB2GOvheFD9Q/ctd0wKmNLq+1o=;
	b=DWcacvf50IOej7j7CswikwW9085AhiwxCH+KmnefgXvJvrdx54BZMzaqT3c3zrpula
	/6CMRO7sUxOlGp2m/gFRiEQe0CA+ABQknDvYWvkwnSEVxbtII7PGBuLH3dlIdNawzDxp
	w/eikcFPhyF0OsCihVMqgDiCozcrfJbgEz4/xRsmbkw7GwQSCpjHd+xjrf52JSm+fYtG
	SkG4raTNxDaPBS7T8QsiULWIlcwNQXTTUq2UpkxM62SRyN0c+kZGqVLYmv2X7p/XKl/c
	75BKFTQ04tND7iStpdAlKBLYZCWK0hZNVgEtVDTsthaeKGKBII1RZocWqHM5JbsNO5Rt
	5edg==
X-Gm-Message-State: APjAAAUowozMDP/pfR+QE7G1eLXV6EgLgqvO36P72p42gje0/Gs6m5U4
	aDjiYp9OVvXABeGplnv9hTAsBJzl4VnPif0oDjc=
X-Google-Smtp-Source: APXvYqy1h5Ekw8UlcW1e3KWgOotFzHEA5AD3HS4x1vNAddbpgK8wbUUqs0gcP5Lba8DryyO4Ep0rvHaYK/XEwhsoM34=
X-Received: by 2002:a17:906:430a:: with SMTP id
	j10mr24517740ejm.92.1563266068856; 
	Tue, 16 Jul 2019 01:34:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv37LBSDh6JR19KdLwb0EJCc5OpRQYBvj5UFtp=Y6Y-_dGw@mail.gmail.com>
	<08c031fbe9971a0190cda3aa098d8641a7ffbeab.camel@intel.com>
In-Reply-To: <08c031fbe9971a0190cda3aa098d8641a7ffbeab.camel@intel.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 16 Jul 2019 10:34:18 +0200
Message-ID: <CAAfyv36ieX5RJonhJ+vBUMLEif4hdPZBq_0iYPFcK9+73jXUtQ@mail.gmail.com>
To: "Mittal, Anuj" <anuj.mittal@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wic: error when using --rootfs-dir=${IMAGE_ROOTFS}/data
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
X-List-Received-Date: Tue, 16 Jul 2019 08:34:31 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Jul 16, 2019 at 8:54 AM Mittal, Anuj <anuj.mittal@intel.com> wrote:
>
> On Tue, 2019-07-16 at 08:38 +0200, Belisko Marek wrote:
> > I have wks file with following content:
> >
> > part ubootenv --ondisk=mmcblk --no-table --size 12
> > part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat
> > --label boot --active --align 1024 --size 16
> > part /root --source rootfs --ondisk mmcblk --fstype=ext4 --label
> > rootA
> > --align 1024 --fixed-size 300 --exclude-path data/
> > part /data --source rootfs --rootfs-dir=${IMAGE_ROOTFS}/data --ondisk
> > "mmcblk" --fstype=ext4 --label data --align 1024 --fixed-size 200
> >
> > Basically I want to create extra data partition with content from
> > rootfs /data directory. When wic image is created I'm getting strange
> > errors like:
> >
> > Couldn't get bitbake variable from
> > /home/marekbelisko/.build/tmp/sysroots/raspberrypi0-
> > wifi/imgdata/${IMAGE_ROOTFS}/data.env.
> >  | File /home/marekbelisko/.build/tmp/sysroots/raspberrypi0-
> > wifi/imgdata/${IMAGE_ROOTFS}/data.env
> > doesn't exist.
>
> If you haven't tried this already, renaming .wks to .wks.in might help.
Thanks that does the trick. But I'm completely confused why? ;) Any
explanation? Thanks.
>
> Thanks,
> Anuj

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

