Return-Path: <ayoub.zaki@embexus.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D73A4E00B2F; Tue, 27 Jun 2017 08:19:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [195.47.247.71 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mailrelay4.public.one.com (mailrelay4.public.one.com
	[195.47.247.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D09AE00B1B
	for <yocto@yoctoproject.org>; Tue, 27 Jun 2017 08:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=embexus.com; s=20140924;
	h=from:subject:date:message-id:to:mime-version:content-type:in-reply-to:
	references; bh=SjCMt7/FFmtwS1lISbxwCgczzoGcv5F1eQ1uvCvJT1M=;
	b=vPGuES4DdtZR9+zwcfWmKrQjp5xSO6AN2IHp4B6cKzEKB440KIOCnOnCpKanPaEj62PSaNk99m6EX
	u2MMju8CEWPx861bC4NeiTPSss+0RdmZhR77xVSdKHVJKoWamO8DkMchsJDMB91m1CV2XsW/m3kHzW
	NM2wEuFw87Eilgzo=
X-HalOne-Cookie: 79516e9eb12bf80077bf64488c249f7b1b25b9fb
X-HalOne-ID: f93642a0-5b4b-11e7-9e23-b8ca3afa9d73
Received: from [192.168.1.10] (unknown [77.2.218.29])
	by smtpfilter1.public.one.com (Halon) with ESMTPSA
	id f93642a0-5b4b-11e7-9e23-b8ca3afa9d73;
	Tue, 27 Jun 2017 15:19:12 +0000 (UTC)
To: yocto@yoctoproject.org
References: <CAGAEfx6hh-KRRJXKUdgaOpFXcwHTR5FC2TienxRfCBKQadtuvw@mail.gmail.com>
	<CAGAEfx5V=MUNswTy7UoqtZT49AnwxdPqyBUje6i1N8+FYUcrPQ@mail.gmail.com>
	<CAGAEfx7sAmi03pQWBuzLkVQ+nDeRvHxzwR+F7WZ5Zx_Dv-NZKw@mail.gmail.com>
	<CAGAEfx7M2V2SkMU5tYaiSEEpBe9a0z16JoXBv0GVit8LxgDncQ@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@embexus.com>
Message-ID: <505eb7f8-c2d5-c602-a668-e9c26b8b4625@embexus.com>
Date: Tue, 27 Jun 2017 17:19:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAGAEfx7M2V2SkMU5tYaiSEEpBe9a0z16JoXBv0GVit8LxgDncQ@mail.gmail.com>
Subject: Re: Yocto Optimization query
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
X-List-Received-Date: Tue, 27 Jun 2017 15:19:17 -0000
Content-Type: multipart/alternative;
	boundary="------------34F9E35B72483515AB7FD6D3"
Content-Language: en-US

--------------34F9E35B72483515AB7FD6D3
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Prasoon,

I wrote a Howto on reducing start-up time in yocto :

https://embexus.com/2017/05/16/embedded-linux-fast-boot-techniques/

Maybe you can some useful informations on the topic.


On 27.06.2017 08:09, Prasoon Kumar wrote:
> Hi,
>
> I am trying to optimise the boot time in yocto. I need some 
> suggestions on how to optimise the boot time and different ways of 
> doing it.
>
> Thanks
> Prasoon
>
>
Cheers,

-- 

Ayoub Zaki

ayoub.zaki@embexus.com
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
https://embexus.com


--------------34F9E35B72483515AB7FD6D3
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>Hi Prasoon,</p>
    <p>I wrote a Howto on reducing start-up time in yocto :</p>
    <p><a class="moz-txt-link-freetext" href="https://embexus.com/2017/05/16/embedded-linux-fast-boot-techniques/">https://embexus.com/2017/05/16/embedded-linux-fast-boot-techniques/</a></p>
    <p>Maybe you can some useful informations on the topic.<br>
    </p>
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 27.06.2017 08:09, Prasoon Kumar
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:CAGAEfx7M2V2SkMU5tYaiSEEpBe9a0z16JoXBv0GVit8LxgDncQ@mail.gmail.com">
      <div dir="auto">Hi,
        <div dir="auto"><br>
        </div>
        <div dir="auto">I am trying to optimise the boot time in yocto.
          I need some suggestions on how to optimise the boot time and
          different ways of doing it.</div>
        <div dir="auto"><br>
        </div>
        <div dir="auto">Thanks</div>
        <div dir="auto">Prasoon</div>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    Cheers,
    <pre class="moz-signature" cols="72">-- 

Ayoub Zaki

<a class="moz-txt-link-abbreviated" href="mailto:ayoub.zaki@embexus.com">ayoub.zaki@embexus.com</a>
Mobile: +49(0)176-62901545
Skype: ayoub.zaki_2
<a class="moz-txt-link-freetext" href="https://embexus.com">https://embexus.com</a></pre>
  </body>
</html>

--------------34F9E35B72483515AB7FD6D3--
