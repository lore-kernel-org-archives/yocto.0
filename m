Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D921DE00404
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 14:36:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=Tum2I/iHurD8Go2XNljabIX2fY7J4boihmvjX5ycMU4=; 
	b=q2GI8DkjVrMdm2YxS5MvXoDHdT/hh0a19dqmV9LBs0H/gHb8Ml5BJkYsQ6opEVStNtcBSa3/ET99Pr/rdSzLymPZ+yCFllW4lNatOR/dpeLkLgr9uEPCTlZPfYgB9V/d4U5AW5Jqi4SK9qrykldHQ8HeBcIXTPTqpjMogiSowyQ=;
Received: from [109.224.171.0] (port=16179
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WE4t4-00497j-1C
	for yocto@yoctoproject.org; Thu, 13 Feb 2014 22:36:07 +0000
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <B36B030A-DF5C-4A69-BEBB-9486C9FF3965@keylevel.com>
Date: Thu, 13 Feb 2014 22:36:01 +0000
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
X-Mailer: Apple Mail (2.1827)
X-OutGoing-Spam-Status: No, score=-1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp@keylevel.com
Subject: Boost - undefined references when linking
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
X-List-Received-Date: Thu, 13 Feb 2014 22:36:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got an autotools project which uses 'boost'. All was working great =
until I added some code which uses additional boost functionality. I'm =
now getting the following undefined references reported:

| File.o: In function `thread_exception':
| =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/boost/thread/exceptions.hpp:49: undefined reference to =
`boost::system::system_category()'
| =
/media/SSD-RAID/build-danny-cedartrail/tmp/sysroots/cedartrail/usr/include=
/boost/thread/exceptions.hpp:49: undefined reference to =
`boost::system::system_category()'

The project builds fine natively on my Ubuntu system.

I did have a lot more similar messages, but adding:

#define BOOST_SYSTEM_NO_DEPRECATED

before including the boost headers got rid of everything but the above.

What do I need to add to the project / .bb file to solve the above?

There

Chris Tapp

opensource@keylevel.com
www.keylevel.com




