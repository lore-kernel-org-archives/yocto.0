Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21C2EE01653
	for <yocto@yoctoproject.org>; Thu, 17 Oct 2013 06:50:27 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 5D129F81208; Thu, 17 Oct 2013 07:50:27 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E0F80F81207;
	Thu, 17 Oct 2013 07:50:25 -0600 (MDT)
Message-ID: <525FEB23.6050907@mlbassoc.com>
Date: Thu, 17 Oct 2013 07:50:27 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: Busybox configuration example?
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
X-List-Received-Date: Thu, 17 Oct 2013 13:50:30 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I see mention of busybox configuration fragments in the mega
manual (section 5.9.7) but no explanation nor examples.

Can someone explain how I might control my busybox builds?
For example, I routinely add this to busybox*.bbappend:

   #
   # Force 'ifup' to wait longer for really slow links...
   #
   do_prepare_config_append () {
     sed -i 's/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n"/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n -T 1 -t 20"/' ${S}/.config
   }

which is just editing the confguration file to match my preferences.
Is there a way to do this using the "configuration fragments" mentioned
above?

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

