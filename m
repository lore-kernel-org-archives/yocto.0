Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 081C8E00C4D; Tue,  5 Apr 2016 15:18:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 231E7E00C37
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 15:17:57 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id v67so4288387oie.0
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2016 15:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=QGrfSPhlaNWgu8/9UxhkW5P4N0SnRwuVbgRJL/UJZzs=;
	b=Rg+YyDm91pK6RdKYIO+9ET93dUQ1O9H52Q9s5Lsp7HurbJoMEF0yha+m+IJn92Fl6p
	6lEo/KeCghdb7WWKtwJIQ7zLIhkL5fqFe7GhFL6pQSmTPjoObEstSacOJCHxkfzui9z9
	uc23rdg3Oh8tc/xncKCBF7/RwwqAC9XRolBWyRt7rgTLhfE6SuZm/rkYYag/X7nmL3tl
	gnBZV6teQlNCE9dgod6GQqv7Ga17KUwlWb9VdNk8CNtwVwgHNXqtmxK0cF5J/o73D159
	0HtXhMsUcGtMyhOdybFgHcnWUIdYW6eHNk+86T3xFyXbBmdYrnwhr8jpFAjhBNYT+x5X
	kRcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=QGrfSPhlaNWgu8/9UxhkW5P4N0SnRwuVbgRJL/UJZzs=;
	b=RMHUPHmUkSCvVB1g17essUpp2LG0UDZrDoOhpU9XBBQBKbr9L6Cwsn71+0LMtspuau
	uPH1SqiUleI5OXivjL40K4Ah+9XGliM/CHcFjLPh2lLN2nHb1cLILWms/UsextuWau5x
	mJaCQLjyeOfGlqKZHHfsJRl862d98nXUBjWhVbdUWNifiZbBNySoXkgjy1CR0HUHPFvk
	2il5cHC+qc27WOUAxipvVjqbNqeIScWsC3Jyh0DMUQRQHdHqNmBQFfDHRzSf1j4usCf/
	FjoRvoC6j6E8rq1kyjuut99LsVYCBFCqZ7UtOx5EfOqUkfrTG6JS5mY2cMDxULsBiiFU
	ixzw==
X-Gm-Message-State: AD7BkJKQWiuvW0a5bMvL68ru7r+e51hTocPlNsFRzqzxRycQdndPDJzLBpnC44NmKcINkjO+MLosb8xfeqqpFQ==
MIME-Version: 1.0
X-Received: by 10.157.34.193 with SMTP id y59mr10287945ota.88.1459894676989;
	Tue, 05 Apr 2016 15:17:56 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Tue, 5 Apr 2016 15:17:56 -0700 (PDT)
In-Reply-To: <CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
	<CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
	<CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
Date: Tue, 5 Apr 2016 16:17:56 -0600
Message-ID: <CALRMKQrWwR03YyenAefS1GaPQ34GhmRCz0r5GS=rR+1gx45Jqg@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: "Burton, Ross" <ross.burton@intel.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Tue, 05 Apr 2016 22:18:00 -0000
Content-Type: text/plain; charset=UTF-8

I'm basing off of poky-jethro-14.0.1.tar.bz as downloaded from
yoctoproject.org.  I've also got meta-intel from the git of that name
to support the corei7, my eventual target.

Ron O

On Tue, Apr 5, 2016 at 3:29 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 5 April 2016 at 19:55, Ronald Oakes <ronaldo@brc2.com> wrote:
>>
>> Illegal instruction
>
>
> It probably built a binary to run on your host using compiler flags for your
> target, which means that the binary contains instructions your processor
> can't execute.
>
> What release of OE/Poky/Yocto/whatever is this?
>
> Ross

