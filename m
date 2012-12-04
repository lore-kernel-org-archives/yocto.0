Return-Path: <koansoftware@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2ED8E013F9
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 03:22:27 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so3388963lbo.35
	for <yocto@yoctoproject.org>; Tue, 04 Dec 2012 03:22:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:reply-to:organization:user-agent:mime-version
	:to:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=VwMgoShxicOQyzLluLWP/veXYdOYwsjaRhPMdR97JRs=;
	b=GZkpWZ6tAHpKCc+i6r99S99VKpfxvdYxSg11Zn9iefGyQzVCOkjkAh+nXXLXeasNTM
	q/5eGnBmIj7Q+nrFrPnxxXTRnogefvrQ0VDK3bVWW0vzd0Z78IF6NIVS9EGuUg0oXcRY
	01vJdbUsjiWpB5TYlhL/WlAEeNfCn9fpknKS4mcgdTS6BE3xz2JEtVaYYlG/0NRdy6eS
	u7+njs2hI0ln51bsWeSG6qDJTJRUm1y08sEtgYDbNF218wIOhPpNlCD+MEZcbXVkt81l
	00adkNOT5joI6JrGW3YlUW+Dbn53x6cn+EQMrcFIQHyu0wSJzCXIEPBsszqOmH779uiV
	FiYQ==
Received: by 10.152.104.240 with SMTP id gh16mr12860957lab.56.1354620146081;
	Tue, 04 Dec 2012 03:22:26 -0800 (PST)
Received: from [192.168.0.5]
	(host56-7-static.30-87-b.business.telecomitalia.it. [87.30.7.56])
	by mx.google.com with ESMTPS id pz9sm487163lab.11.2012.12.04.03.22.23
	(version=SSLv3 cipher=OTHER); Tue, 04 Dec 2012 03:22:25 -0800 (PST)
Message-ID: <50BDDCEE.4090902@gmail.com>
Date: Tue, 04 Dec 2012 12:22:22 +0100
From: Marco <koansoftware@gmail.com>
Organization: MC
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <50BCBE77.4070700@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B67F66@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B67F66@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Howto use yocto meta-toolchain?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: koansoftware@gmail.com
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Dec 2012 11:22:28 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Il 03/12/2012 18:46, Zhang, Jessica ha scritto:
> Hi Marco,
>
> Can you filed a bug about this in bugzilla?  Also, you don't need to sudo to run the install script, if you choose the default location which is /opt/poky/1.3, it'll prompt you for the password, or you can specify a directory under your $HOME dir.  In your bug, can you provide some detail how you build the toolchain, e.g. the local.conf file changes, etc.?
>

Jessica,
thank you for answering.

Bugzilla classification is different from its documentation.
Where do you suggest to place my bug?
https://wiki.yoctoproject.org/wiki/Bugzilla_Configuration_and_Bug_Tracking


Actually if I don't sudo to run the install script it doesn't work:

$ tmp/deploy/sdk/poky-eglibc-x86_64-arm-toolchain-1.3.sh
Enter target directory for SDK (default: /opt/poky/1.3):
You are about to install the SDK to "/opt/poky/1.3". Proceed[Y/n]?
Error: Unable to create target directory. Do you have permissions?

-- 
Marco

