Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AC8FE00473; Mon,  2 Nov 2015 10:02:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDAE8E007D3
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 10:02:23 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 1171BF811DB; Mon,  2 Nov 2015 11:02:22 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id AFA38F811D9;
	Mon,  2 Nov 2015 11:02:22 -0700 (MST)
To: yocto@yoctoproject.org
References: <alpine.LFD.2.20.1511021251410.10363@localhost>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <5637A579.6040808@mlbassoc.com>
Date: Mon, 2 Nov 2015 11:03:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.20.1511021251410.10363@localhost>
Subject: Re: should layers define BB_DANGLINGAPPENDS_WARNONLY ?= "1"?
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
X-List-Received-Date: Mon, 02 Nov 2015 18:02:36 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-11-02 10:54, Robert P. J. Day wrote:
>
>    perusing the meta-musl layer, and noticed in layer.conf the line:
>
> BB_DANGLINGAPPENDS_WARNONLY ?= "1"
>
> i thought this was a bit odd since (at least to me) it seems like the
> sort of thing a *developer* might set in their local.conf to
> temporarily deal with a dangling .bbappend file -- it never occurred
> to me that it would be appropriate for a layer to define that value
> itself as an inherent part of its own ... layerness.
>
>    a quick grep of the couple dozen layers i have checked out revealed
> two layers that do that:
>
> ./meta-musl/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY ?= "1"
> ./meta-yocto-kernel-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY
> ?= "true"
>
>    i'm curious what others think of this approach.

Sounds dangerous, bordering on incorrect (or irresponsible) to me.
This could easily mask a problem and is not layer specific, i.e.
the warning would then apply to all layers, not just meta-musl.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

