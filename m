Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F063E00953; Mon, 17 Sep 2018 01:27:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f66.google.com (mail-oi0-f66.google.com
	[209.85.218.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE6CE00754
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2018 01:27:50 -0700 (PDT)
Received: by mail-oi0-f66.google.com with SMTP id k12-v6so18139186oiw.8
	for <yocto@yoctoproject.org>; Mon, 17 Sep 2018 01:27:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=UN1kRg/Nam37nw3CL6SlXILi87nkDydLcjGcieMf9cg=;
	b=f2QgbKVYpTNERNG/GiyDWd68ocBtvb+ocUq1UMTMec++xsH+HUt7DPucjC0xLLKgaB
	2wl4p9tMM2tonimtJhe8Hd9hOD67CidI0kSIeDwO7349RnhMT2vipgNCXAu/nb0MIeWL
	sQRoU8LWtcB21u8ZRE2JDyfM7wDosoyM8/HusOiMlJ7jAk54sBmmoNfARYvnwZ8PTMho
	BDpCJNXjY5oGQzZDYlXhtbEC2O7Q+FVbLXTGXqhcMGs7zQVfuA+78HSLmEfn7aDtR2Fw
	E7vEF65xioJgHmnPshmKyNZzNQY8mjxaxzath0R3ugALRi38awRAYwIialnzNMEiWAXz
	EY2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=UN1kRg/Nam37nw3CL6SlXILi87nkDydLcjGcieMf9cg=;
	b=c80HEek5Qe55FS4CwQL4h+8AHY19fl1xpULuBzFcOvXhIFH4wCLjt9+Qkh1QO1KY/f
	6Z3eLQl+FOzMz8+EtlssprjXPbo/bukC6TDUGy/VSeKyiVAfl41t8MhSN9I6iJQ9aElW
	csEYtor83fAP5onlp06aBBvLxzUpJAIlkFGR7TrawISdZV5rj1hG3US0vR7clCOy8aMo
	v5RC4wUd9U2HNTZzPyObsmCEGgTYtdqG+zRSSBKVdg2L1HTalsQsXbNKR5BoEpuAgilc
	DZBQ+ocuFEMnwunu6Ue4MxQprkQS1BOHPYgT/g7KGKlcGe/q57Xfz5YoDQnoBvYv2B03
	AWog==
X-Gm-Message-State: APzg51BdTWjAazl9n2W5aZrxk7xujrvLHwSYQRWE9BaYJS7Kl4bauW2D
	KrGwD3q1++NeDabRWxwcXCQr7g6tliD1C12bOreCU+Kg
X-Google-Smtp-Source: ANB0VdbQdzBs9RfOF0SIOTwZzjMjm4xLxmBumPOD3W8qo2N8K3NJw8/plzavO5rAbcxjcF707pE3lfoAeRrG9oIXlLw=
X-Received: by 2002:aca:55cd:: with SMTP id
	j196-v6mr16024388oib.202.1537172870455; 
	Mon, 17 Sep 2018 01:27:50 -0700 (PDT)
MIME-Version: 1.0
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
	<c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
In-Reply-To: <c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Sep 2018 09:27:38 +0100
Message-ID: <CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
To: peter@berginkonsult.se
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: liblzma: memory allocation failed
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
X-List-Received-Date: Mon, 17 Sep 2018 08:27:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 17 Sep 2018 at 08:13, Peter Bergin <peter@berginkonsult.se> wrote:
> I'm pretty sure I have narrowed down the root cause to the restriction
> of virtual memory and that liblzma base its memory calculations on
> physical RAM.
>
> To prove this I added a printout in rpm-native/rpmio/rpmio.c and the
> function lzopen_internal.
>
>          uint64_t memory_usage = lzma_stream_encoder_mt_memusage(&mt_options);
>         rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usage);
>
>
> The value of memory_usage is the same regardless of which 'ulimit -v'
> value I set. On the host with 256GB of physical RAM and 32GB of virtual
> memory, memory_usage is ~5.1GB. On another host with 16GB of physical
> RAM I get memory_usage of ~660MB.
>
> I guess you have not seen this kind of failure if you not have
> restricted virutal memory on your host. If you want to try to reproduce
> this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake
> glibc-locale -c package_write_rpm -f'.

Wouldn't a solution be to change lzma to look at free memory, not
total physical memory?

Ross

