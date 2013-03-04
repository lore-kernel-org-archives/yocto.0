Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 6E1C2E014CC
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2013 06:35:45 -0800 (PST)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r24EgEId009447; Mon, 4 Mar 2013 14:43:05 GMT
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id C0DWO30OEpNp; Mon,  4 Mar 2013 14:43:05 +0000 (GMT)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r24EgvAn009618
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Mon, 4 Mar 2013 14:43:00 GMT
Message-ID: <1362407704.29587.39.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: openembedded-core <openembedded-core@lists.openembedded.org>, yocto
	<yocto@yoctoproject.org>
Date: Mon, 04 Mar 2013 14:35:04 +0000
X-Mailer: Evolution 3.6.3-1 
Mime-Version: 1.0
Subject: Feature Completion Deadline for 1.4 looming
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
X-List-Received-Date: Mon, 04 Mar 2013 14:35:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

The 1.4 release is scheduled for 2013/04/26. We have one milestone
release before then, M5 on 2013/03/17. This is also the feature complete
deadline.

This means if there are features or other changes you want to see in
1.4, they need to be in by the 17th[1]. After the 17th we'll be doing
bugfixing and stabilisation and new features will have to wait for 1.5.

[1] Within reason, large unexpected invasive changes appearing on the
17th will probably not make it unless the solve world hunger or have an
equally impressive benefit.

Cheers,

Richard



