Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8BEBE002AB
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 08:20:03 -0700 (PDT)
Received: from mail-vc0-f200.google.com ([209.85.220.200])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 29 Oct 2012 08:20:03 -0700
Received: by mail-vc0-f200.google.com with SMTP id fl15so8579682vcb.11
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2012 08:20:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=JKZz8CmgWZParkfAw0osFwzaMSMQVzPDfechjHhiiCw=;
	b=ei0t10+4nNAUN+6rSUBGW9lK2Ndpgj09xn6G6WoBo/g7KmIMBlfqrXA6WNPTnoLvOM
	jEgdNL3+ANWZXJEJfYuKGlujzkaJGUS2SbDLuvxWqVIb0P6IbC/NEaKXVnpykA0kkpJR
	xbxEmTWFQE96xbTkK6AGPeGnmgmrxd2FEBAidEE/MtDaZjpgNmyc58UX03+vQi2Y9X7d
	VVDWR0O+AqcAU6RV2WH2HAyb9RzC20ED8HbgMJRxejvjjHqPi3WP2SHPDfmnlcoe/V7H
	tA+K4G0+lJIxLe4/fPiAenOiwFO2s/uUCaPZQ+1vtnT5VzaKJ10zuhKLLEb5W8e+p34n
	bSlw==
Received: by 10.49.2.200 with SMTP id 8mr22715118qew.20.1351524001976;
	Mon, 29 Oct 2012 08:20:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.49.2.200 with SMTP id 8mr22715114qew.20.1351524001902; Mon, 29
	Oct 2012 08:20:01 -0700 (PDT)
Received: by 10.229.94.206 with HTTP; Mon, 29 Oct 2012 08:20:01 -0700 (PDT)
In-Reply-To: <CCB3FE6B.1AA58%belen.barros.pena@intel.com>
References: <CCB3FE6B.1AA58%belen.barros.pena@intel.com>
Date: Mon, 29 Oct 2012 08:20:01 -0700
Message-ID: <CAPhnLPD1d01C73v0xFVdvFRXkmbDrd9MujK4o+Ak3eefv6fYzQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
X-Gm-Message-State: ALoCoQkSnsjPHg9erWR5glL/mnO4Qt0oGt/7cNdwysybwJXJzSnxM+gPo8T/vhhkD8Jkr4k1eZbmgCD5xxPicTLafJUijaN0o8SYUNp5R3ulUjOJmeu3ooUzxiVOb3PkbTZMhXwi3bv3MLUMcBdNWOxER8k4sZgLCQ==
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: broken link on the Downloads section
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
X-List-Received-Date: Mon, 29 Oct 2012 15:20:03 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Oct 29, 2012 at 2:35 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> The link pointing to the syslinux documentation at the very bottom of this
> page:
>
> http://www.yoctoproject.org/download/bsp/intel-atom-based-pcs-and-devices-0
>
>
> Seems to be broken. It currently points to
> http//git.kernel.org/?p=boot/syslinux/syslinux.git;a=blob_plain;f=doc/usbke
> y.txt;hb=HEAD

Fixed. The website edit software appended an http to the beginning.

-b

>
> Does anybody know what the correct URL should be?
>
> Belen
>
>
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

