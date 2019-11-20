Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39685E00B7A; Wed, 20 Nov 2019 07:40:39 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBAA3E00B0B
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 07:40:36 -0800 (PST)
Received: from [10.0.3.91] ([213.213.6.58])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id UFgb2100D1F741R01FgbU6; Wed, 20 Nov 2019 16:40:35 +0100
To: yocto@yoctoproject.org
References: <1550749039-67320-1-git-send-email-hongxu.jia@windriver.com>
	<785af76f-c9e0-7457-3f1a-8f3a9525806c@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <da766e05-d447-7dfa-1a25-5eabe7ad16c9@faresoftware.it>
Date: Wed, 20 Nov 2019 16:40:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <785af76f-c9e0-7457-3f1a-8f3a9525806c@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1574264435; bh=Zs1G5p/7PTBj1NJCEOFP4Rwn9Ac2G/YbTZHPcWMRN4E=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=JQ36W+cT90o0k2Qb6CGyMYb8K/dYY5KIb7ICxKUb5YVYv/05v8my7q0R4FTm8M/Em
	idYfVKaUFbUakDUQbimcCQSRObOc5m596gWCZ5b7A1RiRFcX1KrcP1zbmsqj3LkzOp
	9bdirh+3pGTcYUVUL+9ZdW0udPqwE5x35CukZJN5sXdYpysSi+CPFV5GibcHsmPstJ
	M/IkfuIaLSWRC4p6MbF371E5xDrZaEJVTI5FAaAHFHXKWNByhrRW1rhJ3FPRFrtHha
	iJGDVS447SeLVfSU156VydwZj3zdUPBYu1MuDns7nyayPKl5AJ/frwg36V7H8XJS6E
	NObMG5OfLBHVQ==
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
X-List-Received-Date: Wed, 20 Nov 2019 15:40:39 -0000
Content-Type: multipart/alternative;
	boundary="------------FFF748B7A3475E7538F0E978"
Content-Language: it

--------------FFF748B7A3475E7538F0E978
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit

I forked the repository and I'm tryng to port the layer for Krogoth

M

Il 20/11/19 15:37, Mauro Ziliani ha scritto:
>
> Hi all.
>
> There a port for meta-tensorflow for Krogoth or Sumo?
>
> Mayabe I need to use it on this distribution
>
> Thaks
>
>  M
>
> Il 21/02/19 12:37, Hongxu Jia ha scritto:
>> Hi RP and Yocto folks,
>>
>> Currently AI on IoT edge becomes more and more popular, but there is no
>> machine learning framework in Yocto/OE. With the support of Eric
>> <Zhangle.Yang@windriver.com>, Robert<liezhi.yang@windriver.com>
>> and Randy<randy.macleod@windriver.com>, after two months effort, I've
>> integrated TensorFlow to Yocto.
>>
>> Now, I contribute the patches to Yocto for review, and apply for creating
>> a layer named `meta-tensorflow' on Yocto.
>>
>> For test convenient, there is a fork on github:
>> https://github.com/hongxu-jia/meta-tensorflow
>>
>> BTW, I have contributed other 11 fundamental recipes to meta-openembedded
>> and all of them have been merged to master branch.
>>
>> Please no hesitate to share your suggestion.
>>
>> //Hongxu
>>
>> Testing Commands:
>> -----------------
>> See README
>>
>> Testing, Expected Results:
>> --------------------------
>> See README
>>
>

--------------FFF748B7A3475E7538F0E978
Content-Type: text/html; charset=iso-8859-15
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-15">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><font size="-1">I forked the repository and I'm tryng to port the
        layer for Krogoth</font></p>
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
      <p><font size="-1">There a port for meta-tensorflow for Krogoth or
          Sumo?<br>
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
  </body>
</html>

--------------FFF748B7A3475E7538F0E978--
