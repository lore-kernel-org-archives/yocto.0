Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE6F1E0080C; Thu,  7 Aug 2014 11:22:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43BD9E00809
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 11:22:30 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id j107so4802962qga.8
	for <yocto@yoctoproject.org>; Thu, 07 Aug 2014 11:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=UIyl5Wv8xcVi+0cgqn76jRIbjl/IEMI7+LE5Jqqv1CA=;
	b=WLzZ6diI5GslcUA55UusW1MAecGjZ0iJ2RCMpD5GH0GJON0kWAWhw7/IXzp5CUjncg
	4aWsHm2q1/1uljUA0El5NF9oTHxLe7bc0Na+TM9yxnOd12p3UDVnVA415ZVgxp8T7xKD
	ZHMjGDbz2Cd2u23Z4hoR+itUas8AW1GGaMOiOnJYYIDToF4d8ChZa5cCbpqVHfPVdpB1
	JAAOfwc5eDKP/J5QNHALAyKwHAQLEvA9holuE3BCHs9n+atShe8+9HpKRnbsOIzbNO8C
	3FG6vZ5E+i05mPZPo7OTxOlgs5i8Zry+9DAKkrT1GFhsXa/m2aT+84m+CDyVQuuacQ4P
	PVrg==
MIME-Version: 1.0
X-Received: by 10.140.107.131 with SMTP id h3mr15904931qgf.83.1407435750039;
	Thu, 07 Aug 2014 11:22:30 -0700 (PDT)
Received: by 10.140.34.76 with HTTP; Thu, 7 Aug 2014 11:22:30 -0700 (PDT)
Date: Thu, 7 Aug 2014 14:22:30 -0400
Message-ID: <CAPphmgb+C-mHeZVm-RbD-Ap4UG4VG_3jwoTdO7XP49dbG+dTGw@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: base-files: /etc/profile profile.d execution order
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
X-List-Received-Date: Thu, 07 Aug 2014 18:22:34 -0000
Content-Type: text/plain; charset=UTF-8

I am trying to use a file in profile.d to override the default umask
in /etc/profile. However, the umask line in /etc/profile comes after
the code which sources profile.d files.

I suggest moving the umask line and the exports to before the profile.d code.

