Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E2F3E0136A
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 08:16:58 -0800 (PST)
Received: by dadp13 with SMTP id p13so7203516dad.35
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2012 08:16:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=dTXlcMC0aYyPWmbdj8cNeJcFZhYz3I3L59BiaVayjOw=;
	b=N6VTxddYutM6hvAwIYbthZ1UA4bBzu8KQZ6DFxFLA8W2QCljU5YZUGcooqfcGHfrOQ
	RrJuMWmNNl6gqHALMLZ/FieFjMIfXcv12kRZU7VtR6AoZstiRFDryPEtMW0cl/GWCMyX
	+Lr/pSZw4C5CvZPLCrfFi+hh+em1086TE8Xrk=
MIME-Version: 1.0
Received: by 10.68.125.233 with SMTP id mt9mr15732972pbb.119.1328631417032;
	Tue, 07 Feb 2012 08:16:57 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Tue, 7 Feb 2012 08:16:57 -0800 (PST)
In-Reply-To: <CANFv2EmHChy+MB-Bnd01QTotUk86s-17XZy=7wOfXRY_cWg-KA@mail.gmail.com>
References: <CADzUK1L76iErCF25c3jqSaz_040gzRHcXEb7fKBhr5HMtCYkAg@mail.gmail.com>
	<1328629778.2670.7.camel@elmorro>
	<CANFv2EmHChy+MB-Bnd01QTotUk86s-17XZy=7wOfXRY_cWg-KA@mail.gmail.com>
Date: Tue, 7 Feb 2012 11:16:57 -0500
Message-ID: <CADzUK1JaDgncJsitTb=6zHsxef2ZAC3cOrzyJVqOVVsRzMjpcw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: James Abernathy <jfabernathy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Unable to fetch file://lib for package emgd in yoctyo 1.2 (aka M2)
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
X-List-Received-Date: Tue, 07 Feb 2012 16:16:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

>> > I am bitbaking core image sato for machine corwnbay (with the emgd
>> > driver) and the emgd-driver-bin recipe seems to fail.
>> >
>> > Here is the error. I searched the archives, but could not find anything.
>> >
>> > Please advise.
>>
>> It looks like the problem may be forgetting to carry out the steps in
>> section 'II. Special notes for building the meta-crownbay BSP layer' in
>> the README.
>>
>> Note that this is no longer necessary if you use master - the
>> emgd-driver-bin recipe has been upgraded to do the steps there
>> automatically, which is now possible because it uses the LICENSE_FLAGS,
>> but which does mean you need to set the LICENSE_FLAGS_WHITELIST as
>> mentioned in the new README for crownbay in master.
>
> I can confirm that using the master branch is the way to go to make this
> easy.
> I documented my test of it at :
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_setup_Intel.C2.AE_Atom.E2.84.A2_Processor_E6xx_based_system_for_media_playback.3F
>

Confirmed - after following all the steps in section II of the README
in meta-intel/meta-crownbay - the build worked.

