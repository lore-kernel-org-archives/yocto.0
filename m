Return-Path: <maxpowel@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A411E00985; Thu, 30 Mar 2017 05:15:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (maxpowel[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3385E00970
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 05:15:05 -0700 (PDT)
Received: by mail-qk0-f179.google.com with SMTP id r142so37681013qke.2
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 05:15:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=d90M0VvwfhHAC9HdeETtCuaD13Ww3kwHkq2gjYnWqr4=;
	b=R2FPy9Ale6oUeHxxWGuMtS2tYxyO9hxJTahF2CRlf1HOmYFFxDOhAqk/7CfK90jPt2
	GbBmKk1iwTHyeV4rrlYO7W0xemHkai4uS+8eWUWYI+joJyRW3wjkQ1NTrFYUfsDw01G+
	caQS1/w10ORQOJ58rnJZtLgfnst5B8EiNJK3MddF/HR6ItPd8zgqZRqgnPIR77kvDrIh
	eQAmRHBVwKrKeZZZYKUZBj1q2CpJl9B8JhEuJ1wZPnCYfgshPur886L7sgRThxJOohWk
	hJoUbOrcHAirKHYdq7aUTdMX8iX4I1lXrbUXJjoQZkrz78N7W94qiiRYD3mDv4oYinCg
	VwAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=d90M0VvwfhHAC9HdeETtCuaD13Ww3kwHkq2gjYnWqr4=;
	b=OusHlZBUATpr+RWKJD0jd9X9ZqOiId4DZmPBrP3uLHE2UycbLXH8mNbPxKn6cs/xU/
	6nKl26M9KRGTAw7JUFoSg9aF1zWaRd0RX+lTpeSu2RwJwhAl9VKWTF3z6GYjCETg5fTj
	SiM2dFCMts0BMo3Dl6eqwKgNPwhHRcSXuzePWnaoim/SiVcV5XmpWWQMXVsfMG7vzwZ6
	H8X1clDyVgXCfm0ic84cvHqWmL9yZpDyeIQdGdVtlby77QH1HL8b7IJKy1qPmrE04SCW
	ovSkrDh4W01vuGj/3560dh4/St6Q1K9t7OomyHhEwpFa8qA6mKUbMPaLEO5Z9nlCfKmC
	Zneg==
X-Gm-Message-State: AFeK/H1lyF9bm88KQLmVqp4m3nQtv0H1+zHqK4mIbfXMNNyb2a4NgyliII87lZtIir8lVaw1I9Hl3fWR41OYkQ==
X-Received: by 10.55.184.65 with SMTP id i62mr5943229qkf.234.1490876105042;
	Thu, 30 Mar 2017 05:15:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.37.5 with HTTP; Thu, 30 Mar 2017 05:15:04 -0700 (PDT)
In-Reply-To: <eb569801-2090-491e-3beb-006cf6f9d1f4@windriver.com>
References: <CAOsmwBQhqjnnek3enUrXRzVnRRJANcibQ43hPX9jViN+ZhZyyw@mail.gmail.com>
	<eb569801-2090-491e-3beb-006cf6f9d1f4@windriver.com>
From: Alvaro Garcia <maxpowel@gmail.com>
Date: Thu, 30 Mar 2017 14:15:04 +0200
Message-ID: <CAOsmwBQ0d_wzmv+ffo8kcmHu+iwsHC6F92FiuY=9p4Wg9AFW0Q@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Compiling custom kernel
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
X-List-Received-Date: Thu, 30 Mar 2017 12:15:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c076ed0a5386f054bf1a4b6

--94eb2c076ed0a5386f054bf1a4b6
Content-Type: text/plain; charset=UTF-8

Hi, thank you for your answer. Looks like I got no missing dependencies and
it compiled without problems.

2017-03-29 20:23 GMT+02:00 Bruce Ashfield <bruce.ashfield@windriver.com>:

> On 2017-03-29 1:11 PM, Alvaro Garcia wrote:
>
>> Hi, I'm trying to compile a custom kernel (just custom config).
>> I created a recipe called linux-yocto in my layer:
>> meta-test
>> -recipes-test
>> --linux-yocto
>> ---linux-yocto.bbapend
>> ---files
>> ----enable_various_options.cfg
>>
>> The content of the linux-yocto.bbapend is:
>>
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> SRC_URI += "file://enable_various_options.cfg"
>>
>> And the content of enable_various_options.cfg is:
>> CONFIG_DRM_NOUVEAU=y
>>
>
> Assuming that you do have your bbappend created properly
> (i.e. with the version number suggestion that was sent) a
> configuration option cannot always be blanket enabled. If there
> are missing dependencies for that option, it won't make it into
> the final .config.
>
> So it is worth checking that all dependencies are also included
> in that same .cfg.
>
> Bruce
>
>
>
>> The way I generated enable_various_options.cfg was
>> bitbake -c menuconfig virtual/kernel
>> Select my configuration
>> bitbake -c devshell virtual/kernel
>> diff of the original .config and the new one.
>> I just followed the instructions here
>> https://lists.yoctoproject.org/pipermail/yocto/2014-June/020174.html
>> and here
>> https://software.intel.com/sites/default/files/m/4/d/8/5/8/
>> 42868-11__Developing_Kernel_Module_on_Yocto.pdf
>>
>> Then I run bitbake core-image-x11
>> I got this warning:
>> WARNING:
>> /home/amacho/poky/meta/recipes-kernel/linux/linux-yocto_4.4.
>> bb.do_kernel_configme
>> is tainted from a forced run
>> but the kernel is not compiled with the new config (I do md5 to vmlinuz
>> and was exactly the same).
>>
>> Can you help me to find the way I can compile this kernel?
>>
>> Thank you
>>
>>
>>
>>
>>
>

--94eb2c076ed0a5386f054bf1a4b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, thank you for your answer. Looks like I got no missing=
 dependencies and it compiled without problems.</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">2017-03-29 20:23 GMT+02:00 Bruce Ashfie=
ld <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" ta=
rget=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span>:<br><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><span class=3D"">On 2017-03-29 1:11 PM, Alvaro Garcia w=
rote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi, I&#39;m trying to compile a custom kernel (just custom config).<br>
I created a recipe called linux-yocto in my layer:<br>
meta-test<br>
-recipes-test<br>
--linux-yocto<br>
---linux-yocto.bbapend<br>
---files<br>
----enable_various_options.cfg<br>
<br>
The content of the linux-yocto.bbapend is:<br>
<br>
FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
SRC_URI +=3D &quot;file://enable_various_options<wbr>.cfg&quot;<br>
<br>
And the content of enable_various_options.cfg is:<br>
CONFIG_DRM_NOUVEAU=3Dy<br>
</blockquote>
<br></span>
Assuming that you do have your bbappend created properly<br>
(i.e. with the version number suggestion that was sent) a<br>
configuration option cannot always be blanket enabled. If there<br>
are missing dependencies for that option, it won&#39;t make it into<br>
the final .config.<br>
<br>
So it is worth checking that all dependencies are also included<br>
in that same .cfg.<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
Bruce</font></span><div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
The way I generated enable_various_options.cfg was<br>
bitbake -c menuconfig virtual/kernel<br>
Select my configuration<br>
bitbake -c devshell virtual/kernel<br>
diff of the original .config and the new one.<br>
I just followed the instructions here<br>
<a href=3D"https://lists.yoctoproject.org/pipermail/yocto/2014-June/020174.=
html" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org<w=
br>/pipermail/yocto/2014-June/020<wbr>174.html</a><br>
and here<br>
<a href=3D"https://software.intel.com/sites/default/files/m/4/d/8/5/8/42868=
-11__Developing_Kernel_Module_on_Yocto.pdf" rel=3D"noreferrer" target=3D"_b=
lank">https://software.intel.com/sit<wbr>es/default/files/m/4/d/8/5/8/<wbr>=
42868-11__Developing_Kernel_Mo<wbr>dule_on_Yocto.pdf</a><br>
<br>
Then I run bitbake core-image-x11<br>
I got this warning:<br>
WARNING:<br>
/home/amacho/poky/meta/recipes<wbr>-kernel/linux/linux-yocto_4.4.<wbr>bb.do=
_kernel_configme<br>
is tainted from a forced run<br>
but the kernel is not compiled with the new config (I do md5 to vmlinuz<br>
and was exactly the same).<br>
<br>
Can you help me to find the way I can compile this kernel?<br>
<br>
Thank you<br>
<br>
<br>
<br>
<br>
</blockquote>
<br>
</div></div></blockquote></div><br></div>

--94eb2c076ed0a5386f054bf1a4b6--
