Return-Path: <kratsg@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6FF6E00932; Wed,  4 Apr 2018 08:39:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (kratsg[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A167BE008E4
	for <yocto@yoctoproject.org>; Wed,  4 Apr 2018 08:39:55 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id d6so24902329iog.1
	for <yocto@yoctoproject.org>; Wed, 04 Apr 2018 08:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dVxanP2iJhJ2d6zBfJm7zjmwMEKxJUUuhJyqcbJgiw4=;
	b=hnAQTUqg52G6JEHLHtEMQ3kxBT50alowjoUhUNYJ7WuP4+dNzAnCNVSnVPYh8Pmn08
	VMexkPMwRuIURfvSoomVbD0lrRKQofKWLtsKgiSBYNNJOI0snbdArmHKxeekWc5EO/di
	cvr04DcaYiXrP1HTdYBbPCyxRlOuEDLMfpsJu2yyzWMl6BUgqk7uh/DuwJkbfKDmp8M+
	JNLhuna8oFUm1f2sHlQqy6CzJU8zULL/01+VQW4XFs54TQgsFIxfLB3zDHE6iFqPtEdW
	QsKeCkau/RK5kR2jqhXf1k46KLCKbtIh1DGDwDEwCim/TFfR6My7lDjrYt2xPuSPgVs2
	RnfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dVxanP2iJhJ2d6zBfJm7zjmwMEKxJUUuhJyqcbJgiw4=;
	b=DLlcEu02J0bBTNY+OPZUHcD4CuvSWcRCavcBtdGl431FIhiORNN1k/bSJGH2HSVU4Q
	VRJGM1U8tb7h8L7jDAUSh/myuMIGKN9VHVkyQlOyV9etS9leg3Z6A4J7F7e2QzxZehg5
	5z2EC3dby+7fUdPh1zX2D6KdpBaRq6rnTDz1xP/WohELCojBz+fnDs3x2YVDzDWeCu/f
	4koVE+hhbhh6u4cKA/ukCN/XUiwMIkzSYjC8VYwBV0XGLM2nFKEWOKfLJiXnBa3id4XS
	4St8O8RLY1ZxWlDSzepyakq/iisHol9H6/nedGUuBZNw1VJIe0kNX5n5ZgmbRVeuIoCc
	MQqQ==
X-Gm-Message-State: ALQs6tAWOG2/wd7J+wz8Z54xJzzwIWfdqhTZ4SHKIco/jLQu3zdmD28b
	T/0C/n1EezZKXewVO08CxPAm9BBv/E4PiXS8Yv3zXg==
X-Google-Smtp-Source: AIpwx4+ATBeITXFf/2qNdfak849r00f1Pv9e5RKmHkqD8fDk26NnDDFYzr5SsKKm5T9/c7I0zb3VJPrLK88D7ukvQKg=
X-Received: by 10.107.133.95 with SMTP id h92mr4145403iod.227.1522856394723;
	Wed, 04 Apr 2018 08:39:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAFzUWGn0awUAJcBMmUMu5F4ctNUWrR_soGB2NG0zXrMiq3VesQ@mail.gmail.com>
	<0a16a908-ee2f-7cc2-cdf7-680d4965579e@linux.intel.com>
In-Reply-To: <0a16a908-ee2f-7cc2-cdf7-680d4965579e@linux.intel.com>
From: Giordon Stark <kratsg@gmail.com>
Date: Wed, 04 Apr 2018 15:39:44 +0000
Message-ID: <CAFzUWGnPs4EmJDQ4bTaPmQXwd+5-KDfwB7jJZmhgDD-3eoqv0g@mail.gmail.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Kernel configuration patches not persisting?
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
X-List-Received-Date: Wed, 04 Apr 2018 15:39:56 -0000
Content-Type: multipart/alternative; boundary="001a113f139c7397b9056907a205"

--001a113f139c7397b9056907a205
Content-Type: text/plain; charset="UTF-8"

Hi Stephano,

I see. A large part of this confusion probably comes from the fact that
they're both using kconfig indeed. ARCH_ZYNQMP is actually used by the
u-boot-xlnx as well (maybe that makes things even more confusing).

Do both u-boot and linux-yocto accept kernel fragments? Is a kernel config
fragment detected by bitbake as a file ending in *.cfg and a full config as
a file called "defconfig"? This distinction isn't super clear in the manual.

In the meantime, I will add a bbappend and a kernel config fragment to
recipes-kernel/linux/ and report back.

G

On Wed, Apr 4, 2018 at 10:32 AM Stephano Cetola <
stephano.cetola@linux.intel.com> wrote:

> On 4/4/18 7:48 AM, Giordon Stark wrote:
> > Hi all,
> >
> > I have a custom board with custom kernel config changes. Because of
> > that, I append the u-boot recipe as well:
> >
> >
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-bsp/u-boot/u-boot-xlnx_%25.bbappend
>
> >
> > with my machine.h and defconfig files
> > here:
> https://github.com/kratsg/meta-l1calo/tree/master/recipes-bsp/u-boot/files/gfex-prototype4
>
> >
> > I find that when I make a change in the defconfig, such as
> > "CONFIG_CPU_IDLE=n", bitbake properly recompiles all the necessary
> > components... however, when I look at the running kernel configuration:
> >
> > root@gfex-prototype4:~# cat /proc/config.gz | gunzip > run.config
> > root@gfex-prototype4:~# vi run.config
> > root@gfex-prototype4:~# cat run.config | grep CONFIG_CPU_IDLE
> > CONFIG_CPU_IDLE=y
> > # CONFIG_CPU_IDLE_GOV_LADDER is not set
> > CONFIG_CPU_IDLE_GOV_MENU=y
> >
> > it seems my change still wasn't propagated? I looked at the instructions
> > here
> > (
> https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#changing-the-configuration
> )
> > but I'm not sure I want to duplicate my defconfig file into a second
> > location to bbappend the linux-yocto.
> >
> > Have I done something wrong? Am I missing something else?
> >
> > Giordon
> > --
> > Giordon Stark
>
> Hey Giordon,
>
> It looks like you're confusing two topics: u-boot and kernel configuration.
>
> Both u-boot and the kernel use kconfig. This can confuse folks that are
> new to bootloader/kernel work.
>
> Looking at your layer, you're actually interested in changing the
> kernel's configuration rather than u-boot. For example, on the
> gfex-prototype4 defconfig, you set ARCH_ZYNQMP, which is a kernel config
> for the Xilinx Zynq boards. You probably want to add a bbappend for your
> kernel and add the defconfig to that recipe.
>
> Cheers,
> Stephano
>
> --
Giordon Stark

--001a113f139c7397b9056907a205
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Stephano,<div><br></div><div>I see. A large part of thi=
s confusion probably comes from the fact that they&#39;re both using kconfi=
g indeed. ARCH_ZYNQMP is actually used by the u-boot-xlnx as well (maybe th=
at makes things even more confusing).</div><div><br></div><div>Do both u-bo=
ot and linux-yocto accept kernel fragments? Is a kernel config fragment det=
ected by bitbake as a file ending in *.cfg and a full config as a file call=
ed &quot;defconfig&quot;? This distinction isn&#39;t super clear in the man=
ual.</div><div><br></div><div>In the meantime, I will add a bbappend and a =
kernel config fragment to recipes-kernel/linux/ and report back.</div><div>=
<br></div><div>G</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
>On Wed, Apr 4, 2018 at 10:32 AM Stephano Cetola &lt;<a href=3D"mailto:step=
hano.cetola@linux.intel.com">stephano.cetola@linux.intel.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex">On 4/4/18 7:48 AM, Giordon Stark w=
rote:<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I have a custom board with custom kernel config changes. Because of<br=
>
&gt; that, I append the u-boot recipe as well:<br>
&gt;<br>
&gt; <a href=3D"https://github.com/kratsg/meta-l1calo/blob/master/recipes-b=
sp/u-boot/u-boot-xlnx_%25.bbappend" rel=3D"noreferrer" target=3D"_blank">ht=
tps://github.com/kratsg/meta-l1calo/blob/master/recipes-bsp/u-boot/u-boot-x=
lnx_%25.bbappend</a>=C2=A0<br>
&gt;<br>
&gt; with my machine.h and defconfig files<br>
&gt; here:=C2=A0<a href=3D"https://github.com/kratsg/meta-l1calo/tree/maste=
r/recipes-bsp/u-boot/files/gfex-prototype4" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/kratsg/meta-l1calo/tree/master/recipes-bsp/u-boot/=
files/gfex-prototype4</a>=C2=A0<br>
&gt;<br>
&gt; I find that when I make a change in the defconfig, such as<br>
&gt; &quot;CONFIG_CPU_IDLE=3Dn&quot;, bitbake properly recompiles all the n=
ecessary<br>
&gt; components... however, when I look at the running kernel configuration=
:<br>
&gt;<br>
&gt; root@gfex-prototype4:~# cat /proc/config.gz | gunzip &gt; run.config<b=
r>
&gt; root@gfex-prototype4:~# vi run.config<br>
&gt; root@gfex-prototype4:~# cat run.config | grep CONFIG_CPU_IDLE<br>
&gt; CONFIG_CPU_IDLE=3Dy<br>
&gt; # CONFIG_CPU_IDLE_GOV_LADDER is not set<br>
&gt; CONFIG_CPU_IDLE_GOV_MENU=3Dy<br>
&gt;<br>
&gt; it seems my change still wasn&#39;t propagated? I looked at the instru=
ctions<br>
&gt; here<br>
&gt; (<a href=3D"https://www.yoctoproject.org/docs/latest/kernel-dev/kernel=
-dev.html#changing-the-configuration" rel=3D"noreferrer" target=3D"_blank">=
https://www.yoctoproject.org/docs/latest/kernel-dev/kernel-dev.html#changin=
g-the-configuration</a>)<br>
&gt; but I&#39;m not sure I want to duplicate my defconfig file into a seco=
nd<br>
&gt; location to bbappend the linux-yocto.<br>
&gt;<br>
&gt; Have I done something wrong? Am I missing something else?<br>
&gt;<br>
&gt; Giordon<br>
&gt; --<br>
&gt; Giordon Stark<br>
<br>
Hey Giordon,<br>
<br>
It looks like you&#39;re confusing two topics: u-boot and kernel configurat=
ion.<br>
<br>
Both u-boot and the kernel use kconfig. This can confuse folks that are<br>
new to bootloader/kernel work.<br>
<br>
Looking at your layer, you&#39;re actually interested in changing the<br>
kernel&#39;s configuration rather than u-boot. For example, on the<br>
gfex-prototype4 defconfig, you set ARCH_ZYNQMP, which is a kernel config<br=
>
for the Xilinx Zynq boards. You probably want to add a bbappend for your<br=
>
kernel and add the defconfig to that recipe.<br>
<br>
Cheers,<br>
Stephano<br>
<br>
</blockquote></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-s=
martmail=3D"gmail_signature"><div dir=3D"ltr">Giordon Stark</div></div>

--001a113f139c7397b9056907a205--
