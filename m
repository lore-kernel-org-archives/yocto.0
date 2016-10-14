Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5632EE00E53; Fri, 14 Oct 2016 01:02:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E933EE00CCA
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 01:02:02 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1buxRD-0005TU-RM
	for yocto@yoctoproject.org; Fri, 14 Oct 2016 10:01:55 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Fri, 14 Oct 2016 11:01:43 +0300
Message-ID: <abc0cd1b-64dd-bf77-4229-d6964fc6b7a7@reliableembeddedsystems.com>
References: <1707604.JiaMnXxcz2@peggleto-mobl.ger.corp.intel.com>
	<2371a296-57bd-affa-0b1f-1304ce81e0dc@windriver.com>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
In-Reply-To: <2371a296-57bd-affa-0b1f-1304ce81e0dc@windriver.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org, "Lock,
	Joshua" <public-joshua.g.lock-ral2JQCrhuEAvxtiuMwx3w@plane.gmane.org>
Subject: Re: Migration info - runqemu
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
X-List-Received-Date: Fri, 14 Oct 2016 08:02:04 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Robert,

On 2016-10-14 05:12, Robert Yang wrote:
>
> QB_SYSTEM_NAME: qemu name, e.g., "qemu-system-i386"
> QB_OPT_APPEND: options to append to qemu, e.g., "-show-cursor"

...

Could you also please mention which of those values are obligatory and 
what are the default values in case they are not contained in the config 
file?

Regards,

Robert


