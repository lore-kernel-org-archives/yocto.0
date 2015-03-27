Return-Path: <mike.looijmans@topicproducts.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFB19E0096F; Fri, 27 Mar 2015 00:47:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 70 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Mar 2015 00:47:23 PDT
Received: from retry101.mer-nm.internl.net (vif1-retry101.mer-nm.internl.net
	[217.149.192.107])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 449FDE00832
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 00:47:23 -0700 (PDT)
Received: from smtp102.mer-nm.internl.net (smtp102.mer-nm.internl.net
	[217.149.192.138])
	by retry101.mer-nm.internl.net (Postfix) with ESMTP id D973F41936
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 08:46:15 +0100 (CET)
Received: from amavisd-new (mailscanner04.wrt-nm.internl.net [217.149.192.127])
	by smtp102.mer-nm.internl.net (Postfix) with ESMTP id E6B1E3F86C
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 08:46:10 +0100 (CET)
Received: from smtp102.mer-nm.internl.net ([217.149.192.138])
	by amavisd-new (mailscanner04.wrt-nm.internl.net [217.149.192.160])
	(amavisd-new, port 10024) with ESMTP for <yocto@yoctoproject.org>;
	Fri, 27 Mar 2015 08:46:10 +0100 (CET)
Received: from TOP-EX01.TOPIC.LOCAL (mail.topic.nl [82.204.13.182])
	(using TLSv1 with cipher AES128-SHA (128/128 bits))
	(No client certificate requested)
	by smtp102.mer-nm.internl.net (Postfix) with ESMTPS
	for <yocto@yoctoproject.org>; Fri, 27 Mar 2015 08:46:09 +0100 (CET)
Received: from [192.168.80.121] (192.168.80.121) by TOP-EX01.TOPIC.LOCAL
	(192.168.10.102) with Microsoft SMTP Server (TLS) id 14.3.224.2;
	Fri, 27 Mar 2015 08:47:13 +0100
Message-ID: <55150AC1.6080202@topic.nl>
Date: Fri, 27 Mar 2015 08:46:09 +0100
From: Mike Looijmans <mike.looijmans@topic.nl>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <55140D4C.2060107@mlbassoc.com>
In-Reply-To: <55140D4C.2060107@mlbassoc.com>
X-Originating-IP: [192.168.80.121]
X-EXCLAIMER-MD-CONFIG: 9833cda7-5b21-4d34-9a38-8d025ddc3664
X-EXCLAIMER-MD-BIFURCATION-INSTANCE: 0
Subject: Re: Sharing sstate
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
X-List-Received-Date: Fri, 27 Mar 2015 07:47:26 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: quoted-printable

=EF=BB=BFOn 26-03-15 14:44, Gary Thomas wrote:
> I have two development servers, one running an older version
> of Fedora (x86 *), the other runs a recent Ubuntu (x86_64).
> Both are the same CPU core (Intel(R) Core(TM)2 Quad CPU Q6600 @ 2.40GHz)
>
> I've just tried building the same target, using the same version
> of Poky/Yocto, sharing the sstate cache (fully populated) from
> the x86_64 machine with the x86 machine.  This was done using
> HTTP.  Sadly, there was not a single file found in the cache
> that could be used.
>
> Should this not be expected to work?  Does sstate cache only
> work across like systems (32 vs 64 bit hosts)?

The hosts need to be similar for the build tools to be recycled. If they ha=
ve=20
different OS versions, or even different CFLAGS you'll see a rebuild of=20
"native" packages.

It should however be able to recycle things for the target, because these=20
should not depend on the build host's configuration.

We currently have a "server" with ubuntu 12 on it, while most "clients" run=
=20
14. Typically the clients build their own tools, but they do re-use all tar=
get=20
packages (like FPGA bitstream and ARM software packages).


> Also, Mark Hatle mentioned a few days ago that there are ways
> to "lock" versions of the sstate cache.  I still haven't found
> any info/documentation on this.  Can someone please explain more?
>
> Thanks
>
> (*) I can't update my x86 machine to a more recent (x86_64)
> distribution as I have many older "projects" that only run
> on that hardware and no time/opportunity to upgrade, hence
> my desire to share in this manner.
>



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


