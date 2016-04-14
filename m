Return-Path: <yegorslists@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44ADEE00D69; Thu, 14 Apr 2016 03:12:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yegorslists[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f68.google.com (mail-vk0-f68.google.com
	[209.85.213.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0DABE00931
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:12:55 -0700 (PDT)
Received: by mail-vk0-f68.google.com with SMTP id a6so9935244vkh.1
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=51heGkAMhHD7DuISIxAwz7Q5lkOuwAv/KspmCcG0VAQ=;
	b=UVIM/cAzmcXOE4Y3WCEvdQWdsqkW9DwkZXYNwzIuxy7FXoS8IEJaJ4UWVA/mlTQzn7
	1rMDE/7dhX13Hu5fH781/fnDxkMBjSrpSBxSBuIakmCeDDf8U0FmPQIFy+CWC8Buqur7
	H4l2dxOlnCNNrxfjar9kg7Jh9gOaL8JjsVHh7RZ0mzTfWQpFiUnBH6mua3Kid4ZPZBIt
	kQ10MfFeFZ7Nra1im9q9ADhUjqW/mtVwfSgobTqH+gRZgyJW2s3pxviD7TLyUTc8YKc6
	pd9JjZ8ubdf6nMccMlbMmdWt1qTYWRkbnoiXA9bLIcn5h22B1QVeURLxn6Vnko3VesgS
	EK6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=51heGkAMhHD7DuISIxAwz7Q5lkOuwAv/KspmCcG0VAQ=;
	b=CBON4Gn2KRiuDomkqycNYGX339MuWqy0OBncYN+nUKP7886H4SLAs5JlYnegr4c4gn
	b4648qIlq9MbiBX6QVGkEkDnGMjdlrd5Iq4lhQINYC3InZuBZeKLyafNs5m6PrFUPHf7
	kpTINf+5ToNP835zR2bkUZ2O+Or0LshAxh4FCorW7ZYV/SYSO45hFW6Y0rMgUN4eulxK
	m0JRe6jEWWf3IKyEbcdhR0KxFr7Ey6D32lBB04rftVqIFO8i6iHHasNwc6lnWBKo6hWv
	hUOMFqdzCXzSMyX0HOkB9Q0EuANApuyKoZsKzraY3iuWBu0lW9wyI8bCpInuEUeKkLCh
	q8KA==
X-Gm-Message-State: AOPr4FWiAzEAktA3+fSYP2lYqDyqWzRhWMVhAsRwxBoqgSXma9+IsrfuB3Jgak9/sgrqMqJTZI1lUCpBb6I5OA==
X-Received: by 10.31.16.204 with SMTP id 73mr7300455vkq.78.1460628774769; Thu,
	14 Apr 2016 03:12:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.190.196 with HTTP; Thu, 14 Apr 2016 03:12:35 -0700 (PDT)
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 14 Apr 2016 12:12:35 +0200
Message-ID: <CAGm1_ku6qF3f=QtkdhCsOtf2q1S-ceLLGGFn76+9=158wjP-qQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Running an own script after kernel compilation
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
X-List-Received-Date: Thu, 14 Apr 2016 10:12:59 -0000
Content-Type: text/plain; charset=UTF-8

I have my own ITS file, that is required to create a FIT image. ITS
file has a special configuration, that cannot be automatically created
using Yocto's recipes. So I need a way to invoke my own script. How
can I do it?

Thanks.

Yegor

