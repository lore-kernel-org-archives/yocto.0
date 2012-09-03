Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-vb0-f48.google.com (mail-vb0-f48.google.com
	[209.85.212.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF078E01464
	for <yocto@yoctoproject.org>; Mon,  3 Sep 2012 14:08:58 -0700 (PDT)
Received: by vbme21 with SMTP id e21so7179633vbm.35
	for <yocto@yoctoproject.org>; Mon, 03 Sep 2012 14:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=r+WtsOCxqTNL8bnhC0p5G/ushP3iMG6wy+2BmrbzKDM=;
	b=dFTBEl1Oi0tRQhX/EiI5rFvlAoRkZuhFG96j/NOzD+KD57gtoifwDpKjmAtMj837X7
	W8t092Sop4nBMDvXw3JrRgQyT08Sb1HmaeQyu1GHP+lFTJ6VOhE9UKpeNEWpIltTkJfz
	gd8BSE/wBHUVcgMLJg54wZlkULNGv76l4d5VPJyiZiREuX+XAUdvTr1Oawv+9MgxT++o
	5w9s5kbBefqWyar6/00/9M+i0+Ncxj03Ks9MyFmk6gTJcC70zmDwZm5pzXPKwSInjU9T
	OAS4HkMeuGTI5f8vusX5JKdlLgaMfbX7IWevSunXsgNoKURsXjP3/X2np3Dp7pbOdT0P
	XpDw==
MIME-Version: 1.0
Received: by 10.52.90.104 with SMTP id bv8mr10768615vdb.102.1346706524074;
	Mon, 03 Sep 2012 14:08:44 -0700 (PDT)
Received: by 10.52.69.163 with HTTP; Mon, 3 Sep 2012 14:08:44 -0700 (PDT)
In-Reply-To: <50451947.2090401@r-finger.com>
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
Date: Mon, 3 Sep 2012 17:08:44 -0400
Message-ID: <CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
Cc: yocto@yoctoproject.org
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Mon, 03 Sep 2012 21:08:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Sep 3, 2012 at 4:55 PM, Tomas Frydrych
<tf+lists.yocto@r-finger.com> wrote:
> Hi,
>
> On 03/09/12 21:15, Bruce Ashfield wrote:
>> On Mon, Sep 3, 2012 at 4:06 PM, Tomas Frydrych
>> So we fix the configuration of the layers ..
>
> I expect this is not actually that trivial. I think the only way to do
> this is properly is for the layer priorities to be respected by all
> files in the layer, not just the bb files. No idea how involved that
> change would be, or what the side effects would be.

This is a very common layering scenario, so if the system as a whole can't
handle it, that's a bigger problem. If two layers can't have a board with the
same name, and there's no way for them to work together without tweaking
multiple files in the layer, I'd say that's a problem and one that should
be fixed. Otherwise, a OSV (or someone else) can never hope to extend
anything from a yocto layer.

That being said, taking a step back, what are you trying to get out of
meta-yocto in this scenario ? oe-core + meta-ti is probably what you
should be using.

>
>
>> and meta-ti was supposed to work properly with meta-yocto last I heard.
>
> If properly means 'out of the box', then no; the two layers can be made
> to work together, but it's fairly clear that nobody comprehensively
> tests that combination at the moment.

see above. I misspoke. I don't think there's an intent to make meta-yocto
and meta-ti work together, but oe-core + meta-ti, that's the combo that
makes sense.

>
>
>> The meta-yocto layer beagleboard configuration is a hardware ARM reference, that
>> uses the linux-yocto kernel (policy and version) and is used for the
>> project QA on hardware.
>
> I am all for QA, but in this instance your QA procedure breaks things
> for the end user. Could you not just call it something else, e.g.,
> yocto-qa-arm-reference.conf?

Hmmm. I'd say no to that, because the system should handle something like this,
and dancing around the real problem with varying names of BSPs outside of the
name of the board they actually support, isn't a solution.

Cheers,

Bruce

>
> Tomas
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

