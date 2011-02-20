Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 593214C80479
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 08:51:54 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1KEprP8001377
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 06:51:53 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Sun, 20 Feb 2011 06:51:53 -0800
Message-ID: <4D612A83.7040302@windriver.com>
Date: Sun, 20 Feb 2011 08:51:47 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
In-Reply-To: <466E08F0-1ADF-4618-A7DA-B6390C7AC2A9@keylevel.com>
X-Originating-IP: [172.25.36.226]
Subject: Re: What builds 'netbase'?
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
X-List-Received-Date: Sun, 20 Feb 2011 14:51:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 2/19/11 8:58 AM, Chris Tapp wrote:
> I want to make some changes to /etc/interfaces.
> 
> It looks to me as if this this comes from 'netbase', but what do I  
> need to rebuild to get my changes in to the rootfs? i.e. is there  
> something I can
> 
> bitbake -c clean ???; bitbake ???
> 
> to get my changes in to the rootfs image?
> 
> I tried cleaning 'netbase', but that made no difference when I then  
> 'bitbake poky-image-minimal'.

If you already have a built copy of netbase in your sstate-cache, all clean will
do is remove the built version, and resync from the cache.  (bitbake -c cleanall
will remove the sstate-cache files as well, forcing a complete rebuild from
fetch down to packaging...)

To avoid this, the best way (after changing the netbase) is to adjust the PR
within the recipe.

My suggestion is if the PR is "12", change it to "12.1" on your first
modification, "12.2" on your second, etc..

--Mark

> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


