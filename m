Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA1F6E00A33
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 01:25:49 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 31732862DB;
	Wed,  5 Mar 2014 09:25:48 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id cOSdklGaH13Q; Wed,  5 Mar 2014 09:25:47 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 569868610D;
	Wed,  5 Mar 2014 09:25:47 +0000 (UTC)
Message-ID: <5316ED96.8030403@dynamicdevices.co.uk>
Date: Wed, 05 Mar 2014 09:25:42 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: ratheesh kannoth <ratheesh.ksz@gmail.com>
References: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>
In-Reply-To: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>
X-Enigmail-Version: 1.6
Cc: yocto@yoctoproject.org
Subject: Re: Error on building
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
X-List-Received-Date: Wed, 05 Mar 2014 09:25:52 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 05/03/2014 08:01, ratheesh kannoth wrote:
> I am getting following error. what is the problem. ? How can i get around this ?
>
>
> ERROR: QA Issue: non -staticdev package contains static .a library:
> sf-test path '/work/x86_64-wrs-linux/sf/1.0-r0/packages-split/sf-test/lib/snort_dynamicengine/libsf_engine.a'
> ERROR: QA Issue: sf-test:
> /work/x86_64-wrs-linux/sf/1.0-r0/packages-split/sf-test/lib/snort_dynamicengine/libsf_engine.so.0.0.0
> contains probably-redundant RPATH /usr/lib64
>

Ratheesh, I believe you would need to ensure that any static libraries
built are either removed or packaged appropriately so as not to trigger
the Q/A error.

One approach is to modify the recipe to add the static library to the
-staticdev package, i.e. to add

FILES_${PN}-staticdev += " path\to\static\library\libsf_engine.a"

What recipe are you trying to build?

Cheers,

Alex

> Thanks,
> Ratheesh
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
represent those of the company.

