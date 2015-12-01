Return-Path: <sarayu@tanmic.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99076E009D7; Mon, 30 Nov 2015 21:39:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA3C8E00978
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 21:39:31 -0800 (PST)
Received: by igcto18 with SMTP id to18so88578723igc.0
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 21:39:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tanmic-co-in.20150623.gappssmtp.com; s=20150623;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=9ogwYrieyvisE0oo/c4pjMms6mXyrX9zJuYQZ6l9SOY=;
	b=Mogpen3AzJeb3lSRtdNRs9dJgJa9MCE4vzzQwgRPnzdH9AvhW5fCXSOUbXwf5lxB97
	WOV7fdkxO8Yloelepx2r3AiqEMuLVWdudOhiSYPt3K4SjNNIM7fbLGzHqGS4EprIN1B8
	x2Uh5JlTuRxjNImyBrfeOtNf8vE+zBAURxD8TDM39kQgscbJOd38gA72eUQBD/w515iF
	M3duNnHGCENak1A5E6yT5+xZtpvcbuel5NsqvJhmkPSmsMRF5zzapdt4UjKqpBTKlcz1
	TsTR1Urm/CJY63urmra8pggSokJxbIDMKBZahJbRHUOCocld535XuiWOo6rDcQPwslPQ
	Ll7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=9ogwYrieyvisE0oo/c4pjMms6mXyrX9zJuYQZ6l9SOY=;
	b=Jf5zzB7Vu21aI/sAc5KcaLfJwNGN9X+WQJi/hCpXxxG8T5qlLJ3Nd1z93YsEgewVlB
	Vn9uA1t08/Ww8nqCzACmFOD8xufCIoJ1PykrDbyWLIrQFxq9Ie/GXC3dVavp5mtDhxTb
	y7qjlUOaywv9x9//U4kIl9cj4OrUmnmfcVE3jevo3AkmQDNICjgQJANOhOOvpw9cXkzI
	Vzfs3yA74TEJFOoi+xePRSF23dugFSIi68HtWUMt5RDnYB2oentj5u6AHUQl/G+7mXiw
	IdNxNcNTTIEhhmc45Ja75bs94c580C5VNW7e9OqUckb8j0j3gPUrxEyn/+BMuXC9vVIv
	UnyA==
X-Gm-Message-State: ALoCoQl8MpdqrmyQLbHpqfcLqjV0+jyCURJuxN0zrxcNgZuK7JmZMQ6LSG90E9f1uYyIq4D1yZ/y
MIME-Version: 1.0
X-Received: by 10.50.111.114 with SMTP id ih18mr480906igb.9.1448948370933;
	Mon, 30 Nov 2015 21:39:30 -0800 (PST)
Sender: sarayu@tanmic.co.in
Received: by 10.107.19.142 with HTTP; Mon, 30 Nov 2015 21:39:30 -0800 (PST)
In-Reply-To: <CAMKF1spKsEq+FUCS5wk9Xs5oJo5CrW+PxbkL3wLLoO1OZ9AE1Q@mail.gmail.com>
References: <CAF5S8SN2wHM39fbLuj+jT5d8mM-e83sey_aJ7vYHa-9=ifzS_A@mail.gmail.com>
	<CAMKF1spKsEq+FUCS5wk9Xs5oJo5CrW+PxbkL3wLLoO1OZ9AE1Q@mail.gmail.com>
Date: Tue, 1 Dec 2015 11:09:30 +0530
X-Google-Sender-Auth: hsaY8Pt9QdTvsLPQweKKJNvawec
Message-ID: <CAF5S8SNk3ijxCwo4FGyG_05ASYVsV_9TDcN21hJEC_KnBQKWcQ@mail.gmail.com>
From: Sarayu Krishna Sivanandam <sarayu@zaikenn.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Kernel header generation
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
X-List-Received-Date: Tue, 01 Dec 2015 05:39:37 -0000
Content-Type: multipart/alternative; boundary=089e0149be0cf2a4db0525cf949c

--089e0149be0cf2a4db0525cf949c
Content-Type: text/plain; charset=UTF-8

Hi Khem .

Thanks for your response. But i am not sure if i understand clearly. My
intention here is to generate kernel headers and i wanted to understand how
to do the same .

Based on some online reference , I tried to add the lines (
IMAGE_INSTALL_append
= " kernel-devsrc"
TOOLCHAIN_TARGET_TASK_append = " kernel-devsrc") in my image file but got
some errors as shown below.
ERROR: Nothing RPROVIDES 'kernel-devsrc' (but
/home/sarayu/freescale/v2.0/Freescale-Linux-SDK-for-LS1021A-Rev2-v0.4-20150803-yocto/meta-fsl-networking/images/
fsl-image-core.bb RDEPENDS on or otherwise requires it)
NOTE: Runtime target 'kernel-devsrc' is unbuildable, removing...
ERROR: Required build target 'fsl-image-core' has no buildable providers.


I understood that the kernel-devsrc.bb is not present in my SDK and i tried
to manually add it in the kernel-recipies by using the online link (
https://github.com/01org/luv-yocto/blob/master/meta/recipes-kernel/linux/kernel-devsrc.bb)
but looks like it has some additional dependencies as my build failed again
with the below error.

ERROR: ExpansionError during parsing /home/sarayu/freescale/v2.0/
Freescale-Linux-SDK-for-LS1021A-Rev2-v0.4-20150803-
yocto/meta-fsl-networking/images/fsl-image-core.bb: Failure expanding
variable KERNEL_VERSION: ExpansionError: Failure expanding variable
KERNEL_VERSION, expression was ${@get_kernelversion_headers('
/home/sarayu/freescale/v2.0/Freescale-Linux-SDK-for-
LS1021A-Rev2-v0.4-20150803-yocto/build_ls1021atwr_release/tmp/sysroots/ls1021atwr/usr/src/kernel')}
which triggered exception NameError: name 'get_kernelversion_headers' is
not defined

My question is how can we generate kernel headers from yocto source . If
you have any reference or sample for the same please do share it with me .

Thanks in advance for your help.


Thanks and Regards,
Sarayu K S
Tech Lead
Zaikenn Technologies

On Tue, Dec 1, 2015 at 1:29 AM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Nov 27, 2015 5:48 AM, "Sarayu Krishna Sivanandam" <sarayu@zaikenn.com>
> wrote:
> >
> > Hi ,
> >
> > I have written a kernel module which i am currently building along with
> the yocto kernel but i want to be able to move my code to a different
> repository and be able to build it as a stand alone module.
> >
> > To do so , i will need the kernel headers to be generated from the linux
> kernel on yocto . Can you please provide me the steps to build the kernel
> headers and be able to install it outside the yocto setup.
>
> You need to look into building it as external module first. Thats totally
> between kbuild and your module build system. Once that is in place then you
> just write a new recipe for your module and inherit module class in it
> mainly doing the build and packaging from OE point. There already are many
> such recipes already in meta data
> >
> > I am using the QorIQ-SDK-V1.8 SDK .
> >
> > Thanks in advance for your help.
> > Thanks and Regards,
> > Sarayu K S
> > Tech Lead
> > Zaikenn Technologies
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--089e0149be0cf2a4db0525cf949c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:&#39;com=
ic sans ms&#39;,sans-serif">Hi Khem .=C2=A0</div><div class=3D"gmail_defaul=
t" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></div><div =
class=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-s=
erif">Thanks for your response. But i am not sure if i understand clearly. =
My intention here is to generate kernel headers and i wanted to understand =
how to do the same .=C2=A0</div><div class=3D"gmail_default" style=3D"font-=
family:&#39;comic sans ms&#39;,sans-serif"><br></div><div class=3D"gmail_de=
fault" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif">Based on so=
me online reference , I tried to add the lines (=C2=A0<span style=3D"color:=
rgb(7,55,99);font-family:&#39;trebuchet ms&#39;,sans-serif;font-size:12.8px=
">IMAGE_INSTALL_append =3D &quot; kernel-devsrc&quot;</span></div><div clas=
s=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif=
"><span style=3D"color:rgb(7,55,99);font-family:&#39;trebuchet ms&#39;,sans=
-serif;font-size:12.8px">TOOLCHAIN_TARGET_TASK_append =3D &quot; kernel-dev=
src&quot;)=C2=A0</span>in my image file but got some errors as shown below.=
=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:&#39;comic sa=
ns ms&#39;,sans-serif"><div class=3D"gmail_default" style=3D"font-family:ar=
ial,sans-serif;font-size:12.8px"><font face=3D"comic sans ms, sans-serif" c=
olor=3D"#ff0000">ERROR: Nothing RPROVIDES &#39;kernel-devsrc&#39; (but /hom=
e/sarayu/freescale/v2.0/Freescale-Linux-SDK-for-LS1021A-Rev2-v0.4-20150803-=
yocto/meta-fsl-networking/images/<a href=3D"http://fsl-image-core.bb/" targ=
et=3D"_blank">fsl-image-core.bb</a>=C2=A0RDEPENDS on or otherwise requires =
it)</font></div><div class=3D"gmail_default" style=3D"font-family:arial,san=
s-serif;font-size:12.8px"><font face=3D"comic sans ms, sans-serif" color=3D=
"#ff0000">NOTE: Runtime target &#39;kernel-devsrc&#39; is unbuildable, remo=
ving...</font></div><div class=3D"gmail_default" style=3D"font-family:arial=
,sans-serif;font-size:12.8px"><font face=3D"comic sans ms, sans-serif" colo=
r=3D"#ff0000">ERROR: Required build target &#39;fsl-image-core&#39; has no =
buildable providers.</font></div><div class=3D"gmail_default" style=3D"font=
-family:arial,sans-serif;font-size:12.8px"><br></div></div><div class=3D"gm=
ail_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br><=
/div><div class=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#=
39;,sans-serif">I understood that the <a href=3D"http://kernel-devsrc.bb">k=
ernel-devsrc.bb</a> is not present in my SDK and i tried to manually add it=
 in the kernel-recipies by using the online link (<a href=3D"https://github=
.com/01org/luv-yocto/blob/master/meta/recipes-kernel/linux/kernel-devsrc.bb=
">https://github.com/01org/luv-yocto/blob/master/meta/recipes-kernel/linux/=
kernel-devsrc.bb</a>) but looks like it has some additional dependencies as=
 my build failed again with the below error.</div><div class=3D"gmail_defau=
lt" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-=
serif"><font color=3D"#ff0000"><span style=3D"font-size:12.8px">ERROR: Expa=
nsionError during parsing /home/sarayu/freescale/v2.0/</span><span style=3D=
"font-size:12.8px">Freescale-Linux-SDK-for-</span><span style=3D"font-size:=
12.8px">LS1021A-Rev2-v0.4-20150803-</span><span style=3D"font-size:12.8px">=
yocto/meta-fsl-networking/</span><span style=3D"font-size:12.8px">images/</=
span><a href=3D"http://fsl-image-core.bb/" target=3D"_blank" style=3D"font-=
size:12.8px">fsl-image-core.bb</a><span style=3D"font-size:12.8px">: Failur=
e expanding variable KERNEL_VERSION: ExpansionError: Failure expanding vari=
able KERNEL_VERSION, expression was ${@get_kernelversion_headers(&#39;</spa=
n><span style=3D"font-size:12.8px">/home/sarayu/freescale/v2.0/</span><span=
 style=3D"font-size:12.8px">Freescale-Linux-SDK-for-</span><span style=3D"f=
ont-size:12.8px">LS1021A-Rev2-v0.4-20150803-</span><span style=3D"font-size=
:12.8px">yocto/build_ls1021atwr_</span><span style=3D"font-size:12.8px">rel=
ease/tmp/sysroots/</span><span style=3D"font-size:12.8px">ls1021atwr/usr/sr=
c/kernel&#39;)} which triggered exception NameError: name &#39;get_kernelve=
rsion_headers&#39; is not defined</span></font><br></div><div class=3D"gmai=
l_default" style=3D"font-family:&#39;comic sans ms&#39;,sans-serif"><br></d=
iv><div class=3D"gmail_default" style=3D"font-family:&#39;comic sans ms&#39=
;,sans-serif">My question is how can we generate kernel headers from yocto =
source . If you have any reference or sample for the same please do share i=
t with me .=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:&#=
39;comic sans ms&#39;,sans-serif"><br></div><div class=3D"gmail_default" st=
yle=3D"font-family:&#39;comic sans ms&#39;,sans-serif">Thanks in advance fo=
r your help.=C2=A0</div><div class=3D"gmail_default" style=3D"font-family:&=
#39;comic sans ms&#39;,sans-serif"><br></div></div><div class=3D"gmail_extr=
a"><br clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><=
div><div dir=3D"ltr"><font face=3D"comic sans ms, sans-serif">Thanks and Re=
gards,</font><div><font face=3D"comic sans ms, sans-serif">Sarayu K S=C2=A0=
</font></div><div><font face=3D"comic sans ms, sans-serif">Tech Lead=C2=A0<=
/font></div><div><font face=3D"comic sans ms, sans-serif">Zaikenn Technolog=
ies</font></div></div></div></div></div></div>
<br><div class=3D"gmail_quote">On Tue, Dec 1, 2015 at 1:29 AM, Khem Raj <sp=
an dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">=
raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<span class=3D""><p dir=3D"ltr"><br>
On Nov 27, 2015 5:48 AM, &quot;Sarayu Krishna Sivanandam&quot; &lt;<a href=
=3D"mailto:sarayu@zaikenn.com" target=3D"_blank">sarayu@zaikenn.com</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; Hi ,=C2=A0<br>
&gt;<br>
&gt; I have written a kernel module which i am currently building along wit=
h the yocto kernel but i want to be able to move my code to a different rep=
ository and be able to build it as a stand alone module.<br>
&gt;<br>
&gt; To do so , i will need the kernel headers to be generated from the lin=
ux kernel on yocto . Can you please provide me the steps to build the kerne=
l headers and be able to install it outside the yocto setup.</p>
</span><p dir=3D"ltr">You need to look into building it as external module =
first. Thats totally between kbuild and your module build system. Once that=
 is in place then you just write a new recipe for your module and inherit m=
odule class in it mainly doing the build and packaging from OE point. There=
 already are many such recipes already in meta data<span class=3D""><br>
&gt;<br>
&gt; I am using the=C2=A0QorIQ-SDK-V1.8 SDK=C2=A0.=C2=A0<br>
&gt;<br>
&gt; Thanks in advance for your help.<br>
&gt; Thanks and Regards,<br>
&gt; Sarayu K S=C2=A0<br>
&gt; Tech Lead=C2=A0<br>
&gt; Zaikenn Technologies<br>
&gt;<br></span><span class=3D"">
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_b=
lank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</span></p>
</blockquote></div><br></div>

--089e0149be0cf2a4db0525cf949c--
