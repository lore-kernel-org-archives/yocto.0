Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32A0FE00B7A; Wed, 20 Nov 2019 12:20:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6258BE00AAA
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 12:20:56 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAKKKois006411
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 20 Nov 2019 12:20:50 -0800
Received: from [128.224.56.217] (128.224.56.217) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 20 Nov 2019 12:20:49 -0800
To: Mauro Ziliani <mauro@faresoftware.it>, <yocto@yoctoproject.org>, "Jia,
	Hongxu" <Hongxu.Jia@windriver.com>
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<785af76f-c9e0-7457-3f1a-8f3a9525806c@faresoftware.it>
	<da766e05-d447-7dfa-1a25-5eabe7ad16c9@faresoftware.it>
	<c9b3cab6-e041-1583-13ca-8bed344b88ca@faresoftware.it>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <2ddc5d6c-7c92-be1a-8152-d8bf9a198c76@windriver.com>
Date: Wed, 20 Nov 2019 15:20:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <c9b3cab6-e041-1583-13ca-8bed344b88ca@faresoftware.it>
X-Originating-IP: [128.224.56.217]
Subject: Re: Review request 0/13: Contribute meta-tensorflow to Yocto
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
X-List-Received-Date: Wed, 20 Nov 2019 20:20:59 -0000
Content-Type: multipart/alternative;
	boundary="------------6C944D8466BE92E83D065BF7"
Content-Language: en-CA

--------------6C944D8466BE92E83D065BF7
Content-Type: text/plain; charset="iso-8859-15"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/20/19 11:56 AM, Mauro Ziliani wrote:
>
> Is it possible to compile tensorflow against python2.7?
>
I doubt that it's easy/supported but Hongxu, who lives in China, will 
reply later today to explain.
Btw, Krogoth has python3, why not use it?

../Randy


> Il 20/11/19 16:40, Mauro Ziliani ha scritto:
>>
>> I forked the repository and I'm tryng to port the layer for Krogoth
>>
>> M
>>
>> Il 20/11/19 15:37, Mauro Ziliani ha scritto:
>>>
>>> Hi all.
>>>
>>> There a port for meta-tensorflow for Krogoth or Sumo?
>>>
>>> Mayabe I need to use it on this distribution
>>>
>>> Thaks
>>>
>>>  M
>>>
>>> Il 21/02/19 12:37, Hongxu Jia ha scritto:
>>>> Hi RP and Yocto folks,
>>>>
>>>> Currently AI on IoT edge becomes more and more popular, but there is no
>>>> machine learning framework in Yocto/OE. With the support of Eric
>>>> <Zhangle.Yang@windriver.com>, Robert<liezhi.yang@windriver.com>
>>>> and Randy<randy.macleod@windriver.com>, after two months effort, I've
>>>> integrated TensorFlow to Yocto.
>>>>
>>>> Now, I contribute the patches to Yocto for review, and apply for creating
>>>> a layer named `meta-tensorflow' on Yocto.
>>>>
>>>> For test convenient, there is a fork on github:
>>>> https://github.com/hongxu-jia/meta-tensorflow
>>>>
>>>> BTW, I have contributed other 11 fundamental recipes to meta-openembedded
>>>> and all of them have been merged to master branch.
>>>>
>>>> Please no hesitate to share your suggestion.
>>>>
>>>> //Hongxu
>>>>
>>>> Testing Commands:
>>>> -----------------
>>>> See README
>>>>
>>>> Testing, Expected Results:
>>>> --------------------------
>>>> See README
>>>>
>>>
>>
>

-- 
# Randy MacLeod
# Wind River Linux


--------------6C944D8466BE92E83D065BF7
Content-Type: text/html; charset="iso-8859-15"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body>
    <div class="moz-cite-prefix">On 11/20/19 11:56 AM, Mauro Ziliani
      wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:c9b3cab6-e041-1583-13ca-8bed344b88ca@faresoftware.it">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-15">
      <p><font size="-1">Is it possible to compile tensorflow against
          python2.7?</font><br>
      </p>
    </blockquote>
    <p><font size="-1">I doubt that it's easy/supported but Hongxu, who
        lives in China, will reply later today to explain.<br>
        Btw, Krogoth has python3, why not use it?<br>
      </font></p>
    <p><font size="-1">../Randy</font></p>
    <p><font size="-1"><br>
      </font></p>
    <blockquote type="cite"
      cite="mid:c9b3cab6-e041-1583-13ca-8bed344b88ca@faresoftware.it">
      <p> </p>
      <div class="moz-cite-prefix">Il 20/11/19 16:40, Mauro Ziliani ha
        scritto:<br>
      </div>
      <blockquote type="cite"
        cite="mid:da766e05-d447-7dfa-1a25-5eabe7ad16c9@faresoftware.it">
        <p><font size="-1">I forked the repository and I'm tryng to port
            the layer for Krogoth</font></p>
        <p><font size="-1">M</font><br>
        </p>
        <div class="moz-cite-prefix">Il 20/11/19 15:37, Mauro Ziliani ha
          scritto:<br>
        </div>
        <blockquote type="cite"
          cite="mid:785af76f-c9e0-7457-3f1a-8f3a9525806c@faresoftware.it">
          <p><font size="-1">Hi all.</font></p>
          <p><font size="-1">There a port for meta-tensorflow for
              Krogoth or Sumo?<br>
            </font></p>
          <p><font size="-1">Mayabe I need to use it on this
              distribution</font></p>
          <p><font size="-1">Thaks</font></p>
          <p><font size="-1"> M</font><br>
          </p>
          <div class="moz-cite-prefix">Il 21/02/19 12:37, Hongxu Jia ha
            scritto:<br>
          </div>
          <blockquote type="cite"
            cite="mid:1550749039-67320-1-git-send-email-hongxu.jia@windriver.com">
            <pre class="moz-quote-pre" wrap="">Hi RP and Yocto folks,

Currently AI on IoT edge becomes more and more popular, but there is no
machine learning framework in Yocto/OE. With the support of Eric
<a class="moz-txt-link-rfc2396E" href="mailto:Zhangle.Yang@windriver.com" moz-do-not-send="true">&lt;Zhangle.Yang@windriver.com&gt;</a>, Robert <a class="moz-txt-link-rfc2396E" href="mailto:liezhi.yang@windriver.com" moz-do-not-send="true">&lt;liezhi.yang@windriver.com&gt;</a>
and Randy <a class="moz-txt-link-rfc2396E" href="mailto:randy.macleod@windriver.com" moz-do-not-send="true">&lt;randy.macleod@windriver.com&gt;</a>, after two months effort, I've
integrated TensorFlow to Yocto.

Now, I contribute the patches to Yocto for review, and apply for creating
a layer named `meta-tensorflow' on Yocto.

For test convenient, there is a fork on github:
<a class="moz-txt-link-freetext" href="https://github.com/hongxu-jia/meta-tensorflow" moz-do-not-send="true">https://github.com/hongxu-jia/meta-tensorflow</a>

BTW, I have contributed other 11 fundamental recipes to meta-openembedded
and all of them have been merged to master branch.

Please no hesitate to share your suggestion.

//Hongxu

Testing Commands:
-----------------
See README

Testing, Expected Results:
--------------------------
See README

</pre>
          </blockquote>
          <br>
          <fieldset class="mimeAttachmentHeader"></fieldset>
        </blockquote>
        <br>
        <fieldset class="mimeAttachmentHeader"></fieldset>
      </blockquote>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------6C944D8466BE92E83D065BF7--
