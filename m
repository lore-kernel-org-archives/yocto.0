Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C4F9E0049B
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2012 08:36:14 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so9258948pbb.35
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2012 08:36:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=rWZLzqxQFM1GQfuwDOxDweikztKiTaMYFhqW9nGW4oU=;
	b=afmyRHH9ZeA3J+DDAdhIrup7p2IqsRGG9pT7xmRg1JHIOykvEHS8bIoc3SpnkzWkqZ
	IpF20JpeoLPiPmaweczASGGfJ63pL963MEpC6wsy5bwDQZCZEhPvn1FNAORuJxN4phzI
	q41MRJQHaDV4OZtGQ6FZvEy67Xvn/+etKzS+f6l1Oh0wpq+uFkplfIV44FgiPGfJxVdZ
	fqUGt6zYAJwpJdT/QR26xDUm7NjeSEavVW+TWIo5Apc5gHv2oOhezNH6MpO2/Qr1Fltg
	MzqsV6zAm9Hjw6JJMczemWLcwhbr/96IKXX3hZyBuInVFOBOzA5ZYp+i7yU9dWZZD1e7
	p4yA==
Received: by 10.68.130.131 with SMTP id oe3mr35094078pbb.102.1346081770595;
	Mon, 27 Aug 2012 08:36:10 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id st6sm14912154pbc.58.2012.08.27.08.36.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 27 Aug 2012 08:36:05 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Mon, 27 Aug 2012 19:36:00 +0400
Message-Id: <7E445C71-70EB-4FF8-8D1E-4CA9404442EF@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1278)
X-Mailer: Apple Mail (2.1278)
Subject: Where is the poky version information stored?
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
X-List-Received-Date: Mon, 27 Aug 2012 15:36:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
       Is the poky version information stored in a particular file? I'd =
like to create a log tag in my git repo, and prefix it with the poky =
version.

Best regards,

Elvis Dowson=

