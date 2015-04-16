Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D74F9E009C2; Thu, 16 Apr 2015 04:26:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp103.mer-nm.internl.net (smtp103.mer-nm.internl.net
	[217.149.192.139])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 86E43E009A3
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 04:26:38 -0700 (PDT)
Received: from amavisd-new (mailscanner02.wrt-nm.internl.net [217.149.192.114])
	by smtp103.mer-nm.internl.net (Postfix) with ESMTP id 1B7903F562
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 13:26:36 +0200 (CEST)
Received: from smtp103.mer-nm.internl.net ([217.149.192.139])
	by amavisd-new (mailscanner02.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Thu, 16 Apr 2015 13:26:35 +0200 (CEST)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp103.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Thu, 16 Apr 2015 13:26:35 +0200 (CEST)
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Thu, 16 Apr 2015 13:27:26 +0200
Message-ID: <552F9C6A.3000405@topic.nl>
Date: Thu, 16 Apr 2015 13:26:34 +0200
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <mailman.9.1429038001.21905.yocto@yoctoproject.org>
	<552F9641.8090805@gmail.com>
In-Reply-To: <552F9641.8090805@gmail.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Re: Yocto Header files?
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
X-List-Received-Date: Thu, 16 Apr 2015 11:26:42 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 16-04-15 13:00, testlaster wrote:
> Hi everyone.
>
> I would just like to know if it is possible to get the Yocto Kernel Heade=
r files?
>
> I need it to build a PCI driver but I cant seem to find a recipe or a dow=
nload
> for it.

Short answer: Put "inherit module" in your recipe to build the module.

Example Makefile:

https://github.com/topic-embedded-products/kernel-module-vdmafb/blob/master=
/Makefile

Example bitbake (hence Yocto) recipe for an external kernel module:

https://github.com/topic-embedded-products/meta-topic/blob/master/recipes-k=
ernel/modules/kernel-module-vdmafb.bb




Kind regards,

Mike Looijmans
System Expert

TOPIC Embedded Products
Eindhovenseweg 32-C, NL-5683 KH Best
Postbus 440, NL-5680 AK Best
Telefoon: +31 (0) 499 33 69 79
Telefax: +31 (0) 499 33 69 70
E-mail: mike.looijmans@topicproducts.com
Website: www.topicproducts.com

Please consider the environment before printing this e-mail

Please visit us at the Hannover Messe which will be held from 13.04.2015 ti=
ll 17.04.2015, Hall 2, Stand C12, Holland High Tech House
http://www.hannovermesse.de/exhibitor/topic-embedded-products/L929216?sourc=
e=3Dakl



