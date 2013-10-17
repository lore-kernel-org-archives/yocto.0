Return-Path: <ml@communistcode.co.uk>
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CC9AE01653
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 08:58:45 -0700 (PDT)
Message-ID: <52600937.6080708@communistcode.co.uk>
Date: Thu, 17 Oct 2013 16:58:47 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <525FEB23.6050907@mlbassoc.com>
In-Reply-To: <525FEB23.6050907@mlbassoc.com>
Subject: Re: Busybox configuration example?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 17 Oct 2013 15:58:46 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 17/10/13 14:50, Gary Thomas wrote:
> I see mention of busybox configuration fragments in the mega
> manual (section 5.9.7) but no explanation nor examples.
> 
> Can someone explain how I might control my busybox builds?
> For example, I routinely add this to busybox*.bbappend:
> 
>   #
>   # Force 'ifup' to wait longer for really slow links...
>   #
>   do_prepare_config_append () {
>     sed -i 's/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R
> -n"/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n -T 1 -t 20"/' ${S}/.config
>   }
> 
> which is just editing the confguration file to match my preferences.
> Is there a way to do this using the "configuration fragments" mentioned
> above?
> 
> Thanks
> 

If I remember correctly there is one in meta-skeleton.


-- 
  Jack Mitchell (jack@embed.me.uk)
  Embedded Systems Engineer
  Cambrideshire, UK
  http://www.embed.me.uk
-- 

