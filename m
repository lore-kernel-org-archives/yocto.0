Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21D1BE00D88; Sun, 25 Jan 2015 14:04:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  3.6 FSL_HELO_FAKE FSL_HELO_FAKE
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C322CE003AB
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 14:04:15 -0800 (PST)
Received: by mail-wg0-f46.google.com with SMTP id l2so6110563wgh.5
	for <yocto@yoctoproject.org>; Sun, 25 Jan 2015 14:04:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=MOylU+EwXiJzGSvraEBj+vpDfo5dq25reg0DwvZBjVk=;
	b=X8alOOI3CH81ZR0kYR5pdfzPsqH35VCVv2qhLsjypyMI+1hogelLpcZtH1JSn842Zo
	vGawjkgfWTmdDhrHOplaJFmlft1CBVsA3lsUuyAnbBk3d8mddkezWf9/5QVkcj2BA0Fm
	QbF8FMp5scuvu6dRcUC35U6f57zDQXsaHpnsg2cjT7HmCjOLMd/u3VcHVRa398yIGiSZ
	s7je2CNr9JwJZFXJ8yJxUis2lfOrhL14IxfnV2hqKVMzyA4OTRfqB5R/bku/8N/VcXrp
	YTIhuCfcD+ByMTkzh0W5IwPZ+Ztchss4jWobWA7dm91KBvK/mkEpfnjvgBf7z1RSHJ7X
	g3GQ==
X-Gm-Message-State: ALoCoQnAVpUeDNVnvZDaAqsWK2VIZlmPcoshpVvKygal+3EOyDQfPTUE9thE535G5y1uE5fm2vxZ
X-Received: by 10.194.110.69 with SMTP id hy5mr38166209wjb.121.1422223455032; 
	Sun, 25 Jan 2015 14:04:15 -0800 (PST)
Received: from gmail.com ([109.100.140.128]) by mx.google.com with ESMTPSA id
	cx3sm11371595wib.10.2015.01.25.14.04.13
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 25 Jan 2015 14:04:14 -0800 (PST)
Date: Mon, 26 Jan 2015 00:04:05 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Maciej Borzecki <maciej.borzecki@open-rnd.pl>
Message-ID: <20150125220405.GA22204@gmail.com>
References: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
MIME-Version: 1.0
In-Reply-To: <1418213525-1202-1-git-send-email-maciej.borzecki@open-rnd.pl>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, Maciek Borzecki <maciek.borzecki@gmail.com>,
	Dan McGregor <dan.mcgregor@usask.ca>
Subject: Re: [meta-raspberrypi][PATCH 0/2] wic support
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
X-List-Received-Date: Sun, 25 Jan 2015 22:04:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 10, 2014 at 01:12:03PM +0100, Maciej Borzecki wrote:
> The patch series adds support for wic image build tool. The patches allow for a
> bootable SD card image to be built with wic, without any additional changes.
>
> The first patch defines an IMAGE_BOOT_FILES variable that will pick up all of
> bcm2835 boot files and the kernel file (renaming it to kernel.img). The patch
> uses glob pattern and thus depends on a patch series posted here:
> http://lists.openembedded.org/pipermail/openembedded-core/2014-December/099732.html
>
> The second patch adds a kickstart file that mirrors the layout defined in
> sdcard_image-rpi.bbclass. Note that this patch is mainly for reference, as the
> default sdimage-bootpart.wks from Poky will also produce a bootable image.
>
> Maciej Borzecki (2):
>   raspberrypi.conf: add IMAGE_BOOT_FILES
>   sdimage-raspberrypi.wks: kickstart image definition
>
>  conf/machine/raspberrypi.conf                        | 2 ++
>  scripts/lib/image/canned-wks/sdimage-raspberrypi.wks | 6 ++++++
>  2 files changed, 8 insertions(+)
>  create mode 100644 scripts/lib/image/canned-wks/sdimage-raspberrypi.wks
>
> --
> 1.9.3
>

Merged. Thanks.

--
Andrei Gherzan

