Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DA32E0049B
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 09:39:27 -0700 (PDT)
Received: by pbbrp16 with SMTP id rp16so7413188pbb.35
	for <yocto@yoctoproject.org>; Sun, 19 Aug 2012 09:39:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to;
	bh=IDtVG8fdcRO8ArczIIENaz44pUTT103nWKkcfIgnJ0s=;
	b=UOVkZibCjp60ZhN9FIbeWc48S8RlE5oUp1eRRTWxpKi8oNsWzcdulb9RwdIIBvopMv
	h+zYUM9nYOPZfKsCp/3XgqGW158fGEcxhjd03xQVm0aG2g5a7Vp46t6KKBaebqdn5pua
	PePu6goV7XdMJCw6xenZibC2CEmQ3i7RckRS0Vk9azJePegyA9GoYdS6XVlM4H88WhW2
	YedMY6vyxAsc5v7mywOrjxgKj5kS6rE0uGisiaDiKOrXe49RxuiO2iOuUYp4fSFxzA5J
	bu5awdFhPCD2bFSZNze3fUIZEWwCpiX9zHhohFufZjVI2RA3v7GbHN+b0/qyx3ti19mz
	hPEQ==
Received: by 10.68.200.162 with SMTP id jt2mr27744042pbc.54.1345394366869;
	Sun, 19 Aug 2012 09:39:26 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.108.162])
	by mx.google.com with ESMTPS id th6sm9268830pbc.0.2012.08.19.09.39.23
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 19 Aug 2012 09:39:25 -0700 (PDT)
References: <0F31BD17-B08A-4D0A-8807-8A2B2F21BE00@gmail.com>
	<CAMKF1sr-vgPoG3_QsWkFMHsS=JQB_bj+EK61MUyEp77NjL8d6Q@mail.gmail.com>
In-Reply-To: <CAMKF1sr-vgPoG3_QsWkFMHsS=JQB_bj+EK61MUyEp77NjL8d6Q@mail.gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <2E04F412-1416-4454-AD1F-9DFE3993748C@gmail.com>
X-Mailer: iPhone Mail (9B206)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Sun, 19 Aug 2012 20:39:18 +0400
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Distributing yocto builds onto an Ubuntu 12.04 LTS cluster
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
X-List-Received-Date: Sun, 19 Aug 2012 16:39:27 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Hi Khem,

On Aug 19, 2012, at 20:09, Khem Raj <raj.khem@gmail.com> wrote:

> On Sun, Aug 19, 2012 at 5:15 AM, Elvis Dowson <elvis.dowson@gmail.com> wro=
te:
>> Has anyone been able to successfully distribute yocto builds onto an Ubun=
tu 12.04 LTS cluster?
>=20
> master works fine

I couldnt get icecc to work. Could you share your settings to get it to work=
 please?

Best regards,

Elvis Dowson=

