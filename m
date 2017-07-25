Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9E33E00C1C; Tue, 25 Jul 2017 04:16:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.53 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FC46E00C1C
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 04:16:54 -0700 (PDT)
Received: by mail-lf0-f53.google.com with SMTP id d78so55094411lfg.3
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 04:16:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=m/tiYPIX37OgWwcUCvdelR1b0JPQSOGM8+dUpmPRmtU=;
	b=YiOQbuKKD+p4z10qHsxJ1CukjxKbrGvjNouENIbQRijWFcWFV/sbh1VDnAqWioEy+T
	S6XzkKt6TXlCET3B0htWjoaE7vU/L9Oz8YMHq9/M9DDpB4DwR1/nI9Ewz43lG7Oi5vWu
	5Du5pV0061Rw0cojTzuNJPtbHs6oagTNAnBsAn57AWgdNze4hbarCLSNY8TFAB6ed7/f
	kQvMidjYnKTn/yP/zG4SgJt41HmP8KFqTvgRjA115MqtrOaUaPLSU2Y205n4t0fe4Jy8
	y/3fEWWW4jYGeV+gRiNOfk1p854YZ1Y+A73BpQxbA8M9xfq+l+8G3qvZw9fRDtD7lnfj
	mpgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=m/tiYPIX37OgWwcUCvdelR1b0JPQSOGM8+dUpmPRmtU=;
	b=N+YBiKhLQ5dLssw5tIP4mSMjXTUTu/I/Df3Nln5TmIqmksUjDEOL31Mv9/soK0ajvx
	IdxJMbZ4uBu7xn8Ex+G6yENk8Y4GWlx/+fkrwgnnbhOFnrJqRcUyLOJeo6QIGmyWXhmH
	m3tbh7lnp/U+SSee8eppekOvzUl+NUg54W2SPSQmje4x8gjoI+0S04oP07DeWeQ1zZ62
	Q31ujP+BchxDaGB8elut8fJmbtC+6A/F9VgJUqeK91MHd0gYKR8SjZAYygY2t5+lNM6e
	vNFFOgTdLhp0k0DNzAP5T8rpZFhW0hwUd4XDD+Os3pnF6q6GvFQI2d6RX4ZRKe8d184F
	dysw==
X-Gm-Message-State: AIVw113I5ca9z8xfMP6eWdxLw4KNlp+g+lObBmdd+V7rr0fGaRilqsUl
	+Ugjb2bbhxgtbhorT35T949tZiFwmiBOqlI=
X-Received: by 10.46.83.7 with SMTP id h7mr6632654ljb.22.1500981414014; Tue,
	25 Jul 2017 04:16:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.17.65 with HTTP; Tue, 25 Jul 2017 04:16:53 -0700 (PDT)
In-Reply-To: <083d01d3052f$d367e6c0$7a37b440$@ln-systems.com>
References: <083d01d3052f$d367e6c0$7a37b440$@ln-systems.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Tue, 25 Jul 2017 13:16:53 +0200
Message-ID: <CAAfyv35yPSd4KQW4UqGiiA+56UP=W7H8m+0uhiQGmr-ZHoByTg@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Migrating from krogoth to morty (can't boot fitImage)
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
X-List-Received-Date: Tue, 25 Jul 2017 11:16:56 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Colin,

On Tue, Jul 25, 2017 at 12:21 PM,  <colin.helliwell@ln-systems.com> wrote:
> I'm trying to migrate my krogoth environment to morty. I have custom recipes
> for u-boot and kernel; the only change necessary to build under morty was to
> patch u-boot for gcc6  - other than that the source versions and configs
> used are the same.
> On krogoth I can boot a fitImage kernel, but not on morty. (uImage works on
> both).
> Looking at the image info on the morty image, it looks like the load/entry
> addresses are completely wrong.
Do you have those variables in your conf: UBOOT_ENTRYPOINT and
UBOOT_LOADADDRESS.
For details please check: meta/classes/kernel-fitimage.bbclass
>
> On krogoth:
> U-Boot > iminfo
>
> ## Checking Image at 18000000 ...
>    FIT image found
>    FIT description: U-Boot fitImage for
>     Image 0 (kernel@1)
>      Description:  Linux kernel
>      Type:         Kernel Image
>      Compression:  uncompressed
>      Data Start:   0x180000e8
>      Data Size:    3304552 Bytes = 3.2 MiB
>      Architecture: ARM
>      OS:           Linux
>      Load Address: 0x10008000
>      Entry Point:  0x10008000
>      Hash algo:    sha1
>      Hash value:   10a220564569205b11febba4b7e2809395bfee9c
>     Image 1 (fdt@1)
>      Description:  Flattened Device Tree blob
>      Type:         Flat Device Tree
>      Compression:  uncompressed
>      Data Start:   0x18326e44
>      Data Size:    38269 Bytes = 37.4 KiB
>      Architecture: ARM
>      Hash algo:    sha1
>      Hash value:   79d5eeb892ef059566c04d98cdc6b30e92a665a2
>     Default Configuration: 'conf@1'
>     Configuration 0 (conf@1)
>      Description:  Boot Linux kernel with FDT blob
>      Kernel:       kernel@1
>      FDT:          fdt@1
> ## Checking hash(es) for FIT Image at 18000000 ...
>    Hash(es) for Image 0 (kernel@1): sha1+
>    Hash(es) for Image 1 (fdt@1): sha1+
>
> On morty:
> U-Boot > iminfo
>
> ## Checking Image at 18000000 ...
>    FIT image found
>    FIT description: U-Boot fitImage for
>     Image 0 (kernel@1)
>      Description:  Linux kernel
>      Type:         Kernel Image
>      Compression:  uncompressed
>      Data Start:   0x180000e8
>      Data Size:    3304016 Bytes = 3.2 MiB
>      Architecture: ARM
>      OS:           Linux
>      Load Address: 0x01314c40           <- doesn't seem like these could be
> correct?
>      Entry Point:  0x01314c40
>      Hash algo:    sha1
>      Hash value:   e2de67793e93d854614a42994180b77e053c7302
>     Image 1 (fdt@1)
>      Description:  Flattened Device Tree blob
>      Type:         Flat Device Tree
>      Compression:  uncompressed
>      Data Start:   0x18326c2c
>      Data Size:    38269 Bytes = 37.4 KiB
>      Architecture: ARM
>      Hash algo:    sha1
>      Hash value:   79d5eeb892ef059566c04d98cdc6b30e92a665a2
>     Default Configuration: 'conf@1'
>     Configuration 0 (conf@1)
>      Description:  Linux kernel, FDT blob
>      Kernel:       kernel@1
>      FDT:          fdt@1
> ## Checking hash(es) for FIT Image at 18000000 ...
>    Hash(es) for Image 0 (kernel@1): sha1+
>    Hash(es) for Image 1 (fdt@1): sha1+
>
> Attempting to boot causes it to hang after "Loading Kernel Image ... "
>
> Anyone got any ideas what might be wrong, or where to look to track it down?
> (Any change to mkimage-type steps in morty?)
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Thanks and BR,

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

