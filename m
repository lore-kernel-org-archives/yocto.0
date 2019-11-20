Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82342E00B7A; Wed, 20 Nov 2019 08:56:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	https://www.dnswl.org/, no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9E2A5E00B65
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 08:56:09 -0800 (PST)
Received: from [10.0.3.91] ([213.213.6.58])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id UGw72101Q1F741R01Gw8LM; Wed, 20 Nov 2019 17:56:08 +0100
To: yocto@yoctoproject.org
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<785af76f-c9e0-7457-3f1a-8f3a9525806c@faresoftware.it>
	<da766e05-d447-7dfa-1a25-5eabe7ad16c9@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <c9b3cab6-e041-1583-13ca-8bed344b88ca@faresoftware.it>
Date: Wed, 20 Nov 2019 17:56:07 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <da766e05-d447-7dfa-1a25-5eabe7ad16c9@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1574268968; bh=xBWFYnBX/AsHENW2KXj8ca+rAmDaEYtJZluhddy5B3A=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=QL+a85/vZB3w7rEmLAwLzwahNN7XHmnAE4qcth4hk/5WLzL0/6P5QamlfLZr/Woi2
	/rOdm3T2PfabKP4FdhWnyDprTZjAD0fFsuoW8jJkFYQ8td0KqqW40ljJhj1F6gL5Cz
	pWYZPKvdOEVP0nsSio6wtvI6EKTL6fI1wcsGyfhHSgOTfYBvLlGKkPA3rrLBjlq7Cn
	qifKTLSA1+Mzrda/l616D+9S2CopXNpjLFO+a1/D3G2YrYYUqSZVa1eDsob+72oW1m
	JOdtSfAgVo9t6q74A/ynpjnyDO5DFFVfVwtyshUeKyjZMo26jD9yhf05ZkLPnStEAJ
	Ua/mW56Wmia5Q==
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
X-List-Received-Date: Wed, 20 Nov 2019 16:56:21 -0000
Content-Type: multipart/alternative;
	boundary="------------4FDC248FFB3A9492B23C9894"
Content-Language: it

--------------4FDC248FFB3A9492B23C9894
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

Is it possible to compile tensorflow against python2.7?

Il 20/11/19 16:40, Mauro Ziliani ha scritto:
>
> I forked the repository and I'm tryng to port the layer for Krogoth
>
> M
>
> Il 20/11/19 15:37, Mauro Ziliani ha scritto:
>>
>> Hi all.
>>
>> There a port for meta-tensorflow for Krogoth or Sumo?
>>
>> Mayabe I need to use it on this distribution
>>
>> Thaks
>>
>>  M
>>
>> Il 21/02/19 12:37, Hongxu Jia ha scritto:
>>> Hi RP and Yocto folks,
>>>
>>> Currently AI on IoT edge becomes more and more popular, but there is no
>>> machine learning framework in Yocto/OE. With the support of Eric
>>> <Zhangle.Yang@windriver.com>, Robert<liezhi.yang@windriver.com>
>>> and Randy<randy.macleod@windriver.com>, after two months effort, I've
>>> integrated TensorFlow to Yocto.
>>>
>>> Now, I contribute the patches to Yocto for review, and apply for creating
>>> a layer named `meta-tensorflow' on Yocto.
>>>
>>> For test convenient, there is a fork on github:
>>> https://github.com/hongxu-jia/meta-tensorflow
>>>
>>> BTW, I have contributed other 11 fundamental recipes to meta-openembedded
>>> and all of them have been merged to master branch.
>>>
>>> Please no hesitate to share your suggestion.
>>>
>>> //Hongxu
>>>
>>> Testing Commands:
>>> -----------------
>>> See README
>>>
>>> Testing, Expected Results:
>>> --------------------------
>>> See README
>>>
>>
>

--------------4FDC248FFB3A9492B23C9894
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">Is it possible to compile tensorflow against
        python2.7?</font><br>
    </p>
    <div class="moz-cite-prefix">Il 20/11/19 16:40, Mauro Ziliani ha
      scritto:<br>
    </div>
    <blockquote type="cite"
      cite="mid:da766e05-d447-7dfa-1a25-5eabe7ad16c9@faresoftware.it">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-15">
      <p><font size="-1">I forked the repository and I'm tryng to port
          the layer for Krogoth</font></p>
      <p><font size="-1">M</font><br>
      </p>
      <div class="moz-cite-prefix">Il 20/11/19 15:37, Mauro Ziliani ha
        scritto:<br>
      </div>
      <blockquote type="cite"
        cite="mid:785af76f-c9e0-7457-3f1a-8f3a9525806c@faresoftware.it">
        <meta http-equiv="Content-Type" content="text/html;
          charset=ISO-8859-15">
        <p><font size="-1">Hi all.</font></p>
        <p><font size="-1">There a port for meta-tensorflow for Krogoth
            or Sumo?<br>
          </font></p>
        <p><font size="-1">Mayabe I need to use it on this distribution</font></p>
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
  </body>
</html>

--------------4FDC248FFB3A9492B23C9894--
