Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04693E0056D; Thu, 23 Aug 2018 01:40:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFD4DE00529
	for <yocto@yoctoproject.org>; Thu, 23 Aug 2018 01:40:42 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7N8eefs010445
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 23 Aug 2018 01:40:41 -0700 (PDT)
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Thu, 23 Aug 2018 01:40:40 -0700
To: Anuj Mittal <anuj.mittal@intel.com>, <yocto@yoctoproject.org>
References: <1534137742-150133-1-git-send-email-changqing.li@windriver.com>
	<d5570cbb-a327-6203-0fdb-f0056928c305@intel.com>
	<fe24cd53-dac8-9356-b306-8c6f499f2b09@windriver.com>
	<0914d820-4082-e7e4-47a4-094948a80257@intel.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <99366986-beb4-0c76-f8fe-d4411e7985eb@windriver.com>
Date: Thu, 23 Aug 2018 16:40:37 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <0914d820-4082-e7e4-47a4-094948a80257@intel.com>
X-Originating-IP: [128.224.162.228]
Subject: Re: [PATCH][meta-dpdk] dpdk-dev-libibverbs: fix do_fetch error
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
X-List-Received-Date: Thu, 23 Aug 2018 08:40:44 -0000
Content-Type: multipart/alternative;
	boundary="------------CFE5712E4954CC0B1A724707"
Content-Language: en-US

--------------CFE5712E4954CC0B1A724707
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit



On 08/14/2018 10:27 AM, Anuj Mittal wrote:
> On 08/14/2018 09:37 AM, Changqing Li wrote:
>>
>> On 08/13/2018 02:35 PM, Anuj Mittal wrote:
>>> On 08/13/2018 01:22 PM, changqing.li@windriver.com wrote:
>>>> From: Changqing Li <changqing.li@windriver.com>
>>>>
>>>> original URI have been deleted(don't know why). I noticed there is
>>>> an official libibverbs(https://git.kernel.org/pub/scm/libs/infiniband
>>>> /libibverbs.git),
>>> The deprecation notice seems to imply that rdma-core on github should be
>>> used instead and that's what debian does too. Perhaps that should be
>>> used instead?
>>>
>>> https://tracker.debian.org/pkg/rdma-core
>> About you mentioned "deprecation notice " ,  I don't find it on original
>> github of Mellanox
>> can you send me a link of this notice? Thanks.
> https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git/commit/?id=1a6ab7f4c4aa048e8cf0c6cbed5935181f660bd8
>
> And, this:
>
> https://www.openfabrics.org/downloads/verbs/README.html
>
>> besides,  from https://tracker.debian.org/pkg/rdma-core,  I  can get the
>> repo is here
>> https://github.com/linux-rdma/rdma-core,  but it is not only
>> libibverbs,  it is source
>> include some other package,  I think it is not proper here.
>>
> If you take a look at older version of libibverbs there, you'd see the
> code that we had. The later versions are pulling from rdma-core.
>
> You don't need to install everything, just the things that are needed
> for dpdk ...
>
Thanks.  I checked oldest 
https://github.com/linux-rdma/rdma-core/tree/rdma-core-12/libibverbs,
yes,  it is ported from 
https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git.

But my problem is current v19 of rdma-core/libibverbs  have big 
difference with original tar
libibverbs-1.2.1-3.4-2.0.0.0.tar.gz  download from 
https://github.com/Mellanox/
dpdk-dev-libibverbs/archive/libibverbs-${PV}.tar.gz, Include code 
structure, and compile way(autotool to cmake), and others
Actually, oldest version rdma-core-12 already have code structure, and 
compile way change.

I don't have condition to test the function of this lib and dpdk,  I can 
only  go far as build success.
what I worried is  upgrade with big difference without test maybe cause 
big problem.

if we don't want to use tar on 
"https://autobuilder.yocto.io/pub/sources/", I propose who
can test this to upgrade the SRC_URI to rdma-core/libibverbs.



-- 
BRs

Sandy(Li Changqing)
+861084778653


--------------CFE5712E4954CC0B1A724707
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 08/14/2018 10:27 AM, Anuj Mittal
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:0914d820-4082-e7e4-47a4-094948a80257@intel.com">
      <pre wrap="">On 08/14/2018 09:37 AM, Changqing Li wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">

On 08/13/2018 02:35 PM, Anuj Mittal wrote:
</pre>
        <blockquote type="cite">
          <pre wrap="">On 08/13/2018 01:22 PM, <a class="moz-txt-link-abbreviated" href="mailto:changqing.li@windriver.com">changqing.li@windriver.com</a> wrote:
</pre>
          <blockquote type="cite">
            <pre wrap="">From: Changqing Li <a class="moz-txt-link-rfc2396E" href="mailto:changqing.li@windriver.com">&lt;changqing.li@windriver.com&gt;</a>

original URI have been deleted(don't know why). I noticed there is
an official libibverbs(<a class="moz-txt-link-freetext" href="https://git.kernel.org/pub/scm/libs/infiniband">https://git.kernel.org/pub/scm/libs/infiniband</a>
/libibverbs.git),
</pre>
          </blockquote>
          <pre wrap="">The deprecation notice seems to imply that rdma-core on github should be
used instead and that's what debian does too. Perhaps that should be
used instead?

<a class="moz-txt-link-freetext" href="https://tracker.debian.org/pkg/rdma-core">https://tracker.debian.org/pkg/rdma-core</a>
</pre>
        </blockquote>
        <pre wrap="">
About you mentioned "deprecation notice " ,  I don't find it on original 
github of Mellanox
can you send me a link of this notice? Thanks.
</pre>
      </blockquote>
      <pre wrap="">
<a class="moz-txt-link-freetext" href="https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git/commit/?id=1a6ab7f4c4aa048e8cf0c6cbed5935181f660bd8">https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git/commit/?id=1a6ab7f4c4aa048e8cf0c6cbed5935181f660bd8</a>

And, this:

<a class="moz-txt-link-freetext" href="https://www.openfabrics.org/downloads/verbs/README.html">https://www.openfabrics.org/downloads/verbs/README.html</a>

</pre>
      <blockquote type="cite">
        <pre wrap="">
besides,  from <a class="moz-txt-link-freetext" href="https://tracker.debian.org/pkg/rdma-core">https://tracker.debian.org/pkg/rdma-core</a>,  I  can get the 
repo is here
<a class="moz-txt-link-freetext" href="https://github.com/linux-rdma/rdma-core">https://github.com/linux-rdma/rdma-core</a>,  but it is not only 
libibverbs,  it is source
include some other package,  I think it is not proper here.

</pre>
      </blockquote>
      <pre wrap="">
If you take a look at older version of libibverbs there, you'd see the
code that we had. The later versions are pulling from rdma-core.

You don't need to install everything, just the things that are needed
for dpdk ...

</pre>
    </blockquote>
    Thanks.  I checked oldest
    <a class="moz-txt-link-freetext" href="https://github.com/linux-rdma/rdma-core/tree/">https://github.com/linux-rdma/rdma-core/tree/</a><font color="#cc0000">rdma-core-12</font>/libibverbs,<br>
    yes,  it is ported from
    <a class="moz-txt-link-freetext" href="https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git">https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git</a>. <br>
    <br>
    But my problem is current v19 of rdma-core/libibverbs  have big
    difference with original tar <br>
    libibverbs-1.2.1-3.4-2.0.0.0.tar.gz  download from <a
      class="moz-txt-link-freetext"
href="https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-$">https://github.com/Mellanox/</a><br>
    <a class="moz-txt-link-freetext"
href="https://github.com/Mellanox/dpdk-dev-libibverbs/archive/libibverbs-$">dpdk-dev-libibverbs/archive/libibverbs-$</a>{PV}.tar.gz, 
    Include code structure, and compile way(autotool to cmake), and
    others<br>
    Actually, oldest version <font color="#cc0000">rdma-core-12 <font
        color="#000000">already have </font></font>code structure, and
    compile way change.<br>
    <br>
    I don't have condition to test the function of this lib and dpdk,  I
    can only  go far as build success.  <br>
    what I worried is  upgrade with big difference without test maybe
    cause big problem. <br>
    <br>
    if we don't want to use tar on "<a class="moz-txt-link-freetext"
      href="https://autobuilder.yocto.io/pub/sources/libibverbs-$">https://autobuilder.yocto.io/pub/sources/</a>", 
    I propose who<br>
    can test this to upgrade the SRC_URI to rdma-core/libibverbs. <br>
    <pre wrap="">


</pre>
    <pre class="moz-signature" cols="72">-- 
BRs

Sandy(Li Changqing)
+861084778653</pre>
  </body>
</html>

--------------CFE5712E4954CC0B1A724707--
