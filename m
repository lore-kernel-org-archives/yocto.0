Return-Path: <jeremy.singy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62996E00E0D; Fri, 14 Jun 2019 02:15:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FROM_EXCESS_BASE64,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jeremy.singy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 FROM_EXCESS_BASE64 From: base64 encoded unnecessarily
Received: from mail-io1-f54.google.com (mail-io1-f54.google.com
	[209.85.166.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9492E00DAE
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 02:15:25 -0700 (PDT)
Received: by mail-io1-f54.google.com with SMTP id u19so4162608ior.9
	for <yocto@yoctoproject.org>; Fri, 14 Jun 2019 02:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=hSP/dcovvfP3qBjnBHA0ZSk1weVF35NJ9eNY2lorZSw=;
	b=fweigP16YArvVLmyrgwPebbb3Xq0/mkWyJPGTTdWnoAzrzEbrff+jvc7+6BrysLrWj
	bz70k5oYEpgSiaSQGeZxQ5yA21R+SUSyOSkmK0uyl3dnIxJc1GpBnwshZvmvtTgfVBRH
	zSMM/dvdig3oxxh7MAkCtEvneCaDnnAVQvcK643ha75LsF0ewRuR+hakbcD8bwkNjbrJ
	n10GvTmN3HZCymHvqtckzXCtnx7VRWRWR04nZ/xr9clL3SpXNAhVchZ5JRC3l2csx7x4
	3iKxpzKf3PDoDPpr1rVulDW69z6EsUhzbCuH95m5I9LtpoLK/JdEWXKB3AzFkPPBtmld
	SVyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=hSP/dcovvfP3qBjnBHA0ZSk1weVF35NJ9eNY2lorZSw=;
	b=az3LofSn2/JXtRBy4aBmJD3yxgmIfIF/qwa17OD4vhn9dse1CWbK/j9rBAl4avSWKq
	aDOfAbh+zwcSYuLEf5Vu63y9CwuL6s66Qfkc0bgVtukV7M+rth8CypDrIXpoZqPuEgmi
	6TExNikXqVcqezYCTm4R7/4ASjhJNMXTtmQGMG/djN0kYk23rNZqUWQuiy4V28uM/M8n
	Roy/sQ//sLQBV/m/w1xIu1t6cmqammSRLXosvV/6qEHlucXbunb6/1zEPW6Gf2+F7bw8
	YDTvk0V0p9C0GbzoQ34GNrDUyk2OgO7nbdVsrhieKbCSMnTnCfODzq+gHe6v+owbFTMe
	/GLQ==
X-Gm-Message-State: APjAAAUPym/w9CAeFw8vATfXEPOqBHFyJ3SLm8j79yHEVuGlrd08V4CW
	NFw2P4WaVuvxQ0sThi+acin+HuiZp5SHeDQ53TI0y+lo
X-Google-Smtp-Source: APXvYqwql0h1EjYZPmoizdc+Awarv4YOoUTg2JXNy5p8y2y/kprQxlCA2slddzOJJB7f5oxAyHzZw1pGagiePJww7zk=
X-Received: by 2002:a6b:14c2:: with SMTP id 185mr45144781iou.69.1560503724930; 
	Fri, 14 Jun 2019 02:15:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAA42Xj5nygLnFp_ojTP5J59czFuG7f82c6bc_SLax+4+Ot2QVg@mail.gmail.com>
In-Reply-To: <CAA42Xj5nygLnFp_ojTP5J59czFuG7f82c6bc_SLax+4+Ot2QVg@mail.gmail.com>
From: =?UTF-8?B?SsOpcsOpbXkgU2luZ3k=?= <jeremy.singy@gmail.com>
Date: Fri, 14 Jun 2019 11:15:13 +0200
Message-ID: <CAA42Xj5pNmu1BSVAd2FMTJvwO1fSbtckDfp+EOP9ELikG_=POw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Can't build SDK while shrinking shadow tools
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
X-List-Received-Date: Fri, 14 Jun 2019 09:15:34 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm facing a problem by trying to shrink the size of our root filesystem.
To avoid installing some unneeded tools such as adduser, groupadd,
nologin, etc. I just created as usual a shadow_%.bbappend in our layer
which removes the content using do_install_append:

    # do not install alternatives
    ALTERNATIVE_${PN} = ""
    ALTERNATIVE_${PN}-base = ""

    # remove unwanted files on target
    do_install_append_class-target () {
      rm -r ${D}${base_bindir}
      rm -r ${D}${base_sbindir}
      rm -r ${D}${bindir}
      rm -r ${D}${sbindir}
    }

Building an image with this works well and I got rid of the unwanted
tools but I get an error whenever I try to build the SDK for this image
with do_populate_sdk:

    WARNING: ceres-image-1.0-r0 do_populate_sdk:
nativesdk-util-linux.postinst returned 1, marking as unpacked only,
configuration required on target.
    ERROR: ceres-image-1.0-r0 do_populate_sdk: Postinstall scriptlets
of ['nativesdk-util-linux'] have failed. If the intention is to defer
them to first boot,
    then please place them into pkg_postinst_ontarget_${PN} ().
    Deferring to first boot via 'exit 1' is no longer supported.
    Details of the failure are in
/home/chsingj/yocto-thud/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.0-r0/temp/log.do_populate_sdk.
    ERROR: ceres-image-1.0-r0 do_populate_sdk: Function failed: do_populate_sdk
    ERROR: Logfile of failure stored in:
/home/chsingj/yocto-thud/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.0-r0/temp/log.do_populate_sdk.28331
    ERROR: Task
(/home/chsingj/meta-delta/recipes-core/images/ceres-image.bb:do_populate_sdk)
failed with exit code '1'
    NOTE: Tasks Summary: Attempted 2730 tasks of which 2729 didn't
need to be rerun and 1 failed.

The log file shows an error with update-alternatives (probably a
failing ln call):

    update-alternatives: Error: not linking
[BUILDPATH]/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.0-r0/sdk/image/opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin
to /opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin.util-linux
since [BUILDPATH]/tmp/work/ceres_con-oe-linux-gnueabi/ceres-image/1.0-r0/sdk/image/opt/ceres/sdk-2019.05-r1/sysroots/x86_64-delta-linux/sbin/nologin
exists and is not a link

If I remove the bbappend, the SDK builds fine but of course my image
contains the unwanted files. I tried many other recipe tweaks but I
can't get over some build errors. I'd like to avoid a solution using
ROOTFS_POSTPROCESS_COMMAND in the image recipe as I would have to
explicitely list all shadow tools and it would blow up my recipe. Is
there any solution here? Is it maybe a bug that can be fixed? Thanks!

Regards,
Jeremy

