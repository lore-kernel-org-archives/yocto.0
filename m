Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id ACD99E0144A
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2013 17:54:24 -0800 (PST)
Received: by mail-we0-f175.google.com with SMTP id x8so4414300wey.34
	for <yocto@yoctoproject.org>; Sun, 17 Feb 2013 17:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=QIh0+fNZOdKVQgxXPVFMZvAPNS+rpVgkwRim0pGk69Y=;
	b=LFFmT9f8yK/DutE39jbLpQtkrdc+KHSW3IrKoFHBz4WGl/fnJjGdGelcUoiOy3EMzx
	ZrxuntFgbz4QMxJK29zPZyV9lRSvVrsuvvq0OAVmMt7MPgBg6rqEtYJO39vlKdi0DI6F
	gq7vCKwUv0tCJCAOVGGIsGwKDFHzU3AeKJrhlO4SQI4xfFZ16y1ydRd1StDhPm89hVjD
	lTwXssDL0bqS2KWhXZ0dNKIrXBaZz7htt76u8pxSSU9hw155WgPfRuqKJuyN8WFaBINU
	j82Bpa8SsJwVHwpj9A7Hn+fAQSa01JxZAKivqpCbi11Sf1/yjnzQoofCV8FeJEr9s2CK
	n9sw==
MIME-Version: 1.0
X-Received: by 10.180.75.177 with SMTP id d17mr15486212wiw.16.1361152462646;
	Sun, 17 Feb 2013 17:54:22 -0800 (PST)
Received: by 10.194.36.228 with HTTP; Sun, 17 Feb 2013 17:54:22 -0800 (PST)
In-Reply-To: <1361142932.1691.55.camel@empanada>
References: <CAHUNapQTq1wsLtJ94dH9n8W40gi4hYwbsLDRDyAZBMtiT5jvQA@mail.gmail.com>
	<1361142932.1691.55.camel@empanada>
Date: Sun, 17 Feb 2013 20:54:22 -0500
Message-ID: <CAHUNapSjmPOsPzWHcjv3O+FPi0_8KV5WzN=gvx4F01oY-QGgvw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel menuconfig unusable Was: Updated Yocto Hands-on Kernel Lab available
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
X-List-Received-Date: Mon, 18 Feb 2013 01:54:25 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Feb 17, 2013 at 6:15 PM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> I guess a bug
> should be opened for it.

I have created https://bugzilla.yoctoproject.org/show_bug.cgi?id=3898
in the hope it doesn't get dropped again.

