Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7F26E00D03; Tue, 15 Aug 2017 18:06:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6847CE00B67
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 18:06:32 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id y129so15741011pgy.4
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 18:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language;
	bh=0NXEVJlaljAtebmheokPz3YkU6KNWCbRKt6P2XbwSEw=;
	b=qTuM0Fy3g6X2tuooy4qKFyr74BrA0UPznVBCs/tjJuDO79HIFoKD8sLXCm0YrBPtPN
	EKrn5+hoERnRqn+VUhl1/TGDkJ7Fifg9oGWg6YbnLEAZUm+LbQxm8cAjS9Q6PD0j/eb2
	nRoPouUfx/P0fkWuP7wj9zRatdE9eFAzY7SxYmMXdUrDQqKoxbK6/9WVL44911lKPcI+
	S57xMrjuMyJC+JwK/Zv3afMmCkjlcctPQERAJZgkfr36bwQNauvKCq1CDxOKyCAdOjzm
	cvnQwcuNLQWaT7vOrzj5fWzPp0F7hvzYJfomMnuiyhVb7oQ6d8WmUh0EK+L2qn7FYCYt
	wGIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=0NXEVJlaljAtebmheokPz3YkU6KNWCbRKt6P2XbwSEw=;
	b=Brl8lFFu8mgnR6PyZfoLgur8YzEgjKbrpov/CVrlgJZsB3bJEuJ+2Vx11VfI4Tze1k
	2Hj4Y9KdcrcD9uKtBaxWCqbwBHciDGh89MiaE0YGPkzaPadgjLYcKtAieUQgdnEHNwUv
	6t8p5IxzIt0i0RDUbb72vj/8MOl/ZjqKP6NdfclFCrmmr6ApJeW8J3Qt8rF6tw/F+vIg
	yMfl4d10vKkab3nttFj13yKckM1CvOvIOYYVidfID+04Yzi6b1UZuDKOqPVjAswD3Sob
	rsfhTKrxzVJzekIMyUxB03DsdwTVZImOxWxQ2W5/9QyivtsYrTIPzaYyBELT2Z27Ioae
	gy6A==
X-Gm-Message-State: AHYfb5gzxJ3Xx9S/MpNWtOK/jfXC2UM+IlhzQ+XsgLqfMJqOTrP8XllS
	AU0gl2VaMBPn6/VLpcI=
X-Received: by 10.99.142.73 with SMTP id k70mr55215pge.86.1502845592422;
	Tue, 15 Aug 2017 18:06:32 -0700 (PDT)
Received: from ?IPv6:2001:8003:804a:b500:7ae4:ff:fe2d:ca29?
	([2001:8003:804a:b500:7ae4:ff:fe2d:ca29])
	by smtp.gmail.com with ESMTPSA id
	q9sm18547489pfa.177.2017.08.15.18.06.29
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Aug 2017 18:06:31 -0700 (PDT)
To: Martin Jansa <martin.jansa@gmail.com>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
	<CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
	<299105a1-2bf6-a89f-d1f1-e35bd2d458c1@gmail.com>
	<1502806378.28941.32.camel@linux.intel.com>
	<CA+chaQe_1GVYdmCwqQ-gSUZZ=_xcN5RR=ORuzZiUxTyj3tU8uQ@mail.gmail.com>
	<CAByQQ_qNcKpj5RYXX0EVtzLfqki0CW-FwSN-tAhvEYybKo24ug@mail.gmail.com>
	<20170815235004.GA3353@jama>
From: Riko <antonius.riko@gmail.com>
Message-ID: <862e5023-509f-fc6e-28b9-bd9730d32271@gmail.com>
Date: Wed, 16 Aug 2017 09:06:26 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
In-Reply-To: <20170815235004.GA3353@jama>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Wed, 16 Aug 2017 01:06:33 -0000
Content-Type: multipart/alternative;
	boundary="------------F7DA199416C3609EF343EA42"
Content-Language: en-US

--------------F7DA199416C3609EF343EA42
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

This one :

|git clone -b morty git://any layers ===> if I use morty as my branch ? 
correct me ? thanks |


On 16/08/17 07:50, Martin Jansa wrote:
> On Wed, Aug 16, 2017 at 07:40:10AM +0800, Riko Ho wrote:
>> I see, so I must use all layers within the same branch.
>> Could you tell me where I can download those layers in the sma branch?
>> I didn't see the branch when I clone the layers.
> This might help you:
> https://git-scm.com/documentation
>
>> On Aug 15, 2017 10:11 PM, "Martin Jansa" <martin.jansa@gmail.com> wrote:
>>
>>> But it's related to it, in this thread he added oe-core/meta in master
>>> branch to BBLAYERS in poky build (already including poky/meta) from pyro
>>> branch.
>>>
>>> That's why he is seeing 3 strange issues reported in couple threads
>>> already (and this is also 3rd time someone telling him that he shouldn't
>>> include oe-core meta twice and to use the same branch across all layers).
>>>
>>> On Tue, Aug 15, 2017 at 4:12 PM, Leonardo Sandoval <
>>> leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>>>
>>>> On Tue, 2017-08-15 at 09:09 +0800, Riko wrote:
>>>>> Dear Team Yocto Members,
>>>>>
>>>>> I continue compiling, and got :
>>>>>
>>>>> ERROR: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
>>>> build-appliance-image_15.0.0.bb: No IMAGE_CMD defined for IMAGE_FSTYPES
>>>> entry 'wic.vmdk' - possibly invalid type name or missing support class
>>>>> ERROR: Failed to parse
>>>>> recipe: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
>>>> build-appliance-image_15.0.0.bb
>>>> would be better if you start another thread with this issue. BTW, I just
>>>> built a build-appliance without any change at local.conf and all went
>>>> fine so you may have included something that you are not referring to
>>>> (IMAGE_FILES?)
>>>>
>>>>
>>>>
>>>>> How can I fix it ?
>>>>>
>>>>> regards,
>>>>>
>>>>> Riko
>>>>>
>>>>>
>>>>>
>>>>> On 14/08/17 23:56, Christopher Larson wrote:
>>>>>
>>>>>> The openembedded-core root isn’t a layer, openembedded-core/meta is.
>>>>>>
>>>>>> On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval
>>>>>> <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
>>>>>>          On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
>>>>>>          > Dear Yocto Members,
>>>>>>          >
>>>>>>          > How can I find this file ?
>>>>>>
>>>>>>
>>>>>>          this is a pretty general question. are you running bitbake
>>>>>>          from the
>>>>>>          build directory? double check your conf/bblayers.conf and
>>>>>>          make sure
>>>>>>          paths there are pointing correctly.
>>>>>>
>>>>>>
>>>>>>          >
>>>>>>          > ==
>>>>>>          >
>>>>>>          > ERROR: Unable to parse
>>>>>>          > /home/bianchi/poky/openembedded-core/conf/layer.conf:
>>>>>>          [Errno 2] file
>>>>>>          > /home/bianchi/poky/openembedded-core/conf/layer.conf not
>>>>>>          found
>>>>>>          >
>>>>>>          >
>>>>>>          > Thanks,
>>>>>>          >
>>>>>>          > Riko
>>>>>>          >
>>>>>>
>>>>>>
>>>>>>          --
>>>>>>          _______________________________________________
>>>>>>          yocto mailing list
>>>>>>          yocto@yoctoproject.org
>>>>>>          https://lists.yoctoproject.org/listinfo/yocto
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>>
>>>>>> --
>>>>>> Christopher Larson
>>>>>> kergoth at gmail dot com
>>>>>> Founder - BitBake, OpenEmbedded, OpenZaurus
>>>>>> Senior Software Engineer, Mentor Graphics
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>


--------------F7DA199416C3609EF343EA42
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>This one :</p>
    <p><code class="field-git-url">git clone -b morty git://any layers
        ===&gt; if I use morty as my branch ? correct me ? thanks </code></p>
    <br>
    <div class="moz-cite-prefix">On 16/08/17 07:50, Martin Jansa wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:20170815235004.GA3353@jama">
      <pre wrap="">On Wed, Aug 16, 2017 at 07:40:10AM +0800, Riko Ho wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">I see, so I must use all layers within the same branch.
Could you tell me where I can download those layers in the sma branch?
I didn't see the branch when I clone the layers.
</pre>
      </blockquote>
      <pre wrap="">
This might help you:
<a class="moz-txt-link-freetext" href="https://git-scm.com/documentation">https://git-scm.com/documentation</a>

</pre>
      <blockquote type="cite">
        <pre wrap="">On Aug 15, 2017 10:11 PM, "Martin Jansa" <a class="moz-txt-link-rfc2396E" href="mailto:martin.jansa@gmail.com">&lt;martin.jansa@gmail.com&gt;</a> wrote:

</pre>
        <blockquote type="cite">
          <pre wrap="">But it's related to it, in this thread he added oe-core/meta in master
branch to BBLAYERS in poky build (already including poky/meta) from pyro
branch.

That's why he is seeing 3 strange issues reported in couple threads
already (and this is also 3rd time someone telling him that he shouldn't
include oe-core meta twice and to use the same branch across all layers).

On Tue, Aug 15, 2017 at 4:12 PM, Leonardo Sandoval &lt;
<a class="moz-txt-link-abbreviated" href="mailto:leonardo.sandoval.gonzalez@linux.intel.com">leonardo.sandoval.gonzalez@linux.intel.com</a>&gt; wrote:

</pre>
          <blockquote type="cite">
            <pre wrap="">On Tue, 2017-08-15 at 09:09 +0800, Riko wrote:
</pre>
            <blockquote type="cite">
              <pre wrap="">Dear Team Yocto Members,

I continue compiling, and got :

ERROR: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
</pre>
            </blockquote>
            <pre wrap="">build-appliance-image_15.0.0.bb: No IMAGE_CMD defined for IMAGE_FSTYPES
entry 'wic.vmdk' - possibly invalid type name or missing support class
</pre>
            <blockquote type="cite">
              <pre wrap="">ERROR: Failed to parse
recipe: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
</pre>
            </blockquote>
            <pre wrap="">build-appliance-image_15.0.0.bb
</pre>
            <blockquote type="cite">
              <pre wrap="">
</pre>
            </blockquote>
            <pre wrap="">
would be better if you start another thread with this issue. BTW, I just
built a build-appliance without any change at local.conf and all went
fine so you may have included something that you are not referring to
(IMAGE_FILES?)



</pre>
            <blockquote type="cite">
              <pre wrap="">How can I fix it ?

regards,

Riko



On 14/08/17 23:56, Christopher Larson wrote:

</pre>
              <blockquote type="cite">
                <pre wrap="">The openembedded-core root isn’t a layer, openembedded-core/meta is.

On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval
<a class="moz-txt-link-rfc2396E" href="mailto:leonardo.sandoval.gonzalez@linux.intel.com">&lt;leonardo.sandoval.gonzalez@linux.intel.com&gt;</a> wrote:
        On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
        &gt; Dear Yocto Members,
        &gt;
        &gt; How can I find this file ?


        this is a pretty general question. are you running bitbake
        from the
        build directory? double check your conf/bblayers.conf and
        make sure
        paths there are pointing correctly.


        &gt;
        &gt; ==
        &gt;
        &gt; ERROR: Unable to parse
        &gt; /home/bianchi/poky/openembedded-core/conf/layer.conf:
        [Errno 2] file
        &gt; /home/bianchi/poky/openembedded-core/conf/layer.conf not
        found
        &gt;
        &gt;
        &gt; Thanks,
        &gt;
        &gt; Riko
        &gt;


        --
        _______________________________________________
        yocto mailing list
        <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
        <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>





--
Christopher Larson
kergoth at gmail dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Senior Software Engineer, Mentor Graphics
</pre>
              </blockquote>
              <pre wrap="">
</pre>
            </blockquote>
            <pre wrap="">

--
_______________________________________________
yocto mailing list
<a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a>
<a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a>

</pre>
          </blockquote>
          <pre wrap="">

</pre>
        </blockquote>
      </blockquote>
      <pre wrap="">
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------F7DA199416C3609EF343EA42--
