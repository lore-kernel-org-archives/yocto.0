Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE67FE006D9
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 17:06:41 -0700 (PDT)
Received: by eaab16 with SMTP id b16so959049eaa.35
	for <yocto@yoctoproject.org>; Fri, 22 Jun 2012 17:06:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=JDgP80fhw/MQFxwK1Dyzj1zjF9S6gWJT5RLAjcayjdc=;
	b=wsXGG2xDEgHzzmIho6jkIBsol9pWobH4s2iIUt4KvAK9qCC/ZjPecPZqs9WLvUKwzR
	5f2qV7epCJJlP0VmGpMOK+VnI0hGGUgEHZVJf5JVefvm6m0Qbq8bXmsGOlNHutZkpKgm
	CHMipjJHkfLcQXvUZIPdbOr1mo5pqwub48RfvUT/d58xwzBviW6dtpBZfeYCfotLGkIv
	pMO8OIFXw56uEGKB2Cpnv/UJo1XWQop8JKMKeacbl7Ky0rlrjBIgXsvXfz2Ed6Biujye
	T7xZYPCjytXInSusGbDH//OYxk1FOWCXLY9+YIeu24JR6jSFde4CdK3Afj68lbAx+6s5
	6AIw==
Received: by 10.14.37.206 with SMTP id y54mr832770eea.218.1340410000408; Fri,
	22 Jun 2012 17:06:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Fri, 22 Jun 2012 17:06:10 -0700 (PDT)
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20ACE4833@ORSMSX105.amr.corp.intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20ACE4833@ORSMSX105.amr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 22 Jun 2012 17:06:10 -0700
Message-ID: <CAMKF1spxgo3B2WxsRg=75Nhi8za6rHWejkjihiOoK_uro=8Ojw@mail.gmail.com>
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Darren Hart \(dvhart@linux.intel.com\)" <dvhart@linux.intel.com>
Subject: Re: Display issue with EFI BOOTING
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
X-List-Received-Date: Sat, 23 Jun 2012 00:06:42 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jun 22, 2012 at 3:28 PM, Bodke, Kishore K
<kishore.k.bodke@intel.com> wrote:
> Hi,
>
>
>
> Yocto logo displays fines when booted with BIOS.
>
> But I see the Logo Display issue when booted with EFI.
>
> Attached are the screen shot.
>
> Any Idea why?
>
>

may be screen refresh rate ? just shooting in dark here
>
> Thanks
>
> Kishore.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

