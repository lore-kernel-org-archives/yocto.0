Return-Path: <chungyehwang@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C192E00777; Mon,  9 Mar 2015 19:02:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chungyehwang[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2656CE00754
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 19:02:40 -0700 (PDT)
Received: by igkb16 with SMTP id b16so26882231igk.1
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 19:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=DA2tMyFO5tUbza/IIoYAQSOxmSxLuSmXYsqzdEmpNbI=;
	b=Q6tbCnd6bzjKcCUA48nNoAb0PNrPc7tyE4Ml2Jz4bQrtSKgbgq61vwg4No7KoGkvxq
	qK05ml1ggBVj9Ziidx+DFyni8waeIlDsqhj8cs0NEb7O8CIQ5ZgRt9t5lQ1G8i3yE/qY
	+tgzTKxyAg86g1W/b9sSiH4Pef1DgMrM5bDzngxPRdRvYze+bAS6o8mFBCKe8d5olVhl
	ONYgwq+fINrY7Cle6QsuF3hMbrUP1jJprqk2cPKw/KzMSLbU8Rby435+zMyRrz556lHD
	yf7ednhm7kt+ULAGzAQBsAGxe0A0e+18Y2RriPDwUMJI76yScTU4LHIQUDATsUKdNiGQ
	3Ryw==
MIME-Version: 1.0
X-Received: by 10.42.167.8 with SMTP id q8mr30811266icy.94.1425952959568; Mon,
	09 Mar 2015 19:02:39 -0700 (PDT)
Received: by 10.64.116.39 with HTTP; Mon, 9 Mar 2015 19:02:39 -0700 (PDT)
In-Reply-To: <54FD99D7.4090708@windriver.com>
References: <CANBg2hKqzN6kR4=7rpA3O+Ar=Y0rEOMWYgEYXsu78hfq1ZwbdQ@mail.gmail.com>
	<54FD99D7.4090708@windriver.com>
Date: Tue, 10 Mar 2015 10:02:39 +0800
Message-ID: <CANBg2hJ09N3wm85ikScboqJAbp8a_0=r9We1z3epZrtDSMyf6Q@mail.gmail.com>
From: Chung-Yeh Wang <chungyehwang@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Question: Yocto 1.7.1 kernel config defconfig will not be used?
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
X-List-Received-Date: Tue, 10 Mar 2015 02:02:43 -0000
Content-Type: multipart/alternative; boundary=90e6ba6e83c49f23fc0510e58b09

--90e6ba6e83c49f23fc0510e58b09
Content-Type: text/plain; charset=UTF-8

Thanks for the information, Bruce.

I removed all kernel configuration fragments from the bb file but
difference between defconfig and .config is huge. I may do something wrong
and will study more.

Chungyeh

2015-03-09 21:02 GMT+08:00 Bruce Ashfield <bruce.ashfield@windriver.com>:

> On 15-03-09 04:36 AM, Chung-Yeh Wang wrote:
>
>> Hi List,
>>
>> I am using Yocto 1.7.1 to build linux-mainline. I found defconfig will
>> not be used when using linux-yocto-custom.bb
>> <http://linux-yocto-custom.bb/> (maybe also happens on linux-yocto).
>>
>> I think below is the reason,
>>
>> 1. kernel_do_configure is run after do_kernel_configme.The last line of
>> do_kernel_configme is echo
>> "CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config
>>
>> 2. Following are the code to use defconfig,
>>
>
> The linux-yocto kernel_configme task takes the defconfig into account,
> and uses it along with kernel configuration fragment processing.
>
> The skipping of the blind defconfig copy is completely intentional.
>
> Cheers,
>
> Bruce
>
>
>
>> # Copy defconfig to .config if .config does not exist. This allows
>> # recipes to manage the .config themselves in do_configure_prepend().
>> if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
>> cp "${WORKDIR}/defconfig" "${B}/.config"
>>
>> The condition '[ ! -f "${B}/.config"]' will not be true, so
>> recepe-kernel/linux/linux-yocto-custom/defconfig will nerver be used.
>>
>>
>> To use defconfig is one of the method suggested in Kernel developer
>> manual.
>>
>> Thanks and Regards,
>> Chungyeh
>>
>>
>>
>

--90e6ba6e83c49f23fc0510e58b09
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks for the information, Bruce.<div><br></div><div>I re=
moved all=C2=A0<span style=3D"font-size:14px">kernel configuration fragment=
s from the bb file but difference between defconfig and .config is huge. I =
may do something wrong and will</span>=C2=A0study more.</div><div><div><br>=
</div><div>Chungyeh</div></div></div><div class=3D"gmail_extra"><br><div cl=
ass=3D"gmail_quote">2015-03-09 21:02 GMT+08:00 Bruce Ashfield <span dir=3D"=
ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">=
bruce.ashfield@windriver.com</a>&gt;</span>:<br><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><span class=3D"">On 15-03-09 04:36 AM, Chung-Yeh Wang wrote:<br>
</span><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><span class=3D"">
Hi List,<br>
<br>
I am using Yocto 1.7.1 to build linux-mainline. I found defconfig will<br>
not be used when using <a href=3D"http://linux-yocto-custom.bb" target=3D"_=
blank">linux-yocto-custom.bb</a><br></span>
&lt;<a href=3D"http://linux-yocto-custom.bb/" target=3D"_blank">http://linu=
x-yocto-custom.bb/</a><u></u>&gt; (maybe also happens on linux-yocto).<span=
 class=3D""><br>
<br>
I think below is the reason,<br>
<br>
1. kernel_do_configure is run after do_kernel_configme.The last line of<br>
do_kernel_configme is echo<br>
&quot;CONFIG_LOCALVERSION=3D&quot;\&quot;${<u></u>LINUX_VERSION_EXTENSION}\=
&quot; &gt;&gt; ${B}/.config<br>
<br>
2. Following are the code to use defconfig,<br>
</span></blockquote>
<br>
The linux-yocto kernel_configme task takes the defconfig into account,<br>
and uses it along with kernel configuration fragment processing.<br>
<br>
The skipping of the blind defconfig copy is completely intentional.<br>
<br>
Cheers,<br>
<br>
Bruce<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
# Copy defconfig to .config if .config does not exist. This allows<br>
# recipes to manage the .config themselves in do_configure_prepend().<br>
if [ -f &quot;${WORKDIR}/defconfig&quot; ] &amp;&amp; [ ! -f &quot;${B}/.co=
nfig&quot; ]; then<br>
cp &quot;${WORKDIR}/defconfig&quot; &quot;${B}/.config&quot;<br>
<br>
The condition &#39;[ ! -f &quot;${B}/.config&quot;]&#39; will not be true, =
so<br>
recepe-kernel/linux/linux-<u></u>yocto-custom/defconfig will nerver be used=
.<br>
<br>
<br>
To use defconfig is one of the method suggested in Kernel developer manual.=
<br>
<br>
Thanks and Regards,<br>
Chungyeh<br>
<br>
<br>
</blockquote>
<br>
</div></div></blockquote></div><br></div>

--90e6ba6e83c49f23fc0510e58b09--
