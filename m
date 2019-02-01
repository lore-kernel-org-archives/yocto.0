Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57116E00D30; Fri,  1 Feb 2019 00:32:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09EA7E00D16
	for <yocto@yoctoproject.org>; Fri,  1 Feb 2019 00:32:14 -0800 (PST)
Received: by mail-qt1-f174.google.com with SMTP id k12so6526312qtf.7
	for <yocto@yoctoproject.org>; Fri, 01 Feb 2019 00:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=FS4RYllqrSj8t/g7DiMa8fz56MfkpQVs9C3gDcCacKU=;
	b=vA9b5S9iLJTAfTJDaKpPceyHmuRBgxUJ1/zQojyl+q4NoZ+UkkxWSQdFWJGX2MGuDj
	Wexi8WR+FkwvWErpsnDXK9HXx2BtVryWgsSGgTh9bNxELNlUpn7UmOX4CQa56VoTBylL
	ANDBeBddHJ879tKRJ+NT+EW9JlRAfnk4HAafwdJUlgK362lIFoEjcJ96l9QA+xCptKJd
	PGzcjwc6bbf2iwrZP0uOrYiuVw3uH+VsvlgSAhg6YGA47C7eHZ0YQDPCzfakOHdALTUo
	gxeBg4kUe0bETr6pFm+EokKZKvlSDEXu9JTImYcFLU3ot3IJhY7dAmiUt2uL5EeQQTZ7
	XkSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=FS4RYllqrSj8t/g7DiMa8fz56MfkpQVs9C3gDcCacKU=;
	b=bhPIXBDh1/mCSAXLDPdzaw6vUblv3E3MBD5qRBrZ2RksJKTURyZK1iiTAkq19j+oC5
	zNQ9pZahrOK5AB1iXz51xre7ZN987F5qApfB92f7PPBbiXpWKeAFXle0W5C4qnmnzla1
	1oCBh3lgMzGLYsOcVxcBThVlxDrWRRqtSsiOoirshl89oiXWPASFsrfYsRpRM0cZSi4m
	dy6crBS0SYeLQ4Igct+ndsAzVlDhCstcLW+UNcos19oLM6zrP///rYu8LLgsoCTEioR8
	ZEMAEAh8cxOPRzlkR9oSRH3uSwHWpZ6vAodiUo4L9R+IJO++jifjYlRrGmg4UFK18QQL
	WtNw==
X-Gm-Message-State: AJcUukcxQIegGFSQaRobSPSSnQ2YFrLWp79A9qJ+/CbXeNd7XjMBjmej
	WMqsfP+kH8fsAiwY7UD7Yl4Ltkylsj4pAyHLkeo=
X-Google-Smtp-Source: ALg8bN4U4gQiiouNoefieb2thd3phaFBvIiyEF6GuOW3GJkwjKBbKHXQq0w5oBuuSqq70xB3VzkHCDjyUvXhcDgSN9U=
X-Received: by 2002:ac8:543:: with SMTP id c3mr38001433qth.34.1549009934368;
	Fri, 01 Feb 2019 00:32:14 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com>
	<1531996869.3103.16.camel@genivi.org>
	<CAGAf8LxRFrB+LboH7_odfmYQZBdAOM3c+4diJ6XW4rTgoQoEiA@mail.gmail.com>
	<CAGAf8Lw0sQ10zoGLLW=o7ziYOaARKix=++=Tt_wnB4cYmHXHfw@mail.gmail.com>
	<1532004653.3103.60.camel@genivi.org>
In-Reply-To: <1532004653.3103.60.camel@genivi.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Fri, 1 Feb 2019 09:32:02 +0100
Message-ID: <CAGAf8LypQqAL=uRDOGEcno+wFgG1zdsK+71dX_5C+HZC49AJVQ@mail.gmail.com>
To: Gunnar Andersson <gandersson@genivi.org>
Cc: Yocto Project <yocto@yoctoproject.org>, Mirza Krak <mirza.krak@gmail.com>
Subject: Re: cannelloni.bb (Was: [Chicken and Egg problem] Defining RDEPENDS of the package itself)
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
X-List-Received-Date: Fri, 01 Feb 2019 08:32:16 -0000
Content-Type: text/plain; charset="UTF-8"

Since no reply for socket-can strategy... I long time ago created one
for by me and my needs.

But still... Here is something worth nothing, if anybody considers
socket-can domain!

https://github.com/ZoranStojsavljevic/meta-socketcan

Best Regards,
Zoran Stojsavljevic
_______


On Thu, Jul 19, 2018 at 2:51 PM Gunnar Andersson <gandersson@genivi.org> wrote:
>
> On Thu, 2018-07-19 at 14:44 +0200, Zoran Stojsavljevic wrote:
> > Actually, I ran into this:
> > http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-
> > extended/socketcan
>
> :-)  I mentioned that in my original response.
>
> >
> > So here, I think, can-utils recipes should be revisited, cannelloni
> > recipe added, and also another application recipe added as well:
> > https://github.com/dschanoeh/socketcand/
>
> Great, you're answering some of the follow-up questions I had.  I need to
> task switch now, but I will finish up that response later anyway so we can
> figure out a good strategy together.
>
> - Gunnar
>
> --
> Gunnar Andersson <gandersson@genivi.org>
> Development Lead
> GENIVI Alliance
>

