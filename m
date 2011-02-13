Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 828BB4C8007E
	for <yocto@yoctoproject.org>; Sun, 13 Feb 2011 15:27:15 -0600 (CST)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iyb26 with SMTP id 26so4512297iyb.35
	for <yocto@yoctoproject.org>; Sun, 13 Feb 2011 13:27:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:date:message-id:subject:from:to
	:content-type; bh=s5Qc4hIGc23H7cJw1GdKfXw4RLta27GNhQ/K6XtV6bk=;
	b=HNpI9Igbl7HcA7Q5yTtTarzT3yvqy2AqOpXsezliShPhGsR4F/pPNlWvWbQsYvf1RT
	9/hqrtetp54vHHJlBcIUyKkxtO2HqDG7662Y4oHdTRcNHCRgnBSi3RyH6zB7iAcPD64N
	7zd3Rkkhd5NN7SKGwWsAwBBRnQGvThOBl08XU=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:date:message-id:subject:from:to:content-type;
	b=mlIxaSKEh/aT5Qp0IRoJqP2MzkCbPXxeeUQhZ6+2XvTRcBdmRv84D0DkWV3Rd56pBt
	OjSKvjXZ92BgtwClz/yoeM92S3Gw27MAhxSMYYbTZ7RR5+rLrf99UT0JpBBwpSA7UjZ1
	3WPswhePP8lS+7qj6znXnd5ZQjMq9WJ0KqLS4=
MIME-Version: 1.0
Received: by 10.42.224.129 with SMTP id io1mr3856942icb.433.1297632435050;
	Sun, 13 Feb 2011 13:27:15 -0800 (PST)
Received: by 10.231.30.73 with HTTP; Sun, 13 Feb 2011 13:27:15 -0800 (PST)
Date: Sun, 13 Feb 2011 22:27:15 +0100
Message-ID: <AANLkTimVZq3JvBTk1EsLXDrtg-uQeFGNB+rrS7fcZerX@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: yocto@yoctoproject.org
Subject: bios upgrade for blacksand with N450 ?
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
X-List-Received-Date: Sun, 13 Feb 2011 21:27:15 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I got one of the blacksand boards with N450 that were given away at
the ELC, and I am wondering if there happens to be a bios upgrade for
it (or at least make the bios a little bit less chatty and faster
starting).
Anyone any idea?

Thanks! Frans

