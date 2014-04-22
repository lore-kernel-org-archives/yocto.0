Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AF59E00C02
	for <yocto@yoctoproject.org>; Tue, 22 Apr 2014 01:46:39 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu4) with ESMTP id
	s3M8kGcU030337; Tue, 22 Apr 2014 09:46:17 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id uylBfJ7gL1hh; Tue, 22 Apr 2014 09:46:16 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	s3M8kAYv030326
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES128-SHA bits=128 verify=NOT);
	Tue, 22 Apr 2014 09:46:11 +0100
Message-ID: <1398156364.16672.29.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: =?ISO-8859-1?Q?S=F8ren?= Holm <sgh@sgh.dk>
Date: Tue, 22 Apr 2014 09:46:04 +0100
In-Reply-To: <2872826.V92YYLj4a2@koontz>
References: <2489555.PeAzndN2bA@koontz> <7023738.t8MMlfpnim@koontz>
	<53483D14.7020807@windriver.com> <2872826.V92YYLj4a2@koontz>
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: defconfig on daisy
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
X-List-Received-Date: Tue, 22 Apr 2014 08:46:42 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2014-04-22 at 08:13 +0200, Søren Holm wrote:
> Hi Bruce
> 
> I've search the meta-data repos and kernel repo for a change matching this. Is 
> it fixes or did you miss it?

The change is:

http://git.yoctoproject.org/cgit.cgi/poky-contrib/commit/?h=zedd/kernel&id=a112c85c02f161dc03bf71cdb9d2b3557999bbfd

It didn't make it into the 1.6 release branch, it will go in for 1.6.1
and is queued for there and master.

Cheers,

Richard


