Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 759DDE0034C
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 10:23:33 -0800 (PST)
Received: by mail-da0-f48.google.com with SMTP id k18so2714263dae.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 10:23:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:message-id:date
	:to:mime-version:x-mailer;
	bh=HpaXt1f8Nno2KdK95EaF8Yt6OZiq6SloCWOCyf5VP3s=;
	b=Cy5lrO9iCs+uuM53teJqOXbIYloNH6RDj7QzEC5oenl6965NFEA+/npnziPuFSxEQQ
	+r24EopNOPai8fPDpuuthv16iBUUqV4H4bIvA8csj0uk66EdDr6TKBf0dCRBKYbRAO89
	0j9naFVVSsORt4WEumllooaAs1wWygmCXHenfgbRIr2wDLMGbHNZ7n6gdSoDFjHqCRU9
	pt0ppA/cQnLLjvD+suUpNIsDJeEdoRO0lDzyWgsuQ0w50pm0M4PcIhvB7k6S88CZKiQr
	fFIuMfhwSqdvdrfjCTWqsTf0knhI9opjFlvCYvDPhbRfmOw5eUh558pO9eXg2hCu0qlL
	qCeg==
Received: by 10.66.78.100 with SMTP id a4mr44868622pax.4.1355768613263;
	Mon, 17 Dec 2012 10:23:33 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id o1sm8982385paw.0.2012.12.17.10.23.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 17 Dec 2012 10:23:32 -0800 (PST)
From: Elvis Dowson <elvis.dowson@gmail.com>
Message-Id: <D7BAA9E8-E256-4C0C-A15F-2FDD24EA4BA2@gmail.com>
Date: Mon, 17 Dec 2012 22:23:24 +0400
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
X-Mailer: Apple Mail (2.1499)
Subject: ERROR: locale-base-tt-ru is listed in PACKAGES multiple times, this leads to packaging errors.
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
X-List-Received-Date: Mon, 17 Dec 2012 18:23:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
      While attempting to maintain the gcc-4.5.4 and eglibc-2.13 =
recipes, against the current poky master, I ran into the following =
errors, while running bitbake meta-toolchain:

ERROR: locale-base-tt-ru is listed in PACKAGES multiple times, this =
leads to packaging errors.

How can I fix this error?

Best regards,

Elvis Dowson=

