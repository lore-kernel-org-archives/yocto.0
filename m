Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 798D3E00AB4; Sat, 10 Aug 2019 05:05:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [46.105.73.133 listed in list.dnswl.org]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
X-Greylist: delayed 4560 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 Aug 2019 05:05:34 PDT
Received: from 10.mo177.mail-out.ovh.net (10.mo177.mail-out.ovh.net
	[46.105.73.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 459AFE00A5C
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2019 05:05:34 -0700 (PDT)
Received: from player796.ha.ovh.net (unknown [10.109.146.131])
	by mo177.mail-out.ovh.net (Postfix) with ESMTP id 384121063AF
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2019 12:49:33 +0200 (CEST)
Received: from 3mdeb.com (89-66-81-159.dynamic.chello.pl [89.66.81.159])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player796.ha.ovh.net (Postfix) with ESMTPSA id C404D8AA4FEC;
	Sat, 10 Aug 2019 10:49:31 +0000 (UTC)
To: Mauro Ziliani <mauro@faresoftware.it>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <98045ddf-89a0-e3f4-0d08-324c9d08f6c9@faresoftware.it>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Message-ID: <1d5472dd-7369-df64-6b61-97e2da7fa304@3mdeb.com>
Date: Sat, 10 Aug 2019 12:49:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <98045ddf-89a0-e3f4-0d08-324c9d08f6c9@faresoftware.it>
X-Ovh-Tracer-Id: 11618442616396132009
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgeduvddrudduledgfedvucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecuhedttdenucesvcftvggtihhpihgvnhhtshculddquddttddm
Subject: Re: Adding dtb to machine.conf extending it
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
X-List-Received-Date: Sat, 10 Aug 2019 12:05:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: en-US


On 10.08.2019 12:14, Mauro Ziliani wrote:
> Hi all.
Hi,
>
> I need to add my dtbo to overlays.
>
> I'm using RaspberryPI 3 with pyro and meta-raspberrypi
>
> I have to add tft35a.dtb to /boot/overlays in the file image.
>
>
> Can I extend raspberrypi3.conf?
>
You can and it will work, but modification of external layers is 
considered as a bad practice.
You would rather want to override the given variable you need to modify 
in local.conf
or in your custom layer.
>
> MZ
>
-- 
Maciej Pijanowski
Embedded Systems Engineer
https://3mdeb.com | @3mdeb_com


