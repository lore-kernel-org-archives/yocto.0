Return-Path: <marc.ferland@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCE46E011AF
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 11:20:13 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id n41so6160634qco.35
	for <yocto@yoctoproject.org>; Tue, 16 Oct 2012 11:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=8bjpvsQv7ovev48TMsGFyBlb42Lf+78VRUCfDvLLtGQ=;
	b=rItL4icbNJchQof844zy602CJbR2GCJHCwmj6gcRu9KwTdtBv2eIcaF8TcgmbedlJ/
	5k5B/I+fQMrNFaIs23lbepJa/l1GihSkLwkcGkEZZQuvtigChs0XiPrgxxovkhFT9k+Q
	7KAoQpl/DefRYgbcrgtggWaRKo5HfcDWR1EKnyOZfqhC8wYB6jbTrQnLwTmOjce1Fqn0
	rSLSzWn5jxXHIb2QiwAN/B7ydg5LJmx9F+AudQm+iFG7idsvwCFT7Ut7eVziw6SG5kB7
	KA4xZbmZCGXd1/9/nGpx0bh+i3z4AgxAKaPKdQMuB2zBMtUHYETFZOp24yr1wLtrvFSr
	crFA==
Received: by 10.224.58.134 with SMTP id g6mr27595750qah.40.1350411613132;
	Tue, 16 Oct 2012 11:20:13 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id dj6sm8149242qab.3.2012.10.16.11.20.10
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 16 Oct 2012 11:20:12 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 16 Oct 2012 14:20:10 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <DDDB9E6645DE24488B8485B41A051F471D9618A1@Mercury.usurf.usu.edu>
	<1643755.JoZOaIgQYA@helios>
Date: Tue, 16 Oct 2012 14:20:10 -0400
In-Reply-To: <1643755.JoZOaIgQYA@helios> (Paul Eggleton's message of "Tue, 16
	Oct 2012 17:06:35 +0100")
Message-ID: <874nlui8it.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: lm-sensors not available as a package?
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
X-List-Received-Date: Tue, 16 Oct 2012 18:20:14 -0000
Content-Type: text/plain

Paul Eggleton <paul.eggleton@linux.intel.com> writes:

> On Tuesday 16 October 2012 16:00:01 Jonathan Haws wrote:
>> I would be surprised if a recipe for lm-sensors has not already been
>> created, however I cannot find one.  Can someone point me in the right
>> direction?
>> 
>> All I can find is a sysstat package that I can include via
>> IMAGE_INSTALL_append, however I cannot see how I can get the same
>> information out of it that lm-sensors gives me.
>> 
>> Has anyone got lm-sensors included in their image?  If so, can you share the
>> recipe?
>
> Unless anyone else pipes up, my local index suggests that this is something 
> that hasn't yet been brought up-to-date from OE-Classic.
>
> http://git.openembedded.org/openembedded/tree/recipes/lm_sensors
>
> Assuming nothing else is available you should be able to use this as a base. 
> There is a brief guide on the main things that need to be changed when 
> updating a recipe from OE-Classic here:
>
> http://www.openembedded.org/wiki/Migrating_metadata_to_OE-Core
>
> If you do come up with an updated recipe we'd love to have it added to meta-oe 
> or some other layer ;)
>
Paul,

In what section should the lmsensors recipe be added? Would 'recipe-bsp'
be ok?

Regards,

Marc

