Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 450A7E00C77; Mon, 23 Jul 2018 11:51:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6F59E00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 11:51:49 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id v8-v6so3014690oie.5
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 11:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Zbvki0Fde+YNdY+At5jp8h5fScVoia2keCyw7BwTwho=;
	b=rEn0bWk+ZNPjFj5CyMCTM8R3tlzWbR3qIpyrZJcRnItnImKNnaQLhVZMt7OOrGq15H
	vIAK0omq6vX7tXzDshdkmgK/xtefBQTbnTuAgtNQLoY5BsKRAaz91y/beKfArEYWraUo
	6Y3szEXvt/hnXuQr4az7gdkY5k7o8u40nxUjmW5e6fRYr4nWBJlV5EJbEIRAD52ETuHo
	+hdp6Fal9LERjphdJ+bFn86+el+r7qoX835JNz0NBFV5BBg45m+iU+kJ2PbugeVwqEwX
	gyLMOMSTfzrhBx/o7+Qo9qIkAeSjfBqUDArKTQ4y+7mhm1c5XepW3CMqGunh1JuO+PwS
	/QSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Zbvki0Fde+YNdY+At5jp8h5fScVoia2keCyw7BwTwho=;
	b=h7kTR8ugkFDwUMvhLaz9pA4m//rApHWjWNUbLHL5Skz2BUln+N/FEOWqqPWnMOG80B
	rpoO3p9LsWGgbJ5ab1xsU6HWSfVmFb9PUtDLcmsdgm5dkp7TA/aKZ/9Nhn086/KKqHjE
	dPMGHF65Tuy5p7+logSO+Kx7sbFG7il72m/OhZWLFhc67z0ZF/uy9TuGfmUIh0DCaFi8
	Dl2Ha/C9QqrauuOcCTn40YjxsnAzMHbpLliaqHiLOINHKPEiTnR47Di4NdZ9X+4s3ivM
	6IHR7SODa53pAisg6uVDvcnBMF6VnAiVburVY9ah/YKuQsyg/pXOCsPT6g4UPic2FVNJ
	OLKw==
X-Gm-Message-State: AOUpUlE4Wf7vOKklWQpgKuHthKIErvPXABVenJc0OdU1o4zC+qAysYSw
	0kvy8no8PXUqgdNoUAwpwXbF42c+baUvydY6qyAfVA==
X-Google-Smtp-Source: AAOMgpep0d2Uhl1YGO/WQCNauZY+MNRo7dn6by54gJrCiyvl5m8xsBdEvaS5RE8XSqbQrPctUuaN7XkuU9xt+jmZ79M=
X-Received: by 2002:aca:efd7:: with SMTP id n206-v6mr14826oih.70.1532371909235;
	Mon, 23 Jul 2018 11:51:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 23 Jul 2018 11:51:28
	-0700 (PDT)
In-Reply-To: <CAJ86T=WtLMKA3M5-fWR1pm-x8PRRGwFihuwpuhbzEtQaGwFRTA@mail.gmail.com>
References: <051ffcba-0255-4d93-e8f8-01993e967ef2@gmail.com>
	<2d030ea4-b2df-58fe-9947-e1c4e40ea17b@gmail.com>
	<CAJ86T=WtLMKA3M5-fWR1pm-x8PRRGwFihuwpuhbzEtQaGwFRTA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Jul 2018 19:51:28 +0100
Message-ID: <CAJTo0La3pkW79pJGaADvcTaC1M9viTYmWSH5VuiFCRzur2C5Xw@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: bitbake is corrupting my files during unpacking
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
X-List-Received-Date: Mon, 23 Jul 2018 18:51:50 -0000
Content-Type: text/plain; charset="UTF-8"

Yes, please do.  Mohammad, as you can replicate this on demand, would
you be able to fix the unzip recipe with the patch in that bug and
send a patch?

Ross

On 23 July 2018 at 19:42, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Sat, Jul 21, 2018 at 12:55 AM, MOHAMMAD RASIM
> <mohammad.rasim96@gmail.com> wrote:
>> well apparently this is caused by the unzip binary that is compiled by the
>> openembedded unzip recipe.
>> If I unzip the same zip file with the unzip binary that is shipped with my
>> system(manjaro) then the files are not corrupted but when I use the unzip
>> binary compiled by the openembedded recipe I get error and file corruptions.
>> These are some of the errors I get when unzipping with the openembedded
>> unzip:
>> ...
>> symlink error: File name too long
>>
>> This error happens to multiple files where the file is symlinked to the
>> content of the file and not to a path !
>> Where should I report this bug ? openembedded ? unzip upstream ?
>
> If you google the "symlink error" you should find multiple hits, which
> all indicate a known bug in upstream unzip 6.0.
>
> So, it should be reported upstream. However, given that the last unzip
> release is now over 9 years old and there doesn't appear to be a
> public upstream development branch, the chances of getting a timely
> response don't look too good.
>
> We should probably add the fix to the unzip recipe in oe-core:
>
>   https://bugzilla.redhat.com/show_bug.cgi?id=972427
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

