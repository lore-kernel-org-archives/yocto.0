Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 61883E00D08; Tue, 16 Apr 2019 12:25:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F29EE00C1B
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2019 12:25:20 -0700 (PDT)
Received: from [192.168.1.177] ([82.16.206.23]) by mrelayeu.kundenserver.de
	(mreue012 [212.227.15.163]) with ESMTPSA (Nemesis) id
	1M1JJC-1hI7b32d22-002nCk for <yocto@yoctoproject.org>; Tue, 16 Apr 2019
	21:25:19 +0200
To: yocto@yoctoproject.org
References: <a40ab493-39a9-3290-631f-5474557d1a82@gmail.com>
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <02ebe1b4-4fb2-7297-91eb-d56cccd736a5@2net.co.uk>
Date: Tue, 16 Apr 2019 20:25:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <a40ab493-39a9-3290-631f-5474557d1a82@gmail.com>
X-Provags-ID: V03:K1:bkiEzOXKPY2GKrQYAXf4ZFa3qjjRpti2oXZyh1dlKPxH+C6rqMw
	GRTAYXy5/JzZbC/BLhwg7YK1PMyfjzYNYR7uhkyNN88N6fMW3RHLVHTCoVFZ48dPmyZbUxS
	3GVLEVCTK9KYynzFzaGsvqZpwBpYJYkTwz6GENR2i24+nmv//jV1lwkvdS4/z3BlV+fbOVZ
	2ElWX7n1UBhxLSNB5KaEg==
X-UI-Out-Filterresults: notjunk:1;V03:K0:8dwfHNGGviM=:iSrZzO7AuhJSxk9t7DZ8+o
	WO8nGbNtEUcoxs4I12ndev3O7ouPzpES3kZzP1/zLZeHG3ljNygegaAZily0KwUur5xjLc0vW
	9cJEA0KP2amU2m9d474yPCCV3OkAeq3I+vmlU9IOo7dmIFPQet1wnJ6ITw8hPyW2JnYIlq4rj
	l0EhRO+f6ZOq5WU7//878d9Z1ZOZeiWMBiTfKt/SWtplUX8AOqn9KQSC1kFZEJ/nqg2Xfiyoi
	9CrTexIkGtxsS+wvrYwsjjukFgs+lez/xnb5eS1UiDfqzT1A4pXqL3YaaRSekGpKd2bXqkJ/B
	3DHxNOw01CAjqy/hV+Ky0jGUkEditRjsRyPtQPZGu1/AQrnD0v5dxZDCRPXr4uz5i9A9dyZCD
	gSszHjqFslqB6KpQS4yFtW7F1BoQ6eaOI+g17IsHNqTQ9bp+tC5WL3nAFogBJ/Fa3Q7lSVlSm
	7X95Q5tiv1TYIL2CopQpWBHbbK9OGo5tuabdtWoPq0kaN2f8s1fTA2I2bjrqXt9TY0qBAI6rk
	lMZFoswNIKBdU2MB7NUUJOqbQlapd5+Qm9rGvCFwxRUvnSXPSWDdhwc8NltoOz43Yw6c9PPKW
	WicmArgv032tvFSTc1yLSrp3taW88+Vjsh+xV2yvPW26TZ5/PZiK5Mp/32R5cmZH2pHijuTjj
	Nvk8a1kTTcdbwsTmLcauOFSrFwoxBbQ0K1awQKokHQTV9C3bIH79hE5xvMDFJQjdFgtpB3nCq
	0M4D80TsPU9sH/G9as2jne8H09CRAytt9amUO4ufg7CPtgu1lrzMZH3LV5I=
Subject: Re: Intel Galleio Board SSH Minimal Poky Image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Apr 2019 19:25:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

Hi Nick,

On 16/04/2019 16:36, nick wrote:
> Greetings,
> 
> What is the minimal image from the poky yocto recipes that has ssh enabled by
> default or is it just better to enable it in the core minimal image on system
> startup.

core-image-minimal plus dropbear (ssh daemon) comes to 16 MB when
installed (BeagleBone Black). This is just the rootfs. Add another 6 to
10 MB for bootloader and kernel.

> 
> Thanks,
> 
> Nick
> 

Cheers,
Chris

-- 
Chris Simmonds, trainer and consultant at 2net
http://www.2net.co.uk
Author of "Mastering Embedded Linux Programming"

