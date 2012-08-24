Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 693BEE0027F
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:53:07 -0700 (PDT)
Received: by eekd41 with SMTP id d41so884398eek.35
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 09:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4csNq/ZThCQ4K8hSwZGpn+poAI/I+6bTzVDUOqmqad4=;
	b=voTZppRtWA23OoLYy3vyI47QTIPbltsKKzVT+8/CZYjZAsUsWKWjL1x0ZvBLJ4QJ7+
	se8k2cr8O21fx+Zk8lwFwYEDaH16aTRg2aXBMOCoRbvZ0WG2IshoHNPcTe2lJVRzSg6N
	uPpjT+HH/zc0/AjHxLmuRzQaIhF8hOS4425NNZcMBY3FROIbcYxRxMFsxPxYqxCn5gDg
	tbvcwMER4FqxTjp7nLAGtYsaWEBDZ0IAUCsaz33bxR5HfkzR4DFUzd+9pSUyUU0+nrkT
	xa2DA9dRvY1me+j8dChWz5L36fAVtmkZvfp238wXnDbO6JX6vp4neNIr2TQ0a8ZTzqdA
	MmUg==
Received: by 10.14.202.66 with SMTP id c42mr8384933eeo.35.1345827186646; Fri,
	24 Aug 2012 09:53:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Fri, 24 Aug 2012 09:52:36 -0700 (PDT)
In-Reply-To: <EA466178-7AF0-4E00-9D24-88A40709B2D1@gmail.com>
References: <B69A6542-B9AD-4E9E-9806-8C344D30B29F@gmail.com>
	<CAMKF1srGqCXGdYPmOh9XXOV3uXTj4P6NvD6QdsBrNsiXC1e6_A@mail.gmail.com>
	<EA466178-7AF0-4E00-9D24-88A40709B2D1@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 24 Aug 2012 09:52:36 -0700
Message-ID: <CAMKF1sqoxTizWJNwkzcHQ4-Tkcf2vTRd2cRXEvhAHRM+W4+DFw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: TARGET_FPU not getting populated for powerpc 405/440 fpu-hard targets
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 24 Aug 2012 16:53:07 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 24, 2012 at 9:49 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>
> Should I specify them in TUNE_CCARGS (as shown below) or
> TUNE_FEATURES_tune-ppc405e (not done below) or specify the same values for
> both variables ?
>
> TUNE_CCARGS += "${@bb.utils.contains("TUNE_FEATURES", "ppc405e",
> "-mcpu=405fp -mxilinx-fpu -mfpu=dp_full", "", d)}"

yes. However if there are some special ABI extentions becasue of FP
that gcc should configure itself with
then that should be specified in TARGET_FPU. I havent looked into gcc
code to check if it knows about xilinx-fpu
at configure time

