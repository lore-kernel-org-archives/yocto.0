Return-Path: <marc.ferland@gmail.com>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DC11E013D4
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 06:22:41 -0700 (PDT)
Received: by ggnk4 with SMTP id k4so384762ggn.35
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 06:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=HlZszI4alywAF92S0jb2QhSxkLP5nILKg/LKfQjZIJ8=;
	b=R8SitW+Zhwp7jfD7EGfw+vLhSMkMANpGuqwLhgMCE/kpBoFc+fNZwAFKmIXzxBXJ4w
	TFOCZtkmemz/amyF69YicR8wSC0nqqiKcZRhwRfCYxQznPJx//VSBWNFzWF31rcpBdZD
	J2MEj7akivHm9DJV/Le/hk3qbH4/bb4NyceDpMYLaaFHTwo46WUfA3czDhSRA2zr0nT4
	db60htw+owGpegDNr/6KDwFZzwFg6qvvkSXoXZWeZVkGkpIVXxtaq9uDqrbeerQBsFE0
	2AWkPHw/dXSjWM+A1pqTKU73IyL2JgKfOX9PWvPzX0m1LTJpAiC+Hv/ffknsbyc9m+7W
	I4EQ==
Received: by 10.50.202.8 with SMTP id ke8mr1320592igc.6.1342531360174;
	Tue, 17 Jul 2012 06:22:40 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id ua2sm19527015igb.7.2012.07.17.06.22.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 17 Jul 2012 06:22:31 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Tue, 17 Jul 2012 09:22:43 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
References: <87sjcrio8r.fsf@sonatest.com> <50050DB5.9060107@linux.intel.com>
Date: Tue, 17 Jul 2012 09:22:43 -0400
In-Reply-To: <50050DB5.9060107@linux.intel.com> (Laurentiu Palcu's message of
	"Tue, 17 Jul 2012 10:01:09 +0300")
Message-ID: <87ipdmikt8.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Re: xserver-xorg
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
X-List-Received-Date: Tue, 17 Jul 2012 13:22:41 -0000
Content-Type: text/plain

Laurentiu Palcu <laurentiu.palcu@linux.intel.com> writes:

> Hi Marc,
>
> Apparently, these tests were removed upstream. As we are going to
> upgrade xserver-xorg package to 1.12.3, those fixes will be included
> too. However, if you need the fix now, I attached the patch.
>

Just in case someone else stumbles on this issue, setting the preferred
version of xserver-xorg to 1.11.2 in the machine.conf also solves the
issue.

PREFERRED_VERSION_xserver-xorg ?= "1.11.2"

Marc

