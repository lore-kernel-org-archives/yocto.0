Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA631E00BD2; Thu, 20 Sep 2018 04:03:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.30.210.185 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay4-1.pub.mailoutpod1-cph3.one.com
	(mailrelay4-1.pub.mailoutpod1-cph3.one.com [46.30.210.185])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C074E00BAA
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2018 04:03:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-type:in-reply-to:mime-version:date:message-id:references:cc:to:
	subject:from:from;
	bh=HTRf65DH9rTCtLMde2wKjH3LKHxFfWMiY04l3hKLuA4=;
	b=bGvYoehT1SnfBVe38Av3xXlBl9iNgZbfGqcIDPhZOgKZo8NC9sHH3fusnqQLKzr6IZfiKxGkOf9fm
	Mvd6ofIadk1OtGDKKGefPk1MXsVnJ4yGP7bUb4ImO9PMFzJ00QCOCRSt+KZyLZPOXCPrvFy1c9FIEX
	OiBjmq8Sm06lLEw0=
X-HalOne-Cookie: f268f1dc94f69c244c1d0603ef92a933610cd8fb
X-HalOne-ID: bdb01ad0-bcc4-11e8-86b6-d0431ea8bb10
Received: from [192.168.0.101] (unknown [37.199.77.136])
	by mailrelay4.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id bdb01ad0-bcc4-11e8-86b6-d0431ea8bb10;
	Thu, 20 Sep 2018 11:03:04 +0000 (UTC)
From: Peter Bergin <peter@berginkonsult.se>
To: "Burton, Ross" <ross.burton@intel.com>
References: <f9f3b3b3-237b-55c2-531b-fa03a8e62f73@berginkonsult.se>
	<d75c6307-7071-bbbc-5ace-4e1db0f15cea@windriver.com>
	<c9071e74-5a04-408e-6a5b-87490fc9b167@berginkonsult.se>
	<CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
Message-ID: <570c7242-e0a8-a65c-aa8f-93b4c331da08@berginkonsult.se>
Date: Thu, 20 Sep 2018 13:02:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com>
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
X-List-Received-Date: Thu, 20 Sep 2018 11:03:07 -0000
Content-Type: multipart/alternative;
	boundary="------------0751917437DF2C9E3E87A694"
Content-Language: en-US

--------------0751917437DF2C9E3E87A694
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2018-09-17 10:27, Burton, Ross wrote:
> On Mon, 17 Sep 2018 at 08:13, Peter Bergin<peter@berginkonsult.se>  wrote:
>> I'm pretty sure I have narrowed down the root cause to the restriction
>> of virtual memory and that liblzma base its memory calculations on
>> physical RAM.
>>
>> To prove this I added a printout in rpm-native/rpmio/rpmio.c and the
>> function lzopen_internal.
>>
>>           uint64_t memory_usage = lzma_stream_encoder_mt_memusage(&mt_options);
>>          rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usage);
>>
>>
>> The value of memory_usage is the same regardless of which 'ulimit -v'
>> value I set. On the host with 256GB of physical RAM and 32GB of virtual
>> memory, memory_usage is ~5.1GB. On another host with 16GB of physical
>> RAM I get memory_usage of ~660MB.
>>
>> I guess you have not seen this kind of failure if you not have
>> restricted virutal memory on your host. If you want to try to reproduce
>> this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake
>> glibc-locale -c package_write_rpm -f'.
> Wouldn't a solution be to change lzma to look at free memory, not
> total physical memory?
>
> Ross
I have been in contact with the maintainer of liblzma. There is 
currently no way to restrict the memory usage in liblzma during multi 
threaded compression. He recommended to adjust the number of threads 
used during compression. This kind of check is done for 32-bits but not 
when running 64-bits (in rpmio/rpmio.c lzopen_internal). To rewrite 
liblzma is another option but I took an easier way out.

I have come up with a patch 
(https://patchwork.openembedded.org/patch/155017/) that solves my 
problem and do a restriction of memory usage when the 'ulimit -v' is 
set. The calculation is based on the assumption that lzopen_internal is 
run in parallel with as many instances as cpu threads as '#pragma omp 
parallel' is used in build/pack.c.

When running test on my machine with 4 cores 16GB of physical RAM and 
'ulimit -v 2097152' (2GB). It works good and the log shows:

XZ: virtual memory restricted to 2147483648 and per CPU thread 536870912
XZ: Adjusted the number of threads from 4 to 3 to not exceed the memory 
usage limit of 2147483648 bytes

Didn't get a clear answer if this is something Yocto/OE should support 
but I hope my patch solves the issue and it will not affect the normal 
environments where 'ulimit -v' is not set.

/Peter

--------------0751917437DF2C9E3E87A694
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 2018-09-17 10:27, Burton, Ross
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAJTo0LbjCN31UUNUP9WX_NxMhoAr0xCt45WrQaWDvqovDeNhYw@mail.gmail.com">
      <pre wrap="">On Mon, 17 Sep 2018 at 08:13, Peter Bergin <a class="moz-txt-link-rfc2396E" href="mailto:peter@berginkonsult.se">&lt;peter@berginkonsult.se&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">I'm pretty sure I have narrowed down the root cause to the restriction
of virtual memory and that liblzma base its memory calculations on
physical RAM.

To prove this I added a printout in rpm-native/rpmio/rpmio.c and the
function lzopen_internal.

         uint64_t memory_usage = lzma_stream_encoder_mt_memusage(&amp;mt_options);
        rpmlog(RPMLOG_NOTICE, "DBG: memory_usage %lu\n", memory_usage);


The value of memory_usage is the same regardless of which 'ulimit -v'
value I set. On the host with 256GB of physical RAM and 32GB of virtual
memory, memory_usage is ~5.1GB. On another host with 16GB of physical
RAM I get memory_usage of ~660MB.

I guess you have not seen this kind of failure if you not have
restricted virutal memory on your host. If you want to try to reproduce
this set 'ulimit -v 8388608' (8GB) in your shell and then 'bitbake
glibc-locale -c package_write_rpm -f'.
</pre>
      </blockquote>
      <pre wrap="">Wouldn't a solution be to change lzma to look at free memory, not
total physical memory?

Ross
</pre>
    </blockquote>
    I have been in contact with the maintainer of liblzma. There is
    currently no way to restrict the memory usage in liblzma during
    multi threaded compression. He recommended to adjust the number of
    threads used during compression. This kind of check is done for
    32-bits but not when running 64-bits (in rpmio/rpmio.c
    lzopen_internal). To rewrite liblzma is another option but I took an
    easier way out.<br>
    <br>
    I have come up with a patch
    (<a class="moz-txt-link-freetext" href="https://patchwork.openembedded.org/patch/155017/">https://patchwork.openembedded.org/patch/155017/</a>) that solves my
    problem and do a restriction of memory usage when the 'ulimit -v' is
    set. The calculation is based on the assumption that lzopen_internal
    is run in parallel with as many instances as cpu threads as '#pragma
    omp parallel' is used in build/pack.c. <br>
    <br>
    When running test on my machine with 4 cores 16GB of physical RAM
    and 'ulimit -v 2097152' (2GB). It works good and the log shows:<br>
    <br>
    XZ: virtual memory restricted to 2147483648 and per CPU thread
    536870912<br>
    XZ: Adjusted the number of threads from 4 to 3 to not exceed the
    memory usage limit of 2147483648 bytes<br>
    <br>
    Didn't get a clear answer if this is something Yocto/OE should
    support but I hope my patch solves the issue and it will not affect
    the normal environments where 'ulimit -v' is not set.<br>
    <br>
    /Peter<br>
  </body>
</html>

--------------0751917437DF2C9E3E87A694--
