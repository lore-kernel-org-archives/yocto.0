Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21376E00BFD; Tue, 13 Nov 2018 11:22:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kiernan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.43 listed in list.dnswl.org]
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
	[209.85.217.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E079DE006F1
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 11:22:56 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id v205so8011459vsc.3
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 11:22:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=CkruXSQBAV8y8gYShReS6Aj37+t8iK5xO75PIcWkq0Q=;
	b=Kxo6dddxZX0VmzGQge7InV3i/9Kmq1lurnm6nA3T9fNeOBcp5WaSdZN8gTpM7PZSVw
	Z2hMCPdmNS9l7i9DlKtH/v4pTcExUAUbOWTvwaDuL/dMyFp+DD/F7IrA7QWQgpJlIeCn
	Q52mTTLWrjpK9wpwesyq2McrIW1zGojP5ivGLZLH+ehiBX37wlTnOdtgej9QDpoob4Cb
	nQL13B28gXqg2sH4kApSg1B+Y0C53OPpAVd5bIXMpCyypPKzOxJdSjIF2oqkn9diOgkk
	+Adw030lQbKMhBa13RcDF0RUGPV/2g/AkMx/5mEyDaChKFK2M/mVOnIgkSQYz+KDVQ1W
	xPDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=CkruXSQBAV8y8gYShReS6Aj37+t8iK5xO75PIcWkq0Q=;
	b=cNEDUNfY/BJg7ZVOWCD4jN/3dOLEqZcgmALJeEb+/fRWV/huAsAK72rqVjNprRVe5P
	XNw41zG5Dlzm4tQXT4DJvyzwdFMLT1Z6wtmr2ukqTsF9XBxY9gqxZnpKwq90KfBgG+C+
	nll9ARn6zDHJ6oVXpzKbFd5d8D2J9KMtMrhquyfICMuJVeTZosHuJz/3sq46rUo2W8bg
	JjqFw/feJWseQQcZ/Ig7m8/hPkHFAllYh02aatvkut7l9DesxhBtZWiqNTVWytQPFx8Y
	51SDUsNeDuavWPkS6EPhvXrYYtaRR9P55RhkWWF9QWiOjxZ06zqCbdBQrb3ouUEo5vOi
	nFdA==
X-Gm-Message-State: AGRZ1gKEdofO5B2HUddfs/DxHpy0zUne7rvu9CMIcJ0VosY701aUpBUh
	6RU8jc4MHQBU53Rv1AbfP4GjKtWz6slK/0SyJMk/iIr8
X-Google-Smtp-Source: AJdET5fK3VbUbYq7u9JABXgiu4F/w5HyFHoSUynkpKVTwwKaMyg45UZwB1aXSfgag1I9b0uvZqWxg7HUN5Eoj7Aefws=
X-Received: by 2002:a67:7d06:: with SMTP id y6mr2948249vsc.22.1542136975855;
	Tue, 13 Nov 2018 11:22:55 -0800 (PST)
MIME-Version: 1.0
References: <CABj1EzHtJ8kqjLGQOh2zTqcP5TD3azHXz0+6RqqnggvA4NpB6Q@mail.gmail.com>
In-Reply-To: <CABj1EzHtJ8kqjLGQOh2zTqcP5TD3azHXz0+6RqqnggvA4NpB6Q@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Tue, 13 Nov 2018 19:22:44 +0000
Message-ID: <CAO5Uq5SvADCTKbJZ0J6d8Nu7_td=o_Vo3qi_W1DUhRvEqyXFdQ@mail.gmail.com>
To: donal.morrissey@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: wic creates invalid image
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
X-List-Received-Date: Tue, 13 Nov 2018 19:22:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Nov 13, 2018 at 7:13 PM Donal Morrissey
<donal.morrissey@gmail.com> wrote:
>
> Hi There,
> I have a problem with an image being created by wic. If I add more than 4 partition definitions to the wks file, the generated image will include an additional partition with no Fstype, and spanning the full length of the additional partitions.
>
> Take the following wks file:
>
> part --source rawcopy --sourceparams="file=<long path>/image-r0/uboot.env" --ondisk "mmcblk0" --align 4096 --no-table
> part --source bootimg-partition --ondisk "mmcblk0" --fstype=vfat --label boot --align 4096 --active --fixed-size 40
> part --source rootfs --ondisk "mmcblk0" --fstype=ext4 --label primary --align 4096 --fixed-size 147456k --exclude-path data/
> part --source rootfs --ondisk "mmcblk0" --fstype=ext4 --label secondary --align 4096 --fixed-size 147456k --exclude-path data/
> part --ondisk "mmcblk0" --fstype=ext4 --label appdata1 --align 4096 --fixed-size 147456k
> part --ondisk "mmcblk0" --fstype=ext4 --label appdata2 --align 4096 --fixed-size 147456k
> bootloader --ptable msdos
>
> wic will create a .direct file with the following structure:
> Num     Start        End          Size      Fstype
>  1      12582912     54525951     41943040  fat16
>  2      54525952    205520895    150994944  ext4
>  3     205520896    356515839    150994944  ext4
>  4     360709632    666894335    306184704
>  5     360710144    511705087    150994944  ext4
>  6     515899392    666894335    150994944  ext4
>
> Note the start and end addresses of partition 4, it spans from the start of partitions 5 (appdata1)  to the end of partition 6 (appdata2).
>
> If I modify the wks file and remove the entry for appdata2, the created direct file is valid:
>
> Num     Start        End          Size      Fstype
>  1      12582912     54525951     41943040  fat16
>  2      54525952    205520895    150994944  ext4
>  3     205520896    356515839    150994944  ext4
>  4     356515840    507510783    150994944  ext4
>
> Any suggestions on what is going on here?
>

I've not checked, but I'd assume it's switched to extended partitions,
since MBR only has 4 primary partitions.

-- 
Alex Kiernan

