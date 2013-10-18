Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83D3BE016E2
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 06:09:13 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D29CAF811E1; Fri, 18 Oct 2013 07:09:12 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id D3457F81188;
	Fri, 18 Oct 2013 07:09:11 -0600 (MDT)
Message-ID: <526132FB.3090202@mlbassoc.com>
Date: Fri, 18 Oct 2013 07:09:15 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.0
MIME-Version: 1.0
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <525FEB23.6050907@mlbassoc.com>
	<CAP71WjwidN0f1K6m1SfQqCbObqRKD7f4_RbmftrWkE9iOF7_OA@mail.gmail.com>
In-Reply-To: <CAP71WjwidN0f1K6m1SfQqCbObqRKD7f4_RbmftrWkE9iOF7_OA@mail.gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Busybox configuration example?
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
X-List-Received-Date: Fri, 18 Oct 2013 13:09:13 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-10-17 13:49, Nicolas Dechesne wrote:
> On Thu, Oct 17, 2013 at 3:50 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> Can someone explain how I might control my busybox builds?
>> For example, I routinely add this to busybox*.bbappend:
>>
>>    #
>>    # Force 'ifup' to wait longer for really slow links...
>>    #
>>    do_prepare_config_append () {
>>      sed -i 's/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R
>> -n"/CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n -T 1 -t 20"/' ${S}/.config
>>    }
>>
>> which is just editing the confguration file to match my preferences.
>> Is there a way to do this using the "configuration fragments" mentioned
>> above?
>
> here is an example of busybox config fragment, that we use
>
> https://git.linaro.org/gitweb?p=openembedded/meta-linaro.git;a=tree;f=meta-linaro/recipes-core/busybox;h=2c4a6b6b8b542b2eef04561d95a802d855ae7573;hb=master
>
> i don't know if the config fragment would work for what you are
> doing.. let us know ;-)

Thanks for the example.  I added this simple config fragment and it works fine.
   # Force 'ifup' to wait longer for really slow links...
   CONFIG_IFUPDOWN_UDHCPC_CMD_OPTIONS="-R -n -T 1 -t 20"
Of course, the comment is stripped in the final configuration file, but it
documents the purpose of the fragment.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

