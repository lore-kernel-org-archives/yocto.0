Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CC5CCE006DB; Fri,  1 Aug 2014 07:35:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 872EDE00543
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 07:34:57 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id B70CF27E04D;
	Fri,  1 Aug 2014 14:34:55 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 1HAWpEi1E8FD; Fri,  1 Aug 2014 14:34:55 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CEFF127E031;
	Fri,  1 Aug 2014 14:34:54 +0000 (UTC)
Message-ID: <53DBA589.9080506@dynamicdevices.co.uk>
Date: Fri, 01 Aug 2014 15:34:49 +0100
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
X-List-Received-Date: Fri, 01 Aug 2014 14:35:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

Hi Kévin,

On 01/08/2014 15:38, Kévin THIERRY wrote:
> ls -l scripts/find-supplements{,.ksyms}

~/yocto/poky/build/tmp/work/x86_64-linux/rpm-native/git-r0/git$ ls -l
scripts/find-supplements{,.ksyms}
-rw-r--r-- 1 ajlennon ajlennon  418 Aug  1 11:41 scripts/find-supplements
-rw-r--r-- 1 ajlennon ajlennon 2764 Aug  1 11:41
scripts/find-supplements.ksyms

Cheers,

Alex


