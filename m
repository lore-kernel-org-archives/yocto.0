Return-Path: <tb@travelping.com>
Received: from mail.tpip.net (mail.tpip.net [92.43.49.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43E57E01505
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 03:32:22 -0800 (PST)
Received: from office.tpip.net (port-87-193-171-186.static.qsc.de
	[87.193.171.186]) by mail.tpip.net (Postfix) with ESMTP id D7BCB4F63F
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 11:32:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id 73FA9478DA
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 12:32:19 +0100 (CET)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1ENYUGMe0f3y for <yocto@yoctoproject.org>;
	Fri, 25 Jan 2013 12:32:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by office.tpip.net (Postfix) with ESMTP id E4076478DB
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 12:32:18 +0100 (CET)
X-Virus-Scanned: amavisd-new at tpip.net
Received: from office.tpip.net ([127.0.0.1])
	by localhost (office.tpip.net [127.0.0.1]) (amavisd-new, port 10026)
	with ESMTP id gNIvAEpZ7UOM for <yocto@yoctoproject.org>;
	Fri, 25 Jan 2013 12:32:18 +0100 (CET)
Received: from [192.168.2.104] (p4FEA4865.dip.t-dialin.net [79.234.72.101])
	by office.tpip.net (Postfix) with ESMTPSA id 87325478D9
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2013 12:32:17 +0100 (CET)
Message-ID: <51026D40.6000201@travelping.com>
Date: Fri, 25 Jan 2013 12:32:16 +0100
From: Tino Breddin <tb@travelping.com>
Organization: Travelping GmbH
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130109 Thunderbird/17.0.2
MIME-Version: 1.0
To: yocto <yocto@yoctoproject.org>
X-Enigmail-Version: 1.5
Subject: How to build the build appliance?
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
X-List-Received-Date: Fri, 25 Jan 2013 11:32:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi there,

I've seen some work already went into building a Yocto build appliance
which runs on VMware [1]. I think that's a great tool to get started.
Has the appliance been built by hand or is the process somewhat
automated? I couldn't find any references in Poky.

Cheers,
Tino

[1] https://www.yoctoproject.org/documentation/build-appliance-manual

