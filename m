Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 35B12E00801; Tue, 19 Aug 2014 19:09:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2C23E00746
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 19:09:16 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s7K296DC000595
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 19 Aug 2014 19:09:06 -0700 (PDT)
Received: from server.local (128.224.21.169) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.174.1;
	Tue, 19 Aug 2014 19:09:05 -0700
Message-ID: <53F40306.2080500@windriver.com>
Date: Tue, 19 Aug 2014 22:08:06 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>, Yocto Project
	<yocto@yoctoproject.org>
References: <4EAABF91-29AE-4B7D-9FEE-07C87F37197D@keylevel.com>
In-Reply-To: <4EAABF91-29AE-4B7D-9FEE-07C87F37197D@keylevel.com>
Subject: Re: Kernel driver for Turbosight TBS6285 DVB card
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
X-List-Received-Date: Wed, 20 Aug 2014 02:09:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-08-19, 5:26 PM, Chris Tapp wrote:
> I need to include the kernel driver for the Turbosight TBS6285 DVB card in an image.
>
> The official bundle at http://www.tbsdtv.com/download/document/common/tbs-linux-drivers_v140707.zip includes the drivers and a load of other "stuff" (e.g. a full V4L build).
>
> LinuxTV.org have the drivers extracted into a .tar.bz2 at (e.g.) http://linuxtv.org/downloads/drivers/linux-media-LATEST.tar.bz2, so I plan to use this as the download source.
>
> So far I have a recipe which downloads from this URL and extracts the files into the work area and ${WORKAREA}/drivers/media includes a Makefile and Kconfig.
>
> I've looked at the Yocto documentation, but this doesn't seem to be a good match for the "Out of tree" kernel module case.

Hmm. At a glance, I'd say that it does sound like a typical out of
tree module build.

Did you try adopting the meta-skeleton hello-mod recipe and point it
at that source directory ?

Bruce

>
> How should I proceed from here? Is there another driver I can use as a starting point?
>
> --
>
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
>
>
>
>


