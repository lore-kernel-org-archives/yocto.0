Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA57DE0027F
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 12:12:47 -0700 (PDT)
Received: by lbcs4 with SMTP id s4so779229lbc.35
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 12:12:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=dZS0np1sTEYKZuoiS3xE43MK7kLsd+/bhXvvtjl+jOE=;
	b=tIMqTriNNZ+Li+TVbohDPfA1EhfoVEYDobe+qYev1LOk8GwvRv1+213F8osoPedlXJ
	pJB2edqhUX1uQc990ZZjsjaHkzEvizAK08pdNzrx+7uhnfAga7tD+nw4m9yGoqx3Xl8z
	BhUU05kSadRv3/JOpFe2WUegpggxu4AQPi3iZTaXXeHdzZ3bC7Se0PYYsRbrz2xr6Ews
	nhlelAtUlRzwE05J3sn3ZerxT8zneWLWIO5nBwGapkRBYEGpaacWcmItEzbdFVxabuXh
	h0Ui9i47Cg4hRfS6fOhffqfds1mYYNBFkGyK7rz9GgzjSBwjDpzZ6fbmKg3Q0Pw5/84l
	xYcw==
MIME-Version: 1.0
Received: by 10.112.37.105 with SMTP id x9mr3018179lbj.69.1348859564517; Fri,
	28 Sep 2012 12:12:44 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Fri, 28 Sep 2012 12:12:44 -0700 (PDT)
In-Reply-To: <31384487.oKEco2inpj@helios>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
	<31384487.oKEco2inpj@helios>
Date: Fri, 28 Sep 2012 15:12:44 -0400
Message-ID: <CAHUNapR6-jrh86pzB2HNPP+9njYqTRKJFNMT-SV4OupTPE6-NQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 19:12:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Sep 28, 2012 at 2:34 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Friday 28 September 2012 11:27:37 Rudolf Streif wrote:
>> Unfortunately, changing variables like P, PN, PV, PR etc.
>> may cause some pain. If a transition is what the broader community would
>> like to achieve then a period where old and new variables can be used
>> interchangeably (if possible) would be the way to go.
>
> I'm not sure there's a huge amount to be gained by doing this when weighed
> against the cost - it would certainly cause a massive amount of churn, with
> the potential for problems with layer interaction where one layer has done the
> big rename and another that bbappends recipes in the first hasn't.

Not that it matters in the grand scheme of things, but I would be in
favour of switching the variable names. Consistency is as consistency
does; if there's any hope people can stop confusing "poky" for
"yocto", "yocto" with "the yocto project", and "packages" for
"recipes" then it needs to be pervasively correct.

Provided the Yocto Project continues to grow, changes like this only
get harder with time, and if the project gets bigger (i.e. more uses)
the confusion only spreads further the longer it is left unchecked.

In any case I applaud all the efforts to standardize the wording,
especially in the documentation. As such I think it would be quite
helpful to have the proposed historical note included. Hopefully, the
sooner newcomers are aware of the issue, the less they're likely to
trip up over it.

