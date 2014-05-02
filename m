Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0704AE009D1; Fri,  2 May 2014 08:13:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75621E009BA
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 08:13:48 -0700 (PDT)
Received: by mail-ig0-f178.google.com with SMTP id hl10so1987142igb.11
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 08:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7Y+cZyY8DtVcxFN1LAVJ6g8ZEG8g2ie8r032ROTVQ7c=;
	b=W7i/VsjR1ijxoRNMXfZftvsmEAnjI9XLucaTDiNTvdJnHWcIqi6WqSVSObUQax8NBg
	9jjbUxojFUQ76IUSM7zQFSbdHvwQvBfO9TwxrBB/UmQ2u+K/Onhdv5V79VPhDh8mhn42
	U6W7sEuGnRyXqmDEbJqwPokFNhTPWHhUUGrw9+Es5m/h9rt1LIpCQRyiuqnNguU4l3Q2
	eOlLobo3BGGamjAWPMmocSxY+TK2cWlAhccLsx/FKKSMyHWvHLRWpQ09f6A5TFqb/mYA
	4z0+672dbK1hDrIs7QO9zKmewC9XJFMvz8j981Gv0GpeGIV3kH0YUw8R5Xw4wMlwIBpG
	FgVQ==
X-Received: by 10.50.60.72 with SMTP id f8mr5050804igr.20.1399043628115; Fri,
	02 May 2014 08:13:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.74.228 with HTTP; Fri, 2 May 2014 08:13:18 -0700 (PDT)
In-Reply-To: <1399043198.30486.YahooMailNeo@web171203.mail.ir2.yahoo.com>
References: <1399043198.30486.YahooMailNeo@web171203.mail.ir2.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 2 May 2014 08:13:18 -0700
Message-ID: <CAMKF1sqToFgs1E0A61Kg4GFgZapouB1k1vPJCKvPQe3AyWxxhQ@mail.gmail.com>
To: Nikos Liapis <nick_liapis@yahoo.gr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Target CPU architectures that Yocto Project Support
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
X-List-Received-Date: Fri, 02 May 2014 15:13:52 -0000
Content-Type: text/plain; charset=UTF-8

Nikos

On Fri, May 2, 2014 at 8:06 AM, Nikos Liapis <nick_liapis@yahoo.gr> wrote:
> I would like to know if I could use Yocto Project to build Linux for Sparc
> v8 CPU architecture. I am trying to build linux with some tools for the
> Leon3 (opencore) CPU and I am facing errors during compilation. So I am
> trying to find an alternative solution to get Linux with some basic tools
> running on the hardware. Sorry if I have made any mistakes or if I sent to
> the wrong mailing list - I am a totaly newbie.

Sparc is not an already supported architecture in OE-Core however you
should be able to extend it easily

