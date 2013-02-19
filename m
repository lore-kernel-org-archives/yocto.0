Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id E3A3BE00515
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 02:31:55 -0800 (PST)
Received: by mail-wi0-f178.google.com with SMTP id o1so4589174wic.11
	for <yocto@yoctoproject.org>; Tue, 19 Feb 2013 02:31:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=HeeJFponXg/c+mMGi6rR61a23oDVRqpZ5MlXSSSBbts=;
	b=l8N8Mu7nAMDilnwWu+0f9gsbA9r5wb+odVRbv7byO1EFOMHa8FrYhi9XbiHhQ58oSM
	5d3APYDb4ojoWeocpQf77epxFAMumEObS+P9rUUE8EMm7vino2uEZkqDSyRpHh/+Rloz
	PwcYPgbyc3LK/HwhcHakbLq1mdJHP8+pdBjYEM3asnt0CF64NMHdnpfI0VJZVrCfJCqr
	aPGzRSxukY/lwDxSHxTKyy6xKIW56nndHmseUTSQndO+Ku+Z51sE/NUjG7yk4WaB7rr5
	5fTCoX9sFO2Upqd4rRuZjwj5CJjyOyiI/VtvjJBJhb9d83Tt1cu/cOHfOGtHuXmUFV2a
	/k6Q==
MIME-Version: 1.0
X-Received: by 10.180.77.9 with SMTP id o9mr26284658wiw.16.1361269903022; Tue,
	19 Feb 2013 02:31:43 -0800 (PST)
Received: by 10.194.32.70 with HTTP; Tue, 19 Feb 2013 02:31:42 -0800 (PST)
In-Reply-To: <1361251862.1868.3.camel@empanada>
References: <1360981747.1691.29.camel@empanada>
	<CAHUNapT64nNKXw5Hb0NFMn2BOxV60qTZZLszgFgDD20-RpiTNw@mail.gmail.com>
	<1361251862.1868.3.camel@empanada>
Date: Tue, 19 Feb 2013 05:31:42 -0500
Message-ID: <CAHUNapT3DsWwPDJC9mthNRjA0idDLHBUJxM6AGV41QaNVOodHw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Tue, 19 Feb 2013 10:31:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Feb 19, 2013 at 12:31 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> So when you say it doesn't work, you mean the module autoload didn't
> work, but everything else did?

Yes, exactly.

> Did you do the 'bump the PR' step after
> you uncommmented the module autoload statement?

Yes, I even bumped it twice :-) But even if I forgot to bump the PR
number, when I deleted tmp/sstate/etc and started a fresh build, it
should have worked then?

> If that's not it, then I don't know what you say - I tested it with
> danny and it worked fine for me.  I can try running through it again to
> verify again, but it really should work...

Thanks for your comments. I'll guess I'll have to try it all again.
Maybe I somehow checked out the wrong version. Like I said, performing
the same steps against yesterday's master worked completely as
expected.

