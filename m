Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1B0D8E00C25; Thu, 10 May 2018 09:35:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A86D7E009BC
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 09:34:59 -0700 (PDT)
Received: by mail-it0-f66.google.com with SMTP id q4-v6so3873700ite.3
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 09:34:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=KIrqx460yy28H9RKr4q6irBYuTOKHoSj3w+m4XUCXNA=;
	b=Y6M9jfJu8SMFtJ/GGdWUnAjSfAXKeuyfxaB7ytT6wQMd2Yk1O8YechvyS37Tx5W5CX
	GZZsocGdMGd0c+xl8BaeWixVBeUmxHMEs8NFFvnghZMGClzjRuWvJUosM33pIuPo9Cnz
	gOx92iN0RMFBbLgdoAFWLaXxzjdzoveHAN6EyZQ47a4+IdJI1xi/RIcQ+G+/vE5AcwoI
	rxacgB6l7WeM36s7rXW4VClr2THff7mQZhcpMR35qWOPlrc/gnL6rKZN9d6AFIWqEEsR
	CIHbDDy6T4D7clRB5ENw4f5fwcUxo45DGjow4D2lfztErBs5lJPKkf1rXgau4jiwH4/E
	/rww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=KIrqx460yy28H9RKr4q6irBYuTOKHoSj3w+m4XUCXNA=;
	b=YPZchAhFw/X14TE5xVwHm3KlO8Kj/VHRJGjgODwyUSEZKUZ/X1RUcl4sIJOe39JP8r
	/zgmITF3XV0IpQ7kIHpQ3mzgAv3PgYZOAwj14qsCYztBAtMLWgIms6vYSpbpqNaH3H65
	QjuPMCTMJHA2ze2fb57svwH5wwm1mXN2NfcUVUOIeycB5j/LevWKnu7QnPVn2fiVR5DK
	cOP5pCBqKX4b/2qkLstcgFZ29J1Jz07Zt4WL0P5or5tqSJANBCFA40ODF1tNTgszfaMf
	GZ6itPMdw0TA9+tw4MwkJTQVQ6W9yMcTy0+imgdyuja5alCx1OjQMCuv2hk6M3ZrqjMr
	dleg==
X-Gm-Message-State: ALKqPwfg1yhljSXV+AFZu/kI2KdAsmCAwypYdj6BhQW3J0yeaNvKToTk
	B5SCgC+ILE9hK0pl9jnq/niRNe1V7/tMTZxJalZmvg==
X-Google-Smtp-Source: AB8JxZp0QJAFrHTQ6L8LH9pDeGx1vJ+QD2JfzBv/fOTZHxa4zBtJ72bwvsRqL7PG5sG6kGrf8NktgjVNwa04GDlhLIs=
X-Received: by 2002:a24:56c3:: with SMTP id
	o186-v6mr2418698itb.127.1525970099260; 
	Thu, 10 May 2018 09:34:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.239.11 with HTTP; Thu, 10 May 2018 09:34:38 -0700 (PDT)
In-Reply-To: <CAJgxT3_=C2roF-oP9-VpPZcFTphOyCe8VLpqYjuy+8C628_XZQ@mail.gmail.com>
References: <20180509214855.3330-1-matt.hoosier@gmail.com>
	<CAJ86T=UpVWZsvYSz4yeDVZp+EmbnhFsWGRGq5EWgG766qTZ-xA@mail.gmail.com>
	<CAJgxT3_=C2roF-oP9-VpPZcFTphOyCe8VLpqYjuy+8C628_XZQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 10 May 2018 17:34:38 +0100
Message-ID: <CAJTo0LaKSE=K5xpSk3QJogxRvuKeTA0PKpbT1uPtaTpZywLY5Q@mail.gmail.com>
To: Matt Hoosier <matt.hoosier@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] bitbake: fetch2/gitsm: avoid live submodule fetching during unpack()
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
X-List-Received-Date: Thu, 10 May 2018 16:35:02 -0000
Content-Type: text/plain; charset="UTF-8"

On 10 May 2018 at 01:40, Matt Hoosier <matt.hoosier@gmail.com> wrote:
> On Wed, May 9, 2018 at 6:27 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>>
>> On Wed, May 9, 2018 at 2:48 PM, Matt Hoosier <matt.hoosier@gmail.com>
>> wrote:
>> > From: Matt Hoosier <matt.hoosier@garmin.com>
>> >
>> > Although the submodules' histories have been fetched during the
>> > do_fetch() phase, the mechanics used to clone the workdir copy
>> > of the repo haven't been transferring the actual .git/modules
>> > directory from the repo fetched into downloads/ during the
>> > fetch task.
>> >
>> > Fix that, and for good measure also explicitly tell Git to avoid
>> > hitting the network during do_unpack() of the submodules.
>> >
>> > Ref:
>> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=12739
>>
>> Patches for bitbake should be sent to the bitbake-devel mailing list:
>>
>>   http://lists.openembedded.org/mailman/listinfo/bitbake-devel
>
>
>
> Right, okay. How's that meant to work for stuff developed in-tree with poky?
> Do you manually want the 'bitbake/' leading directory stripped off before
> emailing the patch?

If you're feeling lazy you can just send the patch to bitbake@ from a
poky repo and git will figure it out.  The same works the other way: a
bitbake patch applies fine to a poky repository.

Ross

