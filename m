Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 706A0E00F26; Thu, 28 Jul 2016 00:27:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 670BAE00B1A
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 00:27:06 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id q128so9786082wma.1
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2016 00:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-disposition:user-agent;
	bh=uIGR9XWBLh4gU29nXpOP0f8ccu044fSgrEzwQq4k5Zc=;
	b=tpC/k9ZC1e0vTYkX0Y8sFOqmGm5FxOPQNpnc0nksm4miNNUpGhWz8Li2h5OM/065+x
	U67sQ3S8oC68tc+e8teQrb9gRALZtmquOjDzxvYFLb4iGZiXkkXEVP3YSmEShquLrirm
	nCgkZAcU8uIKHdh/Z6ly8XblJOeEQuH9USRAaBOpT0C9OKE1KvQpOsDGlu1Ure4wT4S3
	D+WPhfV39jWTCV8rK9M16ALiWTR6w0P7nLvYkeBkEFj2ZORFz2+T31Q2lM76yRHQrH9d
	Rm4QIMK7b3fEOT9POttfrWQCRBVqDJ6UyYaclc5ITxP8Oj8B47Yu2ZpKG9hZv4kCFSuh
	uvmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-disposition:user-agent;
	bh=uIGR9XWBLh4gU29nXpOP0f8ccu044fSgrEzwQq4k5Zc=;
	b=ScJsMmgCekVwUcSqGlo4eqPlYm50/GrunSEZV6sAC8iAN5X2VDu/NGf4rwOLJSfssc
	E4S2OKwtUFZRIDNGgSqyyElWlwV6M4Gl+8aNwfhZ+zdt5W4gNLWIrfAtOXYGaKZSe+BO
	t1rNZwXIHvxZTMbozIOq6i9ZkZtXD6hytnL1+zOHwOznsZoEu0sJTyQc5QDYNsmgZVOX
	nxePWiqmkktRCJbUo3aGiwsY2zmWuIDQa2otAMhxn+Qn+/KU7QAx2GPjb/zMe3uuZqnx
	2zNtnw92xjbukpMtGITm5N23f/G+TwI0uRZsS2QOgzbeM+9wQcEAG0bmvc3FZl7g0Mco
	uaWQ==
X-Gm-Message-State: ALyK8tLdR/EhS/3QMrZD1/ITmfqq3DE87h65lQWXeP9Aiwf3gixkYSIlC95N+9EmQkCYww==
X-Received: by 10.28.56.3 with SMTP id f3mr53604974wma.31.1469690824145;
	Thu, 28 Jul 2016 00:27:04 -0700 (PDT)
Received: from localhost (x4e36471a.dyn.telefonica.de. [78.54.71.26])
	by smtp.gmail.com with ESMTPSA id
	i66sm42036579wmg.9.2016.07.28.00.27.02 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 28 Jul 2016 00:27:03 -0700 (PDT)
Date: Thu, 28 Jul 2016 09:26:11 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160728072611.GA26257@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Can't replace login.defs with shadow-sysroot bbappend
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
X-List-Received-Date: Thu, 28 Jul 2016 07:27:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello list,

i'm trying to replace /etc/login.defs on the target with my own one. So
I created a shadow-sysroot_%.bbappend file with this content:

FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}:"

# As we're overriding login.defs_shadow-sysroot we have to readd the checksum for it here
# as it's containing the license for this component
LIC_FILES_CHKSUM = "file://login.defs_shadow-sysroot;md5=286ba0946b3b8a300da3893d7b3af060"

SRC_URI_append = " file://login.defs_shadow-sysroot "

S = "${WORKDIR}"

do_install_append() {
	install -d ${D}${sysconfdir}
	install -p -m 755 ${S}/login.defs_shadow-sysroot ${D}${sysconfdir}/login.defs
}

FILES_${PN} = "${D}${sysconfdir}/login.defs"


If I run "bitbake shadow-sysroot" everything seems fine. But on the target
there is no package shadow-sysroot after a complete image build. Just these:

opkg list  | grep shadow
shadow - 4.2.1-r0
shadow-base - 4.2.1-r0
shadow-securetty - 4.2.1-r3

If I explicit added shadow-sysroot to my fsl-image.bb where I put all my
other packages for the target in I get this error.

bitbake fsl-image

Collected errors:
 * opkg_prepare_url_for_install: Couldn't find anything to satisfy 'shadow-sysroot'.

ERROR: Function failed: do_rootfs


Some clue what is wrong here? I'am on jethro yocto branch.

Best regards,

Oliver

