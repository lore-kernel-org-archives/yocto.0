Return-Path: <coder.callahan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6497E007C2; Mon, 17 Oct 2016 08:22:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (coder.callahan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18D8AE00747
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 08:22:47 -0700 (PDT)
Received: by mail-lf0-f47.google.com with SMTP id b75so293758244lfg.3
	for <yocto@yoctoproject.org>; Mon, 17 Oct 2016 08:22:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=tBBT3i+6v5ae79nJU4BXfm4dVaPY38mrOkZkTl2Oc+E=;
	b=wfdOMj9u9rhbqEt4SD+lzgsf0EX5QcQAhhXuq4NtEOkmUHK8iKNPWLrlNo07UIuBEt
	ovvsmld9eoQEUCy8CjMSvu7KIudtN3EbViU/PnV9DYKUmwyfHSzpC5akEG86zjwooCDn
	6puq/lI7sJlLpiwrhI+MT5rmqv5MUf+8cGQnWz1q6S9DqGl7evgTAgH6Cceg3SOBvEAw
	NH1+gbez5RJbZ0qclpyBrQDAe6S2WtCB1Ne3pf+CpXRG8zidxh1iodZFoj3Qw1G+eCu/
	kQbPz9+FE4krIFxoneZhStxDBPFxFOphpFYHCsqp6l04dpsCWr+stbA9w5sDSz4TCnsz
	6aow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=tBBT3i+6v5ae79nJU4BXfm4dVaPY38mrOkZkTl2Oc+E=;
	b=ekfU1vCcgyl/Gv2c/9WDdMzkA5kDVVXCU392bLyteWeXIcJUYEOwJqTVGXBsSMHpUO
	yoOn7DDIL1UOVajO5FRfUllKxu4jhx4FvNrBeyWuPYuBJ6tfNJTjV/sk49U8XWu5/hLS
	CBMZnWPE6+I6kzDvrB2qOIOIxAOGqdXNmp+cnGqDIsMjTC4BrxIRxwAgTPOlokWvDsnl
	zWFo9SvtM+T3QPw258T634V7TCo10Dft7nzb/Cc/0p7HFCB4Ylqr2+oVVBQFytn8xhEC
	y0bCRGCr+fkE1JFi8oBqYdZfTB1+Lg4/Rghn5vPVacMJ6NWPztRr3dQ7KYqBMwtxx1a3
	dqOg==
X-Gm-Message-State: AA6/9RmAJudAMZ2AP8g36Md/a4H6jv/OxXmAfX9YBgRC3Uhn+HZvgN4qb1l/QojJEmkUO9/5pgF491uV7mULkA==
X-Received: by 10.25.138.215 with SMTP id m206mr15581366lfd.30.1476717766486; 
	Mon, 17 Oct 2016 08:22:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.75.77 with HTTP; Mon, 17 Oct 2016 08:22:45 -0700 (PDT)
In-Reply-To: <CABcZANm6FrZB0VjJOhzdjE3-Gc104FQnUUm47d1Zk+DxjFwTEQ@mail.gmail.com>
References: <CADm5WxPcAqeDdB8f18YhsyX_365Ve7kFqtNuhN0pyp+192G7ng@mail.gmail.com>
	<CAJTo0LZbgdZXHH7NMa1PBbJwHE06=QRXm9+5zbsSq+5sMt+zbA@mail.gmail.com>
	<CABcZANm6FrZB0VjJOhzdjE3-Gc104FQnUUm47d1Zk+DxjFwTEQ@mail.gmail.com>
From: Michael Callahan <coder.callahan@gmail.com>
Date: Mon, 17 Oct 2016 09:22:45 -0600
Message-ID: <CADm5WxMJYCSMd5Nq4R-7Pw+C4o8b8u54p2hAtAyOTmrORdms8w@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
X-Mailman-Approved-At: Tue, 18 Oct 2016 11:56:30 -0700
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Two pythons
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
X-List-Received-Date: Mon, 17 Oct 2016 15:22:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Christopher and Ross.  I was afraid that might be the case.
When I find time I'll figure out how to crunch out one of the two
pythons the hard way.

On Fri, Oct 14, 2016 at 10:37 AM, Christopher Larson
<clarson@kergoth.com> wrote:
>
> On Fri, Oct 14, 2016 at 8:54 AM, Burton, Ross <ross.burton@intel.com> wro=
te:
>>
>> On 12 October 2016 at 18:58, Michael Callahan <coder.callahan@gmail.com>
>> wrote:
>>>
>>> I just moved my project from Fido to Krogoth and now I have two
>>> pythons (2.7 and 3).  This bumps the size of my image by approximately
>>> 25%.  What would be the most reasonable way to get back to just one
>>> python?  Ideally I'd like a magical setting to get rid of python3
>>> because there is no custom code for that one but I suppose with enough
>>> work I could get all of the python2 code working with python3.
>>
>>
>> Sadly you can't have a magic option to flip from one to the other as cod=
e
>> isn't compatible.  In general master has moved to be 99% Py3 - with smar=
tpm
>> being the only major python2 recipe left - but I thought Krogoth was sti=
ll
>> Py2 by default so shouldn't be in your image by default.
>>
>> I suggest you use the usual tools to find out why python2 and python3 ar=
e
>> in your images, and see what you can change to have just one.
>
>
> Yeah, as Ross says, the usual tools are best there. There are some things
> you can do to avoid the python dependency for certain recipes, but it has=
 to
> be dealt with on a case by case basis, and of course depends on what your
> image is pulling in.
>
> For example,
> https://github.com/openembedded/openembedded-core/compare/master...kergot=
h:systemtap-python3
> splits out systemtap-dtrace into a separate recipe which is pulled in via
> RRECOMMENDS, so I can use BAD_RECOMMENDATIONS to exclude it for images th=
at
> don=E2=80=99t need it (dtrace is the only thing in systemtap that needs p=
ython3).
> https://github.com/openembedded/meta-openembedded/compare/master...kergot=
h:lirc-python-3
> does the same for lirc.
> --
> Christopher Larson
> clarson at kergoth dot com
> Founder - BitBake, OpenEmbedded, OpenZaurus
> Maintainer - Tslib
> Senior Software Engineer, Mentor Graphics

