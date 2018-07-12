Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23DA8E00CA9; Thu, 12 Jul 2018 09:42:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F22CAE00B3F
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 09:42:44 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id 13-v6so57004890ois.1
	for <yocto@yoctoproject.org>; Thu, 12 Jul 2018 09:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DemAD8FCWRwC1VZltYORWrv5cW/iY09exy7ceRQYwXw=;
	b=gvrGtTh6DCiXvZIZdfJ/P5Q5goHi/mJt0lEF/gBp4VXFmqGsetEUnPn4MkiKT47OAH
	P08A8F4nAZYrH5be0UDYdZyrCltWA8AI0mT6zxDonoZs4cVAtzaBQMzkcq4MhAMPe8FW
	yBr6S7U4WL1Z5Er4Di3QwXz3fZwqNnaJFKrkT7AG4sZhyhE9lSa5cfzRM+xWNIf34HJk
	QOrbfAg4hYGaWrAYwmdVNcLnjDneXbor5V41wPyKVJZQIJbyLPZHN5njHq+sP7BW5oB5
	pJzdaAGmjQFrf9jzXh6W4Jo+Cpf18SbI5lYHfOIitCpC7X/nUZ5Kdu6eL73YfjSDVRiB
	PSKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DemAD8FCWRwC1VZltYORWrv5cW/iY09exy7ceRQYwXw=;
	b=JrAvq+kZqv8TbtaphuR5DU06wCc2cgmh5+gA5zyVH36hkdmAIuSki5LtaxvkmyCMrR
	nFC3hxG0/KvbOBUa+/XMHo1RXQrZmSok7xhCsW++MErD3B3VvCbkoX2XWLnMcKUE1gOl
	lryNb/RDHE7rTEX0eqdDO0jHzBNlzyskcUx8qQNavc3W7M0RGnint8Aw8Gs9ac5xDbty
	psWGMIJPTKTY932POE/sZBAMeQ5+i9NHPqc4ZxJRfUZBYOXPuwTTOUl/eqvxLQEvmt7a
	aIb39J4DJs+1Nvzo41P6POwvxY77tiiMZuFSkgm/yGw7d6sFJSC2Wdxy2eXPrc6WQKwL
	IoGA==
X-Gm-Message-State: AOUpUlE7iUk1SfaZK6x6CDtc0QvVVhXo4orlmcpMBwTpp/WUub8bE877
	UaOVMeBNsCyZzQWdFdhXqIhUQoptV57p3+z27rueyw==
X-Google-Smtp-Source: AAOMgpcR3rU24RO19Ma3sjkTV2b4mtQ4LQjn29cWNABV9q9NhtzbLtNQHxE3fy4472BF/1oVUKdXQlEHJljqVLdQ8E4=
X-Received: by 2002:aca:5f56:: with SMTP id
	t83-v6mr3357046oib.115.1531413764434; 
	Thu, 12 Jul 2018 09:42:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Thu, 12 Jul 2018 09:42:23
	-0700 (PDT)
In-Reply-To: <CANmTPBYQtpFnEJccZ0aLQFXxViB6KB+4CemA+c9Y1EtX0j2P1Q@mail.gmail.com>
References: <CANmTPBYQtpFnEJccZ0aLQFXxViB6KB+4CemA+c9Y1EtX0j2P1Q@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 12 Jul 2018 17:42:23 +0100
Message-ID: <CAJTo0LaTeoEssFT8zy54AaSqgPgxE7ForzYZYWD8n5aVhGV_WQ@mail.gmail.com>
To: Simon Chamlian <simon.chamlian@mpbc.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how to download a recipe
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
X-List-Received-Date: Thu, 12 Jul 2018 16:42:46 -0000
Content-Type: text/plain; charset="UTF-8"

Using postgresql as an example, searching for it will take you to the
recipe page:

http://layers.openembedded.org/layerindex/recipe/5558/

This tells you that the recipe is in the meta-oe layer, so click on that:

http://layers.openembedded.org/layerindex/branch/master/layer/meta-oe/

That tells you where the layer is hosted:

http://cgit.openembedded.org/meta-openembedded

You use git to clone that layer and add it to BBLAYERS.

Ross

On 12 July 2018 at 17:19, Simon Chamlian <simon.chamlian@mpbc.ca> wrote:
> Hi,
>
> I simple question.
>
> How do you download a recipe from ?
>
> http://layers.openembedded.org/layerindex/branch/master/recipes/
>
> ??
>
> Do I copy past the bb into a text file or there is a way to download the
> actual file?
>
> Thanks,
> S
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

