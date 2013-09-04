Return-Path: <chgans@googlemail.com>
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05428E013AB
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 20:02:15 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lj1so7308119pab.29
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 20:02:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Gc/C2nxAArzQchQi5duFU+WZutBqdgYo9dlIVYMseiY=;
	b=HiqAVok490027jhsoqg0fcHf78jWfmoPy+uqjhlEYralzx7udD8JB7LHyf+TQvDQ8A
	C54a1FVsn3alv+1RkZpZiKVxANwAZPgMN+bd+j9u4gpPNCjIzCsWWBIcWIfQm56ONgh0
	E5pZB5nJOKhbV/7rTYPfqENMreczE3C53pRe8aIg75hpo168gMwfB6iEeFCok8u27D1b
	25enwLTzNF08K7mtguE65l3kByr+kpZq0d8Hqx4Sfa8eJMjfzTm26zzqpo77/lw7gTxV
	U+pjvuUI57Mx+qaPKuuBu+nGeNwUihhpEUzX2QGf5xIL36iAoBjEeGfelF/YE7wA3DEP
	5Zzw==
X-Received: by 10.68.189.98 with SMTP id gh2mr646462pbc.181.1378263735561;
	Tue, 03 Sep 2013 20:02:15 -0700 (PDT)
Received: from [0.0.0.0] ([210.48.94.225])
	by mx.google.com with ESMTPSA id yo2sm27651751pab.8.1969.12.31.16.00.00
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 03 Sep 2013 20:02:14 -0700 (PDT)
Sender: Chris Gagneraud <chgans@googlemail.com>
Message-ID: <5226A2B2.9070601@gna.org>
Date: Wed, 04 Sep 2013 15:02:10 +1200
From: Christian Gagneraud <chgans@gna.org>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <52241C84.2090605@gna.org>
	<CAJTo0LZSkA5Gr4AkaFEAuG0irsLWfeUkO2jXmmBXHJ6qcaGN_w@mail.gmail.com>
	<522506F8.8060706@gna.org>
	<0C95222C-9247-4FDD-837C-83FB03A314AC@keylevel.com>
	<52251F60.9060804@gna.org>
	<B3347AE5-6200-4E3D-9A7F-8BC683568F98@gmail.com>
	<52255245.9090609@gna.org>
	<BE638486-774D-46AE-B84C-9733813BBFC2@gmail.com>
In-Reply-To: <BE638486-774D-46AE-B84C-9733813BBFC2@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Server specs for a continuous integration system
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
X-List-Received-Date: Wed, 04 Sep 2013 03:02:20 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/09/13 20:55, Elvis Dowson wrote:
>
>>>
>>> I use a 3770K i7 quad-core processor, 16GB RAM, with a liquid cooled
>>> solution running at 3.8GHz. I've overclocked the CPU to 4.5GHz, but I
>>> end up shaving only 2 minutes off build times, so I just run it at 3.8GHz.
>>>
>>> A core-image-minimal build takes around 22 minutes for me, for a Xilinx
>>> ZC702 machine configuration (Dual ARM Cortex A9 processor + FPGA).
>>
>> Is it a full build from scratch (cross-toolchain, native stuff, etc...)? If so, it's quite impressive to me!
>
> Yes, it is a full build from scratch, and the core-image-minimal
> builds the cross tool chain, kernel and root file system. A full kernel
> build from scratch completes in under 1 or 2 minutes, can't remember
> exactly, will let u know in a while. This represents approximately 1600
> tasks. A full meta-toolchain-sdk task takes about 40 minutes and
> executes around 3600 tasks. I'll send some precise figures later on.

Very interesting figures indeed. Not sure about the water cooling stuff, 
does that come in "standard", or did you build and tweak your server 
yourself? Up to now, I was thinking about an off-the-shelf server, maybe 
the best approach is to build it myself (actually get some people here 
build it themselves!)

I would have another question concerning the CPU, Does anyone know how 
the Xeon E5 compare to the i7 in this context (build server and yocto)?

Regards,
Chris

>
> Best regards,
>
> Elvis Dowson
>


