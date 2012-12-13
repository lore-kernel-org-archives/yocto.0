Return-Path: <twoerner@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9EB5E006B4
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:26:30 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so2258374lah.35
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 14:26:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=4KAqxVvzjWQ4rIQO++sr8zXw9MuhSiu52ynpOw9rdwQ=;
	b=iiP2Hc6hdMJJPHf/zK1HBcPUKn4eSVTpJH92jrsChTuqJQYqNkaFVQYOXyKBUvhRlx
	dg6cWVwrNYpONM7jpQQobZ8TO5Gfs0xb3uIXLu+Ak0kkO9ogUfJhdtmZmpHNnEWsQHsZ
	ccE/OGFomWKA1hHnTQymxB8orzMSJgpgXKcRAyJ6rT2uemxfIpqu+v3dy0KPtByhETDQ
	bDHTemny6VseK0O2JOFnszIrEaMDGeebiZqegU/7vDIn+0JyiDf65KvIXG/p1J8W7j4T
	KBxvILxiR/ncC1SpQwZB0b0akymislQ9+TnNdlCKlWr19fYIBnNW6N4JUdktiP5N6G1v
	O4aw==
MIME-Version: 1.0
Received: by 10.112.100.195 with SMTP id fa3mr1564570lbb.38.1355437589652;
	Thu, 13 Dec 2012 14:26:29 -0800 (PST)
Received: by 10.112.101.135 with HTTP; Thu, 13 Dec 2012 14:26:29 -0800 (PST)
In-Reply-To: <CAHUNapQYPx3Aq+mPJm3=g+U3HHVO-PMv5hb3-Xw2Wn_NfyWeQw@mail.gmail.com>
References: <20121202174723.GA91088@gmail.com>
	<CAHUNapQYPx3Aq+mPJm3=g+U3HHVO-PMv5hb3-Xw2Wn_NfyWeQw@mail.gmail.com>
Date: Thu, 13 Dec 2012 17:26:29 -0500
Message-ID: <CAHUNapRXy4OLNLQqVR=a+xpWrsPE1z+stBR9Rq5rP+NQsVTaUA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: =?ISO-8859-1?Q?Eren_T=FCrkay?= <eren@hambedded.org>
Cc: Yocto Discussion List <yocto@yoctoproject.org>
Subject: Re: [Draft] From Bitbake Hello World To an Image
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
X-List-Received-Date: Thu, 13 Dec 2012 22:26:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

I'm not sure if there's something about my system that is different
than what you expect, but I had to delete my 'tmp' folder before
invoking './bin/bitbake firstrecipe -vDD' after inheriting the
"autotool" versions in order to get the new, overridden tasks to run
(since there's no 'clean' tasks).

