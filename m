Return-Path: <benoit.rapidel+yocto@exmachina.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40C9DE007D5; Thu,  5 Nov 2015 09:52:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from galat.willykaze.org (galat.willykaze.org [91.121.12.57])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC82FE0071C
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 09:52:12 -0800 (PST)
Received: from [192.168.0.21] (vil69-h01-31-38-223-239.dsl.sta.abo.bbox.fr
	[31.38.223.239])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by galat.willykaze.org (Postfix) with ESMTPSA id 1C35E707B0
	for <yocto@yoctoproject.org>; Thu,  5 Nov 2015 18:52:08 +0100 (CET)
References: <563B88AB.9050506@exmachina.fr>
To: yocto@yoctoproject.org
From: Benoit Rapidel <benoit.rapidel+yocto@exmachina.fr>
Organization: ExMachina
X-Forwarded-Message-Id: <563B88AB.9050506@exmachina.fr>
Message-ID: <563B9741.6090707@exmachina.fr>
Date: Thu, 5 Nov 2015 18:52:01 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <563B88AB.9050506@exmachina.fr>
Subject: Unable to issue bitbake linux-yocto -c menuconfig
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: benoit.rapidel+yocto@exmachina.fr
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Nov 2015 17:52:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Forgot to include the ML…

----

I just updated to Debian Jessie so:
$ tmux -V
tmux 1.9

I tested this commands before updating to Jessie and the output for a multipane
window was:
$ tmux list-panes -F "#{?pane_active,yes,no}"
yes
no
no
no
$ tmux list-panes -F "#{pane_height}"
43
48
49
43

Hope that help.

Le 05/11/2015 15:30, Leonardo Sandoval a écrit :
>
>
> On 11/05/2015 02:28 AM, Benoit Rapidel wrote:
>> Thanks for the patch, this now works on tmux 1.6 but only if the tmux
>> windows has no pane. If it has panes, out variable is '48\n49\n48\n49'
>> and int() fail.
>>
>> Is it intended ?
>>
>
> It should not fail, so there must be something wrong that we do not consider. What is
> the output of the following commands in your case?
>
> $ tmux list-panes -F "#{?pane_active,yes,no}"
> yes
> $ tmux list-panes -F "#{pane_height}"
> 43
> $ tmux -V
> tmux 1.6
>

-- 
Benoit Rapidel

Co-founder & CTO at ExMachina



