Return-Path: <jay@jay-tech.ru>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E177FE013D1
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 10:38:59 -0700 (PDT)
Received: by eeke49 with SMTP id e49so639549eek.35
	for <yocto@yoctoproject.org>; Sun, 29 Apr 2012 10:38:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:x-originating-ip:in-reply-to:references:from
	:date:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=KOs9l5zQaE9A4vHWS8jq0zftVU7451OCpdPWkAuEv7Q=;
	b=FSoAs43mSmpHxpAmNMQ97F8r4AQiEziWa6NnDF/nnXguIwystyAMRoTmYCJsT4HKrz
	FNsLxuvHqLJ0nvadEfyYk4dDm98wKUxIeEHr7oWSfWfvusYNKlvDh3GH009hoOfKyk2o
	PNQMQt+s2U3E6Z+yfbUfxmntSCBoNQmHflty/UvO6r9QsvRf3pKkJcyawEljbVwbdo4J
	3cQohzuDHxHmUmaYIOsEBqxNgChRzAnHjxxfN+1cjJagEMva8bP0ZOwnxi/2nGEmEe2x
	UBpPGBj59ZtttkXW6F6jAQtM53m1cl/4f/wERbw+l3bL4TtvF6hj+TRxqUyebXY0rQIA
	F1GA==
Received: by 10.213.31.136 with SMTP id y8mr1288232ebc.276.1335721138315; Sun,
	29 Apr 2012 10:38:58 -0700 (PDT)
MIME-Version: 1.0
Sender: jay@jay-tech.ru
Received: by 10.213.99.138 with HTTP; Sun, 29 Apr 2012 10:38:38 -0700 (PDT)
X-Originating-IP: [109.74.209.73]
In-Reply-To: <alpine.DEB.2.02.1204271850580.3661@oneiric>
References: <alpine.DEB.2.02.1204271850580.3661@oneiric>
From: Yury Bushmelev <jay4mail@gmail.com>
Date: Sun, 29 Apr 2012 21:38:38 +0400
X-Google-Sender-Auth: sNtNBYN4xD6auHLJwnrZvSWRgio
Message-ID: <CAJG6M_PnnrkRF59LrkPE=pr_Mj_Qwj6G-7ut7FKOVKj+tb3Rxw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQkJFegUyKfcJQi7E4cNRsZ1QFefb/zO8jv0ydVoyzf6CPSqf8KjyEVBPtHXuetCzyNpgXOX
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: looking for recom for MIPS dev kit (*not* RS pro)
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
X-List-Received-Date: Sun, 29 Apr 2012 17:39:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2012/4/28 Robert P. J. Day <rpjday@crashcourse.ca>:
>
> =A0a potential training client of mine would like an intro embedded
> linux course ideally on a MIPS-based dev kit. =A0i'm aware that the
> reference BSP for that in yocto is the routerstation pro, but i just
> learned today that it's "end of life" so i'd rather get something
> newer.
>
> =A0any recommendations on a decent, not stupidly expensive MIPS dev kit
> that perhaps already has some yocto backing? =A0thanks.

Have you seen Qi-Hardware's Ben NanoNote?
http://en.qi-hardware.com/wiki/Ben_NanoNote

Common price is about $99.
But it have QVGA scree, no USB host, no pointing device and only 32Mb of RA=
M.

Yocto have no BSP for it as well, but there is Jlime distro which is
based on OpenEmbedded. And I've seen Jlime OE-core layer somewhere on
github already.

--=20
Yury Bushmelev

