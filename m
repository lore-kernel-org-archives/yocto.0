Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8764E00D36; Mon, 16 Oct 2017 13:58:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48189E00D34
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 13:58:42 -0700 (PDT)
Received: by mail-ua0-f175.google.com with SMTP id v27so10621050uav.7
	for <yocto@yoctoproject.org>; Mon, 16 Oct 2017 13:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XkQKq6EcuOHVAdNWq644CQ2T9vDHXe1Kh8PSuLVqlSA=;
	b=kTTpF/Rqm0WPwuRyhTx3ykt9lEK2GTORxhJn4psAmtTaGNOIjwxsDzeLwx3vV64GIG
	ANUyUfclHdAoawI5dF3uzNtmrDsuiVtY7WRiIYhAkCHnCOcdAjh0oWuQPXZWR699KJZ8
	1scV1RQ9UNGOFY8gHnV834cDVQ5EjWURH5CYmP0Jy6wHjdSMUMemCbjV+8blGOKXROiz
	N2OIXM7vjjZ6HUBLBCp1oW6+qeFXQnWl1fXlUrpGjF1RjLhdJ4lG/JYQAOIE1H3ZZ4eS
	VwrVRX4i5yx7yKLtPwf5G4MnyShoQhXfZP9ZNMmpQp79T6yRzh+btwm1unU5OsWZl4dR
	PA1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XkQKq6EcuOHVAdNWq644CQ2T9vDHXe1Kh8PSuLVqlSA=;
	b=kalzkt7NMvXmZXYN1kdssx7qaBetZgtYRyop0e1XwNHwu2jgUSkU+VTy2zJ2xKf3ym
	Av7FcXXb738g5MlxbbTDHHwDPq+wj9DoKxik+zD4Z0jeVOYp3aYsEjrYJfhTkf9EfDVL
	FzxyY8rDwrwMCUXQ9NkvC+4XCcuw1/va+YvsAssfvZU2JvfAQwqx4tFEyEx8iKVKZsty
	T5i113WCU4V1AIUIyVp4tqA/CFLKQpUEuppknxw8Un6UeOwsNu/F7qzO3wuUX0YBUJ3E
	MRzQsQlgt79maNm9e7b3WSZ1LYDDUG/PSHsvWzjsH6RTgaY1NKEnEai2chLreBWtrM4S
	+Lzw==
X-Gm-Message-State: AMCzsaVTA5R1lCv1MBoyBsj0gk86DQLuTfG9doEnUm7cSnWjRv/xoN1a
	4VyyRgB3Aw3d15peavgwOXiowzFHCRqnBNGEY44=
X-Google-Smtp-Source: AOwi7QD6uhawcWmP74CCW7g0ESQqGYXS78Z9AGJXqsEPw709LxH4P2jfcLymProLxqILSJOyBHypQWYisypEJDOidf8=
X-Received: by 10.176.81.132 with SMTP id g4mr8400507uaa.60.1508187521287;
	Mon, 16 Oct 2017 13:58:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.82.197 with HTTP; Mon, 16 Oct 2017 13:58:40 -0700 (PDT)
In-Reply-To: <1508165287.20313.192.camel@linuxfoundation.org>
References: <1502634551-6371-1-git-send-email-gizero@gmail.com>
	<CAC+thW1vA3N3SjsVJ9uE+rz9+4FXCzzAKd6RzrtWHv-yORrgWQ@mail.gmail.com>
	<CAC+thW3y7ewju_qseTKJ1uWmC7jsGwEYaKpHchOFem081G3zSQ@mail.gmail.com>
	<1508165287.20313.192.camel@linuxfoundation.org>
From: Andrea Galbusera <gizero@gmail.com>
Date: Mon, 16 Oct 2017 22:58:40 +0200
Message-ID: <CAC+thW3PejvvGqwY0nTJGjf3i7-+f44HW5L4++g4yARpgjPNzg@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: [yocto-docs][PATCH] kernel-dev: fix typo
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
X-List-Received-Date: Mon, 16 Oct 2017 20:58:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Oct 16, 2017 at 4:48 PM, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
> Hi,
>
>
>>...I'm sorry to insist, but I can't figure out why this trivial typo
>> fix has been ignored for long.
>
> I mentioned this to Scott who hadn't seen it for some reason. He's
> merged it now, thanks.

Thanks! ;-)

