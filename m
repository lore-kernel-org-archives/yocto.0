Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B9EEE009DC; Fri, 23 Mar 2018 10:03:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f176.google.com (mail-qt0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 551A2E007E1
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 10:03:13 -0700 (PDT)
Received: by mail-qt0-f176.google.com with SMTP id w12so5644452qti.4
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 10:03:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hPdoVgZRp1OYl2sfDEgeVPWiFKeGvQJOFASj2CN9GaY=;
	b=EkvoDi8aRo9S0mf1ePQNYbeUKmBE1PfDAaMPRa6AQR4JsLV6Nd6Iafi5WWHu4fENby
	0h8Pno7raqmpl0qV8tCBJsTxs6SvFY5pFCjKKlpSqt5vbUvOXt2ihgn42PR+OY7d19L2
	Hy+lVWHe1bKxPcs0itIGqXHeqkUZZa5NZc8E1ZbsNlxNJP42pdJAnt334gE7m0Yr0V0T
	9jT0XHZXQ4GpWzqSFKFfnt/oPB+jROjNg4i2iwb1vlo4PDnuws2VDMBPHq16ks0QxFxX
	RxqJDOIeDvHkUVWBTNj+U6yaTM0r6yZ+PswoVCf3ebmWe4RprxZJEiddUULLULCrs/9U
	7CRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hPdoVgZRp1OYl2sfDEgeVPWiFKeGvQJOFASj2CN9GaY=;
	b=bBnBYDLnlsDvUKIGzDAqJ7+x6FL5VNjh6fWDHx66UPmeZ7jYty7HNQH2kNvCF8G+jk
	DH7w+g5xAVrIcqLEsFrNvAHB1zUywzR27TEuLAIl/IPI7HqeVPZMZw9U/zzSOoQbLYhf
	hy1weWwHEwZWUzY//+JHfY0hRc4ytMPr5V0/VgjbtbtM7yq82jusERcT78CixwDLDxKk
	z1a/14k+z4pvudgB8ZOijleGOrKcPS1iQnJr+8+pUWuHZRNULRrZ2tlr/5l6R49GLXll
	4ry5yXSFDiXjMPNkAceqdU4z7zZ1RSDxmbAhF8ZV8gvCbFYUYNOSIFr1TD7v8tx1pXUQ
	Et/A==
X-Gm-Message-State: AElRT7G82heVIBvszIu4LeFN6kHX6jK5edP9R+HRBF9natJSQSa6VNuy
	L5eqd20SHve3U15/lgO7MNGzKOPJQfwvRq6E5Os=
X-Google-Smtp-Source: AG47ELvjh6LbHHYS0l0xaD3p1nFs7IeMm26hsiEn3clRv0DlNf2SWoFD4irxsikIUXlvCmGZkMap93OEs8Kch4kzgPQ=
X-Received: by 10.237.63.113 with SMTP id q46mr41873557qtf.308.1521824592654; 
	Fri, 23 Mar 2018 10:03:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.130.100 with HTTP; Fri, 23 Mar 2018 10:03:12 -0700 (PDT)
In-Reply-To: <20180319204725.GA4418@bill-the-cat.ec.rr.com>
References: <CAGAf8Lzv-vjN2j1TkF33GkC9qjNSzqBSpvHkUoyS_5kd=oJAjQ@mail.gmail.com>
	<20180319204725.GA4418@bill-the-cat.ec.rr.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 23 Mar 2018 18:03:12 +0100
Message-ID: <CAGAf8Lw5GabXp3LWwD5TqB_RE=40+-35NzS8+3S256czEgfJEw@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Quick hack for compiling old and outdated YOCTO Jethro for Renesas iwg20m
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
X-List-Received-Date: Fri, 23 Mar 2018 17:03:15 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Tom,

> This is your biggest warning and source of problems. If you have
> to work with an old version of Yocto, you need to setup a
> VM/chroot/whatever of a supported at that time host distribution.

Jozef was right, and you were iron right, just straight to the middle.
So I decided to listen to your advice, and to build aside VBox VM
environment. I have chosen Fedora 23 server, built the VBox VM with
Fedora 23, and the initial issue disappeared.

But another issue appeared. It is somehow described very well here,
and many people at the same time had this problem:
https://lists.yoctoproject.org/pipermail/yocto/2015-February/023624.html

I then continued to search, and found the following:
https://stackoverflow.com/questions/37475222/ncurses-6-0-compilation-error-error-expected-before-int

I did this: export CPPFLAGS="-P", but this did not help. Then I
advanced gcc to F25 package (6.4.1), it did not help either. Advancing
to Fedora 26 (7.3) revamped/resurfaced the original problem, so I did
regress gcc back to Fedora 24 version (6.3.1).

What could be the problem here?

Thank you,
Zoran
_______

On Mon, Mar 19, 2018 at 9:47 PM, Tom Rini <trini@konsulko.com> wrote:
> On Mon, Mar 19, 2018 at 05:38:47PM +0100, Zoran Stojsavljevic wrote:
>> Hello,
>>
>> I have to do some job on the Renesas iwg20m platform. From this site:
>> https://elinux.org/RZ-G/Boards/Yocto_2.0
>>
>> I found some explanation how to do YOCTO build, which I a bit modified
>> (conf/local.conf).
>>
>> It does download all the packages, but it fails here (in *RED*):
>>
>> [vuser@localhost conf]$ bitbake core-image-minimal
>> WARNING: Host distribution "Fedora-27" has not been validated with this
>> version of the build system; you may possibly experience unexpected
>> failures. It is recommended that you use a tested distribution.
>
> This is your biggest warning and source of problems.  If you have to
> work with an old version of Yocto, you need to setup a
> VM/chroot/whatever of a supported at that time host distribution.
>
> --
> Tom

