Return-Path: <tb@travelping.com>
Received: from mail.tpip.net (mail.tpip.net [92.43.49.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E28C0E0140A
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 07:34:04 -0800 (PST)
Received: from office.tpip.net (port-87-193-171-186.static.qsc.de
	[87.193.171.186]) by mail.tpip.net (Postfix) with ESMTP id 31B1D4F418
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 15:34:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id E5D3742E6F
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 16:34:02 +0100 (CET)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id ElGYN86SkSzA for <yocto@yoctoproject.org>;
	Thu, 20 Dec 2012 16:34:02 +0100 (CET)
Received: from [192.168.14.111] (p4FEA4F5D.dip.t-dialin.net [79.234.79.93])
	by office.tpip.net (Postfix) with ESMTPSA id 3767B42E2A
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 16:34:02 +0100 (CET)
Message-ID: <50D32FE8.7020506@travelping.com>
Date: Thu, 20 Dec 2012 16:34:00 +0100
From: Tino Breddin <tb@travelping.com>
Organization: Travelping GmbH
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-Enigmail-Version: 1.4.6
Subject: How to update Git clone when rebuilding
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
X-List-Received-Date: Thu, 20 Dec 2012 15:34:05 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi,

I've noticed that bitbake won't update a Git checkout of an
application referenced through a recipe when running a follow-up build.

Is there some way to tell bitbake to check whether the remote Git
repository provides updates which should trigger a rebuild of the
application?

Cheers,
Tino

