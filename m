Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9F139E00807; Sat, 24 Jan 2015 06:57:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91D36E007B7
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 06:57:33 -0800 (PST)
Received: by mail-ig0-f180.google.com with SMTP id b16so2064477igk.1
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 06:57:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=zW/zg3HbU561RSzhyZ1ma6eI0FUR7rMX5J7g9drM4cI=;
	b=rypOv0+VzICMzDta5qJ4M0iAlr17iMcRX6lV18+XEZsVhbGy7+3KwpdzPEQND5O4ky
	2AX4ylpI/PnWNXji7laJ67WybCNGLAfzqHliAzGWvzKQRMFmSZP54vFua68Q8GODJnu4
	ESWUGuBD/VAQbriGr84rg1m/MpQgAXS0qnsBWZ6EKDIY3cSE9QKfPwGNtYbmm1uizWr5
	rWyxFth3+LKAqk86MfDhhrfGTU/VmvWP7B2kNU/16Zm1dt4X6khVLt+h5yFnCHZbSMjQ
	PvLq2w4aRxO1zOU7WGZYYctDmHPNlzfowv46Utl9776wuxsMXrc3taZL95nBSwvlSZXd
	g3DQ==
X-Received: by 10.50.138.107 with SMTP id qp11mr7687688igb.46.1422111453133;
	Sat, 24 Jan 2015 06:57:33 -0800 (PST)
Received: from [192.168.141.85] ([66.49.180.141])
	by mx.google.com with ESMTPSA id y5sm2529522ign.7.2015.01.24.06.57.31
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Jan 2015 06:57:32 -0800 (PST)
Message-ID: <54C3B2D9.2010404@gmail.com>
Date: Sat, 24 Jan 2015 09:57:29 -0500
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Ma O-Nigiri <ma@o-nigiri.me>, yocto@yoctoproject.org
References: <CAJ-FT2X0TdWcgL1z6=hOdhduVCrt66ne93DE6ZP8Ood+5pjCHA@mail.gmail.com>
In-Reply-To: <CAJ-FT2X0TdWcgL1z6=hOdhduVCrt66ne93DE6ZP8Ood+5pjCHA@mail.gmail.com>
Subject: Re: RPM Installation to Host Sysroot
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
X-List-Received-Date: Sat, 24 Jan 2015 14:57:38 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit


On 01/23/15 14:24, Ma O-Nigiri wrote:
> I am on yocto 1.3.2 and need to add a few libraries to my sysroot for
> cross compilation.
>
> I have built the libsigc++-2.0 library with bitbake and have the
> resulting RPM. What is the appropriate method for installing the rpm
> to /opt/poky/1.3/sysroots ?

If you add this package to your image, i.e.:

    IMAGE_INSTALL_append = " libsigc++-2.0"

and re-build your tools, i.e.:

    $ bitbake <your image> -c populate_sdk

then your resulting sysroot and toolchain will include all the magic
required to develop apps against this library.

