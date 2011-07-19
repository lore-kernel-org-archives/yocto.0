Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de [212.227.17.10])
	by mx1.pokylinux.org (Postfix) with ESMTP id 5DBFB4C80A8A
	for <yocto@yoctoproject.org>; Tue, 19 Jul 2011 05:16:16 -0500 (CDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mreu0) with ESMTP (Nemesis)
	id 0LiGlL-1RELYf3fbn-00n258; Tue, 19 Jul 2011 12:16:15 +0200
Date: Tue, 19 Jul 2011 12:15:47 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: yocto@yoctoproject.org
Message-ID: <20110719101547.GA18149@localhost.localdomain>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:GEDuOyn1hvSoEDaEivO5lJjAqNglW/fQBy8WeSMdhzM
	ZYTCEQF8rZ4Ssl1iYrkFWg0mdVoUG+dX3kPNo9QXPwD7XIer8p
	EM3qoQ4NyVoDPPse/V/58w0FegI8NqieI+qmgPJftGvq5zn5Uu
	GxedCT+0SIMdsb2G242zpDn28JsZQEvvc+7AV61aQggPqnfbTm
	JJhzcwIFpc00dDkVuqrwPssDGzwcAOsJiNl2P7djxk=
Subject: building crownbay images
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
X-List-Received-Date: Tue, 19 Jul 2011 10:16:17 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi all,

I am new to Yocto and to Distro work in general.

I want to use Yocto on the Kontron nanoETXexpressTT boards.
(http://de.kontron.com/products/computeronmodules/com+express/com+express+ultra/nanoetxexpresstt.html)

These boards are based on the Intel Atom E6xx and the EG20T platform
controller hub, so i think it is a good idea to start with the crownbay
BSP.

What would be the best, known to work, way to produce crownbay-noemgd images
for poky bernard?
Should i use git? Which branches should i use (the docs are contraditing
at least in parts)?

I read somewhere, that i should install Yocto to /usr/local/src/yocto.
Is this really necessary?

Thanks for any hints.

regards,

Andre


