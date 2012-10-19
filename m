Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71FD7E0049B
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 07:34:27 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-115-216.range81-153.btcentralplus.com
	[81.153.115.216]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id C9CF099A4
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 15:34:26 +0100 (BST)
Message-ID: <508164F1.6000108@r-finger.com>
Date: Fri, 19 Oct 2012 15:34:25 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: why was meta-dlna submodule history stripped out?
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
X-List-Received-Date: Fri, 19 Oct 2012 14:34:27 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Looking over meta-dlna in Yocto git I see it's little more than a fork
of meta-guacamayo from guacamayo-project.org -- could someone please
explain to me why the git history was stripped out from this 'combo' layer?

(I am delighted Intel is finding Guacamayo useful, but the obliteration
of the history makes it look as if the credit for this official Yocto
layer goes to Intel; I am sure that was not intentional.)

I am also interested in knowing why the fork was deemed necessary in the
first place, just in case it was for technical reasons that could be
addressed at source.

Tomas

