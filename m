Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10103E00CD0; Thu, 27 Jul 2017 18:22:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C39C7E00B8E
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 18:22:35 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y25so12035961pfk.4
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 18:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=qj0unLzrg6emsMS5VBEzuelTxlfcQGAOgllnqK1xnoA=;
	b=Kf/kS7XCehwEq4RiGN9WxoxobkWSmZS7kZsQjT60g1XIyA4wBC8zVLtm++GKEqfveN
	o01u396OvqzfaTeovu9gac7FC4YAnVDWENRhyhIixOdG2mNq+JojviOuBDVmREunjVBB
	jfQIviG29e3fURnZxMPDG+hz27gnY6VuctJ7Z6T5TEEObBf3sbC0ZnRZUtF4AeW/gK/O
	8xJNBkluZeVMSQw9OxDF8M5k3MTi4FMRH21FvSPtv+YxuWyryGnqE3tS0AZX9Ox8eBo2
	+5ilU5DQgw1OZ+6CWiIv87mB8DE7bti0t8NssCOrex/V0sVbYbyeIZcXY0Pc8pNuTwYF
	bNKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=qj0unLzrg6emsMS5VBEzuelTxlfcQGAOgllnqK1xnoA=;
	b=Bd8IGMx+QhQhQIqu2RQuqs6cOmJ7FalCSIti0pS5LLy748EPGrojPnM1a+0aZR3i7D
	yCTN78kbUzaaYr8kI8NzrEuXdImPSe/u+s972v64jRqjxh/RcBwokwQzdpUi735KwZLo
	RtSj+LaTJu42r9WFsVpD+z32jG5BFc/Rk6KwcibkLXJ2UXp7RoFBA93ohsYXZ1EVDY0T
	bSJqmhWaaNDFxJ6Lqz/IO02ql5ud51qlO4ICqLforeU9vrwU01N1jxhNvWQgq88270iv
	OCT5RZXEc5gW1w854vjXS78p0hcKWeUqlZJEwjYefVotItg1zfqIcXeLlpnI2AusoHVM
	cu6Q==
X-Gm-Message-State: AIVw111h9i+h+g/6GN6bWNfZQBmhm+Xjzi3mmesxihOqPnTQJLVCD89L
	vaGybhhCb8A8srSX
X-Received: by 10.99.0.207 with SMTP id 198mr5968405pga.452.1501204954747;
	Thu, 27 Jul 2017 18:22:34 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:dd97:a9a8:d2f3:fa82?
	([2001:8003:804a:b500:dd97:a9a8:d2f3:fa82])
	by smtp.gmail.com with ESMTPSA id
	x126sm16948855pfb.179.2017.07.27.18.22.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 27 Jul 2017 18:22:34 -0700 (PDT)
To: Randy MacLeod <randy.macleod@windriver.com>
References: <ebdb747a-8506-87d0-b1ac-8338436d7dd6@gmail.com>
	<3917f163-9def-7069-ea70-0a9a943e8dc0@rsi-elektrotechnik.de>
	<118eb01a-00c6-7aff-3e4b-ce3ee56a9841@gmail.com>
	<515b47cb-90af-21e0-7e40-2af2be9326ce@windriver.com>
	<CAByQQ_pBh0RLbsk8f+-nHD_OZ2BnKF59R9z_EdntX9HfOXDUVg@mail.gmail.com>
	<8a379ee0-7123-947e-3a1c-f9413bb3d604@windriver.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <4c5a5433-0ffe-a2a4-77e1-a5466890a804@gmail.com>
Date: Fri, 28 Jul 2017 09:22:30 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <8a379ee0-7123-947e-3a1c-f9413bb3d604@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mpich and yocto ?
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
X-List-Received-Date: Fri, 28 Jul 2017 01:22:37 -0000
Content-Type: multipart/alternative;
	boundary="------------2406590724B59983DA1A9111"
Content-Language: en-US

--------------2406590724B59983DA1A9111
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Dear Yocto Team Member,

I tried to compile icecream on the master node, but here's the messages 
I got, any ideas ?

=====

Making install in services
make[1]: Entering directory '/home/bianchi77/icecream/services'
make[2]: Entering directory '/home/bianchi77/icecream/services'
  /bin/mkdir -p '/usr/local/lib'
  /bin/bash ../libtool   --mode=install /usr/bin/install -c libicecc.la 
'/usr/local/lib'
libtool: install: /usr/bin/install -c .libs/libicecc.lai 
/usr/local/lib/libicecc.la
/usr/bin/install: cannot create regular file 
'/usr/local/lib/libicecc.la': Permission denied
Makefile:428: recipe for target 'install-libLTLIBRARIES' failed
make[2]: *** [install-libLTLIBRARIES] Error 1
make[2]: Leaving directory '/home/bianchi77/icecream/services'
Makefile:721: recipe for target 'install-am' failed
make[1]: *** [install-am] Error 2
make[1]: Leaving directory '/home/bianchi77/icecream/services'
Makefile:421: recipe for target 'install-recursive' failed
make: *** [install-recursive] Error 1

======

Thanks


On 27/07/17 09:10, Randy MacLeod wrote:
> On 2017-07-26 08:08 PM, Riko Ho wrote:
>> Dear Yocto Team Member,
>>
>> The cluster is using Ubuntu.
>> I haven't checked all the packages on the other computer. I will.
>>
>> My goal is getting more hardrive space and compiling speed.
>>
>> How can I relate bitbake with mpicc or other compilers needed by 
>> yocto (arm-linux-gcc, gcc, etc)?
>
> Do you mean that you want to do part of the build using each node in 
> the cluster? That's possible now using distcc/icecream
> (https://github.com/icecc/icecream ) but I haven't done it in years
> as explained below.
>
> Oh, there's a Stack Overflow entry for YP+distcc/icecream:
>
> https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake 
>
>
> and distcc is mentioned in the docs:
>    http://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html
>
>
> Anyway, this just distributes the compilation so:
>  - build management,
>  - recipe download, unpack, patch, configuring and packaging,
>  - linking, etc
> are still done centrally.
>
> There are plans to improve the bitbake task manager so that, with
> the recipe specific sysroot work that has been done in 2.2, we'd be
> able to farm out all of the stages of a package's build to individual
> nodes in a cluster:
>    https://bugzilla.yoctoproject.org/show_bug.cgi?id=10684
> I don't know if that work is a priority for the fall 2.4 release.
>
> Note that depending on your workload, inter-recipe dependencies and
> the long time taken to run configure for autotools-based packages is
> the bottleneck. Therefore, buying a high-end ( >= 16+16 core )
> system with lots (64GB+) RAM and a good IO sub-system results
> in core-image-minimal building quickly, certainly under 40 minutes.
>    https://wiki.yoctoproject.org/wiki/Build_Performance
>
> Also for repeated builds by one or more developers, sstate-cache is
> a huge speed-up with some cost in scripts and people to manage it.
>
>
> I've wondered if anyone has played with bitbake on an OS that is
> known as a single-system image:
>    https://en.wikipedia.org/wiki/Single_system_image
> On these systems, jobs are transparently moved from the master-node
> to idle nodes in the cluster by the operating system. That would be
> an interesting academic exercise but it wouldn't be useful in
> practice since such OSs are not generally used as far as I know at
> least.
>
> I look forward to hearing what your goals and plans are.
>
> ../Randy
>
>
>>
>> I have tested a small code with mpicc and the cluster do the job.
>>
>> Thanks for the attention.
>>
>> On Jul 27, 2017 3:23 AM, "Randy MacLeod" <randy.macleod@windriver.com 
>> <mailto:randy.macleod@windriver.com>> wrote:
>>  >
>>  > On 2017-07-26 02:09 AM, Riko Ho wrote:
>>  >>
>>  >> How can we do that ?
>>  >>
>>  >> bitbake in which node ? I don't understand ?
>>  >>
>>  >>
>>  >> On 26/07/17 13:57, Josef Holzmayr wrote:
>>  >>>
>>  >>> Hi
>>  >>>
>>  >>> On 26.07.2017 05:12, Riko Ho wrote:
>>  >>>>
>>  >>>> Does anyone know on how to run poky on mpich cluster ?
>>  >
>>  >
>>  > That's a rather ambiguous question.
>>  >
>>  > What OS/Distro is the mpich cluster running?
>>  > Have you installed the packages that are required on the host:
>>  >    see: "The Build Host Packages" here:
>>  >
>>  > 
>> http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yocto-project-qs.html
>>  >
>>  > What do you hope to achieve using bitbake?
>>  >
>>  >
>>  >>>
>>  >>> As far as I can see, MPICH is a userland library, basically. So 
>> it would be the other way round, you could probably run a mpich 
>> application on a number of nodes that run some OE/Poky thing.
>>  >>>
>>  >>> Greetz
>>  >
>>  >
>>  > There is an mpich recipe here:
>>  > http://layers.openembedded.org/layerindex/recipe/33348/
>>  >
>>  > but again, it's not clear what your ultimate goal is.
>>  >
>>  > ../Randy
>>  >
>>  >>
>>  >> --
>>  >> *
>>  >>
>>  >>
>>  >> /*******/
>>  >> Sent by Ubuntu LTS 16.04,
>>  >> Kind regards,
>>  >> Riko Ho
>>  >> /*******/
>>  >>
>>  >> *
>>  >>
>>  >>
>>  >
>>  >
>>  > --
>>  > # Randy MacLeod. SMTS, Linux, Wind River
>>  > Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200, Ottawa, ON, 
>> Canada, K2K 2W5
>>
>
>

-- 
*

/*******/
Sent by Ubuntu LTS 16.04,
Kind regards,
Riko Ho
/*******/

*

--------------2406590724B59983DA1A9111
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Dear Yocto Team Member,</p>
    <p>I tried to compile icecream on the master node, but here's the
      messages I got, any ideas ?</p>
    <p>=====<br>
    </p>
    <p>Making install in services<br>
      make[1]: Entering directory '/home/bianchi77/icecream/services'<br>
      make[2]: Entering directory '/home/bianchi77/icecream/services'<br>
       /bin/mkdir -p '/usr/local/lib'<br>
       /bin/bash ../libtool   --mode=install /usr/bin/install -c  
      libicecc.la '/usr/local/lib'<br>
      libtool: install: /usr/bin/install -c .libs/libicecc.lai
      /usr/local/lib/libicecc.la<br>
      /usr/bin/install: cannot create regular file
      '/usr/local/lib/libicecc.la': Permission denied<br>
      Makefile:428: recipe for target 'install-libLTLIBRARIES' failed<br>
      make[2]: *** [install-libLTLIBRARIES] Error 1<br>
      make[2]: Leaving directory '/home/bianchi77/icecream/services'<br>
      Makefile:721: recipe for target 'install-am' failed<br>
      make[1]: *** [install-am] Error 2<br>
      make[1]: Leaving directory '/home/bianchi77/icecream/services'<br>
      Makefile:421: recipe for target 'install-recursive' failed<br>
      make: *** [install-recursive] Error 1</p>
    <p>======</p>
    <p>Thanks<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 27/07/17 09:10, Randy MacLeod wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:8a379ee0-7123-947e-3a1c-f9413bb3d604@windriver.com">On
      2017-07-26 08:08 PM, Riko Ho wrote:
      <br>
      <blockquote type="cite">Dear Yocto Team Member,
        <br>
        <br>
        The cluster is using Ubuntu.
        <br>
        I haven't checked all the packages on the other computer. I
        will.
        <br>
        <br>
        My goal is getting more hardrive space and compiling speed.
        <br>
        <br>
        How can I relate bitbake with mpicc or other compilers needed by
        yocto (arm-linux-gcc, gcc, etc)?
        <br>
      </blockquote>
      <br>
      Do you mean that you want to do part of the build using each node
      in the cluster? That's possible now using distcc/icecream
      <br>
      (<a class="moz-txt-link-freetext" href="https://github.com/icecc/icecream">https://github.com/icecc/icecream</a> ) but I haven't done it in
      years
      <br>
      as explained below.
      <br>
      <br>
      Oh, there's a Stack Overflow entry for YP+distcc/icecream:
      <br>
      <br>
<a class="moz-txt-link-freetext" href="https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake">https://stackoverflow.com/questions/14472175/distributed-compile-with-bitbake</a>
      <br>
      <br>
      and distcc is mentioned in the docs:
      <br>
         <a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html">http://www.yoctoproject.org/docs/2.3/dev-manual/dev-manual.html</a>
      <br>
      <br>
      <br>
      Anyway, this just distributes the compilation so:
      <br>
       - build management,
      <br>
       - recipe download, unpack, patch, configuring and packaging,
      <br>
       - linking, etc
      <br>
      are still done centrally.
      <br>
      <br>
      There are plans to improve the bitbake task manager so that, with
      <br>
      the recipe specific sysroot work that has been done in 2.2, we'd
      be
      <br>
      able to farm out all of the stages of a package's build to
      individual
      <br>
      nodes in a cluster:
      <br>
         <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=10684">https://bugzilla.yoctoproject.org/show_bug.cgi?id=10684</a>
      <br>
      I don't know if that work is a priority for the fall 2.4 release.
      <br>
      <br>
      Note that depending on your workload, inter-recipe dependencies
      and
      <br>
      the long time taken to run configure for autotools-based packages
      is
      <br>
      the bottleneck. Therefore, buying a high-end ( &gt;= 16+16 core )
      <br>
      system with lots (64GB+) RAM and a good IO sub-system results
      <br>
      in core-image-minimal building quickly, certainly under 40
      minutes.
      <br>
         <a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Build_Performance">https://wiki.yoctoproject.org/wiki/Build_Performance</a>
      <br>
      <br>
      Also for repeated builds by one or more developers, sstate-cache
      is
      <br>
      a huge speed-up with some cost in scripts and people to manage it.
      <br>
      <br>
      <br>
      I've wondered if anyone has played with bitbake on an OS that is
      <br>
      known as a single-system image:
      <br>
         <a class="moz-txt-link-freetext" href="https://en.wikipedia.org/wiki/Single_system_image">https://en.wikipedia.org/wiki/Single_system_image</a>
      <br>
      On these systems, jobs are transparently moved from the
      master-node
      <br>
      to idle nodes in the cluster by the operating system. That would
      be
      <br>
      an interesting academic exercise but it wouldn't be useful in
      <br>
      practice since such OSs are not generally used as far as I know at
      <br>
      least.
      <br>
      <br>
      I look forward to hearing what your goals and plans are.
      <br>
      <br>
      ../Randy
      <br>
      <br>
      <br>
      <blockquote type="cite">
        <br>
        I have tested a small code with mpicc and the cluster do the
        job.
        <br>
        <br>
        Thanks for the attention.
        <br>
        <br>
        On Jul 27, 2017 3:23 AM, "Randy MacLeod"
        &lt;<a class="moz-txt-link-abbreviated" href="mailto:randy.macleod@windriver.com">randy.macleod@windriver.com</a>
        <a class="moz-txt-link-rfc2396E" href="mailto:randy.macleod@windriver.com">&lt;mailto:randy.macleod@windriver.com&gt;</a>&gt; wrote:
        <br>
         &gt;
        <br>
         &gt; On 2017-07-26 02:09 AM, Riko Ho wrote:
        <br>
         &gt;&gt;
        <br>
         &gt;&gt; How can we do that ?
        <br>
         &gt;&gt;
        <br>
         &gt;&gt; bitbake in which node ? I don't understand ?
        <br>
         &gt;&gt;
        <br>
         &gt;&gt;
        <br>
         &gt;&gt; On 26/07/17 13:57, Josef Holzmayr wrote:
        <br>
         &gt;&gt;&gt;
        <br>
         &gt;&gt;&gt; Hi
        <br>
         &gt;&gt;&gt;
        <br>
         &gt;&gt;&gt; On 26.07.2017 05:12, Riko Ho wrote:
        <br>
         &gt;&gt;&gt;&gt;
        <br>
         &gt;&gt;&gt;&gt; Does anyone know on how to run poky on mpich
        cluster ?
        <br>
         &gt;
        <br>
         &gt;
        <br>
         &gt; That's a rather ambiguous question.
        <br>
         &gt;
        <br>
         &gt; What OS/Distro is the mpich cluster running?
        <br>
         &gt; Have you installed the packages that are required on the
        host:
        <br>
         &gt;    see: "The Build Host Packages" here:
        <br>
         &gt;
        <br>
         &gt;
<a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yocto-project-qs.html">http://www.yoctoproject.org/docs/2.3/yocto-project-qs/yocto-project-qs.html</a><br>
         &gt;
        <br>
         &gt; What do you hope to achieve using bitbake?
        <br>
         &gt;
        <br>
         &gt;
        <br>
         &gt;&gt;&gt;
        <br>
         &gt;&gt;&gt; As far as I can see, MPICH is a userland library,
        basically. So it would be the other way round, you could
        probably run a mpich application on a number of nodes that run
        some OE/Poky thing.
        <br>
         &gt;&gt;&gt;
        <br>
         &gt;&gt;&gt; Greetz
        <br>
         &gt;
        <br>
         &gt;
        <br>
         &gt; There is an mpich recipe here:
        <br>
         &gt; <a class="moz-txt-link-freetext" href="http://layers.openembedded.org/layerindex/recipe/33348/">http://layers.openembedded.org/layerindex/recipe/33348/</a>
        <br>
         &gt;
        <br>
         &gt; but again, it's not clear what your ultimate goal is.
        <br>
         &gt;
        <br>
         &gt; ../Randy
        <br>
         &gt;
        <br>
         &gt;&gt;
        <br>
         &gt;&gt; --
        <br>
         &gt;&gt; *
        <br>
         &gt;&gt;
        <br>
         &gt;&gt;
        <br>
         &gt;&gt; /*******/
        <br>
         &gt;&gt; Sent by Ubuntu LTS 16.04,
        <br>
         &gt;&gt; Kind regards,
        <br>
         &gt;&gt; Riko Ho
        <br>
         &gt;&gt; /*******/
        <br>
         &gt;&gt;
        <br>
         &gt;&gt; *
        <br>
         &gt;&gt;
        <br>
         &gt;&gt;
        <br>
         &gt;
        <br>
         &gt;
        <br>
         &gt; --
        <br>
         &gt; # Randy MacLeod. SMTS, Linux, Wind River
        <br>
         &gt; Direct: 613.963.1350 | 350 Terry Fox Drive, Suite 200,
        Ottawa, ON, Canada, K2K 2W5
        <br>
        <br>
      </blockquote>
      <br>
      <br>
    </blockquote>
    <br>
    <div class="moz-signature">-- <br>
      <b>
        <p style="color:blue;"> /*******/<br>
          Sent by Ubuntu LTS 16.04,<br>
          Kind regards,<br>
          Riko Ho<br>
          /*******/<br>
        </p>
      </b></div>
  </body>
</html>

--------------2406590724B59983DA1A9111--
