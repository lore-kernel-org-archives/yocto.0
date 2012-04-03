Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01183E0070C
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 14:12:48 -0700 (PDT)
Received: by dajx4 with SMTP id x4so158064daj.28
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 14:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=cKRnis6I9IXhDbwc+L2QGawcU4rJBNGwxi6ItYsecqw=;
	b=LVr1E7Zy1cnrWGUE96+Azwqkby9cvZ2T3gZv72TJa8H4b8Yi1tAnpEFlbVzVFhX4zV
	2HyjivnLi4mPlTvXrmlAsFW+dcIOM3PAtv3HTqFh9ztpxgvfbLCDi6hLCDMVkYjIoMRY
	l8E9az0p3UWHRdYEvIS/pdXcf4z67Pp0I7GQtbUy21FW3T1iSJ8kUlTO+du8r0Dw/PF/
	jcK4QhUmB9NnVlVBYoUgYeGUWgUrVijYUdTk29a2kF09kTAlhVuxxbVkuNkfpsvKYsZP
	oLMpkkWBTesMARt1fDNCbYwHW1rSm8Y2KclsruMnZj4NLNu3E7XenDtPHwfAuA1Vf/GK
	v9PA==
MIME-Version: 1.0
Received: by 10.68.211.135 with SMTP id nc7mr31906429pbc.113.1333487568752;
	Tue, 03 Apr 2012 14:12:48 -0700 (PDT)
Received: by 10.68.20.134 with HTTP; Tue, 3 Apr 2012 14:12:48 -0700 (PDT)
In-Reply-To: <4F7B61B2.9050208@mlbassoc.com>
References: <4F68A6F6.8080900@linux.intel.com>
	<CAMKF1spVh7VR12eaUdbLQ5rCzT0ifziTWtFBgsLW7Or2+92XTw@mail.gmail.com>
	<4F7461AC.7050202@linux.intel.com> <2917058.nSOBk0kvaU@helios>
	<CAMKF1sotGuDMJfb1xtxjVug6zL7Pr4MRwNpOVuEFMw-hdxQfRA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AEA5A6@ORSMSX101.amr.corp.intel.com>
	<CADzUK1LHq12OB=gigH37empg5cr6amjozt_fPS2FQ5+v4ub9YA@mail.gmail.com>
	<7E680CB2A76BB8438D08CF13C09FC53A46AF089A@ORSMSX101.amr.corp.intel.com>
	<4F7B61B2.9050208@mlbassoc.com>
Date: Tue, 3 Apr 2012 17:12:48 -0400
Message-ID: <CADzUK1JrrBZu=gydnRE=m5sMp-U3qF32J0FzwSdOhAoq+E1Mag@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to change the startup application
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
X-List-Received-Date: Tue, 03 Apr 2012 21:12:49 -0000
Content-Type: text/plain; charset=ISO-8859-1

>> Hi Autif, thanks a lot for providing the answer here. Since no one is
>> showing any objections here, I updated the wiki page with your answer
>> (https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_change_and_add_startup).
>> Please let me know if there is any suggestions or concerns.
>
>
> This rather narrow answer is only useful if you are running a MatchBox
> desktop.
> There are many other deployment scenarios which would require a different
> approach.

That is true.

However, All over the Yocto Project's website - the common bitbake
commands for an image is either core-image-minimal or core-image-sato.
(core-image-sato-sdk also uses matchbox).

minimal does not start any app - not counting daemons and gettys

If the user chooses another window manager - they are/should be on their own.

I just assumed that we are not trying to document the init process
(bootloader, kernel, initrd, inittab, init.d etc)

We are trying to answer a less experienced developer to replace the
default window manager with their own app

There is a chance that I am not aware of the default application being
other than matchbox. Can you please provide me some counter example?

