Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2745E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 11:01:40 -0700 (PDT)
Received: by eekb45 with SMTP id b45so611418eek.35
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 11:01:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=r6r4l35ompIANcC9oL9Yb/X5hjR/cVl3W5FXdS6zAyo=;
	b=zY98Mt/lZPzGAnKiOcrMUyoudVHHYNgTdbvxUUh4V6CwfTNrUpWWga3IIXe8J6vp/g
	9X4kYW9LVg1vDKTqYycvtFWkwMFeUmoK3v3YFyHt6VMZkPseWe89+Ryewo3bGaafLqCs
	Y/OT2K9k0x/o+9BU1X0PgjQv9KGzkR/u5TOWMGSseZSD74y5NSYz//O9RHmHtPxeEwyG
	vEHmtB8rrmuSoryeov3KVZg4HPKJWEaBgMECWmAXSufHbhbcyWmFG7nGrqRG9vKsd8gX
	G0trSLGSzN9oVs3NAESrVUWZoEPgDUbe5APLrdF9i5JtnRMvI9jRttdoYDLwIMBsnnmn
	Qc4A==
Received: by 10.14.37.132 with SMTP id y4mr3982805eea.142.1340820099493; Wed,
	27 Jun 2012 11:01:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Wed, 27 Jun 2012 11:01:09 -0700 (PDT)
In-Reply-To: <1849604.yJORxvhzRh@helios>
References: <20317992.tBZ1YY1I5v@helios> <4427881.ZDyEgbkgV4@helios>
	<4FEB378C.9050307@communistcode.co.uk> <1849604.yJORxvhzRh@helios>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Jun 2012 11:01:09 -0700
Message-ID: <CAMKF1srYsORnfcvaTh5H3LEf=rGWHv3JWPpvsFpW=8FjuwWaKg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: LAMP layer
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
X-List-Received-Date: Wed, 27 Jun 2012 18:01:41 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 27, 2012 at 9:49 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
>
> It's something I've been discussing with Joe MacDonald already. I think it's
> an either-or situation - the recipes will not need to be in both layers.
> People who want recipes from either or both layers should be able to include
> the layers as needed.

from my experience of deploying layers for others. Its quite a talk
for folks to get it and on top if you have overlapping recipes they
are not making life any
easier. if we start using this kind of method, it sure will fume into
chaos. I think layers should have some wholeness to them but at the
same time they should
be leveraging other layers to get functionality they need.

