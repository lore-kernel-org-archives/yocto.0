Return-Path: <elvis.dowson@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 743A9E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 14:47:33 -0700 (PDT)
Received: by werc1 with SMTP id c1so284485wer.35
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 14:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:to:mime-version:x-mailer;
	bh=ubLlEdW5yI+w7CsR3lcl+9z00w5WunKfGTYPCYlNAng=;
	b=xM4nxq4FWVjGZY3BBY+v9kWkJq2Pd1t83WyE6F6KZET5GsOWw/PQMhUlE5WQnYlSJM
	ZvTDeDaeUnabWG3CMp8s9IMUXtDDdlU48wM0lp7EJE2iKwU7lbJN7KTiYNNU86jfmfYW
	tgKg+fWwqCViWK8uxGo8C/M5PqHHKNTxgYz8yBuiK00crzSuyyFxLRtHmErCqfQopSwX
	XPw9cqMfVYYZFjLdld4uO09kkR/7kp7uiaa7e+nX1CHax/8sBJ5qg1BH2uvJI9XZfJdu
	O0/obXkskoCwFvhR6XznTQGitOW4XpAH6IfGTGGS05k7fvJz3yKqLldVnOBtApv01Gsq
	DXpA==
Received: by 10.180.79.135 with SMTP id j7mr16249189wix.19.1336168052419;
	Fri, 04 May 2012 14:47:32 -0700 (PDT)
Received: from [192.168.1.34] (5.Red-83-49-41.dynamicIP.rima-tde.net.
	[83.49.41.5])
	by mx.google.com with ESMTPS id j3sm946673wiw.1.2012.05.04.14.47.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 04 May 2012 14:47:31 -0700 (PDT)
From: Elvis Dowson <elvis.dowson@gmail.com>
Date: Fri, 4 May 2012 23:47:29 +0200
Message-Id: <4A8D5C4F-3A9B-4171-9254-2DC2E273396C@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Apple Message framework v1257)
X-Mailer: Apple Mail (2.1257)
Subject: How to fix unpack errors
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
X-List-Received-Date: Fri, 04 May 2012 21:47:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
     How can I resolve these unpack errors:

ERROR: Task 513 =
(/tool/yocto/meta-gumstix/recipes-kernel/linux/linux-omap3_3.2.bb, =
do_unpack) failed with exit code '1'

Best regards,

Elvis Dowson=

