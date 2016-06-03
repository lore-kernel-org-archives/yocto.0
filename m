Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18515E00D02; Thu,  2 Jun 2016 18:43:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CDCFE007A2
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 18:43:14 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id a20so87888347wma.1
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 18:43:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=ylhDK3QQTTAjNqgi8rmaKeqqIfpUO1PtqBAqanC0qRM=;
	b=JpnDIxUNjgFkidP6wjfreJ/3cHilJCcTG/PyNBRsxqFv2rzTqFaWb1o8VuqlAliHGG
	zCaakSHd6DFhPdCWQUgAfvJgZvTrLQrS8vO7zF80ENtpnQ4ElLumPD6aFjhgnOlhW3XR
	2DpOhqxihWei+HHxK6xvDjVG3MYSZhTZ6ar7ygKLa1qEv7XXIYMYngxeal6/rDTKU4eA
	IzLSNLD7vGV93HfXclvyg7XKYxCMps1cwiGuhAUi1fL3nIlH/KY5cZloVC4OAApaFTrc
	GuhwnM1UQvwJuBNtrA/AbwXvdkUx6xbYOZHNV/pljuerOKcIvYiJC8u4bHJVz0Pp5Yuo
	xWDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=ylhDK3QQTTAjNqgi8rmaKeqqIfpUO1PtqBAqanC0qRM=;
	b=D9qmDSo8zi7dGDZSTYV9pAsTtd3zuM6hMW0II/l5QFrw+YsPsYJ8Rre94aXh8Zv/pV
	wzeS5NpQg5k7Tcgqbp/QplWP5EWb2eFUu9eW+Etf6vU9s7flw0bPPxjalPbyPM9ckEFk
	y0fu7SNGbZmqWkeSy3QHzX3E+L1vrQrqK2WmEhtxTTB64KdJYdDdsqWoGzSgSwXU1r1I
	RO0G8I6QiSXCbqSkAbu9uvvDe26EdPrRNcuo3BRZIZr1Ls9F1Z98GKqI1ctDdWy0VuK1
	VNXKslSzwYDSNTejQYyByd0hyPVwHmAnzAOx5PAVDkdshOvNzFbo2iruWQHvUtv6HslF
	pVBA==
X-Gm-Message-State: ALyK8tLHTr526rXuArQFaPfHA6Yav2n3IiC4r5mEeKIJ4ILat86/cX//wju6TborGSz4pVT9+hd8HIXN5ZD9Uw==
MIME-Version: 1.0
X-Received: by 10.28.223.132 with SMTP id w126mr1290438wmg.72.1464918194135;
	Thu, 02 Jun 2016 18:43:14 -0700 (PDT)
Received: by 10.194.150.13 with HTTP; Thu, 2 Jun 2016 18:43:14 -0700 (PDT)
In-Reply-To: <1464093100.9570.54.camel@linuxfoundation.org>
References: <5722E217.40108@mlbassoc.com>
	<2094217.rxhuCqpasC@peggleto-mobl.ger.corp.intel.com>
	<572330DA.4020009@mlbassoc.com>
	<4240230.kXqFvlgrOF@peggleto-mobl.ger.corp.intel.com>
	<1464093100.9570.54.camel@linuxfoundation.org>
Date: Thu, 2 Jun 2016 18:43:14 -0700
Message-ID: <CAJ86T=XUcwjKqsDy3qT9MrakfjA-XtRdH7ebTD0-eeghUKfH+g@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Gary Thomas <gary@mlbassoc.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Change in override behavior?
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
X-List-Received-Date: Fri, 03 Jun 2016 01:43:16 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 24, 2016 at 5:31 AM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> On Fri, 2016-04-29 at 22:09 +1200, Paul Eggleton wrote:
>> On Fri, 29 Apr 2016 12:00:58 Gary Thomas wrote:
>> > On 2016-04-29 11:51, Paul Eggleton wrote:
>> > > On Fri, 29 Apr 2016 09:24:23 Gary Thomas wrote:
>> > > > On 2016-04-29 09:16, Paul Eggleton wrote:
>> > > > Indeed, my machine names do have an upper case letter in them.
>> > > > Any suggestions for how to handle this (short of renaming
>> > > > everything
>> > > > which
>> > > > would be a HUGE chore)?
>> > >
>> > > It's no longer supported I'm afraid, BitBake's datastore is now
>> > > coded to
>> > > expect lowercase for all override values. You say it's a huge
>> > > chore but
>> > > surely a grep -l | xargs -n1 sed -i would do it?
>> >
>> > If I were to rename my target (MACHINE), I'd then have to go
>> > through
>> > and rename all of the directories in the recipes that hold machine
>> > customizations and there are quite a few of those.  Similarly I'd
>> > have to rework all the recipes that use the old names (with upper
>> > case
>> > letters) to the new ones.  Not impossible, but quite a lot of work.
>>
>> That is unfortunate, but again should be pretty easy to automate
>> (assuming
>> they are local of course and not proliferated across many users'
>> build
>> machines).
>>
>> > Short of actually renaming the target machines, I could add an
>> > additional
>> > override (in <MACHINE>.conf) that is lowercase only and update just
>> > the
>> > recipes to use that instead.
>> >
>> > By experimentation, I have found that XYZ_append_<MACHINE> seems to
>> > do
>> > the correct thing, even when <MACHINE> has upper case letters.
>> >  Maybe this
>> > is an oversight that will be fixed?
>>
>> I'm not sure - Richard?
>
> Sorry for the delay in getting to this. It does sound like there is a
> codepath in bitbake which is still recognising variables with mixed
> case. I took a quick look and think this change appears to address it:
>
> diff --git a/bitbake/lib/bb/data_smart.py b/bitbake/lib/bb/data_smart.py
> index 25c412c..ec6709f 100644
> --- a/bitbake/lib/bb/data_smart.py
> +++ b/bitbake/lib/bb/data_smart.py
> @@ -39,7 +39,7 @@ from bb.COW  import COWDictBase
>  logger = logging.getLogger("BitBake.Data")
>
>  __setvar_keyword__ = ["_append", "_prepend", "_remove"]
> -__setvar_regexp__ = re.compile('(?P<base>.*?)(?P<keyword>_append|_prepend|_remove)(_(?P<add>.*))?$')
> +__setvar_regexp__ = re.compile('(?P<base>.*?)(?P<keyword>_append|_prepend|_remove)(_(?P<add>[^A-Z]*))?$')
>  __expand_var_regexp__ = re.compile(r"\${[^{}@\n\t :]+}")
>  __expand_python_regexp__ = re.compile(r"\${@.+?}")

What about over-rides which contain only numbers?

It doesn't look like this change is going to filter them out, but they
haven't worked as regular over-rides since:

  http://git.openembedded.org/bitbake/commit/?id=c9b9443faa76ee7366b1400a56f826f3f9dec1be

(My personal preference for resolving that inconsistency would be to
re-enable and officially support over-rides containing only numbers).

>
> Cheers,
>
> Richard
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

