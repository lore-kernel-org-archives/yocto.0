Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D19DE00B5E; Wed, 31 Oct 2018 07:24:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74E47E00AE0
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2018 07:24:36 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w9VENnce025919
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 31 Oct 2018 07:24:05 -0700
Received: from [128.224.56.49] (128.224.56.49) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.408.0;
	Wed, 31 Oct 2018 07:23:51 -0700
To: <hs@denx.de>, <yocto@yoctoproject.org>
References: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <2d8e6033-d507-b462-6eb9-e45237d0a204@windriver.com>
Date: Wed, 31 Oct 2018 10:23:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <6c9102d2-91dc-41be-3aec-ab60d4688af5@denx.de>
Subject: Re: thud, beaglebone-yocto.conf: SERIAL_CONSOLES setting
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
X-List-Received-Date: Wed, 31 Oct 2018 14:24:37 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/31/18 9:23 AM, Heiko Schocher wrote:
> Hello all,
> 
> just builded core-image-minimal with current head of thud branch for
> the beaglebone-yocto machine, with linux 4.14.x LTS "Linux version 
> 4.14.78",
> installed the resulting sd card image and boot it, and get:
> 
> INIT: Id "O0" respawning too fast: disabled for
> 5 minutes
> 
> Reason seems to be:
> 
> meta-yocto-bsp/conf/machine/beaglebone-yocto.conf
> 
> SERIAL_CONSOLES = "115200;ttyO0"
> 
> shouldn't this be
> 
> SERIAL_CONSOLES = "115200;ttyS0"
> 
> With this fix, sd card image boot fine ... may I oversee seomthing
> obvious ?

Doesn't look like it.

I'd suggest sending a patch to the yocto mailing list, that
way folks can comment directly and it can be pulled into
point releases, etc.

Bruce

> 
> bye,
> Heiko


