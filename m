Return-Path: <sm0ketst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9340AE008EC; Thu,  9 Apr 2015 01:23:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=AC_DIV_BONANZA,BAYES_00,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sm0ketst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 AC_DIV_BONANZA RAW: Too many divs in a row... spammy template
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f178.google.com (mail-ob0-f178.google.com
	[209.85.214.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 288E7E007A0
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 01:23:02 -0700 (PDT)
Received: by obbry2 with SMTP id ry2so4121677obb.1
	for <yocto@yoctoproject.org>; Thu, 09 Apr 2015 01:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=quy3JYhD33gXYA8de+sFi0Qaq6elw9b9vMdIlGK+xd8=;
	b=u1i89I/zehIzBoz2OqmURTjZ3Kaa2oAgmhSea5n+As4VeKyekfkJB/w32bAUlmRJtN
	6DzDoBVj9fAPdZs84iwsDMRPusdQj4L0I7chQtje+HRsjADmU8rsilnMqC3Uy6zgu9aW
	JKbc3QFR3j/YeOl9XaBQzL/Z9VMYk3dHheHXk3AVnPTT9kGbBfwgut71HfLUgAeXXSoA
	VRiogz5usdS+Hvr+g7JCUUNMo9aTMvzDQZpDdDY4bFqhsWNxHJEhErCMnJ8z1zLSHcND
	5ulOHDinnZmxEWBEwbwdPOJ3ApGV+h+/Dq/mjmmRlq7Xun0vdH5yeijY4rXyLcsgwSHE
	hI4g==
MIME-Version: 1.0
X-Received: by 10.182.166.71 with SMTP id ze7mr37570596obb.73.1428567780160;
	Thu, 09 Apr 2015 01:23:00 -0700 (PDT)
Received: by 10.60.4.71 with HTTP; Thu, 9 Apr 2015 01:23:00 -0700 (PDT)
In-Reply-To: <55254A67.1080001@linux.intel.com>
References: <CABMtxuwPi_2Z700qF3ESMZRoqRnFYfbXO1Hb=p3X2oEw+DFniw@mail.gmail.com>
	<55254A67.1080001@linux.intel.com>
Date: Thu, 9 Apr 2015 10:23:00 +0200
Message-ID: <CABMtxuys=uDt1yP5m9WYLZFdKnyKAah9_E93MSXQz2m8Tj59eA@mail.gmail.com>
From: "J.J. Garcia" <sm0ketst@gmail.com>
To: meta-intel@yotcoproject.org
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel]
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
X-List-Received-Date: Thu, 09 Apr 2015 08:23:05 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cf46131d280513465bd1

--e89a8ff1cf46131d280513465bd1
Content-Type: text/plain; charset=UTF-8

Hi Sau!

Thanks for you quick reply.

I'm building it with the intel-core2-32 machine and with the core2-64 tune
this morning i'll let you know if there are issues (is it correct to use
the mx32 instead the m64 in this case for the D2550? is there a noticeable
increase of speed?)

Im using my own defconfig (64 bits kernel enabled) but I'm wondering if
there is an easy way to select the defconfig for the 32 or 64 kernels when
using the intel-core2-32 machine since only one defconfig can be specified.

I'm using within the files folder two folders:
./files/intel-core2-32/defconfig (this case I'll have two, one with the 64
enabled config file and the other 32 bits)
./files/intel-corei7-64/defconfig

When using the inte-corei7-64 is easy to provide the 64 defconfig and
accordingly the same for the 32 using the intel-core2-32. But in the later
case, how to make a distinction between the 32/64 different defconfig files?

Again thanks and all the best for the project!

Regards

JJ




2015-04-08 17:33 GMT+02:00 Saul Wold <sgw@linux.intel.com>:

> On 04/08/2015 06:28 AM, J.J. Garcia wrote:
>
>> Hi all
>>
>> I'm trying to use the meta-intel/DIZZY branch (MACHINE defined as
>> intel-core2-32) for an Atom D2550 unit.
>>
>> AFAIK the 2550 supports the 64 bits so, which is the best way to build the
>> image for the unit?
>>
>> Is it recommended to go for DEFAULTTUNE="core2-64" in local.conf while
>> using the intel-core2-32 MACHINE?
>>
>>  Yes that should be correct, if you want to use 64 bit instructions with
> that cpu you need to use the core2-64 tune.  Please let us know if you have
> any problems with that.
>
> Also for meta-intel related questions please use the
> meta-intel@yoctoproject.org list as it will be seen by the right team
>
> Sau!
>
>  Thanks in advance
>>
>> JJ
>>
>>
>>
>>

--e89a8ff1cf46131d280513465bd1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div><div>Hi Sau!<br><br></d=
iv>Thanks for you quick reply.<br><br></div>I&#39;m building it with the in=
tel-core2-32 machine and with the core2-64 tune this morning i&#39;ll let y=
ou know if there are issues (is it correct to use the mx32 instead the m64 =
in this case for the D2550? is there a noticeable increase of speed?)<br></=
div><br></div>Im using my own defconfig (64 bits kernel enabled) but I&#39;=
m wondering if there is an easy way to select the defconfig for the 32 or 6=
4 kernels when using the intel-core2-32 machine since only one defconfig ca=
n be specified. <br><br>I&#39;m using within the files folder two folders:<=
br></div><div>./files/intel-core2-32/defconfig (this case I&#39;ll have two=
, one with the 64 enabled config file and the other 32 bits)<br></div><div>=
./files/intel-corei7-64/defconfig<br></div><div><br></div>When using the in=
te-corei7-64 is easy to provide the 64 defconfig and accordingly the same f=
or the 32 using the intel-core2-32. But in the later case, how to make a di=
stinction between the 32/64 different defconfig files?<br><br></div>Again t=
hanks and all the best for the project!<br><br></div>Regards<br><br></div>J=
J<br><br><div><div><div><div><div><div><div><div><div><div><div><br><br></d=
iv></div></div></div></div></div></div></div></div></div></div></div><div c=
lass=3D"gmail_extra"><br><div class=3D"gmail_quote">2015-04-08 17:33 GMT+02=
:00 Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mailto:sgw@linux.intel.com" =
target=3D"_blank">sgw@linux.intel.com</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On 04/08/2015 06:28 A=
M, J.J. Garcia wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi all<br>
<br>
I&#39;m trying to use the meta-intel/DIZZY branch (MACHINE defined as<br>
intel-core2-32) for an Atom D2550 unit.<br>
<br>
AFAIK the 2550 supports the 64 bits so, which is the best way to build the<=
br>
image for the unit?<br>
<br>
Is it recommended to go for DEFAULTTUNE=3D&quot;core2-64&quot; in local.con=
f while<br>
using the intel-core2-32 MACHINE?<br>
<br>
</blockquote></div></div>
Yes that should be correct, if you want to use 64 bit instructions with tha=
t cpu you need to use the core2-64 tune.=C2=A0 Please let us know if you ha=
ve any problems with that.<br>
<br>
Also for meta-intel related questions please use the <a href=3D"mailto:meta=
-intel@yoctoproject.org" target=3D"_blank">meta-intel@yoctoproject.org</a> =
list as it will be seen by the right team<br>
<br>
Sau!<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Thanks in advance<br>
<br>
JJ<br>
<br>
<br>
<br>
</blockquote>
</blockquote></div><br></div>

--e89a8ff1cf46131d280513465bd1--
