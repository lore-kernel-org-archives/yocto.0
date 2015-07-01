Return-Path: <brahim.aida@openwide.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1884E00A54; Wed,  1 Jul 2015 02:03:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 498 seconds by postgrey-1.32 at yocto-www;
	Wed, 01 Jul 2015 02:03:44 PDT
Received: from zimbra3.corp.accelance.fr (zimbra3.corp.accelance.fr
	[213.162.49.233])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89E91E00A38
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 02:03:44 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by zimbra3.corp.accelance.fr (Postfix) with ESMTP id 6A0307EC1E
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 10:55:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra3.corp.accelance.fr
Received: from zimbra3.corp.accelance.fr ([127.0.0.1])
	by localhost (zimbra3.corp.accelance.fr [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id Rvxj0vMgV6q3 for <yocto@yoctoproject.org>;
	Wed,  1 Jul 2015 10:55:23 +0200 (CEST)
Received: from zimbra2.corp.accelance.fr (zimbra2.corp.accelance.fr
	[213.162.49.232])
	by zimbra3.corp.accelance.fr (Postfix) with ESMTP id BF1507E626
	for <yocto@yoctoproject.org>; Wed,  1 Jul 2015 10:55:23 +0200 (CEST)
Date: Wed, 1 Jul 2015 10:55:23 +0200 (CEST)
From: =?utf-8?B?QcOvZGE=?= Brahim <brahim.aida@openwide.fr>
To: yocto@yoctoproject.org
Message-ID: <266990841.2392007.1435740923715.JavaMail.root@openwide.fr>
In-Reply-To: <74556586.2389309.1435738605689.JavaMail.root@openwide.fr>
MIME-Version: 1.0
X-Originating-IP: [213.162.49.238]
X-Mailer: Zimbra 7.2.6_GA_2926 (ZimbraWebClient - FF3.0 (Linux)/7.2.6_GA_2926)
X-Mailman-Approved-At: Thu, 02 Jul 2015 08:03:01 -0700
Subject: No bb files matched ?
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
X-List-Received-Date: Wed, 01 Jul 2015 09:03:49 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit


Hello,

I'm trying to generate an embedded linux image with a java oracle
meta but here what I get :

> aida@aida:~/poky/build$ bitbake core-image-minimal
> Loading cache: 100% |##########################################| ETA:
> 00:00:00
> Loaded 1292 entries from dependency cache.
> WARNING: No bb files matched BBFILE_PATTERN_oraclejava
> '^/home/aida/poky/meta-oracle-java/'
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'oracle-jse-jdk-i586' (but
> /home/aida/poky/meta/recipes-core/images/core-image-minimal.bb
> RDEPENDS on or otherwise requires it)
> ERROR: oracle-jse-jdk-i586 was skipped: because it has a restricted
> license not whitelisted in LICENSE_FLAGS_WHITELIST
> NOTE: Runtime target 'oracle-jse-jdk-i586' is unbuildable,
> removing...
> Missing or unbuildable dependency chain was: ['oracle-jse-jdk-i586']
> ERROR: Required build target 'core-image-minimal' has no buildable
> providers.
> Missing or unbuildable dependency chain was: ['core-image-minimal',
> 'oracle-jse-jdk-i586']
> 
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code.


Despite my bblayers.conf :



> BBLAYERS ?= " \
> /home/aida/poky/meta \
> /home/aida/poky/meta-yocto \
> /home/aida/poky/meta-oracle-java \
> /home/aida/poky/meta-yocto-bsp \
> "

And my local.conf :

> LICENSE_FLAGS_WHITELIST += "oracle_java"

I can't find where this No bb files matched BBFILE_PATTERN warning
came from, neither then the licence problem...

Thank you !


