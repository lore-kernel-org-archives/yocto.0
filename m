Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC89DE00DAF; Thu, 22 Aug 2019 06:02:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTTPS_HTTP_MISMATCH,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	*  0.1 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd01-g.aruba.it (smtpcmd01-g.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 477D1E00DA3
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 06:02:16 -0700 (PDT)
Received: from [10.0.3.121] ([78.6.3.122])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id sD2D200082dwwGE01D2DJ4; Thu, 22 Aug 2019 15:02:14 +0200
To: Erik Hoogeveen <erik.hoogeveen@outlook.com>,
	Yocto discussion list <yocto@yoctoproject.org>
References: <4899567d-add8-eb6f-23bc-9db23bd9196f@faresoftware.it>
	<VI1PR08MB345604D3C577BE673DAFFF7E95A50@VI1PR08MB3456.eurprd08.prod.outlook.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <ea54b157-517f-91fc-2c24-cbb36b3c7eed@faresoftware.it>
Date: Thu, 22 Aug 2019 15:02:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <VI1PR08MB345604D3C577BE673DAFFF7E95A50@VI1PR08MB3456.eurprd08.prod.outlook.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1566478934; bh=7Tf9s+G63ZwKyzZ3+7PPuvu0nlW5U7stYj4+QjhrOsA=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=hsVguL4UbpmgILS8luNqSfcLnDcnteDtUJUmUP8b2UunD1sMI+I/fusmMErKVV50b
	ixq7mAIhwmDvpLJ1JK2NSv97Jl44fJiPLtkq6VA4gEAeDnBEDtdH1DHHpsF/pN2rz1
	x3dcuDQlXv9iGUqw8Jz8GzbrvIqH0C0+urYqOL6I95Z8DJ9ZJw7G/nGROfI9RiMgFJ
	HkK8+0qJEkQT4XFgjKo2Ke4h9ukHcRpjz92dlzuKAIbM5bNINuwM8P6Q3ftMMedLsG
	5/CLt5nIR0/4nnkt+iESLu+4M/dNCw+Zdf0EUdZFiTLnnwGSpIf4r+dZLROlzzAWcD
	EafhxAU+P/jpw==
Subject: Re: libGL missing. Which packages bring it?
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
X-List-Received-Date: Thu, 22 Aug 2019 13:02:20 -0000
Content-Type: multipart/alternative;
	boundary="------------FE751DE800411BF10483BA89"
Content-Language: it

--------------FE751DE800411BF10483BA89
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

I try, but don't find it.

So I studied the setup.py of kivy and I set correctly all variables

Now I can build successfulliy Kivy 1.11.1 for raspberrypi3.


MZ

Il 22/08/19 13:55, Erik Hoogeveen ha scritto:
> Hi Mauro,
>
> Have you tried searching the layer index?
> https://layers.openembedded.org/
>
> Cheers,
> Erik
> On 21 Aug 2019, 11:11 +0200, Mauro Ziliani <mauro@faresoftware.it>, wrote:
>> Hi all
>>
>> I try to compile kivy for Pyro and Python3 for framebuffer con RPi3.
>>
>> The builder cannot find libGL and -lGL linker fails.
>>
>> Which are the packages that give libGL?
>>
>>
>> Best regards
>>
>>     Mauro
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.yoctoproject.org%2Flistinfo%2Fyocto&amp;data=02%7C01%7C%7Cc559b878bb3e4a61e35908d7261787b0%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637019754810083255&amp;sdata=ggeG6LliIFYT53MEGDuc2LT%2FuxtGGCIAgpvskS76ro8%3D&amp;reserved=0

--------------FE751DE800411BF10483BA89
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I try, but don't find it.</p>
    <p>So I studied the setup.py of kivy and I set correctly all
      variables</p>
    <p>Now I can build successfulliy Kivy 1.11.1 for raspberrypi3.</p>
    <p><br>
    </p>
    <p>MZ<br>
    </p>
    <div class="moz-cite-prefix">Il 22/08/19 13:55, Erik Hoogeveen ha
      scritto:<br>
    </div>
    <blockquote type="cite"
cite="mid:VI1PR08MB345604D3C577BE673DAFFF7E95A50@VI1PR08MB3456.eurprd08.prod.outlook.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title></title>
      <div name="messageBodySection">
        <div dir="auto">Hi Mauro,
          <div dir="auto"><br>
          </div>
          <div dir="auto">Have you tried searching the layer index?</div>
          <div dir="auto"><a href="https://layers.openembedded.org/"
              moz-do-not-send="true">https://layers.openembedded.org/</a><br>
          </div>
        </div>
      </div>
      <div name="messageSignatureSection"><br>
        <div dir="auto">Cheers,
          <div dir="auto">Erik</div>
        </div>
      </div>
      <div name="messageReplySection">On 21 Aug 2019, 11:11 +0200, Mauro
        Ziliani <a class="moz-txt-link-rfc2396E" href="mailto:mauro@faresoftware.it">&lt;mauro@faresoftware.it&gt;</a>, wrote:<br>
        <blockquote type="cite" class="spark_quote" style="margin: 5px
          5px; padding-left: 10px; border-left: thin solid #1abc9c;">
          Hi all<br>
          <br>
          I try to compile kivy for Pyro and Python3 for framebuffer con
          RPi3.<br>
          <br>
          The builder cannot find libGL and -lGL linker fails.<br>
          <br>
          Which are the packages that give libGL?<br>
          <br>
          <br>
          Best regards<br>
          <br>
              Mauro<br>
          <br>
          --<br>
          _______________________________________________<br>
          yocto mailing list<br>
          <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a class="moz-txt-link-freetext" href="https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.yoctoproject.org%2Flistinfo%2Fyocto&amp;amp;data=02%7C01%7C%7Cc559b878bb3e4a61e35908d7261787b0%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637019754810083255&amp;amp;sdata=ggeG6LliIFYT53MEGDuc2LT%2FuxtGGCIAgpvskS76ro8%3D&amp;amp;reserved=0">https://nam04.safelinks.protection.outlook.com/?url=https%3A%2F%2Flists.yoctoproject.org%2Flistinfo%2Fyocto&amp;amp;data=02%7C01%7C%7Cc559b878bb3e4a61e35908d7261787b0%7C84df9e7fe9f640afb435aaaaaaaaaaaa%7C1%7C0%7C637019754810083255&amp;amp;sdata=ggeG6LliIFYT53MEGDuc2LT%2FuxtGGCIAgpvskS76ro8%3D&amp;amp;reserved=0</a><br>
        </blockquote>
      </div>
    </blockquote>
  </body>
</html>

--------------FE751DE800411BF10483BA89--
