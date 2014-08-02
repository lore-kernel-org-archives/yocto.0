Return-Path: <joaohf@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 58BE7E00572; Fri,  1 Aug 2014 19:10:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (joaohf[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f174.google.com (mail-yk0-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 667F4E004E0
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 19:10:19 -0700 (PDT)
Received: by mail-yk0-f174.google.com with SMTP id q9so2898346ykb.5
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 19:10:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=L5SY2cvk1A2h41nH565cqlFRX506/YfjooX+Bm+Efzc=;
	b=btg5WnNpVzmttDReqUCXqwzVQezxDsXZrpp3u5ohI3XNhMQ71qtM5oAL/qoTBcrg5Z
	zStm4TWtTY47inUSzLbJalx9aCbH0x6DVVOyZfZ9vpncP0jcr5A2V21gowFSKl7/Zc0q
	nYqAaP4bguAMU4/2fCh5mFr0Lbvh3LpXS3NYjZimfLBdP3+GNxvxuT2uK71k565626pa
	ZZRO/bsWQo37qRr4MSixAFJkxAhwgVP63ablkLYXaiVaHqX4gNdwgPo/2K2PNfMJtNMk
	AuQuvf7zlGw1dAq9Vl29bEFbsz+fJRYgJzpbUycyGULdP1WplvZRTDbFPCiK3pJFbXBf
	PV7A==
X-Received: by 10.236.127.136 with SMTP id d8mr13652141yhi.99.1406945419394;
	Fri, 01 Aug 2014 19:10:19 -0700 (PDT)
Received: from [192.168.0.12] ([201.53.208.133])
	by mx.google.com with ESMTPSA id
	u23sm17150425yhh.30.2014.08.01.19.10.17 for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 01 Aug 2014 19:10:18 -0700 (PDT)
Message-ID: <53DC4886.8070406@gmail.com>
Date: Fri, 01 Aug 2014 23:10:14 -0300
From: =?windows-1252?Q?Jo=E3o_Henrique_Ferreira_de_Freitas?= <joaohf@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAPhnLPB9VeuosZF16qY2H32adjqC0xZoCWhq_Vdjy7n5YpYCBQ@mail.gmail.com>
	<CFFE70D2.703B%alexandru.c.georgescu@intel.com>
In-Reply-To: <CFFE70D2.703B%alexandru.c.georgescu@intel.com>
Subject: Re: Yocto 1.7_M2 release candidate 1 ready for QA
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
X-List-Received-Date: Sat, 02 Aug 2014 02:10:32 -0000
Content-Type: multipart/alternative;
	boundary="------------090506070104090300030507"

--------------090506070104090300030507
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


Hi,

I've tested all toolchains available at 
http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1/toolchain/x86_64/

My test program is very simple:

--- c.cpp ---
#include <limits>

int main() {}
---

Two considerations

1) the of ppce500v2-toolchain-1.6+snapshot.sh 
<http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1/toolchain/x86_64/poky-eglibc-x86_64-core-image-sato-ppce500v2-toolchain-1.6+snapshot.sh> 
and armv7a-vfp-neon-toolchain-1.6+snapshot.sh 
<http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1/toolchain/x86_64/poky-eglibc-x86_64-core-image-sato-armv7a-vfp-neon-toolchain-1.6+snapshot.sh> 
is less than others toolchains

2) when I try to compile c.cpp, using ppce500v2 or armv7a I get:

source /opt/poky/1.6+snapshot/environment-setup-ppce500v2-poky-linux-gnuspe
$CXX c.cpp

In file included from c.cpp:2:0:
/opt/poky/1.6+snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/include/c++/4.9.0/limits:42:28: 
fatal error: bits/c++config.h: No such file or directory
  #include <bits/c++config.h>

I can't figure out what happened with these two toolchains.

# find /opt/poky/1.6+snapshot/ -name c++config.h
[sudo] password for joaohf:
/opt/poky/1.6+snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/include/c++/4.9.0/powerpc-poky-linux-gnuspe/bits/c++config.h
/opt/poky/1.6+snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/src/debug/gcc-runtime/4.9.0-r0/gcc-4.9.0/build.powerpc-poky-linux-gnuspe.powerpc-poky-linux-gnuspe/powerpc-poky-linux-gnuspe/libstdc++-v3/include/powerpc-poky-linux-gnuspe/bits/c++config.h

Someone has any hint?

I suspect something at meta-fsl-ppc and meta-fsl-arm.


Is there QA tests against toolchains? I think there is nice to have one. 
Like installs all toolchain locally and use each one to compile something.


Thanks.



On 30-07-2014 03:52, Georgescu, Alexandru C wrote:
> Ha, nice to see green here! :)
> --
> Alexandru Georgescu
> Yocto QA Engineer
> SSG/SSD Open Source Technology Center Romania
>
>
>
>
> On 30/07/14 09:41, "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
> wrote:
>
>> Full green build!
>>
>> http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1
>>
>> bitbake 4aaf56bfbad4aa626be8a2f7a5f70834c3311dd3
>> eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
>> eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
>> meta-fsl-arm 6ef8db67df3436a463851ff95dcfb6a66132f3c0
>> meta-fsl-ppc 5efa2d27dcf4637b008faf782b5e257b748b24c0
>> meta-intel 67b7f6f3a03ddbdcf66823eb5a236edbc0aa4858
>> meta-minnow ee48eba5895178ec19febee2e0a2d8b0f3ace0e9
>> meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
>> oecore 7986adeac16550b33f65fded39a55f668e0e543f
>> poky 2d1660112e54653f7bb763939d0416472c49fe01
>>
>>
>> -- 
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release

-- 
João Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil


--------------090506070104090300030507
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <br>
    Hi,<br>
    <br>
    I've tested all toolchains available at
<a class="moz-txt-link-freetext" href="http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1/toolchain/x86_64/">http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1/toolchain/x86_64/</a><br>
    <br>
    My test program is very simple: <br>
    <br>
    --- c.cpp ---<br>
    #include &lt;limits&gt;<br>
    <br>
    int main() {}<br>
    ---<br>
    <br>
    Two considerations <br>
    <br>
    1) the of <a
href="http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1/toolchain/x86_64/poky-eglibc-x86_64-core-image-sato-ppce500v2-toolchain-1.6+snapshot.sh">ppce500v2-toolchain-1.6+snapshot.sh</a>
    and <a
href="http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1/toolchain/x86_64/poky-eglibc-x86_64-core-image-sato-armv7a-vfp-neon-toolchain-1.6+snapshot.sh">armv7a-vfp-neon-toolchain-1.6+snapshot.sh</a>
    is less than others toolchains<br>
    <br>
    2) when I try to compile c.cpp, using ppce500v2 or armv7a I get:<br>
    <br>
    source
    /opt/poky/1.6+snapshot/environment-setup-ppce500v2-poky-linux-gnuspe<br>
    $CXX c.cpp<br>
    <br>
    In file included from c.cpp:2:0:<br>
    /opt/poky/1.6+snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/include/c++/4.9.0/limits:42:28:
    fatal error: bits/c++config.h: No such file or directory<br>
     #include &lt;bits/c++config.h&gt;<br>
    <br>
    I can't figure out what happened with these two toolchains.<br>
    <br>
    # find /opt/poky/1.6+snapshot/ -name c++config.h<br>
    [sudo] password for joaohf: <br>
/opt/poky/1.6+snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/include/c++/4.9.0/powerpc-poky-linux-gnuspe/bits/c++config.h<br>
/opt/poky/1.6+snapshot/sysroots/ppce500v2-poky-linux-gnuspe/usr/src/debug/gcc-runtime/4.9.0-r0/gcc-4.9.0/build.powerpc-poky-linux-gnuspe.powerpc-poky-linux-gnuspe/powerpc-poky-linux-gnuspe/libstdc++-v3/include/powerpc-poky-linux-gnuspe/bits/c++config.h<br>
    <br>
    Someone has any hint?<br>
    <br>
    I suspect something at meta-fsl-ppc and meta-fsl-arm.<br>
    <br>
    <br>
    Is there QA tests against toolchains? I think there is nice to have
    one. Like installs all toolchain locally and use each one to compile
    something.<br>
    <br>
    <br>
    Thanks.<br>
    <br>
    <br>
    <br>
    <div class="moz-cite-prefix">On 30-07-2014 03:52, Georgescu,
      Alexandru C wrote:<br>
    </div>
    <blockquote
      cite="mid:CFFE70D2.703B%25alexandru.c.georgescu@intel.com"
      type="cite">
      <pre wrap="">Ha, nice to see green here! :)
--
Alexandru Georgescu
Yocto QA Engineer
SSG/SSD Open Source Technology Center Romania




On 30/07/14 09:41, "Flanagan, Elizabeth" <a class="moz-txt-link-rfc2396E" href="mailto:elizabeth.flanagan@intel.com">&lt;elizabeth.flanagan@intel.com&gt;</a>
wrote:

</pre>
      <blockquote type="cite">
        <pre wrap="">Full green build!

<a class="moz-txt-link-freetext" href="http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1">http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7_M2.rc1</a>

bitbake 4aaf56bfbad4aa626be8a2f7a5f70834c3311dd3
eclipse-poky-juno 26bfc407781aa185f244a47ba63120343cee4a37
eclipse-poky-kepler 4a167fd662262ebdaa3cf0d332ac0debb52d7904
meta-fsl-arm 6ef8db67df3436a463851ff95dcfb6a66132f3c0
meta-fsl-ppc 5efa2d27dcf4637b008faf782b5e257b748b24c0
meta-intel 67b7f6f3a03ddbdcf66823eb5a236edbc0aa4858
meta-minnow ee48eba5895178ec19febee2e0a2d8b0f3ace0e9
meta-qt3 3016129d90b7ac8517a5227d819f10ad417b5b45
oecore 7986adeac16550b33f65fded39a55f668e0e543f
poky 2d1660112e54653f7bb763939d0416472c49fe01


-- 
Elizabeth Flanagan
Yocto Project
Build and Release
</pre>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    <br>
    <pre class="moz-signature" cols="72">-- 
João Henrique Ferreira de Freitas - joaohf_at_gmail.com
Campinas-SP-Brasil</pre>
  </body>
</html>

--------------090506070104090300030507--
