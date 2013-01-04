Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4129E0045D
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 12:57:13 -0800 (PST)
Received: from cpc8-live22-2-0-cust106.know.cable.virginmedia.com
	([82.42.168.107] helo=[127.0.0.1])
	by www.dynamicdevices.co.uk with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32) (Exim 4.69)
	(envelope-from <ajlennon@dynamicdevices.co.uk>) id 1TrEGS-0001cG-8i
	for yocto@yoctoproject.org; Fri, 04 Jan 2013 20:53:16 +0000
Message-ID: <50E741F0.50303@dynamicdevices.co.uk>
Date: Fri, 04 Jan 2013 20:56:16 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CD0B6407.1EB06%belen.barros.pena@intel.com>
In-Reply-To: <CD0B6407.1EB06%belen.barros.pena@intel.com>
Subject: Bitbake and task offloading onto multiple cloud-based servers
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
X-List-Received-Date: Fri, 04 Jan 2013 20:57:14 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


Can anybody advise on whether bitbake currently supports offloading of
build tasks onto multiple systems? Perhaps cloud based?

I'm thinking that it would be more efficient for me if I could bring up
a number of Amazon EC2 servers (or similar) then have bitbake
parallelise the build onto those servers to significantly reduce my
build times?

I see bitbake supports a level of task parallelisation on a single box.

Can parallelisation of build onto multiple systems be achieved?

Is it something that should even be a goal?

Cheers,

Alex


