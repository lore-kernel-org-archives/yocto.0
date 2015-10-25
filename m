Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 874B3E00B8F; Sun, 25 Oct 2015 12:41:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62684E00B7F
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 12:41:09 -0700 (PDT)
Received: by iofz202 with SMTP id z202so167125170iof.2
	for <yocto@yoctoproject.org>; Sun, 25 Oct 2015 12:41:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=M2AGHq91ZZMrBbAPrQD0ZHlrmDEgXrOtOOlCETG5AFY=;
	b=Lxa75PyWfdtyEMBDf795k4rjC50xGTRRTGirPRNLaNSlmn/MaT3e4f47OBbG5oYRqE
	YdrFkXasZ6afNszZJAoJvo/DU1pSzWG4cq8559IQHzTnjfsnEIU5/0r6SZO3r3lezQpZ
	BPiAfnN2RDCw/8FM/BPPbkNDcPthhdmWoKiraaRMw1Q02SlCoQf4/IWG4u1EaICta4hO
	Xrur8nfort9EiRsbBkm+hpaT7cKScFDEAB0rq3+qvEo2104vuh0LXvfNqvtEFrlpf7MC
	5TdcM9TUM1ulg/qF1r4vYWrhK64AILVG2RsHUEBlYcYUrTdebcxjn1KLkSAFiVC2m90w
	Bg9w==
MIME-Version: 1.0
X-Received: by 10.107.40.199 with SMTP id o190mr27991278ioo.17.1445802069177; 
	Sun, 25 Oct 2015 12:41:09 -0700 (PDT)
Received: by 10.107.142.202 with HTTP; Sun, 25 Oct 2015 12:41:09 -0700 (PDT)
Date: Sun, 25 Oct 2015 12:41:09 -0700
Message-ID: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: "Daniel." <danielhilst@gmail.com>, yocto@yoctoproject.org
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Sun, 25 Oct 2015 19:41:13 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 24, 2015 at 1:43 PM, Edward Wingate <edwingate8@gmail.com> wrote:
> I am using fido release and this is my
> linux-wandboard_3.14.28.bbappend file, just 2 lines:
> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> SRC_URI += "file://defconfig"
>
> I'm trying to use my defconfig with the linux-wandboard kernel recipe
> in meta-fsl-arm-extra layer:
> https://github.com/Freescale/meta-fsl-arm-extra/blob/master/recipes-kernel/linux/linux-wandboard_3.14.28.bb
>
> Thanks for your help.

I also just noticed I don't have any kernel modules in the rootfs.
The /lib/modules directory doesn't exist while things like
"CONFIG_USB_SERIAL_FTDI_SIO=m" are in the default .config.  Am there
some global kernel module setting I should check?

