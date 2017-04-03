Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC089E00AF8; Mon,  3 Apr 2017 08:49:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D99C8E00A51
	for <yocto@yoctoproject.org>; Mon,  3 Apr 2017 08:49:28 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id p52so34764402wrc.2
	for <yocto@yoctoproject.org>; Mon, 03 Apr 2017 08:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kNvlMC9faMA6180bCpj29eFwt8dNFl91tu58S5smkBg=;
	b=s34Rm4GiU0QdEDkkrbvNbGDSpkOrbB7cb6uloLY66qU/mmor/HcfwnM3VvAvwYRG3H
	ii/IR9NDJx6FE4w4uuHtp5p00KD3Oe9nrVexkT2UX1FZKeh05sxWB2Osol7/2Okp0I56
	b7gg294njgkjc7GuNdk8AKr6up8sJqLgGvV5gRAAMqdfcqcT6DaH7vsF/8VkaaUJqJrE
	i5g5O92Bc7+ufbmB/SF2ArarsaFDWM9iDYzMtk2UPSAjHzp3uWgpayHiyiEPUFmQO6/H
	nIbpxUjuW/xz3+CHLis1GAhd6rdLZaXfVMuWak0QwCTdtcfMnlUfR8sokAjXrhoyZXVA
	xDag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kNvlMC9faMA6180bCpj29eFwt8dNFl91tu58S5smkBg=;
	b=fp7BNtUhz2oej7tFgUwbsANVd0x1xouvKW4k9fDAAE4UqU2uSMQliaGYQrELT3P1t4
	m1fPlrrBxwLviYAqQH+SOnFGwCTTT+puVJtjLNLbam0tqBU+s5OaxvJ7F99kmMXKEbkv
	vUghOepuKxINGrRQsGT2mdXbtFq1KZdCJADyTa52y/2+uFBKz+iXoQuHN9hHoM4pKjek
	RM0kmnJ0rHx1mGAHx1LCKT6msuvM3b20JjlVNJVWMxZ6AXQX0np5jwoGym2AvRHj8nc3
	QxyC1cPzmEZn6l3smbvUD1osVozr5H2vfDR3K2XvAFYc7GhffKlNoB04bvVDiEV7JwdU
	W59w==
X-Gm-Message-State: AFeK/H31gA4+L4kazIFYJlnMAr6MiZxFeSHffxf5z9Ape8mgeD3ehk1k
	SsF3EF1KDpvQfVp3hr0H5wXrDq00GQ==
X-Received: by 10.28.71.87 with SMTP id u84mr10383416wma.101.1491234567654;
	Mon, 03 Apr 2017 08:49:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.162 with HTTP; Mon, 3 Apr 2017 08:48:57 -0700 (PDT)
In-Reply-To: <20170403134514.GD27299@carbonA>
References: <1484831765-82329-1-git-send-email-herve.jourdain@neuf.fr>
	<20170403134514.GD27299@carbonA>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 3 Apr 2017 08:48:57 -0700
Message-ID: <CAMKF1so=OotRhaeMWUvkFcT0UsN5ccRtonRpNHkfxHKM-fZg8g@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] Add recipe to build qtbase for raspberrypi out of the box.
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
X-List-Received-Date: Mon, 03 Apr 2017 15:49:30 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Apr 3, 2017 at 6:45 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Thu, Jan 19, 2017 at 09:16:05PM +0800, Herve Jourdain wrote:
>> Supports different EGLFS_DEVICE_INTEGRATION for userland or vc4
>>
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> ---
>>  recipes-qt/qt5/qtbase_%.bbappend | 10 ++++++++++
>>  1 file changed, 10 insertions(+)
>>  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>>
>> diff --git a/recipes-qt/qt5/qtbase_%.bbappend b/recipes-qt/qt5/qtbase_%.bbappend
>> new file mode 100644
>> index 0000000..aebcaf9
>> --- /dev/null
>> +++ b/recipes-qt/qt5/qtbase_%.bbappend
>> @@ -0,0 +1,10 @@
>> +PACKAGECONFIG_GL_rpi = "gles2 eglfs"
>> +DEPENDS_${PN}_append_rpi = " virtual/egl"
>> +
>> +OE_QTBASE_EGLFS_DEVICE_INTEGRATION = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', 'eglfs_kms', 'eglfs_brcm', d)}"
>> +
>> +do_configure_prepend() {
>> +    # Add the appropriate EGLFS_DEVICE_INTEGRATION, depending if using VC4 or USERLAND
>> +    echo "EGLFS_DEVICE_INTEGRATION = ${OE_QTBASE_EGLFS_DEVICE_INTEGRATION}" > ${S}/mkspecs/oe-device-extra.pri
>> +}
>> +
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> Khem, what do you think about this change?
>

I think the do_configure_append should be rpi specific here. Secondly,
it should check if eglfs is desired backend before triggering this. It
is possible that when we do not use eglfs this is undesired.

