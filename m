Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4EA5E00D4F; Mon, 15 Jul 2019 23:38:20 -0700 (PDT)
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
	*      [209.85.208.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com
	[209.85.208.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC9C2E00BF7
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 23:38:18 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id w20so18222561edd.2
	for <yocto@yoctoproject.org>; Mon, 15 Jul 2019 23:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FITysRLCD6U/F5XSRhmn3gKpSzrU5yQNUx1jwqvsb40=;
	b=J9XnLBfXO2pTeL0ajDOYr5mwWlHdAboN0H5vJRzmKz3XIEYWSdMLSCD5+Wmdq+bPAf
	aqfDoPt8axEVrayr6O3M7crmlPE0i1DslpKGaWvkMc5WoXiFSuH3rSAhVPPgU70b9MH4
	fedNRArzFO3h+ql7j2BHbbnE44TA/aIAnACLcyPZMFpsSvJiGD8WmLKd6hfXZgRUnnuH
	Ry+Q1wCInbKatNCDCCytEXAhhHugRJNyK3sDiuWBhbsgQ2RWhlSMuWvrZjhTFWJCN5xe
	qeXG/fa4PqmJiYLAkOBqyvPKt8+/SBjgnxaXN2AZ0G+hVH3Bv28CPM7j7LbKxV+3O5kJ
	v2fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FITysRLCD6U/F5XSRhmn3gKpSzrU5yQNUx1jwqvsb40=;
	b=jKlpnOprBzFrCG8imOiB7FIPl7ljERdeexIua1cxYpZ0hhosgy6GtRL6mFpbw3DrCx
	b+I7jVGooEWl8Hd0rrezJLYjFO9DtKdcWRepNj4hMn2yBhnxqECOP33X+7DqF2PKLehH
	g5liMKsjjwvZpuPm7FGC4OKqYOqlW6EF06bAUwnBgj+QntCcIbSPWhqtsbv4NHZSFVXq
	ArKCTnyZjfgCkdhPtlOBAZxF+1OSu4EO252yNBvG/fuIPFvtCxPKgCv06jH3lqQlspoQ
	L/XMtpPb5cmb24zPeBVkd+1yoJwMW/Bz1lSV7W9Y6C/dwsezIhyT6xX02gof+JseudFp
	cH4g==
X-Gm-Message-State: APjAAAX/gikUkHxOa1xbiPVGVur62NsYyxU2oc9WNOdznxQ4bispZ6AP
	Uu4ce++8oVtf4SB4y2ViIsnfnwBYrR9TN0hak/5gNSoHSa8=
X-Google-Smtp-Source: APXvYqyUku6IrVhzTCSgU5yy6dCS5yX63St5Kzn7+ERl79VouphZgqOabUTeNB2m9/+8NmeJMVf5vZf8meybWp70Iws=
X-Received: by 2002:a17:906:4e92:: with SMTP id
	v18mr24879729eju.57.1563259097763; 
	Mon, 15 Jul 2019 23:38:17 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 16 Jul 2019 08:38:06 +0200
Message-ID: <CAAfyv37LBSDh6JR19KdLwb0EJCc5OpRQYBvj5UFtp=Y6Y-_dGw@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: wic: error when using --rootfs-dir=${IMAGE_ROOTFS}/data
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
X-List-Received-Date: Tue, 16 Jul 2019 06:38:20 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have wks file with following content:

part ubootenv --ondisk=mmcblk --no-table --size 12
part /boot --source bootimg-partition --ondisk mmcblk --fstype=vfat
--label boot --active --align 1024 --size 16
part /root --source rootfs --ondisk mmcblk --fstype=ext4 --label rootA
--align 1024 --fixed-size 300 --exclude-path data/
part /data --source rootfs --rootfs-dir=${IMAGE_ROOTFS}/data --ondisk
"mmcblk" --fstype=ext4 --label data --align 1024 --fixed-size 200

Basically I want to create extra data partition with content from
rootfs /data directory. When wic image is created I'm getting strange
errors like:

Couldn't get bitbake variable from
/home/marekbelisko/.build/tmp/sysroots/raspberrypi0-wifi/imgdata/${IMAGE_ROOTFS}/data.env.
 | File /home/marekbelisko/.build/tmp/sysroots/raspberrypi0-wifi/imgdata/${IMAGE_ROOTFS}/data.env
doesn't exist.

I found similar usage (for boot directory in poky):
scripts/lib/wic/canned-wks/efi-bootdisk.wks.in:2:part /boot --source
rootfs --rootfs-dir=${IMAGE_ROOTFS}/boot --fstype=vfat --label boot
--active --align 1024 --use-uuid --overhead-factor 1.0

Am I doing something wrong here or any ideas? Thanks.

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

