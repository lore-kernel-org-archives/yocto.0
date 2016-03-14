Return-Path: <rich@noir.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC535E00D5F; Mon, 14 Mar 2016 13:56:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_BRBL_LASTEXT,RDNS_DYNAMIC autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.4 RCVD_IN_BRBL_LASTEXT RBL: RCVD_IN_BRBL_LASTEXT
	*      [198.144.209.5 listed in bb.barracudacentral.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from sendai.noir.com (m209-5.dsl.rawbw.com [198.144.209.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AFD7E00C6B
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 13:56:00 -0700 (PDT)
Received: from zama.local (50-197-177-177-static.hfc.comcastbusiness.net
	[50.197.177.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by sendai.noir.com (Postfix) with ESMTPSA id 40E4BE1947;
	Mon, 14 Mar 2016 13:55:59 -0700 (PDT)
To: yocto@yoctoproject.org
References: <56E64947.5020606@mlbassoc.com>
	<CAMKF1sr3DgBbiAHAb0GngGDZeN-LUhFWH0s7bQ+zm2iYD-EaDA@mail.gmail.com>
From: K Richard Pixley <rich@noir.com>
Message-ID: <658fd98c-9dd9-a98e-a597-f86ef61582aa@noir.com>
Date: Mon, 14 Mar 2016 13:55:58 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:47.0)
	Gecko/20100101 Thunderbird/47.0a2
MIME-Version: 1.0
In-Reply-To: <CAMKF1sr3DgBbiAHAb0GngGDZeN-LUhFWH0s7bQ+zm2iYD-EaDA@mail.gmail.com>
Subject: Re: Problems building live image
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
X-List-Received-Date: Mon, 14 Mar 2016 20:56:01 -0000
Content-Type: multipart/alternative;
	boundary="------------8AB284D655AE64ABE6A846EA"

--------------8AB284D655AE64ABE6A846EA
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

If I add that line, (

IMAGE_FSTYPES = "vmdk"

), to my local.conf, I get:

    rich@burgess> time bitbake core-image-minimal
    ERROR:  OE-core's config sanity checker detected a potential
    misconfiguration.
         Either fix the cause of this error or at your own risk disable
    the checker (see sanity.conf).
         Following is the list of potential problems / advisories:

         Error, IMAGE_FSTYPES vmdk and live can't be built together


    Summary: There was 1 ERROR message shown, returning a non-zero exit
    code.

Building yocto-2.0 for genericx86-64.  What am I doing wrong?

--rich

On 3/13/16 23:09 , Khem Raj wrote:
> just use IMAGE_FSTYPES = "vmdk" if you plan to use virtualbox and need
> a raw image.
>
> On Sun, Mar 13, 2016 at 10:16 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> I'd like to to some testing that qemu just doesn't seem up to
>> so I attempted to build a live ISO per the documentation. I
>> added these lines to local.conf:
>>    IMAGE_FSTYPES_genericx86 += "live"
>>    NOISO_genericx86 = "0"
>>
>> When I try to build core-image-base I get this error:
>>    ERROR: INITRD_IMAGE_LIVE core-image-minimal-initramfs cannot use image
>> live, hddimg or iso.
>>    ERROR: Check IMAGE_FSTYPES and INITRAMFS_FSTYPES settings.
>>    ERROR: Failed to parse recipe:
>> /local/poky-cutting-edge/meta/recipes-core/images/core-image-minimal-initramfs.bb
>>
>> I'm using a recent Poky checkout (d53413d3a8444c38a83ea37867c8af7754d8e702)
>>
>> Am I just doing something wrong here? I was following this section of the
>> mega-manual:
>>
>>    26.56. image-live.bbclass¶
>>
>>    The image-live class supports building "live" images.
>>
>>    Normally, you do not use this class directly. Instead, you add "live" to
>> IMAGE_FSTYPES.
>>    For example, if you were building an ISO image, you would add "live" to
>> IMAGE_FSTYPES,
>>    set the NOISO variable to "0" and the build system would use the
>> image-live class to
>>    build the ISO image.
>>
>> I don't have any available hardware for this testing, so I thought
>> I'd use VirtualBox.  Is this a reasonable approach?  I want to use
>> a live ISO so I get a writable file system.  I tried just using the
>> .hddimage but that doesn't boot with VirtualBox :-(
>>
>> To be clear, along with the additions above in local.conf, I tried:
>>    $ MACHINE=genericx86 bitbake core-image-base
>>
>> Thanks for any ideas
>>
>> --
>> ------------------------------------------------------------
>> Gary Thomas                 |  Consulting for the
>> MLB Associates              |    Embedded world
>> ------------------------------------------------------------
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto

--------------8AB284D655AE64ABE6A846EA
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    If I add that line, (
    <pre wrap="">IMAGE_FSTYPES = "vmdk"</pre>
    ), to my local.conf, I get:<br>
    <blockquote><tt>rich@burgess&gt; time bitbake core-image-minimal</tt><br>
      <tt>ERROR:  OE-core's config sanity checker detected a potential
        misconfiguration.</tt><br>
      <tt>    Either fix the cause of this error or at your own risk
        disable the checker (see sanity.conf).</tt><br>
      <tt>    Following is the list of potential problems / advisories:</tt><br>
      <br>
      <tt>    Error, IMAGE_FSTYPES vmdk and live can't be built together</tt><br>
      <br>
      <br>
      <tt>Summary: There was 1 ERROR message shown, returning a non-zero
        exit code.</tt><br>
    </blockquote>
    Building yocto-2.0 for genericx86-64.  What am I doing wrong?<br>
    <br>
    --rich<br>
    <br>
    <div class="moz-cite-prefix">On 3/13/16 23:09 , Khem Raj wrote:<br>
    </div>
    <blockquote
cite="mid:CAMKF1sr3DgBbiAHAb0GngGDZeN-LUhFWH0s7bQ+zm2iYD-EaDA@mail.gmail.com"
      type="cite">
      <pre wrap="">just use IMAGE_FSTYPES = "vmdk" if you plan to use virtualbox and need
a raw image.

On Sun, Mar 13, 2016 at 10:16 PM, Gary Thomas <a class="moz-txt-link-rfc2396E" href="mailto:gary@mlbassoc.com">&lt;gary@mlbassoc.com&gt;</a> wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">I'd like to to some testing that qemu just doesn't seem up to
so I attempted to build a live ISO per the documentation. I
added these lines to local.conf:
  IMAGE_FSTYPES_genericx86 += "live"
  NOISO_genericx86 = "0"

When I try to build core-image-base I get this error:
  ERROR: INITRD_IMAGE_LIVE core-image-minimal-initramfs cannot use image
live, hddimg or iso.
  ERROR: Check IMAGE_FSTYPES and INITRAMFS_FSTYPES settings.
  ERROR: Failed to parse recipe:
/local/poky-cutting-edge/meta/recipes-core/images/core-image-minimal-initramfs.bb

I'm using a recent Poky checkout (d53413d3a8444c38a83ea37867c8af7754d8e702)

Am I just doing something wrong here? I was following this section of the
mega-manual:

  26.56. image-live.bbclass¶

  The image-live class supports building "live" images.

  Normally, you do not use this class directly. Instead, you add "live" to
IMAGE_FSTYPES.
  For example, if you were building an ISO image, you would add "live" to
IMAGE_FSTYPES,
  set the NOISO variable to "0" and the build system would use the
image-live class to
  build the ISO image.

I don't have any available hardware for this testing, so I thought
I'd use VirtualBox.  Is this a reasonable approach?  I want to use
a live ISO so I get a writable file system.  I tried just using the
.hddimage but that doesn't boot with VirtualBox :-(

To be clear, along with the additions above in local.conf, I tried:
  $ MACHINE=genericx86 bitbake core-image-base

Thanks for any ideas

--
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------
--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>
</pre>
      </blockquote>
    </blockquote>
  </body>
</html>

--------------8AB284D655AE64ABE6A846EA--
