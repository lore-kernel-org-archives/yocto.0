Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 764C4E00547; Mon,  3 Oct 2016 13:39:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46AD0E00509
	for <yocto@yoctoproject.org>; Mon,  3 Oct 2016 13:39:43 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id 38so5460707qte.2
	for <yocto@yoctoproject.org>; Mon, 03 Oct 2016 13:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=c1q2t6zukGU/BIgvGu6zpIJqfnsEJM5yq3tP46LUq/Q=;
	b=MgVyNQ4k8//UuACCkpp/i6ao13xkWBfLh7OcYeq68c/BVCXhoNjMxTFzenzTXcItd7
	zFLfy/2is6NPO8whCaL2G6oJ4VBRZai3N+6uubNkgFtO+KDAW5a1esGSU8hKm1L2Nzz/
	zGjp9AFZCrPKb9/xmVfrMnMUpMDIDtLzBbKSfz9DpocubnO1eP5pPfPg3qDvm5pbN5WA
	YVtU/7BWXhIwLtz1s2O0KGnHWUXHBuXDyARK8I3np43M2BzRabP+iVMAE0hDG+3kkkIC
	A9J4ER3+FRSWN4BmpHA4HZlT5uUlaNZEHzl55rleL+360sTvWIfFd57UDz+u9yJH7gMf
	Bkyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=c1q2t6zukGU/BIgvGu6zpIJqfnsEJM5yq3tP46LUq/Q=;
	b=hZXRBQgfsEcED0R/CdjFmmbJQaRDaUALkT/UJ1YjAzgLbWneiXR1NwrE15DM1WIZ5r
	6fajTqy4imvuoD5jWI1A4K9wd4ldIA9g82u3ZbUvdJ0wfpifowHj0ptFcY8pNeXubQHK
	hNR+ZZISlPWeuxeluJRwXe88PwCFWUApr+0oYOZbVZQ42aOkTtTE7ERjjJI3UoQw6vqN
	yqn9FRfnL75jyc+cSEiut00XP0s+XuqVtcZKGhiE8p8H72jtPqCTUx8suZOEpjZgTITa
	M7SFse/QRW4pKKEiMmRjy/MGaBYfj505EtQWstqvUCNRNFkSlE6Tt3GMAuvx1JGB/lne
	CgvQ==
X-Gm-Message-State: AA6/9RkfdQj7incs/zPIHIsxdH50yb7y6o7Xo6KzDdtUoRmlalcp7MPEUI0hXXGY2H9FEXEy4EhItpqcTZG2PQ==
X-Received: by 10.200.46.176 with SMTP id h45mr22523900qta.133.1475527182845; 
	Mon, 03 Oct 2016 13:39:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.33 with HTTP; Mon, 3 Oct 2016 13:39:42 -0700 (PDT)
In-Reply-To: <20161003184826.GA30939@openSUSE-i7.site>
References: <20161002143422.GA24664@openSUSE-i7.site>
	<DC4D7174-E554-4A40-A0BC-B20623C83300@gmail.com>
	<HE1PR01MB18837565069037BC361486E792C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB188308CD0299E2BC792EF3C692C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161003184826.GA30939@openSUSE-i7.site>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 3 Oct 2016 16:39:42 -0400
Message-ID: <CAHUNapR6wknC-T2BjivbKPnAywiEbpoE0pzfXp6xuPX34siP9A@mail.gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Mon, 03 Oct 2016 20:39:47 -0000
Content-Type: text/plain; charset=UTF-8

Odd... even with this patch I'm still seeing sporadic failures :-(

On Mon, Oct 3, 2016 at 2:48 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> On Mon 2016-10-03 @ 06:45:55 PM, Karim ATIKI wrote:
>> Note: I just launched the build again with bitbake -k core-image-x11....and
>>
>>  the error did not occur again.
>> Well, a bit weird. Don't really know why does this error raised though.
>
> It looks like the patch to which Khem refers was just added and pushed within
> the last couple hours :-)
>
>> is it due to use of DATE and TIME issue ? I think there was such a patch proposed to meta-rpi see
>> http://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/commit/?id=4c02c7ce07121c2f5367204445f93199d828bb10

