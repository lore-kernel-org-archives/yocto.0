Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22B37E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 01:56:14 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id dn14so10545897obc.2
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 01:56:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=r7SzMvG/GGsEVucA9BJVC1xy1uBt4P19V210zEsWtDo=;
	b=jdEIfrS2xqpRWJmMU8fRNU8vLlXQTXFlg3P76ahenc0IGc+hjSGrq3rXZNbkCBdXZ1
	o/UhP2e5HlAmiy92SVpjov1KmUPY1Y+p9R3mPyml9nLr9rPU9COBJfkqV6sUnD2WOo0q
	0uZnr1TnCFWnpDC91e7rcRExVRsEMFVVsJ9/iFnb46vz4XBmVUkRLTsoRz6i2XqgeBtt
	haBKmF+PwKEfEMwXAqBvtJqfn3Ma9SVmjlfpS7kOHOjyPlMimmR9u8D3NqReNk+1jZAm
	dTbhqRiZVKKKpaQarszCZ8sDpZnMxvom0in2ZN5wEkW5m8TPq2XqXOkUfys2hqOOT9a2
	R04Q==
X-Received: by 10.60.34.196 with SMTP id b4mr1456061oej.62.1372064173991; Mon,
	24 Jun 2013 01:56:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.27.165 with HTTP; Mon, 24 Jun 2013 01:55:53 -0700 (PDT)
In-Reply-To: <51C7BD29.6060607@windriver.com>
References: <CACzyEJ97cTe5x7OOqQVjkCeUa1NBv750-=y=7tSWgcaoQnEa7A@mail.gmail.com>
	<51C7BD29.6060607@windriver.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 24 Jun 2013 10:55:53 +0200
Message-ID: <CAP71WjwRKvPqXpREmhPEx1KW+w-hz-7Ji3=Nhg1wwVPrFvF57g@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Gm-Message-State: ALoCoQkBC0YeJG+f+iqcAnfICQ8eJ80CviXM03kpMe36qMVLug3wovlnFVVUtQ+TpY5BANzbqBjC
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Darren Hart <darren.hart@intel.com>, zhenhua.luo@freescale.com
Subject: Re: How NOT to include kernel image to the rootfs?
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
X-List-Received-Date: Mon, 24 Jun 2013 08:56:17 -0000
Content-Type: multipart/alternative; boundary=089e013c7020b3395a04dfe29553

--089e013c7020b3395a04dfe29553
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Jun 24, 2013 at 5:29 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-06-23 7:08 PM, Insop Song wrote:
>
>> Hi,
>>
>> - Question
>> "How NOT to include kernel image to the rootfs?"
>>
>> - Background
>> In our application, we use u-boot to load kernel and rootfs from nand
>> flash separately.
>>
>> I don't want to include kernel image inside /boot as I don't need it
>> over there.
>> I could untar the rootfs, remove, and tar it up again, but I would like
>> to find a way within the yocto framework.
>>
>> I was not able to find a way by looking up the recipies and googling on
>> this topic.
>>
>> Could any one help me?
>>
>
> Have you tried clearing RDEPENDS_kernel-base ?
>
> From kernel.bbclass:
>
> # Allow machines to override this dependency if kernel image files are
> # not wanted in images as standard
> RDEPENDS_kernel-base ?= "kernel-image"
>


please look at this machine configuration file that we use at Linaro:

https://git.linaro.org/gitweb?p=openembedded/meta-linaro.git;a=blob;f=meta-linaro/conf/machine/genericarmv7a.conf;h=d2577f69868d599f114063a7c6a3d8d0a93c532b;hb=c383e63617469dce76411249dba384aad21a3d9c

we use such 'generic' machines to build our 'generic' ARM rootfs. the trick
is indeed:


# Don't include kernels in standard images
RDEPENDS_kernel-base = ""




>
> Cheers,
>
> Bruce
>
>
>
>
>
>> Thank you,
>>
>> Insop
>>
>
> ______________________________**_________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>

--089e013c7020b3395a04dfe29553
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Mon, Jun 24, 2013 at 5:29 AM, Bruce Ashfield <span dir=3D"ltr">&=
lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.=
ashfield@windriver.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div class=3D""><div class=3D"h5">On 13-06-23 7:08 PM, Ins=
op Song wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
Hi,<br>
<br>
- Question<br>
&quot;How NOT to include kernel image to the rootfs?&quot;<br>
<br>
- Background<br>
In our application, we use u-boot to load kernel and rootfs from nand<br>
flash separately.<br>
<br>
I don&#39;t want to include kernel image inside /boot as I don&#39;t need i=
t<br>
over there.<br>
I could untar the rootfs, remove, and tar it up again, but I would like<br>
to find a way within the yocto framework.<br>
<br>
I was not able to find a way by looking up the recipies and googling on<br>
this topic.<br>
<br>
Could any one help me?<br>
</blockquote>
<br></div></div>
Have you tried clearing RDEPENDS_kernel-base ?<br>
<br>
From kernel.bbclass:<br>
<br>
# Allow machines to override this dependency if kernel image files are<br>
# not wanted in images as standard<br>
RDEPENDS_kernel-base ?=3D &quot;kernel-image&quot;<br></blockquote><div><br=
></div><div><br></div><div style>please look at this machine configuration =
file that we use at Linaro:</div><div style><br></div><div style><a href=3D=
"https://git.linaro.org/gitweb?p=3Dopenembedded/meta-linaro.git;a=3Dblob;f=
=3Dmeta-linaro/conf/machine/genericarmv7a.conf;h=3Dd2577f69868d599f114063a7=
c6a3d8d0a93c532b;hb=3Dc383e63617469dce76411249dba384aad21a3d9c">https://git=
.linaro.org/gitweb?p=3Dopenembedded/meta-linaro.git;a=3Dblob;f=3Dmeta-linar=
o/conf/machine/genericarmv7a.conf;h=3Dd2577f69868d599f114063a7c6a3d8d0a93c5=
32b;hb=3Dc383e63617469dce76411249dba384aad21a3d9c</a></div>

<div style><br></div><div style>we use such &#39;generic&#39; machines to b=
uild our &#39;generic&#39; ARM rootfs. the trick is indeed:</div><div style=
><br></div><pre style=3D"color:rgb(0,0,0);word-wrap:break-word;white-space:=
pre-wrap">

# Don&#39;t include kernels in standard images
RDEPENDS_kernel-base =3D &quot;&quot;
</pre><div style>=A0</div><div>=A0</div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rg=
b(204,204,204);border-left-style:solid;padding-left:1ex">
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex">
<br>
Thank you,<br>
<br>
Insop<br>
</blockquote>
<br>
______________________________<u></u>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.<u></u>org/listinfo/yocto</a><br>
</blockquote></div><br></div></div>

--089e013c7020b3395a04dfe29553--
