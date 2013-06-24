Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4271E01403
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 01:55:13 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id c10so2247538wiw.13
	for <yocto@yoctoproject.org>; Mon, 24 Jun 2013 01:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=iK/ptQTuBRGfDdDaxzztSWffuA+Y8Izp64Ki1cRUTco=;
	b=OAwz8KP6MFZpLhwTF3fAehe9x1masnnLO/tWCDB3ufb4uU4CVykq5pL7GTNmkIvasa
	jtBAUL+XuVxo1d9Kp40ct85WVIRmJ6pKY3D4NN2yc1FPtMV4vNM6I8z1ng2G/TEUR2rJ
	45CyePQIxOiQhfBH1pIiD2QuqXD9iIhRHcBzBB3pQQPFy4GJVStpQu5L0EGFkJnLNY7x
	xKPJabRVQYZ7Wj7HGuVEnlnWwMqOsfjzbqeYRE2Vjvfrjx7hHlVxK8mzV/b4eE5mFwGS
	hZ1aX7gK2iPrWTrVo3qVEWDJ1OmWKhwRDwtjaXnRjQnRMf8TMukS7OmR8kOc8J/eVneJ
	Q88w==
X-Received: by 10.180.109.48 with SMTP id hp16mr5327337wib.24.1372064112168;
	Mon, 24 Jun 2013 01:55:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.0.227 with HTTP; Mon, 24 Jun 2013 01:54:52 -0700 (PDT)
In-Reply-To: <51C7BD29.6060607@windriver.com>
References: <CACzyEJ97cTe5x7OOqQVjkCeUa1NBv750-=y=7tSWgcaoQnEa7A@mail.gmail.com>
	<51C7BD29.6060607@windriver.com>
From: Insop Song <insop.song@gmail.com>
Date: Mon, 24 Jun 2013 01:54:52 -0700
Message-ID: <CACzyEJ-A-U=0XV3qUxV-14+Cxn+r8aZOrM+g7EKBXJWdHD=T=A@mail.gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	zhenhua.luo@freescale.com, Darren Hart <darren.hart@intel.com>
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
X-List-Received-Date: Mon, 24 Jun 2013 08:55:16 -0000
Content-Type: multipart/alternative; boundary=e89a8f3ba91d03d77004dfe2925f

--e89a8f3ba91d03d77004dfe2925f
Content-Type: text/plain; charset=ISO-8859-1

Hi,

Thank you for the answer.

I've tried
- by commenting "RDEPENDS_kernel-base ?= "kernel-image"" from kernel.bbclass
- and/or adding "RDEPENDS_kernel-base = "" in my image definition

But neither worked.

For confirmation, this bitbake -e outptut and it doesn't have the
kernel-base

insop@neon /opt/build-fsl-yocto-1.3.2 $ time bitbake -e fsl-image-min-net2
| grep kernel-base

real 0m10.691s
user 0m6.476s
sys 0m0.844s
insop@neon /opt/bui


Also, though it was not concluded, I found this mail thread also said that
it didn't work
http://comments.gmane.org/gmane.linux.embedded.yocto.general/12694

Any other thought?

Thank you,

Insop





On Sun, Jun 23, 2013 at 8:29 PM, Bruce Ashfield <
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
>

--e89a8f3ba91d03d77004dfe2925f
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Thank you for the answer.</div><div=
><br></div><div>I&#39;ve tried=A0</div><div>- by commenting &quot;<span sty=
le=3D"font-family:arial,sans-serif;font-size:13.333333015441895px">RDEPENDS=
_kernel-base ?=3D &quot;kernel-image&quot;&quot; from kernel.bbclass</span>=
</div>

<div style><span style=3D"font-family:arial,sans-serif;font-size:13.3333330=
15441895px">- and/or adding=A0</span>&quot;<span style=3D"font-size:13.3333=
33015441895px;font-family:arial,sans-serif">RDEPENDS_kernel-base =3D &quot;=
&quot; in my image definition</span></div>

<div style><span style=3D"font-size:13.333333015441895px;font-family:arial,=
sans-serif"><br></span></div><div style><span style=3D"font-size:13.3333330=
15441895px;font-family:arial,sans-serif">But neither worked.</span></div><d=
iv style>

<span style=3D"font-size:13.333333015441895px;font-family:arial,sans-serif"=
><br></span></div><div style><span style=3D"font-size:13.333333015441895px;=
font-family:arial,sans-serif">For confirmation, this bitbake -e outptut and=
 it doesn&#39;t have the kernel-base</span></div>

<div style><span style=3D"font-size:13.333333015441895px;font-family:arial,=
sans-serif"><br></span></div><div style><div><font face=3D"arial, sans-seri=
f">insop@neon /opt/build-fsl-yocto-1.3.2 $ time bitbake -e fsl-image-min-ne=
t2 | grep kernel-base</font></div>

<div><font face=3D"arial, sans-serif"><br></font></div><div><font face=3D"a=
rial, sans-serif">real<span class=3D"" style=3D"white-space:pre">	</span>0m=
10.691s</font></div><div><font face=3D"arial, sans-serif">user<span class=
=3D"" style=3D"white-space:pre">	</span>0m6.476s</font></div>

<div><font face=3D"arial, sans-serif">sys<span class=3D"" style=3D"white-sp=
ace:pre">	</span>0m0.844s</font></div><div><font face=3D"arial, sans-serif"=
>insop@neon /opt/bui</font></div><div><font face=3D"arial, sans-serif"><br>=
</font></div>

<div><font face=3D"arial, sans-serif"><br></font></div><div style><font fac=
e=3D"arial, sans-serif">Also, though it was not concluded, I found this mai=
l thread also said that it didn&#39;t work</font></div><div style><a href=
=3D"http://comments.gmane.org/gmane.linux.embedded.yocto.general/12694">htt=
p://comments.gmane.org/gmane.linux.embedded.yocto.general/12694</a><font fa=
ce=3D"arial, sans-serif"><br>

</font></div><div style><br></div><div style>Any other thought?</div><div s=
tyle><br></div><div style>Thank you,</div><div style><br></div><div style>I=
nsop</div><div><font face=3D"arial, sans-serif"><br></font></div></div><div=
 style>

<span style=3D"font-size:13.333333015441895px;font-family:arial,sans-serif"=
><br></span></div><div style><span style=3D"font-size:13.333333015441895px;=
font-family:arial,sans-serif"><br></span></div></div><div class=3D"gmail_ex=
tra">

<br><br><div class=3D"gmail_quote">On Sun, Jun 23, 2013 at 8:29 PM, Bruce A=
shfield <span dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.co=
m" target=3D"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">

<div class=3D"HOEnZb"><div class=3D"h5">On 13-06-23 7:08 PM, Insop Song wro=
te:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
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
RDEPENDS_kernel-base ?=3D &quot;kernel-image&quot;<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<br>
<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<br>
Thank you,<br>
<br>
Insop<br>
</blockquote>
<br>
</blockquote></div><br></div>

--e89a8f3ba91d03d77004dfe2925f--
