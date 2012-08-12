Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83593E0049B
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 20:34:26 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so5145054pbb.35
	for <yocto@yoctoproject.org>; Sat, 11 Aug 2012 20:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=/r/LOQjWQf4S71l0xNDt2uMeEi2/XPFoKzaJr1brIoI=;
	b=JaV5RyVhI44vriTaycvYOY5wB3B0KLjWv8w+NtL0vfZOoVcGqXhq85zQxLxYY8/KyV
	pQq8RFmDr/eNL/BylAq6R5HGjCPzWaK/H7RqGNelYiPRT1IFDQA2ZcR3aCISDJar8Bj8
	XAvQVmmGhOgGw1pkyxZN1sx9cshOQKR/Jq2z+eCvh6HThhdGSIPcbi6V09LHv+dXVxpl
	yr1pWtgLozo/qAO6X2j12A56+OYKOUM4mTfaeBGNAKvWGLNS82LwyXIPnDlVO8j/LMtd
	Y68tlI6pWS9f0XqSxslWDv/uvrlBhsa8T5+yk6BtSmmZ4ivKAOC5ac139huVLHJmcxDC
	PtDA==
Received: by 10.68.221.3 with SMTP id qa3mr24629378pbc.42.1344742466272;
	Sat, 11 Aug 2012 20:34:26 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id hx9sm2516274pbc.68.2012.08.11.20.34.24
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 11 Aug 2012 20:34:25 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
Date: Sun, 12 Aug 2012 07:34:21 +0400
Message-Id: <D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
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
X-List-Received-Date: Sun, 12 Aug 2012 03:34:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                  I added support for gcc-4.5.1 inside =
meta-openembedded/toolchain-layer, and got it building against the =
latest yocto/master branch.

However, switching to gcc-4.5.1 did not fix the issue.

Elvis Dowson=

