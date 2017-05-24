Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF836E00B2E; Wed, 24 May 2017 07:19:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4DA81E00B27
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:19:17 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id B4EEA68A01C; Wed, 24 May 2017 15:19:16 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 2474C68A019;
	Wed, 24 May 2017 15:19:16 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D26B067400FD;
	Wed, 24 May 2017 16:19:15 +0200 (CEST)
To: yocto@yoctoproject.org
References: <DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0@DM5PR0101MB2953.prod.exchangelabs.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <c5ff6461-c4b9-c490-19cb-d86cc9e1b801@mlbassoc.com>
Date: Wed, 24 May 2017 16:19:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <DM5PR0101MB2953820AFBD0E9A6B212933BB6FE0@DM5PR0101MB2953.prod.exchangelabs.com>
Subject: Re: dynamic-layers?
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
X-List-Received-Date: Wed, 24 May 2017 14:19:19 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2017-05-24 12:30, Takashi Matsuzawa wrote:
> Hello, Yocto.
> I am a bit confused with dynamic-layers included in some of the recent layers in various BSPs.
> 
> e.g.
> 
> https://github.com/Freescale/meta-freescale/blob/master/conf/layer.conf
> 
>  ># The .bbappend and .bb files are included if the respective layer
>  ># collection is available.
>  >BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bbappend' % layer \
>  >               for layer in BBFILE_COLLECTIONS.split())}"
>  >BBFILES += "${@' '.join('${LAYERDIR}/dynamic-layers/%s/recipes*/*/*.bb' % layer \
>  >               for layer in BBFILE_COLLECTIONS.split())}"
> 
> In meta-freescale/dynamic-layers, there are browser-layer, efi-layer, etc. for conditional inclusion.
> And I think they are included only their names (browser-layer, etc.) are BBFILE_COLLECIONS.
> 
> Question here is, who will be adding 'browser-layer' to BBFILE_COLLECTIONS when I want to include browser-layer in my build.
> 
> Is it something to be done in my local.conf or customized distro conf file?

No, it's in <layer>/conf/layer.conf for the <layer> in question.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

