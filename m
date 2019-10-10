Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F18DE00CBC; Thu, 10 Oct 2019 08:32:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.156.101 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd10101.aruba.it (smtpcmd10101.aruba.it [62.149.156.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B2FBE00BB5
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 08:32:52 -0700 (PDT)
Received: from [10.0.3.128] ([213.213.6.58])
	by smtpcmd10.ad.aruba.it with bizsmtp
	id BrYq2100t1F741R01rYqr2; Thu, 10 Oct 2019 17:32:51 +0200
To: Yann Dirson <yann.dirson@blade-group.com>
References: <8d8b0186-6319-2967-2d62-bbfea38952be@faresoftware.it>
	<CA+4=imZSkvtDfDtXXph=WJCrJbM4befUBOxzd4X4HvOx__407A@mail.gmail.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <1b7ec764-48da-a89b-c6b3-2b08f82a2ddf@faresoftware.it>
Date: Thu, 10 Oct 2019 17:32:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+4=imZSkvtDfDtXXph=WJCrJbM4befUBOxzd4X4HvOx__407A@mail.gmail.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570721571; bh=u+1Jxz7SSvgIluRXPBL4N11APLxUaTRsIC4rBGYC+b0=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=kLXTDRVt+t484YJCVBIaSp3Di6/AxoHVnxKSEuQJhsy+89TbU4RWyY5k2msAOK/b3
	h++WS9G+Vwd3NVABZzaYCm1sp0KTJb9tJg267VcmXULe/vHeyYZra8bLQ/VmqkNT4Q
	t/1HKQcmdz4Z4+3HAIpz2ll3hIVnIF0j7ZKnfcfjDnDN7Y8qO4DF+kIZzsq/cCOAtX
	LeF01lsUDTJKBXvaMmnUYgKFYuwyF/PuYjkzJKvxghN7v2lSQPSL6aCXEXvYqcbKZ1
	Pm1pmDddViReQLvanQAzcYa7/Ea9iNavaz8DNViF+g3t4e00vCxa97xMUn1Qo2niBb
	Zn4iHqHIJiUQQ==
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: buildhistory revert
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
X-List-Received-Date: Thu, 10 Oct 2019 15:32:55 -0000
Content-Type: multipart/alternative;
	boundary="------------11367AF6C2F41AAE3216CCB7"
Content-Language: it

--------------11367AF6C2F41AAE3216CCB7
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

I find the solution.

I know that I have not modified the packages rebuilded (i.e the kernel)

So I see in prserv.sqlite3.

The table PRMAIN_nohist contains the history of buildhistory for each 
pkg/recipe.

I deleted the  line which the field value i bigger or equal the value I need

The package kernel-4.1.15-2.0.1_4.1.15-r0.17_armhf.deb is built from 
recipe linux-imx

Inside PRMAIN_nohist table there a record with the field "value=18".

I make this from sqlite3 tool

DELETE FROM PRMAIN_nohist WHERE version LIKE 'linux-imx-%' AND value>=13

I rebuild the linux-imx with bitbake linux-imx and magically the package 
kernel-4.1.15-2.0.1_4.1.15-r0.13_armhf.deb is build.


MZ


Il 10/10/19 14:40, Yann Dirson ha scritto:
> The PR server takes care not to reuse those versions.
> Apart from making sure your recipe's signature matches the one for
> 0.13, you probably can't (assuming you don't want to mess with your
> PR's database).
>
>
> 2019-10-10 10:27 UTC+02:00, Mauro Ziliani <mauro@faresoftware.it>:
>> Hi all
>>
>> I need to change the build number of a package.
>>
>> That is: i have the package
>> kernel-4.1.15-2.0.1_4.1.15-r0.*17*_armhf.deb, but in need to turn back
>> to kernel-4.1.15-2.0.1_4.1.15-r0.*13*_armhf.deb
>>
>>
>> Can I setup manually the 17 value to 13?
>>
>>
>> Mauro
>>
>>
>

--------------11367AF6C2F41AAE3216CCB7
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p>I find the solution.</p>
    <p>I know that I have not modified the packages rebuilded (i.e the
      kernel)</p>
    <p>So I see in prserv.sqlite3.</p>
    <p>The table PRMAIN_nohist contains the history of buildhistory for
      each pkg/recipe.</p>
    <p>I deleted the  line which the field value i bigger or equal the
      value I need</p>
    <p>The package kernel-4.1.15-2.0.1_4.1.15-r0.17_armhf.deb is built
      from recipe linux-imx</p>
    <p>Inside PRMAIN_nohist table there a record with the field
      "value=18".</p>
    <p>I make this from sqlite3 tool</p>
    <p>DELETE FROM PRMAIN_nohist WHERE version LIKE 'linux-imx-%' AND
      value&gt;=13</p>
    <p>I rebuild the linux-imx with bitbake linux-imx and magically the
      package kernel-4.1.15-2.0.1_4.1.15-r0.13_armhf.deb is build.</p>
    <p><br>
    </p>
    <p>MZ<br>
    </p>
    <p><font size="-1"></font><br>
    </p>
    <div class="moz-cite-prefix">Il 10/10/19 14:40, Yann Dirson ha
      scritto:<br>
    </div>
    <blockquote type="cite"
cite="mid:CA+4=imZSkvtDfDtXXph=WJCrJbM4befUBOxzd4X4HvOx__407A@mail.gmail.com">
      <pre class="moz-quote-pre" wrap="">The PR server takes care not to reuse those versions.
Apart from making sure your recipe's signature matches the one for
0.13, you probably can't (assuming you don't want to mess with your
PR's database).


2019-10-10 10:27 UTC+02:00, Mauro Ziliani <a class="moz-txt-link-rfc2396E" href="mailto:mauro@faresoftware.it">&lt;mauro@faresoftware.it&gt;</a>:
</pre>
      <blockquote type="cite">
        <pre class="moz-quote-pre" wrap="">Hi all

I need to change the build number of a package.

That is: i have the package
kernel-4.1.15-2.0.1_4.1.15-r0.*17*_armhf.deb, but in need to turn back
to kernel-4.1.15-2.0.1_4.1.15-r0.*13*_armhf.deb


Can I setup manually the 17 value to 13?


Mauro


</pre>
      </blockquote>
      <pre class="moz-quote-pre" wrap="">

</pre>
    </blockquote>
  </body>
</html>

--------------11367AF6C2F41AAE3216CCB7--
