Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AE9FE00718
	for <yocto@yoctoproject.org>; Sat,  4 Aug 2012 09:54:05 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3692887pbb.35
	for <yocto@yoctoproject.org>; Sat, 04 Aug 2012 09:54:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=dX4PKTP3xonYo/X+o8mbuSCTOg8jxixCArp6enerHds=;
	b=OCe3kZczFmV8eXf8jZ/aph8WF19yMApHuQyRHbxZGlzwLW+TB+FiST5vb1Xg0Xvfzf
	fUrInhtdPZzpfCZK7kB9RVQ898UGl9T4Fh9Fs9nWraiMycfeX7mQZnMexhmqqWUSytrR
	BcFPAidjq+YMCZfKtzQGN7n09QjTts7NW1FSmk2wlkp5RJlL/lP9jEKPa57PaKvWC2F6
	jtSJDMGXivbB4GIV5MO8OgKNblX4oBsW4hmNG3gqhAxpxLU2X4hU4A/BTrp8Zcys/v6k
	M1f1QVgfPHu8EbA9UsOHWMbJ0fxdfwWGs/MmbKiiSP8Cd/OlcGBOY3+Z/XUZavF4MvHl
	uy6Q==
Received: by 10.68.222.233 with SMTP id qp9mr6328829pbc.133.1344099245005;
	Sat, 04 Aug 2012 09:54:05 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id io1sm5265966pbc.67.2012.08.04.09.54.02
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 04 Aug 2012 09:54:04 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
Date: Sat, 4 Aug 2012 20:53:58 +0400
Message-Id: <5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Sat, 04 Aug 2012 16:54:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

On Aug 4, 2012, at 8:31 PM, Khem Raj wrote:

> On Sat, Aug 4, 2012 at 8:12 AM, Elvis Dowson <elvis.dowson@gmail.com> =
wrote:
>> /lib/ld.so.1
>=20
> does this file exist on target ?

Yes, it does. It is a soft link to /lib/ld-2.16.so (136.4kb)

Both files exist on the target.

What should I do next?

Elvis Dowson=

