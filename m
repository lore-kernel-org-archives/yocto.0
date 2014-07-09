Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41C4EE00744; Wed,  9 Jul 2014 05:46:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f175.google.com (mail-ig0-f175.google.com
	[209.85.213.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2BA8E00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 05:46:32 -0700 (PDT)
Received: by mail-ig0-f175.google.com with SMTP id h3so1807319igd.14
	for <yocto@yoctoproject.org>; Wed, 09 Jul 2014 05:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Xa/B4Hha1+PHGQUDZK39+sz/2xHEIAcej4YMtHz2Lu4=;
	b=IUFzY8w+O1j3XXE/kZS1kzpev4A2R5QSCHQRdR5LDKBFouvXVjHi/xOll/0wwlkBP4
	6E2UIom1k0snpT1t677l5FLKKH70vweLMEgjG19Fht50t3+H46X0AhQ3x4jiKFgJDGSC
	mYXSHpulC9OBtb4TbATT/7JSxU+pfcLzUjYPyaTucQwXXrbLVc+WNCKTJ2FpfpEmRafJ
	jLObQolRAJHUXH9HuKiZt2fUtNTQOHVuoRGYr7Bt20/u7tqsmcnl35Aj/7YsBw0Ur/kJ
	a8cJQ8S92u6FwKvnqhjrz7sGZ8+OzcxvL2w0lkGkqu8Qs9ncb0BdMuupq1v7WDMzeFCp
	Jhag==
MIME-Version: 1.0
X-Received: by 10.50.137.71 with SMTP id qg7mr12364013igb.24.1404909991999;
	Wed, 09 Jul 2014 05:46:31 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 9 Jul 2014 05:46:31 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Wed, 9 Jul 2014 05:46:31 -0700 (PDT)
In-Reply-To: <20140708142217.GA22778@sestofb10.enea.se>
References: <CAH21_vFKzJAR8GRArhZoKfOQzSpHkogfX+d+j_MML9v4AYD1+A@mail.gmail.com>
	<20140707195511.GA50424@sestofb10.enea.se>
	<CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
	<CAGNsrLAbo8arFWHoCi0faPobYL=upmoTHQsNHihrzQgSiY9tjw@mail.gmail.com>
	<CAH21_vEj7GAfx2XECrhg_fu-2rtEveYdThK1Ub6p5c7qCxJB_g@mail.gmail.com>
	<20140708142217.GA22778@sestofb10.enea.se>
Date: Wed, 9 Jul 2014 18:16:31 +0530
Message-ID: <CAH21_vF80rJ7Tp9Z0vxOG9+epgZVBy1RfcD+2V6g1K1OT3_w=A@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "Maxin B. John" <maxin.john@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Aarch64 support
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
X-List-Received-Date: Wed, 09 Jul 2014 12:46:33 -0000
Content-Type: multipart/alternative; boundary=001a11c3c19603c22f04fdc219ad

--001a11c3c19603c22f04fdc219ad
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Maxin,

I have added three folder =E2=80=9Cmeta-aarch64=E2=80=9D, =E2=80=9Cmeta-lin=
aro=E2=80=9D and
=E2=80=9Cmeta-linaro-toolchain=E2=80=9D under my poky directory.
I also have updated my bblayer.conf with:-
BBLAYERS ?=3D " \
  /home/atulk/yocto/poky-master/meta \
/home/atulk/yocto/poky-master/meta-yocto \
  /home/atulk/yocto/poky-master/meta-yocto-bsp \
  /home/atulk/yocto/poky-master/meta-aarch64 \
/home/atulk/yocto/poky-master/meta-linaro \
  /home/atulk/yocto/poky-master/meta-linaro-toolchain \
  "
And local.conf MACHINE ??=3D "genericarmv8"
But while building bitbake with meta-toolchain for aarch64 support, I am
getting error as =E2=80=9CERROR: Layer 'linaro' depends on layer
'networking-layer', but this layer is not enabled in your configuration=E2=
=80=9D.
Do you have any comments about building the same.
Also please note that I don=E2=80=99t need any external toolchain support a=
s I wish
to build my own toolchain.

Thanks and Regards,
ATUL KUMAR SINGH
On 8 Jul 2014 19:52, "Maxin B. John" <maxin.john@enea.com> wrote:

> Hi Atul,
>
> On Tue, Jul 08, 2014 at 07:43:03PM +0530, atulkumar singh wrote:
> > Hi Fathi and Maxin,
> >
> > Thanks as you are helping me in sorting out my issue for Aarch64 suppor=
t
> in
> > meta-toolchain while building bitbake for yocto.
> > And "not working" means if we go into the machine/layer/recipes link an=
d
> under
> > the meta-aarch64 layer the git repository link which is mention is not
> working.
> > Please let me know with your valuable suggestion.
>
> The "meta-aarch64" is present in "meta-linaro" repository.
> Clone meta-linaro :
>
> # git clone git://git.linaro.org/openembedded/meta-linaro.git
> # cd meta-linaro/meta-aarch64
>
> > Thanks and regards,
> > Atul
> >
> > On 8 Jul 2014 18:14, "Fathi Boudra" <fathi.boudra@linaro.org> wrote:
> >
> >     On 8 July 2014 13:27, atulkumar singh <atul.singh008@gmail.com>
> wrote:
>
> Best Regards,
> Maxin
> <snip>
>

--001a11c3c19603c22f04fdc219ad
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Maxin,</p>
<p>I have added three folder =E2=80=9Cmeta-aarch64=E2=80=9D, =E2=80=9Cmeta-=
linaro=E2=80=9D and =E2=80=9Cmeta-linaro-toolchain=E2=80=9D under my poky d=
irectory.<br>
 I also have updated my bblayer.conf with:-<br>
BBLAYERS ?=3D &quot; \<br>
=C2=A0 /home/atulk/yocto/poky-master/meta \<br>
 /home/atulk/yocto/poky-master/meta-yocto \<br>
=C2=A0 /home/atulk/yocto/poky-master/meta-yocto-bsp \<br>
=C2=A0 /home/atulk/yocto/poky-master/meta-aarch64 \<br>
 /home/atulk/yocto/poky-master/meta-linaro \<br>
=C2=A0 /home/atulk/yocto/poky-master/meta-linaro-toolchain \<br>
=C2=A0 &quot;<br>
And local.conf MACHINE ??=3D &quot;genericarmv8&quot;<br>
 But while building bitbake with meta-toolchain for aarch64 support, I am g=
etting error as =E2=80=9CERROR: Layer &#39;linaro&#39; depends on layer &#3=
9;networking-layer&#39;, but this layer is not enabled in your configuratio=
n=E2=80=9D.<br>

 Do you have any comments about building the same.<br>
Also please note that I don=E2=80=99t need any external toolchain support a=
s I wish to build my own toolchain.<br></p>
<p>Thanks and Regards,<br>
 ATUL KUMAR SINGH</p>
<div class=3D"gmail_quote">On 8 Jul 2014 19:52, &quot;Maxin B. John&quot; &=
lt;<a href=3D"mailto:maxin.john@enea.com">maxin.john@enea.com</a>&gt; wrote=
:<br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
Hi Atul,<br>
<br>
On Tue, Jul 08, 2014 at 07:43:03PM +0530, atulkumar singh wrote:<br>
&gt; Hi Fathi and Maxin,<br>
&gt;<br>
&gt; Thanks as you are helping me in sorting out my issue for Aarch64 suppo=
rt in<br>
&gt; meta-toolchain while building bitbake for yocto.<br>
&gt; And &quot;not working&quot; means if we go into the machine/layer/reci=
pes link and under<br>
&gt; the meta-aarch64 layer the git repository link which is mention is not=
 working.<br>
&gt; Please let me know with your valuable suggestion.<br>
<br>
The &quot;meta-aarch64&quot; is present in &quot;meta-linaro&quot; reposito=
ry.<br>
Clone meta-linaro :<br>
<br>
# git clone git://<a href=3D"http://git.linaro.org/openembedded/meta-linaro=
.git" target=3D"_blank">git.linaro.org/openembedded/meta-linaro.git</a><br>
# cd meta-linaro/meta-aarch64<br>
<br>
&gt; Thanks and regards,<br>
&gt; Atul<br>
&gt;<br>
&gt; On 8 Jul 2014 18:14, &quot;Fathi Boudra&quot; &lt;<a href=3D"mailto:fa=
thi.boudra@linaro.org">fathi.boudra@linaro.org</a>&gt; wrote:<br>
&gt;<br>
&gt; =C2=A0 =C2=A0 On 8 July 2014 13:27, atulkumar singh &lt;<a href=3D"mai=
lto:atul.singh008@gmail.com">atul.singh008@gmail.com</a>&gt; wrote:<br>
<br>
Best Regards,<br>
Maxin<br>
&lt;snip&gt;<br>
</blockquote></div>

--001a11c3c19603c22f04fdc219ad--
