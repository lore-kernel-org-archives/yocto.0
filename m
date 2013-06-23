Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ee0-f51.google.com (mail-ee0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B9E6E014F1
	for <yocto@yoctoproject.org>; Sat, 22 Jun 2013 20:16:55 -0700 (PDT)
Received: by mail-ee0-f51.google.com with SMTP id e52so5221135eek.38
	for <yocto@yoctoproject.org>; Sat, 22 Jun 2013 20:16:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=WAgXJUCvFpbmxmzgYdrf/nHJ2OKuKridRaziSHXGrl8=;
	b=JDsVRsdCdi+0BI//bj+p9wPby6aGIi9z/U/fE9DJu9Giw5/NRcHA4EPhYMP6MhxOjW
	JGwYDGDD4lu10jye6obpQrhhdna/60P/PzQ8a7zITbUXHJ+n94oyW1ZCd9o8XIIphuOW
	Kww9TRSNYZuZ4kgQkIutqpdnFEUEQep+lY/dwyKdLtR8eeaGOQVoCKwtYRI7Xk/JTba0
	gR18WMBxSkQGLVOupA79dPA2rpcmLENnwQvb05+HgxX8AuW5w86I+5XlATh6az93MEea
	iGPbP6rBRW6qZMLhFN/kjawMPSg4DEZo3dlyeTCDPBvZaiX5GhhE2fyIrBwCnOWHHZwi
	TsoQ==
MIME-Version: 1.0
X-Received: by 10.14.0.4 with SMTP id 4mr18604101eea.68.1371957414093; Sat, 22
	Jun 2013 20:16:54 -0700 (PDT)
Received: by 10.14.117.65 with HTTP; Sat, 22 Jun 2013 20:16:53 -0700 (PDT)
In-Reply-To: <000001ce6de8$70639de0$512ad9a0$@annabooks.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
Date: Sat, 22 Jun 2013 23:16:53 -0400
Message-ID: <CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQn4Wa2HDBHXkxHXi32T9X3Q5NT/E1OznGA9Wdqb/42S6pRK2YDq9xuiFNi9OA/mZ2PDqayV
Subject: Re: Documenting YP Development Environment in more detail
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 23 Jun 2013 03:16:57 -0000
Content-Type: text/plain; charset=ISO-8859-1

I think this is an excellent project and am excited to see it coming together.

Are the meetings open for participation? I can't guarantee that I'd be
available when you run them, but I wouldn't mind listening in if I am.

If I were writing a book about Yocto/OE, in the first chapter I would
have the readers build their own filesystem/kernel from scratch (I
can't decide if I would also have them build their own cross-compiler
from scratch or if I'd cheat and let them use crosstool-NG). I think a
lot of the variables and tweaks involved in using Yocto/OE, and
certainly the steps Yocto/OE follows while doing its work, would be
more obvious to someone who has done what Yocto/OE is doing at least
once by hand.

I'm not suggesting any documentation effort should go down to the "do
it yourself from first principles at least once" level; but on the
other hand I think many people would understand Yocto/OE better if
they had that knowledge.

