Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0338CE00A0C; Wed, 31 Oct 2018 05:57:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93DB7E00950
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 05:57:47 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w9VCvUDn026377
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 31 Oct 2018 05:57:30 -0700 (PDT)
Received: from [128.224.56.49] (128.224.56.49) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 31 Oct 2018 05:57:29 -0700
To: Jairo <jairo@futurasmus-knxlab.es>, <yocto@yoctoproject.org>
References: <ac25a5b004fb50f504cb455375de268710121957.camel@futurasmus-knxlab.es>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <a0b30c78-7a0f-582b-07dc-23c989dc2f36@windriver.com>
Date: Wed, 31 Oct 2018 08:57:28 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <ac25a5b004fb50f504cb455375de268710121957.camel@futurasmus-knxlab.es>
Subject: Re: [avahi] add service into rocko
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
X-List-Received-Date: Wed, 31 Oct 2018 12:57:48 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/31/18 7:03 AM, Jairo wrote:
> Hi all,
> 
> I need to install an avahi service on rocko for (a node of) node-red.
> 
> OK, I have an avahi_0.6.32.bb recipe at 'sources/poky/meta/recipes-
> connectivity/avahi/' which path is added at bblayers.conf file.
> 
> but if I add the package at local.conf file like this:
> 
> IMAGE_INSTALL_append = " avahi"
> 
> when I try to make an image, bitbake can't find avahi
> 
>     Collected errors:
>      * opkg_prepare_url_for_install: Couldn't find anything to satisfy
> 'avahi'.
> 
> What I'm doing wrong?

The recipe name and the packages that you install are not (always)
the same thing.

i.e. in the recipe:

PACKAGES =+ "libavahi-gobject avahi-daemon libavahi-common libavahi-core 
libavahi-client avahi-dnsconfd libavahi-glib avahi-autoipd avahi-utils"


So depending on the functionality that you want, you'd be installing
one or more of those packages to your image. (I'm betting you just
want avahi-daemon).

Bruce

> 
> Thanks,
> Jairo
> 
> 


