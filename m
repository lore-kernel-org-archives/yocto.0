Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 646ADE0086D; Tue, 11 Aug 2015 08:00:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F5F2E005A2
	for <yocto@yoctoproject.org>; Tue, 11 Aug 2015 08:00:32 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id 82B9B60028E2;
	Tue, 11 Aug 2015 18:00:30 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1439305230; bh=qoSVIIlKhNl3Jd1EbvOrrGG2m3hQ30dAOw0MLY95pMQ=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=J08GAbtVyieemFe3FTzyADkXV9nG3EsLqJZ4Akid6rRnFc/d4JSpxA24CKiscB/Bw
	e3dnzjY/UUc9Ml+TvIIJNBrwb+6Uk49lBGrVrWIrfa+7HEPri8uLqU3/DWuYsMwNaQ
	fzBP33R9gfHVP/PZfjFiPE9kVQu5DymqtpjsWqAc=
Message-ID: <55CA0E0E.5040602@mail.bg>
Date: Tue, 11 Aug 2015 18:00:30 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: Adam Rossi <ac.rossi@gmail.com>, yocto@yoctoproject.org
References: <CAPzboye4h_mF=aEOvFfyLuWBNc320KsffAC91y9NxGy4QGqAhQ@mail.gmail.com>
In-Reply-To: <CAPzboye4h_mF=aEOvFfyLuWBNc320KsffAC91y9NxGy4QGqAhQ@mail.gmail.com>
Subject: Re: Specifying location of DTB file
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
X-List-Received-Date: Tue, 11 Aug 2015 15:00:34 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Adam,

On 08/11/2015 04:31 PM, Adam Rossi wrote:
> Howdy folks. I have had a devil of a time creating my own machine.conf
> and getting it to boot, so I went back to using the stock
> beaglebone.conf machine. I need to modify the DTB file that my
> prototype loads, so I decompiled the yocto am335x-boneblack.dtb, added
> some special sauce to the dts, and added the following to a
> linux-yocto_3.19.bbappend recipe:
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> SRC_URI +="file://touchscreen.cfg \
>   file://special-am335x-boneblack.dts"
>
> do_install_prepend() {
>          cp ${WORKDIR}/special-am335x-boneblack.dts ${S}/arch/${ARCH}/boot/dts/
> }
> KERNEL_DEVICETREE_beaglebone =  "special-am335x-boneblack.dtb"
>
> This works, I get a special-am335x-boneblack.dtb in my image. However,
> on booting the files on my beagle bone, I get an error that the system
> cannot find the boot/am335x-boneblack.dtb file. Creating a symlink to
> my special-am335x-boneblack.dtb solves the problem.
>
> Where does the system configure the directions to look for
> "am335x-boneblack.dtb"? I suspect this is because the stock
> beaglebone.conf file also has a
> KERNEL_DEVICETREE="am335x-boneblack.dtb". Perhaps my kernel recipe is
> only partly overriding this?
>
> Thanks for your continuing help. Regards, Adam

The only component responsible for looking the DTB during boot is the
bootloader (usually U-Boot). If you break the boot sequence and type
"printenv", you can look at the contents of "bootcmd" variable and see
which other scripts/vars it uses, in order to see how the bootloader
tries to load the DT.

If/when you do some modifications to the default U-Boot environment,
you can generate a patch to your U-Boot source code and add this patch
to your machine-specific U-Boot, so you can have the changes integrated
in your next system build.

Regards,
Nikolay

