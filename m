Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2988E006C4; Sat, 26 Jul 2014 04:13:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.80.204.85 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp485.redcondor.net (smtp485.redcondor.net [208.80.204.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 864C1E0043F
	for <yocto@yoctoproject.org>; Sat, 26 Jul 2014 04:13:10 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp485.redcondor.net ({3be039ea-4351-44b0-a8af-642c38b25916})
	via TCP (outbound) with ESMTPS id 20140726111308412
	for <yocto@yoctoproject.org>; Sat, 26 Jul 2014 11:13:08 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [24.211.139.253] (port=58588 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XAzuQ-0001cd-AJ; Sat, 26 Jul 2014 07:13:02 -0400
Date: Sat, 26 Jul 2014 07:12:59 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Rudolf Streif <rstreif@linuxfoundation.org>
In-Reply-To: <CA+gsK-peRS+T3zOXKo-zERm=vrWewAfEEhrT_jPphpfgtJimBg@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407260707320.25872@localhost>
References: <alpine.LFD.2.11.1407251345130.8665@localhost>
	<CA+gsK-peRS+T3zOXKo-zERm=vrWewAfEEhrT_jPphpfgtJimBg@mail.gmail.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual definition of "Image" is totally wrong
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
X-List-Received-Date: Sat, 26 Jul 2014 11:13:19 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-1810305086-1406373181=:25872"

--8323328-1810305086-1406373181=:25872
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Fri, 25 Jul 2014, Rudolf Streif wrote:

>         here:
>
>       http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-terms
>
>       the definition of "Image" refers to the generated artifacts of a
>       build, whereas the standard usage (as typified by the link) more
>       correctly refers to things like core-image-minimal.
>
> The term "image" is somewhat overloaded and if not detailed context
> dependent. Image at least could be a "kernel image" or a "root file
> system image". In the context of YP the term typically refers to a
> root file system image of which core-image-minimal is an instance.

  i know that, but the definition as it stands in the dev manual is
extremely misleading:

"Image: An image is the result produced when BitBake processes a given
collection of recipes and related Metadata. Images are the binary
output that run on specific hardware or QEMU and are used for specific
use-cases..."

  "the result" implies a single result when everyone knows a build can
produce several output objects. and as rudolf correctly points out,
the word "image" is context dependent, and it certainly is the way
one refers to the image *recipe files*, which you find (unfortunately)
under directories named "images/".

  personally, i think a build's output should have been called
"artifacts", but that's just me. and as forrest gump once said, "and
that's all i have to say about that."

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1810305086-1406373181=:25872--
