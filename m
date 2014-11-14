Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E68BE0084F; Fri, 14 Nov 2014 01:11:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og114.obsmtp.com (exprod8og114.obsmtp.com [64.18.3.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C915E00831
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 01:10:58 -0800 (PST)
Received: from mail-lb0-f169.google.com ([209.85.217.169]) (using TLSv1) by
	exprod8ob114.postini.com ([64.18.7.12]) with SMTP
	ID DSNKVGXHIdrRddgDh8k4bUgwYrj/RhlqyM9F@postini.com;
	Fri, 14 Nov 2014 01:11:06 PST
Received: by mail-lb0-f169.google.com with SMTP id 10so12665858lbg.28
	for <yocto@yoctoproject.org>; Fri, 14 Nov 2014 01:10:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=aJJvimOateCynqU3AOG2SNhNnHuXVvnABKdYZeCMCpc=;
	b=P5PS9bPM4syMTLkmUN+bai4hSfEUBr7xEXUnyiFSbSg92nkjPRR8u1A1CoSo4oSBdp
	rK3TMNzpOqOEdPcjLlv22RVPYgbKnwzrNvxZh1r+gwQhaZwTLu3k0anPtGrJ72FMZoqa
	voj3g6CWYVgmxDsqVk8zfo2Wj+FSkJS1F4vTKZQLIqeGts1KyANLH6bKbt+UPJimAhpm
	ekuBqN7yk4QyMXX2uN7mXm5Mf0+1ctmd72VV2blg3OwH9HhQIQkmbhUUW0j2HFRJwht0
	UuaqtnZAp6eVS4lqWQU6tXHOBMdQuaMWmadLDUUqM4+1LUN3UvqNPaez6xFIonlunCFF
	8bzw==
X-Gm-Message-State: ALoCoQlN+QtoNLUD9xmJTAYu94v19ESQ09/bfuCkdNfUobnTe7OHwVuajQ0VgzwDhBiFOgqdtXciG0W1zNSmJv0DaDQc6gPF9u1NwFGlZRh9XZboEae0HWlGRH1eIaGT0s7ucVgf8rBer6bFYL695ienzh0MVp1OhA==
X-Received: by 10.112.16.39 with SMTP id c7mr7035369lbd.19.1415956256269;
	Fri, 14 Nov 2014 01:10:56 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.112.16.39 with SMTP id c7mr7035360lbd.19.1415956256123; Fri,
	14 Nov 2014 01:10:56 -0800 (PST)
Received: by 10.152.2.40 with HTTP; Fri, 14 Nov 2014 01:10:56 -0800 (PST)
In-Reply-To: <43F0718C449F6A46B393DA2BEC8E01280C645342@post>
References: <43F0718C449F6A46B393DA2BEC8E01280C645342@post>
Date: Fri, 14 Nov 2014 17:10:56 +0800
Message-ID: <CAJrRHk4CVfUUJ-N8940s6d3-DoL9jTdH=ibsSpWZ5pqt4X8Qsw@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Peter Bergin <peter.bergin@tritech.se>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: icecc
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
X-List-Received-Date: Fri, 14 Nov 2014 09:11:09 -0000
Content-Type: multipart/alternative; boundary=001a11c3c78eaa0ece0507ce012b

--001a11c3c78eaa0ece0507ce012b
Content-Type: text/plain; charset=UTF-8

Good day Peter,

Maybe you want to verify first the prioritization of the layers in your
set-up.
Please execute bitbake-layers show-layers to really see if meta-yocto is
really executed after your layer (meta-mydist)

If you verified that it is,
please add in your conf/layer.conf, BBFILE_PRIORITY_mydist = "any number
after meta-yocto".

Maybe that will work for you.

Thanks,
-J

On Tue, Oct 28, 2014 at 8:12 PM, Peter Bergin <peter.bergin@tritech.se>
wrote:

> Hi,
>
> I am trying to get icecc working together with Poky (daisy branch). I
> follow the Yocto Project Reference Manual chapter "7.45. icecc.bbclass" and
> I can not get it working.
>
> The manual states that I on a distribution level can add the following:
>
>     INHERIT_DISTRO += "icecc"
>     ICECC_DISABLED ??= "1"
>
> This will make sure my builders use the same sstate signatures regardless
> if they use icecc or not. The way I did it to test was to create my own
> distro layer, called mydist, that inherits from Poky.
>
>     $ cat ../meta-mydist/conf/distro/mydist.conf
>
>     require conf/distro/poky.conf
>
>     DISTRO = "mydist"
>     DISTRO_NAME = "MyDist"
>
>     INHERIT_DISTRO += "icecc"
>     ICECC_DISABLED ??= "1"
>
> In my bblayers.conf I added this layer directly after the meta-yocto
> layer. But with this addition my build environment will not work anymore.
> What happens is that the variable INHERIT_DISTRO is overwritten because my
> layer is picked before the poky/meta/conf/distro/defaultsetup.conf. I get
> the same behaviour if i edit the poky.conf and not use my own distro.
>
>     $ bitbake core-image-base -e
>
>     ...
>
>     #
>     # $INHERIT_DISTRO [3 operations]
>     #   append /work/yocto/course/meta-mydist/conf/distro/mydist.conf:6
>     #     "icecc"
>     #   set? /work/yocto/course/poky/meta/conf/distro/defaultsetup.conf:22
>     #     "debian devshell sstate license"
>     #   set /work/yocto/course/poky/meta/conf/documentation.conf:226
>     #     [doc] "Lists classes that will be inherited at the distribution
> level. It is unlikely that you want to edit this variable."
>     # computed:
>     #   " icecc"
>     INHERIT_DISTRO=" icecc"
>     #
>
>     ...
>
> What is wrong here, documentation or my setup? Can someone give me advice?
>
> Regards,
> /Peter
>
>
>
>
>
>
> Peter Bergin
>
>
>
> peter.bergin@tritech.se
> +46 733 35 21 05
>
>
> www.tritech.se
> +46 31 763 38 00
> Nordstadstorget 6
> SE-411 05 G?teborg, Sweden
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11c3c78eaa0ece0507ce012b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Peter,<div><br></div><div>Maybe you want to verif=
y first the prioritization of the layers in your set-up.</div><div>Please e=
xecute=C2=A0<span style=3D"color:rgb(61,61,61);font-family:&#39;Helvetica N=
eue&#39;,Helvetica,Arial,&#39;Lucida Grande&#39;,sans-serif;font-size:13px;=
line-height:19.5px">bitbake-layers show-layers to really see if meta-yocto =
is really executed after your layer (</span><span style=3D"font-family:aria=
l,sans-serif;font-size:13px">meta-mydist)</span></div><div><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px"><br></span></div><div><span sty=
le=3D"font-family:arial,sans-serif;font-size:13px">If you verified that it =
is,</span></div><div><span style=3D"font-family:arial,sans-serif;font-size:=
13px">please add in your conf/layer.conf, BBFILE_PRIORITY_mydist =3D &quot;=
any number after meta-yocto&quot;.</span></div><div><span style=3D"font-fam=
ily:arial,sans-serif;font-size:13px"><br></span></div><div><span style=3D"f=
ont-family:arial,sans-serif;font-size:13px">Maybe that will work for you.</=
span></div><div><span style=3D"font-family:arial,sans-serif;font-size:13px"=
><br></span></div><div><span style=3D"font-family:arial,sans-serif;font-siz=
e:13px">Thanks,</span></div><div><span style=3D"font-family:arial,sans-seri=
f;font-size:13px">-J</span></div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Tue, Oct 28, 2014 at 8:12 PM, Peter Bergin <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:peter.bergin@tritech.se" target=3D"_blank"=
>peter.bergin@tritech.se</a>&gt;</span> wrote:<br><blockquote class=3D"gmai=
l_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left=
:1ex">Hi,<br>
<br>
I am trying to get icecc working together with Poky (daisy branch). I follo=
w the Yocto Project Reference Manual chapter &quot;7.45. icecc.bbclass&quot=
; and I can not get it working.<br>
<br>
The manual states that I on a distribution level can add the following:<br>
<br>
=C2=A0 =C2=A0 INHERIT_DISTRO +=3D &quot;icecc&quot;<br>
=C2=A0 =C2=A0 ICECC_DISABLED ??=3D &quot;1&quot;<br>
<br>
This will make sure my builders use the same sstate signatures regardless i=
f they use icecc or not. The way I did it to test was to create my own dist=
ro layer, called mydist, that inherits from Poky.<br>
<br>
=C2=A0 =C2=A0 $ cat ../meta-mydist/conf/distro/mydist.conf<br>
<br>
=C2=A0 =C2=A0 require conf/distro/poky.conf<br>
<br>
=C2=A0 =C2=A0 DISTRO =3D &quot;mydist&quot;<br>
=C2=A0 =C2=A0 DISTRO_NAME =3D &quot;MyDist&quot;<br>
<br>
=C2=A0 =C2=A0 INHERIT_DISTRO +=3D &quot;icecc&quot;<br>
=C2=A0 =C2=A0 ICECC_DISABLED ??=3D &quot;1&quot;<br>
<br>
In my bblayers.conf I added this layer directly after the meta-yocto layer.=
 But with this addition my build environment will not work anymore. What ha=
ppens is that the variable INHERIT_DISTRO is overwritten because my layer i=
s picked before the poky/meta/conf/distro/defaultsetup.conf. I get the same=
 behaviour if i edit the poky.conf and not use my own distro.<br>
<br>
=C2=A0 =C2=A0 $ bitbake core-image-base -e<br>
<br>
=C2=A0 =C2=A0 ...<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # $INHERIT_DISTRO [3 operations]<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0append /work/yocto/course/meta-mydist/conf/dist=
ro/mydist.conf:6<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0&quot;icecc&quot;<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0set? /work/yocto/course/poky/meta/conf/distro/d=
efaultsetup.conf:22<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0&quot;debian devshell sstate license&quo=
t;<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0set /work/yocto/course/poky/meta/conf/documenta=
tion.conf:226<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0 =C2=A0[doc] &quot;Lists classes that will be i=
nherited at the distribution level. It is unlikely that you want to edit th=
is variable.&quot;<br>
=C2=A0 =C2=A0 # computed:<br>
=C2=A0 =C2=A0 #=C2=A0 =C2=A0&quot; icecc&quot;<br>
=C2=A0 =C2=A0 INHERIT_DISTRO=3D&quot; icecc&quot;<br>
=C2=A0 =C2=A0 #<br>
<br>
=C2=A0 =C2=A0 ...<br>
<br>
What is wrong here, documentation or my setup? Can someone give me advice?<=
br>
<br>
Regards,<br>
/Peter<br>
<br>
<br>
<br>
<br>
<br>
<br>
Peter Bergin<br>
<br>
<br>
<br>
<a href=3D"mailto:peter.bergin@tritech.se">peter.bergin@tritech.se</a><br>
<a href=3D"tel:%2B46%20733%2035%2021%2005" value=3D"+46733352105">+46 733 3=
5 21 05</a><br>
<br>
<br>
<a href=3D"http://www.tritech.se" target=3D"_blank">www.tritech.se</a><br>
<a href=3D"tel:%2B46%2031%20763%2038%2000" value=3D"+46317633800">+46 31 76=
3 38 00</a><br>
Nordstadstorget 6<br>
SE-411 05 G?teborg, Sweden<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div>

--001a11c3c78eaa0ece0507ce012b--
