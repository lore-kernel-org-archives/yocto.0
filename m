Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3B59E0148E
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 03:53:45 -0700 (PDT)
Received: from [192.168.0.2] (host86-137-81-165.range86-137.btcentralplus.com
	[86.137.81.165]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 86D99952C
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2013 11:53:44 +0100 (BST)
Message-ID: <515D5BB7.8020202@r-finger.com>
Date: Thu, 04 Apr 2013 11:53:43 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: GObject Introspection support for Yocto: meta-gir
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
X-List-Received-Date: Thu, 04 Apr 2013 10:53:46 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


Support for GObject Introspection is one of the gaping omissions in
current Yocto / OE coverage, and here at sleep(5) we thought it was time
someone took the bull by the horns and did something about it ... so
without further ado:

  https://github.com/Guacamayo/meta-gir

The repo contains a lengthy README that I shall not repeat here at
length, other than saying it's early days in terms of package coverage
(though everything needed to build core-image-sato is in place; a small
patch for oecore is in the repo), and undoubtedly there is scope for
improvement -- contributions are not only welcome, but invited.

The git repo is currently under the Guacamayo project because it was
convenient for us, but would be happy to move it to g.yp.o, if there was
impetus to do so.

Have fun,

Tomas
-- 
http://sleepfive.com

