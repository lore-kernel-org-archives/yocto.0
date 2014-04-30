Return-Path: <sudhangathan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16FB7E00997; Wed, 30 Apr 2014 13:16:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sudhangathan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.43 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qa0-f43.google.com (mail-qa0-f43.google.com
	[209.85.216.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D97F5E00985
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 13:16:42 -0700 (PDT)
Received: by mail-qa0-f43.google.com with SMTP id ih12so2165594qab.16
	for <yocto@yoctoproject.org>; Wed, 30 Apr 2014 13:16:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=1cjp57KqeILy3ROJ1LYrJOnPkXuC+p0Wu5aP/tKgTrI=;
	b=BdhHihPiDiLtHFvyoGrhK1tCvQQP9N6SpJqvm1VGYKerfc69217WXSNSu0CvT22B3v
	ZsbqnUkt2+2kCENJkLz0ojbQRqgjQYlOZ+IAsbp5MDP2Fw/7hazZfGPFjswKOsnUHxuC
	BHt9pts0q9PD7uTOzK0xTSKqRWqUxyC+TewH4vNGbX7Bewkg31Nd4A4mI2AH5AC+cyfs
	ibf7+LvWgaDHpCHDPGtYOJM8py39XE97zEccmTLioIvWEtgnEoyyGj2tzlCKUPgQ1kCG
	dO2Jzo8Ri0+Wt3+xgsNXjk0I4n040Tkf3rzUrW2Z/CV/f7S61jYhV4qniNBfxxd0KdT9
	EGXQ==
MIME-Version: 1.0
X-Received: by 10.140.87.207 with SMTP id r73mr7911964qgd.110.1398889001351;
	Wed, 30 Apr 2014 13:16:41 -0700 (PDT)
Received: by 10.224.195.201 with HTTP; Wed, 30 Apr 2014 13:16:41 -0700 (PDT)
Received: by 10.224.195.201 with HTTP; Wed, 30 Apr 2014 13:16:41 -0700 (PDT)
In-Reply-To: <5360FA25.40006@windriver.com>
References: <CAGX3a9_GzmU_f2RZPHdWM2SQVOdNkBMwxf8t84ri0xuzsmNmfg@mail.gmail.com>
	<5360FA25.40006@windriver.com>
Date: Thu, 1 May 2014 01:46:41 +0530
Message-ID: <CAGX3a98E2GzTEOcBLfV_FmxqoqTuHr75t0TmNn+RJAVOnvPXKw@mail.gmail.com>
From: Sudhangathan B S <sudhangathan@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, "General mailing list for gumstix users."
	<gumstix-users@lists.sourceforge.net>
Subject: Re: Blacklisting drivers in poky or in yocto project
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
X-List-Received-Date: Wed, 30 Apr 2014 20:16:46 -0000
Content-Type: multipart/alternative; boundary=001a11c124d001db0404f8483ad1

--001a11c124d001db0404f8483ad1
Content-Type: text/plain; charset=UTF-8

Yes i confirm the loading of modules everytime using lsmod.

I'm using the standard installation of yocto project from Gumstix Repo, and
also the PM branch kernel from Kevin Hilman's repo. Kernel version is 3.4.
So i did not specify autoloading of modules anywhere.

A grep of module_autoload showed kernel-module-split.bbclass as a
reference. Is this the file you are talking about..? It will be good to
know if it is because this module_autoload..!!

And moreover I now have a doubt if the blaclisting is not working because
of the dependencies. I will reply again after blacklisting all related
drivers. Esp. the cfg802 driver.

Thanks Bruce,

Sudhangathan BS.

Working on a MMX Android 110.
--If you have not travelled, you have not lived.

On 30-Apr-2014 6:57 PM, "Bruce Ashfield" <bruce.ashfield@windriver.com>
wrote:
>
> On 14-04-30 03:40 AM, Sudhangathan B S wrote:
>>
>> Hi all,
>>
>> I need to prevent my wifi drivers auto loading during boot time. How do
>> we do it in the Poky OS or in the Yocto project..?
>
>
> Are you actually seeing a confirmed auto load of modules ?
>
> In a standard image kernel modules will not be autoloaded unless
> specifically requested via a recipe with : module_autoload_<module name>.
>
> I'm not talking about a usermode helper / on demand load, but
> an explicit autoload + dependencies.
>
> Bruce
>
>
>
>
>>
>> I tried both the fedora way and debian way, neither worked.! this is as
>> given in this website..:
>>
http://www.cyberciti.biz/tips/avoid-linux-kernel-module-driver-autoloading.html
>>
>>
>> I'm using gumstix overo hardware..! Poky version 9.0.2, Yocto Project
>> 1.4 Reference Distro, 1.4.2 overo.
>>
>>
>> ---------------------------------
>> Sudhangathan BS
>> Ph:(+91) 9731-905-205
>> ---------------------------------
>>
>>
>

--001a11c124d001db0404f8483ad1
Content-Type: text/html; charset=UTF-8

<p dir="ltr">Yes i confirm the loading of modules everytime using lsmod.</p>
<p dir="ltr">I&#39;m using the standard installation of yocto project from Gumstix Repo, and also the PM branch kernel from Kevin Hilman&#39;s repo. Kernel version is 3.4. So i did not specify autoloading of modules anywhere.</p>

<p dir="ltr">A grep of module_autoload showed kernel-module-split.bbclass as a reference. Is this the file you are talking about..? It will be good to know if it is because this module_autoload..!!</p>
<p dir="ltr">And moreover I now have a doubt if the blaclisting is not working because of the dependencies. I will reply again after blacklisting all related drivers. Esp. the cfg802 driver.</p>
<p dir="ltr">Thanks Bruce,</p>
<p dir="ltr">Sudhangathan BS.</p>
<p dir="ltr">Working on a MMX Android 110.<br>
--If you have not travelled, you have not lived.</p>
<p dir="ltr">On 30-Apr-2014 6:57 PM, &quot;Bruce Ashfield&quot; &lt;<a href="mailto:bruce.ashfield@windriver.com">bruce.ashfield@windriver.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 14-04-30 03:40 AM, Sudhangathan B S wrote:<br>
&gt;&gt;<br>
&gt;&gt; Hi all,<br>
&gt;&gt;<br>
&gt;&gt; I need to prevent my wifi drivers auto loading during boot time. How do<br>
&gt;&gt; we do it in the Poky OS or in the Yocto project..?<br>
&gt;<br>
&gt;<br>
&gt; Are you actually seeing a confirmed auto load of modules ?<br>
&gt;<br>
&gt; In a standard image kernel modules will not be autoloaded unless<br>
&gt; specifically requested via a recipe with : module_autoload_&lt;module name&gt;.<br>
&gt;<br>
&gt; I&#39;m not talking about a usermode helper / on demand load, but<br>
&gt; an explicit autoload + dependencies.<br>
&gt;<br>
&gt; Bruce<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; I tried both the fedora way and debian way, neither worked.! this is as<br>
&gt;&gt; given in this website..:<br>
&gt;&gt; <a href="http://www.cyberciti.biz/tips/avoid-linux-kernel-module-driver-autoloading.html">http://www.cyberciti.biz/tips/avoid-linux-kernel-module-driver-autoloading.html</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; I&#39;m using gumstix overo hardware..! Poky version 9.0.2, Yocto Project<br>
&gt;&gt; 1.4 Reference Distro, 1.4.2 overo.<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ---------------------------------<br>
&gt;&gt; Sudhangathan BS<br>
&gt;&gt; Ph:(+91) 9731-905-205<br>
&gt;&gt; ---------------------------------<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</p>

--001a11c124d001db0404f8483ad1--
