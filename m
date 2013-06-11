Return-Path: <diego.ml@zoho.com>
Received: from sender1.zohomail.com (sender1.zohomail.com [72.5.230.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7C73E0151C
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 05:28:15 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:subject:date:message-id:user-agent:mime-version:content-type; 
	b=dG9wws4ITyAkkJAkb4Xv1ZH9+gWE8IK9ue3SSsZg2WC2Zs0j4ttyHfR8mmT9TKGoK2uxkryrh9NY
	Un6MaV3g/7hQWFDTsDC08snJ3ZSd4BVNnq3DfDr2P/bQTHtX5/gu  
Received: from localhost.localdomain (static-217-133-170-65.clienti.tiscali.it
	[217.133.170.65]) by mx.zohomail.com
	with SMTPS id 1370953693443617.355466487732;
	Tue, 11 Jun 2013 05:28:13 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: yocto@yoctoproject.org
Date: Tue, 11 Jun 2013 14:28:09 +0200
Message-ID: <1810497.uZE9ivf2T0@localhost.localdomain>
User-Agent: KMail/4.10.3 (Linux/3.8.13-100.fc17.x86_64; KDE/4.10.3; x86_64; ; )
MIME-Version: 1.0
X-ZohoMailClient: External
X-Zoho-Virus-Status: 2
Subject: How to deal with non-standard license.
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
X-List-Received-Date: Tue, 11 Jun 2013 12:28:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi everybody,

I have written a recipe which I'd like to contribute for glmark2:
https://launchpad.net/glmark2

The last thing that puzzles me before submitting it is that it's partly GPL3+, 
and partly under this license:
https://github.com/rafalmiel/glmark2-wl/blob/master/COPYING.SGI
which is not in this list:
https://wiki.yoctoproject.org/wiki/License_Infrastructure_Interest_Group#Licenses 
Is there any way to deal with that license? What should I put in the LICENSE 
field in my recipe?

Bests,
Diego


