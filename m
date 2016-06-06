Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C95D2E008FF; Mon,  6 Jun 2016 15:06:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B6EEE0088C
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 15:06:22 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id 9so1982294qtg.1
	for <yocto@yoctoproject.org>; Mon, 06 Jun 2016 15:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SLRkUTfM54WtQHarLOTqxd9iGEgZD/0WDVr5xIR7ZVU=;
	b=H2WB89FeZDyH9PhTd/xx8iYwF6GBCv/+LxjrZZNWHniu0Ohq8kjdmtRGi0JnBSq2eh
	ANGu+4D6BOjY0FNeC4BC3Ks4m+Hl3WknCl+H0Ecq9th0nS1nVYaHd3ACGFmhstgkOn3c
	o2muv+eefiLvdc0Tou6i1UWZrLY3k+aj7B8nXnVbRiRZUsWnZYKKC95PjrdBPK3akUWR
	eAhcMci2AKJR+wp776Pc5euF48iz4pXEorECnWwo4ZJv2ihY+i/9za5P08n1iXXoneh7
	JBMGBm/y4Fcn4b6M784ZaQe3VmQCfBeCusUaoCzxHekQ3swFjVlylrmGDa8XGQwdYdLG
	gg2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SLRkUTfM54WtQHarLOTqxd9iGEgZD/0WDVr5xIR7ZVU=;
	b=gITDh8+mbtMqlWL1rqEMCPY3xB+Forww6lTB65iaTjqBGvaPJSS2OPqLUWqjR+QW9T
	khVR7ceyDtYJyhoIMI9FzOw+TuR75y1kBA9pPhzT2CwfJ7qg87CbwMs69bJ2G+RXiTWq
	CYIa3cF0CJlvk+arKz7pMPc3JMKP9CCq+tnfB1a0razt7NMa/7CnocSE0iHLurEbCQg1
	ow0ttmiyPK7EtO4u5OFJJG0p9GzcyA2lu5CfsyM7i26798ObZSEyduARKU7iuhBW6cQG
	Mjg5H/TivEQPmy7G1iKiyS9rwNy2NsKYkPDF0wRXYvPth8yBkk4123lJp+CGmAAJktrt
	yhow==
X-Gm-Message-State: ALyK8tIWkcBj9Cs3cOzfbjltzsWy+hvd0vBRxN0KYPGLPwj9pfTA+0G/OdV5JdxiCxNeniV8sgmuFOfcmtAGfA==
X-Received: by 10.200.51.89 with SMTP id u25mr18654552qta.58.1465250782186;
	Mon, 06 Jun 2016 15:06:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.45.166 with HTTP; Mon, 6 Jun 2016 15:06:21 -0700 (PDT)
In-Reply-To: <CAEeWubJaaGLOVWdcS0uc=tv_cYkGRMFa2prLJ6jnDJAah+8G8Q@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
	<CAEeWubLNuGrjFA1ydAkbi_hDu=P7T4nwkrDL2Ws0cvKRk8WHxQ@mail.gmail.com>
	<2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
	<CAGMdoF=40Z=5MRZ-YBvZrfrYO9pJ9WTixu36FqRiX0i3zvNkKw@mail.gmail.com>
	<CAEeWubJaaGLOVWdcS0uc=tv_cYkGRMFa2prLJ6jnDJAah+8G8Q@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Mon, 6 Jun 2016 15:06:21 -0700
Message-ID: <CAGMdoFn3t_q76jEu61sh7oUYPmo45X9a+LCnQoNHnSA_BRbU7w@mail.gmail.com>
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, Diego <diego.ml@zoho.com>,
	yocto@yoctoproject.org
Subject: Re: Per image customizations
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
X-List-Received-Date: Mon, 06 Jun 2016 22:06:25 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jun 6, 2016 at 2:10 PM, Oleksandr Poznyak
<oleksandr.poznyak@gmail.com> wrote:
> Hi,
> Unfortunately You can't have two *.bbappend files per one package (recipe).
>
> You can create two new recipes where You'll install what You need and plus
> add sysvinit-inittab to DEPENDS variable in those recipes. This will help to
> retain the order of packages installation. Original sysvinit -> your
> sysvinit.
>
> In this situation You will have several recipes.

I create two new recipes: image1-inittab.bb and image2-inittab.bb
The are identical except for their do_install_append() function:

[image1-inittab.bb]
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=9bea9267288f79f074b2e000d3cf6412"
SRC_URI = "file://LICENSE"
S = "${WORKDIR}"
DEPENDS += " sysvinit-inittab"

do_install_append() {
    echo "scra:2345:respawn:/opt/script1.sh" >> ${D}${sysconfdir}/inittab
    echo "scrb:2345:respawn:/opt/script2.sh" >> ${D}${sysconfdir}/inittab
}

[image2-inittab.bb]
LICENSE = "BSD"
LIC_FILES_CHKSUM = "file://LICENSE;md5=9bea9267288f79f074b2e000d3cf6412"
SRC_URI = "file://LICENSE"
S = "${WORKDIR}"
DEPENDS += " sysvinit-inittab"

do_install_append() {
    echo "scra:2345:respawn:/opt/script3.sh" >> ${D}${sysconfdir}/inittab
    echo "scrb:2345:respawn:/opt/script4.sh" >> ${D}${sysconfdir}/inittab
}

Is this the gist of what needs to be done?

I get this error when creating either image:
| DEBUG: Executing shell function do_install
| /mnt/drive3/yocto/jethro/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/image1-inittab/1.0-r0/temp/run.do_install.23229:
108: /mnt/drive3/yocto/jethro/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/image1-inittab/1.0-r0/temp/run.do_install.23229:
cannot create /mnt/drive3/yocto/jethro/poky/build/tmp/work/cortexa9-vfp-neon-poky-linux-gnueabi/image1-inittab/1.0-r0/image/etc/inittab:
Directory nonexistent
| WARNING: exit code 2 from a shell command.

It seems I cannot just append to inittab using the echo statements
because /etc/inittab is not part of this recipe. Must I duplicate
inittab first in my imageX-inittab.bb recipes?

