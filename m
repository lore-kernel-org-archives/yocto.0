Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00A61E00A42
	for <yocto@yoctoproject.org>; Wed,  5 Mar 2014 09:10:54 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9B054862DB;
	Wed,  5 Mar 2014 17:10:52 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id ATs1ltzOG9b4; Wed,  5 Mar 2014 17:10:51 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id CBEF98610D;
	Wed,  5 Mar 2014 17:10:51 +0000 (UTC)
Message-ID: <53175A95.5020500@dynamicdevices.co.uk>
Date: Wed, 05 Mar 2014 17:10:45 +0000
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: ratheesh kannoth <ratheesh.ksz@gmail.com>
References: <CAGZFCEFFA+CBqkTbu4nsWuy4xjbbpsqrrXeLp4oE8OU84J_wkA@mail.gmail.com>	<5316ED96.8030403@dynamicdevices.co.uk>	<CAGZFCEGhHTJam1bjAnOa_s=TAkeZe0-UcWH-1f0QNk5Cr9TaTg@mail.gmail.com>	<531752DA.70108@dynamicdevices.co.uk>	<CAGZFCEE5knYLDPR7WDNdW2Z6JwPoouM_dSfUN563DSxMNdkj7w@mail.gmail.com>	<53175857.9040702@dynamicdevices.co.uk>
	<CAGZFCEEM6ChF0+HNG9dRN9JVnbeH_BXHcc+qCY4psQ3KQo9Kuw@mail.gmail.com>
In-Reply-To: <CAGZFCEEM6ChF0+HNG9dRN9JVnbeH_BXHcc+qCY4psQ3KQo9Kuw@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Mar 2014 17:10:55 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 05/03/2014 17:03, ratheesh kannoth wrote:
> This wont work. I dont think this patch ever went into pain. 

I could be wrong, but looking at my current
poky/meta/classes/package.bbclass it looks like it's in there around
line 1288

http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/package.bbclass#n1288

A/


