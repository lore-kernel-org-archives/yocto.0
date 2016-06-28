Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8139BE007DA; Tue, 28 Jun 2016 07:48:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f171.google.com (mail-qk0-f171.google.com
	[209.85.220.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16918E0077E
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 07:48:29 -0700 (PDT)
Received: by mail-qk0-f171.google.com with SMTP id t127so33258912qkf.1
	for <yocto@yoctoproject.org>; Tue, 28 Jun 2016 07:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=aOkvQA0iRkwQBzel7dVh7VXrSojAUprgD7OX3rUv7io=;
	b=HeaJ5GmDCEMYswyBf+l4MMrLJgWVqC3ANi6andy2CtzdTFk3ITBWZNR4cqnXLeLAy9
	A/Qe456/+aaD4pPxWOssaGF0kVT1hVYin5hhAgwWS6rKnRvFg+gV1UfTs19qTwNNcjmE
	9/YiGY5LLmhLjW7uwC/ofn1TdfOeinikoGKhYMwK+PyXByqiVth9KoUx47qU/+ofAnqz
	r6adu86OTit+ev25igOgkxda3vZgr+Z0NtUT20tyCdbYSgqHd/DPeWX2Zt7GXmtBCkCs
	M/rR9sP/adC3h3LZVnL5XopFr5FjvRRz+dI3IlLg4BgZOOqdUGWelS2/vaVRKpJlsxEP
	iBqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=aOkvQA0iRkwQBzel7dVh7VXrSojAUprgD7OX3rUv7io=;
	b=GabFjsc8EzC42LUFogzUSViX68vctOPkM00FaRFVPkRJvziI2QVaBjDMz1Oc7LLF2H
	mgNzrUgyT/L+imiIVi5QmIKuNZfOhOHoCAQGh6Km+iPOJmpYeVRc57eIGQ6fQHoa61uk
	sBi9/n22ZIC83+ikrZHFInT074iIHfGU2V7cN+09i0gwH/6rrt9qw3tkopqWu0ndvzjb
	sBlpTObWnTakerhwEUR8lzRfnHF5oIt80jgcRCE5D6yF+okMTS+TgvNSBI0rF+2COtP6
	GAq6oMaibPSHT8LBFxJfqLZMqY7+TUKjWYpzF/PrDC6chCSaaz8kAMxYxXVHDCaNzUeM
	sCEQ==
X-Gm-Message-State: ALyK8tIIH6vJ8bkUmfEGfHbMUz8jlOEb/qu5ze3QbFL5elHOKhDzTjM6tvjFqxxiVcpyt//9OTOKez1j/kZFyw==
MIME-Version: 1.0
X-Received: by 10.55.141.134 with SMTP id p128mr2401054qkd.102.1467125309094; 
	Tue, 28 Jun 2016 07:48:29 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Tue, 28 Jun 2016 07:48:28 -0700 (PDT)
Received: by 10.55.214.83 with HTTP; Tue, 28 Jun 2016 07:48:28 -0700 (PDT)
In-Reply-To: <CAMKF1sqSM_jtKm0BCzcpDCDFwQZe6jOA_AO+7acq2Yq-N731-w@mail.gmail.com>
References: <DB3PR04MB068442CB73636660A925BBFAEE210@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sqzUPbS2ay9QVqOFZ7nnpLTX6ercDSC026aOSnC50jO7w@mail.gmail.com>
	<DB3PR04MB0684EF56CBB04EE78720B595EE220@DB3PR04MB0684.eurprd04.prod.outlook.com>
	<CAMKF1sr=7o2LnTtbgV=fEb+JMw2=vmvaN8b2iQSmZ1qJKd7SAw@mail.gmail.com>
	<CAMKF1sqSM_jtKm0BCzcpDCDFwQZe6jOA_AO+7acq2Yq-N731-w@mail.gmail.com>
Date: Tue, 28 Jun 2016 07:48:28 -0700
Message-ID: <CAMKF1soDAJ3hTV90UDTjwPc8U7G2x1m9jSLYnaaXGmJwbg7=FQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>
Cc: yocto@yoctoproject.org
Subject: Re: Failed to cross compile kernel with Yocto toolchain
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
X-List-Received-Date: Tue, 28 Jun 2016 14:48:31 -0000
Content-Type: multipart/alternative; boundary=94eb2c081fe4e3c202053657ba64

--94eb2c081fe4e3c202053657ba64
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

/usr/lib64/ccache is unusual why do you have it in path and if you really
need it add it after all other paths. Check your env first

On Jun 27, 2016 10:56 PM, "Zhenhua Luo" <zhenhua.luo@nxp.com> wrote:

Hello Khem,

> -----Original Message-----
> From: Khem Raj [mailto:raj.khem@gmail.com]
> Sent: Tuesday, June 28, 2016 12:36 AM
> To: Zhenhua Luo <zhenhua.luo@nxp.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Failed to cross compile kernel with Yocto toolchain
>
> On Mon, Jun 27, 2016 at 1:16 AM, Zhenhua Luo <zhenhua.luo@nxp.com>
> wrote:
> > Hello all,
> >
> >
> >
> > I generate the Yocto toolchain by =E2=80=9Cbitbake meta-toolchain=E2=80=
=9D, and use
> > this toolchain to cross-compile kernel, I met the following error. Is
> > this a bug or I missed something? My host Linux is Fedora 22.
>
> its better to start using bitbake -cpopulate_sdk <image name> to generate
> SDKs.
>
>
> >
> >
> >
> > $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-
> linux
> >
> > $ cd linux/
> >
> > $ make corenet32_smp_defconfig
> >
> >   HOSTCC  scripts/kconfig/conf.o
> >
> > ccache: error: Could not find compiler "gcc" in PATH
>
> did you see if gcc is in your path after sourcing SDK env script?
[Luo Zhenhua-B19537] gcc can't be found after sourcing the SDK env script.
but the /usr/bin is in the PATH env variable.
$ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-linux
$ echo $PATH
/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/2.1+=
snapshot/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/poky/2.1+snapshot/sysr=
oots/x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysd=
k-linux/sbin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/.=
./x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-l=
inux/usr/bin/powerpc-poky-linux:/opt/poky/2.1+snapshot/sysroots/x86_64-poky=
sdk-linux/usr/bin/powerpc-poky-linux-uclibc:/opt/poky/2.1+snapshot/sysroots=
/x86_64-pokysdk-linux/usr/bin/powerpc-poky-linux-musl:/usr/lib64/qt-3.3/bin=
:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/=
bjsimics/.local/bin:/home/bjsimics/bin
$ echo $CCACHE_PATH
/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/2.1+=
snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/../x86_64-pokysdk-linux/bin:=
/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-poky-l=
inux:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-p=
oky-linux-uclibc:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/b=
in/powerpc-poky-linux-musl:
$ which gcc
/usr/lib64/ccache/gcc
$ gcc -v
ccache: error: Could not find compiler "gcc" in PATH


Best Regards,

Zhenhua

> > scripts/Makefile.host:108: recipe for target 'scripts/kconfig/conf.o'
> > failed
> >
> > make[1]: *** [scripts/kconfig/conf.o] Error 1
> >
> > Makefile:541: recipe for target 'corenet32_smp_defconfig' failed
> >
> > make: *** [corenet32_smp_defconfig] Error 2
> >
> >
> >
> >
> >
> > Best Regards,
> >
> >
> >
> > Zhenhua
> >
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >

--94eb2c081fe4e3c202053657ba64
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">/usr/lib64/ccache is unusual why do you have it in path and =
if you really need it add it after all other paths. Check your env first</p=
>
<div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Jun 27, 2016 1=
0:56 PM, &quot;Zhenhua Luo&quot; &lt;<a href=3D"mailto:zhenhua.luo@nxp.com"=
>zhenhua.luo@nxp.com</a>&gt; wrote:<br type=3D"attribution"><blockquote cla=
ss=3D"quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex">Hello Khem,<br>
<div class=3D"quoted-text"><br>
&gt; -----Original Message-----<br>
&gt; From: Khem Raj [mailto:<a href=3D"mailto:raj.khem@gmail.com">raj.khem@=
gmail.com</a>]<br>
&gt; Sent: Tuesday, June 28, 2016 12:36 AM<br>
&gt; To: Zhenhua Luo &lt;<a href=3D"mailto:zhenhua.luo@nxp.com">zhenhua.luo=
@nxp.com</a>&gt;<br>
&gt; Cc: <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</=
a><br>
&gt; Subject: Re: [yocto] Failed to cross compile kernel with Yocto toolcha=
in<br>
&gt;<br>
&gt; On Mon, Jun 27, 2016 at 1:16 AM, Zhenhua Luo &lt;<a href=3D"mailto:zhe=
nhua.luo@nxp.com">zhenhua.luo@nxp.com</a>&gt;<br>
&gt; wrote:<br>
&gt; &gt; Hello all,<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; I generate the Yocto toolchain by =E2=80=9Cbitbake meta-toolchain=
=E2=80=9D, and use<br>
&gt; &gt; this toolchain to cross-compile kernel, I met the following error=
. Is<br>
&gt; &gt; this a bug or I missed something? My host Linux is Fedora 22.<br>
&gt;<br>
&gt; its better to start using bitbake -cpopulate_sdk &lt;image name&gt; to=
 generate<br>
&gt; SDKs.<br>
&gt;<br>
&gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; $ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-=
<br>
&gt; linux<br>
&gt; &gt;<br>
&gt; &gt; $ cd linux/<br>
&gt; &gt;<br>
&gt; &gt; $ make corenet32_smp_defconfig<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0HOSTCC=C2=A0 scripts/kconfig/conf.o<br>
&gt; &gt;<br>
&gt; &gt; ccache: error: Could not find compiler &quot;gcc&quot; in PATH<br=
>
&gt;<br>
&gt; did you see if gcc is in your path after sourcing SDK env script?<br>
</div>[Luo Zhenhua-B19537] gcc can&#39;t be found after sourcing the SDK en=
v script. but the /usr/bin is in the PATH env variable.<br>
$ source /opt/poky/2.1+snapshot/environment-setup-ppce500mc-poky-linux<br>
$ echo $PATH<br>
/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/2.1+=
snapshot/sysroots/x86_64-pokysdk-linux/usr/sbin:/opt/poky/2.1+snapshot/sysr=
oots/x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysd=
k-linux/sbin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/.=
./x86_64-pokysdk-linux/bin:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-l=
inux/usr/bin/powerpc-poky-linux:/opt/poky/2.1+snapshot/sysroots/x86_64-poky=
sdk-linux/usr/bin/powerpc-poky-linux-uclibc:/opt/poky/2.1+snapshot/sysroots=
/x86_64-pokysdk-linux/usr/bin/powerpc-poky-linux-musl:/usr/lib64/qt-3.3/bin=
:/usr/lib64/ccache:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/home/=
bjsimics/.local/bin:/home/bjsimics/bin<br>
$ echo $CCACHE_PATH<br>
/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin:/opt/poky/2.1+=
snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/../x86_64-pokysdk-linux/bin:=
/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-poky-l=
inux:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/powerpc-p=
oky-linux-uclibc:/opt/poky/2.1+snapshot/sysroots/x86_64-pokysdk-linux/usr/b=
in/powerpc-poky-linux-musl:<br>
$ which gcc<br>
/usr/lib64/ccache/gcc<br>
$ gcc -v<br>
<div class=3D"quoted-text">ccache: error: Could not find compiler &quot;gcc=
&quot; in PATH<br>
<br>
<br>
</div>Best Regards,<br>
<br>
Zhenhua<br>
<div class=3D"elided-text"><br>
&gt; &gt; scripts/Makefile.host:108: recipe for target &#39;scripts/kconfig=
/conf.o&#39;<br>
&gt; &gt; failed<br>
&gt; &gt;<br>
&gt; &gt; make[1]: *** [scripts/kconfig/conf.o] Error 1<br>
&gt; &gt;<br>
&gt; &gt; Makefile:541: recipe for target &#39;corenet32_smp_defconfig&#39;=
 failed<br>
&gt; &gt;<br>
&gt; &gt; make: *** [corenet32_smp_defconfig] Error 2<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Best Regards,<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; Zhenhua<br>
&gt; &gt;<br>
&gt; &gt;<br>
&gt; &gt; --<br>
&gt; &gt; _______________________________________________<br>
&gt; &gt; yocto mailing list<br>
&gt; &gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org<=
/a><br>
&gt; &gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"=
noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto=
</a><br>
&gt; &gt;<br>
</div></blockquote></div><br></div>

--94eb2c081fe4e3c202053657ba64--
