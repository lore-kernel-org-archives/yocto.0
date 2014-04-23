Return-Path: <diego.ml@zoho.com>
Received: from sender1.zohomail.com (sender1.zohomail.com [72.5.230.95])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C81BE00997
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 06:26:07 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=zapps768; d=zoho.com; 
	h=from:to:subject:date:message-id:user-agent:mime-version:content-type; 
	b=rw73BQSm5bo68yWtGg5t82nLmhpHgAkMMLELcrhf1TFKXitQokFxx/2IvDAM+wVZptdOpLXLfbSs
	T4UNip4K6qrHYpy4EIRmeVO/DyZC5Kn0HtlFMq8fzIX0Hi1Lq3pY  
Received: from localhost.localdomain
	(host65-246-static.10-188-b.business.telecomitalia.it
	[188.10.246.65]) by mx.zohomail.com
	with SMTPS id 1398259565287434.3475789524168;
	Wed, 23 Apr 2014 06:26:05 -0700 (PDT)
From: Diego <diego.ml@zoho.com>
To: yocto@yoctoproject.org
Date: Wed, 23 Apr 2014 15:24:09 +0200
Message-ID: <2019960.0Ttd8yjkFA@localhost.localdomain>
User-Agent: KMail/4.12.4 (Linux/3.13.9-200.fc20.x86_64; KDE/4.12.4; x86_64; ; )
MIME-Version: 1.0
X-ZohoMailClient: External
X-Zoho-Virus-Status: 2
Subject: PACKAGECONFIG and related parameters
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
X-List-Received-Date: Wed, 23 Apr 2014 13:26:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi,

I'd like to update the glmark2 recipe:
http://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-benchmark/glmark2/glmark2_2012.12.bb
to latest upstream version.

The problem is the configure step is done with:
./waf configure --with-flavors=x11-gl,x11-glesv2
instead of the previous release's syntax:
./waf configure --enable-gl --enable-glesv2
Unfortunately:
./waf configure --with-flavors=x11-gl --with-flavors=x11-glesv2
is not an accepted syntax.

How can I express the PACKAGECONFIG[...] parameters, so that if both gl and 
gles2 are present I obtain "--with-flavors=x11-gl,x11-glesv2" as the configure 
parameter?

Thanks,
Diego


