Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C32B4E00C64; Mon, 14 Mar 2016 10:17:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10DF4E00C23
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:17:29 -0700 (PDT)
Received: by mail-qk0-f182.google.com with SMTP id s5so77700061qkd.0
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 10:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6YDTljA1HaKNz/WoTf21S1Tch6RXSfEClDuSLHjhybs=;
	b=FQq7iE4+hav0emXOI/idUImDhPdninFLo/pC03kZqBu6XCkL9865KLhzNvW++vfz1o
	1zBDymj6bIhHgjU+PgkRrrfaJ9lP1QFTUcMF5b1/GltdVfS36YviN1toZy8qr1ONtPL/
	j1lHAGKac8DJjPqoaN27KDWHEOehI6szEvovq0CSxJR4Rzt1gmOUp2hbO2eAIVQC269b
	gvGmv11QLFmXKfZyviY/QHspbWe+05KzAYMff0o2MISuXWuQH1EFlFcMHdEUfmejM8zT
	cvn615wM2ySozqFiBiMvSft6INW6cW07+ys9vHGX2GUhpWt4vpsbLWN/+rInSnQEVMuq
	S0Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6YDTljA1HaKNz/WoTf21S1Tch6RXSfEClDuSLHjhybs=;
	b=ZubAiW1biY9hy+rMk8ZQl7MmTKEAIkhnhz7wKCmuSkggYDR6XL8zCpcwjtLk6pwM5A
	2YzIs7D/H8briRHIwRgKFbhzKfxN8/EySfQziCc+ZiS6kp4g5PHf9wTCtIxhZDpZSlkd
	gepDoPKoU8DalaREprJQvcxDuJZlOyN3MBlaB0/4DpSzNwmhrhzo/IhIuOtYfsDWzpr8
	2756FcaZq/4WpzP6Tm5QoshnUNhxmyBqyyoQEWhv66L9LM1sNuKYADX56jO/F1L8M3rL
	dBMOVhl+pLZyBeLQMTc2M0m0ezHo76rR1pDIEdxozHuNNen53Ny/eFFy6XTsYtEbbWgW
	WtdQ==
X-Gm-Message-State: AD7BkJLfo4QQpAfhNOdinzxARdm/YnXd4uxghXE44GwicdZtCutMt8qgLMxCGn0RKdbkYFA+dHauwKTqwXRV7w==
X-Received: by 10.55.78.70 with SMTP id c67mr31315638qkb.37.1457975849188;
	Mon, 14 Mar 2016 10:17:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Mon, 14 Mar 2016 10:16:59 -0700 (PDT)
In-Reply-To: <f928436d-dc83-a514-59eb-fe6c9ed04e7c@noir.com>
References: <56E64947.5020606@mlbassoc.com>
	<cdc27932-91ca-378d-1582-286b72cc3e7f@noir.com>
	<56E6EE59.80907@mlbassoc.com>
	<B08B39D7-7278-4A76-9F4D-4A0CD9659B99@gmail.com>
	<f928436d-dc83-a514-59eb-fe6c9ed04e7c@noir.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 14 Mar 2016 10:16:59 -0700
Message-ID: <CAMKF1soG8VLt2xWbJ5A-Y82bqnGkYrGNf5wqbigP1fODKTDv-A@mail.gmail.com>
To: K Richard Pixley <rich@noir.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 17:17:33 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Mar 14, 2016 at 10:11 AM, K Richard Pixley <rich@noir.com> wrote:
> While we're on it...
>
> Can anyone explain what a "live" image is intended to be?

it can either boot from the disk or you can run the installer to
install it to another media on your device.

>
> (I haven't gotten a live image to "work", but I'm not entirely sure I know
> what "work" means for a live image.)

what issues do you see ? may that can help answer this

>
> Or how hdddirect is intended to be different from hddimg?

hdddirect is raw disk image.

