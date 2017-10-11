Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49F6EE00C82; Wed, 11 Oct 2017 10:57:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.53 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A5B9E00C78
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 10:57:34 -0700 (PDT)
Received: by mail-wm0-f53.google.com with SMTP id f4so7077811wme.0
	for <yocto@yoctoproject.org>; Wed, 11 Oct 2017 10:57:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aF6h86ZJETwtppNibnm0k1ePxOZu+b7eJQ/DGngKHwg=;
	b=i11Y3SLeDHI4iEhDM9dqdabO1WWLijQqXwIAuGQ+hZPZiqc+jMO9Lg7hXZ9IZ+UC9i
	FA5Bkvx9x2Y6+NZT49++HqDiV0bNtULng3I7VOiwDiOq0+yLWAzZPN2Qn6EXvd8xZrqM
	3iWfsejnjmeDoeW+o3LNy/OSFeCIltXwon38we7rFvhT6KwHUlItqO1exDzjr7crmyl+
	OScS1SZzAHuhwS+e+pFUYexoPnjUNv2uZ6BUyafLE8a7HIyQlNyCZtv+9NQc8yrTizFR
	jw/NIcgS0oW2HoHOGo5fJPfIP5AfHuO7WLCKs75InKFrL0Yx/aVcn/0T8FGKpbLkxK5v
	bIJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aF6h86ZJETwtppNibnm0k1ePxOZu+b7eJQ/DGngKHwg=;
	b=QmHseWSxxuywvoWtL+c68o1GxKkl6Nn1qEmAJMPbo+HGTOxS3Ck9Q1Xdkt6J2I/jpt
	oUgffppWBoFCgfpFpSXRyMQo5edt4W7afw0OT2RLoNKRq95rSB64AO9BxSQqWCKu6wCX
	SuLozYZ44IWW0SI3yXElGMCRqzm3PskXwvlDm7MnHROv07K7w9VZAdbRsFvQn538JTdb
	a5LoGaLEGCILJ676QABGkyQuVKfFLG7IAqosLM8sD8yfB+DPUT7yo17WJ/aVO5WANAjU
	pAow9Nw7HZtmXf77OGnsIbE/ik/3l8mA8+HX80UKcs1tnkAXtagsE5Ay/79eMtzxRPkR
	Vaqg==
X-Gm-Message-State: AMCzsaXpWInWyED2jvxU6GX2Menqy7rlqEMThAF6/R+dQscivxoQvmnw
	GMBDHVdfOSn4NweJvOc2lyAI/1SlFWBB+7w2AGE=
X-Google-Smtp-Source: ABhQp+T5SlwbnoYRxlNANSfxQ5eUzbCMXZObe55x7nzkdJU1FrVX2xX/sv0MggNMPDzQ1XrCx9zG1SQO1lOWGtItvP0=
X-Received: by 10.28.91.75 with SMTP id p72mr305584wmb.89.1507744653570; Wed,
	11 Oct 2017 10:57:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.166.19 with HTTP; Wed, 11 Oct 2017 10:57:33 -0700 (PDT)
In-Reply-To: <CAE0QtjMaobVB--VkOobD1CjV+jYtn24Me181g4TSr24vfhMmUw@mail.gmail.com>
References: <CAE0QtjMERAoesSe9wab80StX-0MRTEAf+RB6pgUguGgOBNCwAA@mail.gmail.com>
	<CAJ86T=X8VtwndQPWJcdLs7n4CSyFQde5a_cM0qEDcW6EYyih7w@mail.gmail.com>
	<CAE0QtjMaobVB--VkOobD1CjV+jYtn24Me181g4TSr24vfhMmUw@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 11 Oct 2017 10:57:33 -0700
Message-ID: <CAJ86T=VhZdfAbS+W0ALxxu2-mQPJUv2M0d=b4o6mB5wm4eC+Ww@mail.gmail.com>
To: Jerry Lian <jerry.lian@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Basic question: "core-image-minimal" v.s "core-image-base" ?
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
X-List-Received-Date: Wed, 11 Oct 2017 17:57:35 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Oct 11, 2017 at 9:30 AM, Jerry Lian <jerry.lian@gmail.com> wrote:
> Thanks for answers from Ross and Andre.
> Now further question:
> * If we look at file \poky\meta\recipes-core\images\core-image-minimal.bb
> ========================================================
> SUMMARY = "A small image just capable of allowing a device to boot."
>
> IMAGE_INSTALL = "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"
>
> IMAGE_LINGUAS = " "
>
> LICENSE = "MIT"
>
> inherit core-image
> ========================================================
> * "inherit core-image" comes after "IMAGE_INSTALL = ..."
> * Will the "IMAGE_INSTALL" in this file be overridden by "IMAGE_INSTALL" in
> "core-image"
>
> So what is the rule for "overridden"?

http://www.yoctoproject.org/docs/2.3/bitbake-user-manual/bitbake-user-manual.html#basic-syntax

