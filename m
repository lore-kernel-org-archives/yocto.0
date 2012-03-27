Return-Path: <s.stirtzel@googlemail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D194E0137D
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2012 02:07:56 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so4848794wib.11
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2012 02:07:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Df1O57TSDTv0x0Ty2Cj7CY+qu2ingET8YPMZqFl4auw=;
	b=P0EvFR6CE5pHSWS0uuNLhlSvl0pOxT6djaT+OdlZQCcqNWLYXUz6c+Au0fOXZleTts
	kFK2zil4voYM7dTPYA0E8uujhXkt0H2USxDsUDn/Wx1y+bNnbp4PKpyb9kRyXo+YhuOF
	2R2SDmjEE0uhO77ho9b+jYJTaIUwQ1vlW+ruJyyxFoop6CN4phx8IrtKmeFeqjhRyWnM
	PO7L/dB+VL2twJ0cef6Lv1oO8PhopsvU24Xk969kop0LsioHFptcmo4A01Os3lLRDxPD
	B6juZARDSK7+bzZ1JEKYIlRiZLE2HJsz1soFkxPiZgDWtugOi7UBoI5/VkWJipzDKKb2
	/dLA==
MIME-Version: 1.0
Received: by 10.180.80.9 with SMTP id n9mr25746112wix.4.1332839276041; Tue, 27
	Mar 2012 02:07:56 -0700 (PDT)
Received: by 10.223.97.77 with HTTP; Tue, 27 Mar 2012 02:07:55 -0700 (PDT)
In-Reply-To: <9948106.Jx6FOq70hB@helios>
References: <CAGiJk9fZ1-KCiDuT3n9n_WHqNN9Gyj_UyPJ0Ktx2N=4F7Rv1cw@mail.gmail.com>
	<9948106.Jx6FOq70hB@helios>
Date: Tue, 27 Mar 2012 11:07:55 +0200
Message-ID: <CAGiJk9drrBpokvymehivFzx=q_VSUudzeq-oxLBr4FiwrqCTjA@mail.gmail.com>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Support of meta-kde for Poky
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
X-List-Received-Date: Tue, 27 Mar 2012 09:07:57 -0000
Content-Type: text/plain; charset=UTF-8

2012/3/26 Paul Eggleton <paul.eggleton@linux.intel.com>:
> On Monday 26 March 2012 14:55:40 Samuel Stirtzel wrote:
>> the development of meta-kde has come to a point where kde-applications
>> can be tested (and maybe used).
>>
>> Status of meta-kde:
>> Most common applications work, for example:
>> Calligra (not all of the toolkit), Kate, KCalc, Konqueror, Kwin &
>> Kwin_gles (KDE window manager), Okular and the applications from
>> KDE-baseapps.
>>
>> Plasma Active (and Desktop) do not work correctly, but I'm working on it.
>> Plasma Netbook seems to work, but it needs more testing.
>>
>>
>> Involving the community:
>> As the development of meta-kde advanced to a point where developers
>> can use the layer to port KDE applications.
>> I'd like to invite others to test the layer, port their favorite KDE
>> applications and express their opinions about the current status.
>> Feel free to ask questions and suggest applications to be ported.
>
> Great work! I will give it a try over the next few days and let you know how I
> get on. (Sorry I know I promised to do this some weeks ago.)
>
>> meta-kde has no mailing list, so I'm looking for a list to host the
>> discussion, any suggestions?
>
> Probably just the oe-devel list - if the volume of commits gets too high then
> we can look at splitting off a separate one.

Do I need an official statement, and from whom can I get it in case?

>
>> Current issues with Poky:
>> The giflib recipe is not contained in Poky.
>> Is this based on a design decision, or just because no one needs it?
>
> It's based upon nothing in OE-Core needing it. (The poky repository is just
> OE-Core + bitbake + meta-yocto + yocto-docs).
>
>> As a meta-kde developer I don't want to limit the testing of meta-kde.
>
> It should be OK to use meta-oe with Poky, and therefore meta-kde can depend
> upon it. However we are aware that meta-oe overlays a bunch of recipes that
> ideally it should not. We're working (albeit slowly) to address these.
>
> An alternative in the meantime would be to add giflib to meta-kde, this will do
> no significant harm if it is already available in another layer (and giflib
> doesn't look like it has really changed since 2008, so I don't think it will
> be much of a maintenance burden).

My assumption is that the initial request, that started this
discussion, was made with the idea in mind not to include any
"overhead" from meta-oe.
But TBH I don't know exactly.
Too bad it isn't possible to include only a subset of recipes from a layer..
But it just looks like layers don't work like that.

>
> As an aside it would be interesting to know why KDE requires additional gif
> support from giflib when gif loading is already built into Qt (and we do enable
> it in our Qt recipes).

The KDE gifloader code is from 2004.
It looks like this was a possible solution and it worked, so they kept it.
But since it is KHTML depending on giflib, KDE could replace it with
Webkit in the "future" (this is really old news).

>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre



-- 
Regards
Samuel

