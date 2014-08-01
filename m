Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3543E004E0; Fri,  1 Aug 2014 08:28:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C73FE003D8
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 08:28:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 79D5D27E04D;
	Fri,  1 Aug 2014 15:28:17 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id delk7VXL-wIZ; Fri,  1 Aug 2014 15:28:16 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 88EF227E031;
	Fri,  1 Aug 2014 15:28:16 +0000 (UTC)
Message-ID: <53DBB20B.8020307@dynamicdevices.co.uk>
Date: Fri, 01 Aug 2014 16:28:11 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?K=E9vin_THIERRY?= <kevin.thierry@open.eurogiciel.org>, 
	ronan <ronan.lemartret@open.eurogiciel.org>
References: <53DA58C9.50705@open.eurogiciel.org>
	<53DB6430.8090608@dynamicdevices.co.uk>
	<53DB660B.6040700@open.eurogiciel.org>
	<53DB66D8.3060500@dynamicdevices.co.uk>
	<53DBA085.7010705@dynamicdevices.co.uk>
	<53DBA665.7080002@open.eurogiciel.org>
In-Reply-To: <53DBA665.7080002@open.eurogiciel.org>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org, general@lists.tizen.org
Subject: Re: [Tizen General] Build Tizen with yocto work-flow
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
X-List-Received-Date: Fri, 01 Aug 2014 15:28:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit


On 01/08/2014 15:38, Kévin THIERRY wrote:
> Hi Alex,
>
> Can you check if the filesfind-supplements and find-supplements.ksyms
> exist by trying this please:
>
> bitbake rpm-native -c devshell
> ls -l scripts/find-supplements{,.ksyms}
>
> And tell us the output.

I think it's the bash vs dash issue rearing its head again

Replacing

 install -m 755 scripts/find-supplements{,.ksyms} ${D}${prefix}/lib/rpm

with

 install -m 755 scripts/find-supplements ${D}${prefix}/lib/rpm
  install -m 755 scripts/find-supplements.ksyms ${D}${prefix}/lib/rpm

in rpm-extraconf.inc got me further, onto an error about a missing "pushd"

This made me think it was a shall issue and sure enough reconfiguring
back to bash with

dpkg-reconfigure dash

fixed the problem.

I'm not sure of the Yocto policy on dash vs bash but I've been using
dash without problems in general for some time now

Cheers,

Alex


