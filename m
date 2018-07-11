Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 845AAE00E9B; Wed, 11 Jul 2018 08:27:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2052E00972
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 08:27:35 -0700 (PDT)
Received: by mail-qk0-f177.google.com with SMTP id t79-v6so13794596qke.4
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 08:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CENogsrJdVGOFdkYt4nKVODEo7lkDq9c14qzkW1a4QE=;
	b=HzJRCRPLMQdeXFjo3E/IFa1G6jo7mvJmLNH5njH3WzDz72ioipOc+NEyH9qfQwZlOZ
	emGnKNUg00u9Hc7OtsuixZAO6SkM1qcMqkFTS47Zj+yd10RHV7Ntio4VNluiRHhsKzRn
	cCwiN2lhl2FrM+qU5nhHQNy/tH/nUvRLsi1+Pomx6281WPcn2J2r3xetqpK6y6WsZgB+
	eOexlG3xo6rMoQMlzPEd83gqIXjyBKWSN9a/yNyjXDpk/bYGS3DHs5498Sys7Dp2euep
	ZyM/Za5RMLL5ZZiP2x89Spbf2wCNjd1LTBH4Pi7noQG+tSvrUQEQM37CX4pUHhgURbGJ
	DJxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CENogsrJdVGOFdkYt4nKVODEo7lkDq9c14qzkW1a4QE=;
	b=RWmrfvBN/EUYgxIc4W9s7ybLN92CXIJRTcjE24UBVORKysvD9R5ZFBxWONW5eO0LmV
	kkZ6QKzom4VMIouv5sjr311HAB05UWSRMsNZP4zb5dr6+g6hFN/c+ZPxVqfGuJ3pUrUG
	OzHt4gknAwpTrPATKq+zztcCeEWZPzxLGgoceJS09PFmus7dhmUGpD5qQGTNjDLXpZ2+
	MUdbid9uB39pjMFBmNqix+0pTX434kTt4hUqZO/NdhAVHHxeJLDhqwk2dX3waP47TpzZ
	Wsk/ID6HFaYV0RdHww1GT6AtmhXI3TjfxI6I1eUfKQ/NRqXGRemfMaJUUiAwk09aR4GH
	KCmA==
X-Gm-Message-State: APt69E1PIlQmd9EA3DkJdCap6Noje3ifJ/f9KLH9IYbCXDqnQ/kLF+I2
	BVWMxFZ0XhXFP8g5+aW4YoxYqAjLAaA+gDtpaTenuw==
X-Google-Smtp-Source: AAOMgpdwFDompdQsfxL9EUBDbwg4Bxq1aNZDWyqq16ebbesuj2aSmdN7ml7OamFkHxM/Sc1b+PoKRumg+q+KwdxVJxw=
X-Received: by 2002:a37:5886:: with SMTP id
	m128-v6mr26368923qkb.275.1531322854954; 
	Wed, 11 Jul 2018 08:27:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac8:856:0:0:0:0:0 with HTTP;
	Wed, 11 Jul 2018 08:27:34 -0700 (PDT)
In-Reply-To: <77623ed2-1163-2412-7cda-6bfe74d5bbfa@windriver.com>
References: <CANmTPBZZHDw5BVGSMMx_N+ZtRyLtE0k5+yDVK-Ywh+peciaPVw@mail.gmail.com>
	<c9cf4aad-d222-a12d-6167-0d9f7e6106f7@windriver.com>
	<1909416.gzoZmKSdQq@localhost.localdomain>
	<77623ed2-1163-2412-7cda-6bfe74d5bbfa@windriver.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Wed, 11 Jul 2018 11:27:34 -0400
Message-ID: <CANmTPBZWm-o5BD7X=fR1w9CoOxqZd7O0gz15E9fHqEix9JUyAg@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Keeping and modifying Source code in Yocto
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
X-List-Received-Date: Wed, 11 Jul 2018 15:27:36 -0000
Content-Type: multipart/alternative; boundary="000000000000ce6ab70570bae267"

--000000000000ce6ab70570bae267
Content-Type: text/plain; charset="UTF-8"

I am getting the following error using devtool:

$ devtool add help
ERROR: Layer directory '/home/jay/sources/poky/meta' does not exist! Please
check BBLAYERS in /home/jay/build/conf/bblayers.conf

$ whereis devtool
devtool: /opt/PHYTEC_BSPs/yocto_imx7/sources/poky/scripts/devtool

The paths are completely wrong.

Any hints?

Thanks,
S






On Tue, Jul 10, 2018 at 4:27 AM, ChenQi <Qi.Chen@windriver.com> wrote:

> On 07/10/2018 02:18 PM, Paul Eggleton wrote:
>
>> On Tuesday, 10 July 2018 3:32:56 AM CEST ChenQi wrote:
>>
>>> I usually use the following steps when I need to modify source for some
>>> purpose.
>>>
>>> 1. bitbake A (or at least bitbake A -c configure)
>>> *2. cd tmp/work/xxxxx/A/<source dir>**
>>> **3. make the modification*
>>> 4. bitbake A -c compile -f
>>> 5. bitbake A
>>>
>>> If you find the modification useful, make a patch from it.
>>>
>> This is the old way of doing it which can under some circumstances result
>> in
>> you losing your changes to the source tree, since the sources under
>> tmp/work/
>> are only ever intended to be there temporarily. Devtool (as recommend by
>> others on this thread) is designed to enable this workflow in a much safer
>> manner.
>>
>> Cheers,
>> Paul
>>
>> Thanks Paul. I'll turn to use devtool.
>
> Best Regards,
>
> Chen Qi
>
>

--000000000000ce6ab70570bae267
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I am getting the following error using devtool:</div>=
<div><br></div><div style=3D"margin-left:40px"><span style=3D"font-family:m=
onospace,monospace">$ devtool add help<br>ERROR: Layer directory &#39;/home=
/jay/sources/poky/meta&#39; does not exist! Please check BBLAYERS in /home/=
jay/build/conf/bblayers.conf<br></span></div><div style=3D"margin-left:40px=
"><span style=3D"font-family:monospace,monospace"><br></span></div><div sty=
le=3D"margin-left:40px"><span style=3D"font-family:monospace,monospace">$ w=
hereis devtool<br>devtool: /opt/PHYTEC_BSPs/yocto_imx7/sources/poky/scripts=
/devtool</span></div><div><br></div><div>The paths are completely wrong.</d=
iv><div><br></div><div>Any hints?</div><div><br></div><div>Thanks,</div><di=
v>S<br></div><div><br></div><div><br></div><div><br></div><div><br></div><d=
iv><br></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote=
">On Tue, Jul 10, 2018 at 4:27 AM, ChenQi <span dir=3D"ltr">&lt;<a href=3D"=
mailto:Qi.Chen@windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">On 07/1=
0/2018 02:18 PM, Paul Eggleton wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On Tuesday, 10 July 2018 3:32:56 AM CEST ChenQi wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I usually use the following steps when I need to modify source for some<br>
purpose.<br>
<br>
1. bitbake A (or at least bitbake A -c configure)<br>
*2. cd tmp/work/xxxxx/A/&lt;source dir&gt;**<br>
**3. make the modification*<br>
4. bitbake A -c compile -f<br>
5. bitbake A<br>
<br>
If you find the modification useful, make a patch from it.<br>
</blockquote>
This is the old way of doing it which can under some circumstances result i=
n<br>
you losing your changes to the source tree, since the sources under tmp/wor=
k/<br>
are only ever intended to be there temporarily. Devtool (as recommend by<br=
>
others on this thread) is designed to enable this workflow in a much safer<=
br>
manner.<br>
<br>
Cheers,<br>
Paul<br>
<br>
</blockquote></span>
Thanks Paul. I&#39;ll turn to use devtool.<br>
<br>
Best Regards,<br>
<br>
Chen Qi<br>
<br>
</blockquote></div><br></div>

--000000000000ce6ab70570bae267--
