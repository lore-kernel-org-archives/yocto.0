Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A34FE00D08; Sat,  4 May 2019 19:51:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (bruce.ashfield[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com
	[209.85.167.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 94842E00C14
	for <yocto@yoctoproject.org>; Sat,  4 May 2019 19:51:23 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id n134so5020234lfn.11
	for <yocto@yoctoproject.org>; Sat, 04 May 2019 19:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Cu0xK74KjHq/2RioeWtV3wKfqR397GL+CPG0VuCJTSo=;
	b=AgSPRewkg8XZsEduPdouLUSb+ErqKi0Nm2oNhMhhf+d7mognEiZqZItbZmM3CsBeiw
	JzQXmlECbsDzYklb0Ipq8L6N99ab16PR2S1s68F1BwHFm9MhvVxLp7FfZB6i/KU74SN3
	ETWLqpT3Oyqg08aP4uB8bRyDCv6pRzJzDDWzkN4m1f2cxRe+Mlr5TpQFfJwj5IUCzDXC
	Fr8FVjHQ/a8soppOekGY+ZCCw0OQ4mvn4AaJQTQXO1+RcefhrVpDnHRCfPpKg18256Zn
	PFOotuxvc5rY+y32nzsnZgNNxrP/AUloC3HhjecxUKdehnd8I7hvUW3iPXYpBnN2HYg8
	P92w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Cu0xK74KjHq/2RioeWtV3wKfqR397GL+CPG0VuCJTSo=;
	b=Vrva3BpQg0XrJDOAnfm6NWBGXu2FQIwmfy8z89VXAkWfwOgQJJyFI/MnUoeLetESBr
	seE20AOdyWr4vpz75mHxDyh8lrv0A97zjUcmXnyDw/vdLWCkPZjNGb/Z7pp+8zEv4G1h
	sk2yvGpg5Pj1pU2+nI5negPL9D3Y4VLiFPEGnBox2MZAfZv6Y/VtPTXBVkju8+Lns9Dq
	ZANlSZq4mIBy98ACqYHEahoxlMJZLCpJos0ZxCC6r99/bhkoTDQqr6HDOSBRQhcadX5p
	bRWYyJJPuMpKk8/qV110G+WkEzGmcYM62ANieh06Aou8Lz6P1mpqal0eo3eFlxG8kKZQ
	rngw==
X-Gm-Message-State: APjAAAUzsnQ7TMmYZsOmHgd/n+KO5Ig9DZnaFQfic1GowlEc95Yjj79G
	KGB7OClMg0nb/bATk+87NUysCD8axaSbtiSSJss=
X-Google-Smtp-Source: APXvYqxwB/sm30K7P0g6l3X1tLIDpqAFwA5IXhk7lAOPm6KcGVwG64PS5JRrYbpz+SGEhskY46eiCLsESPfRMJh9l3s=
X-Received: by 2002:a05:6512:309:: with SMTP id
	t9mr9098121lfp.103.1557024682232; 
	Sat, 04 May 2019 19:51:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAAV2bM2O7ve9ZvhqjFtcUysaKbKZxYqRV8idqg03Mp2-v+RFMQ@mail.gmail.com>
	<CAMKF1squhLTh7nQahUuwb9mweGTB35vqu6OrKOfFVf9eCARWcQ@mail.gmail.com>
	<513502f9-202e-f548-d4ef-493041207ef0@windriver.com>
	<B3369BC1-5C61-4B70-8B42-E9EF2596F0CE@gmail.com>
In-Reply-To: <B3369BC1-5C61-4B70-8B42-E9EF2596F0CE@gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
Date: Sat, 4 May 2019 22:51:11 -0400
Message-ID: <CADkTA4NEEtqBg8Xh=2n1t78EKBhzK19nO_0K2POi4wd0QC5Bjg@mail.gmail.com>
To: Emily Smith <easmith5555@gmail.com>
Cc: Yocto List <yocto@yoctoproject.org>
Subject: Re: Incorporating Xilinx DNNDK into Yocto
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
X-List-Received-Date: Sun, 05 May 2019 02:51:24 -0000
Content-Type: multipart/alternative; boundary="0000000000001750f105881b0f14"

--0000000000001750f105881b0f14
Content-Type: text/plain; charset="UTF-8"

On Sat, May 4, 2019 at 10:07 AM Emily Smith <easmith5555@gmail.com> wrote:

> Hi Randy -
>
> Good point it might be. Should I ask the meta-Xilinx maintainers about
> getting it in there?
>
>
That's probably the right thing to do, and/or just ask on the xilinx
mailing list what the plans are for releasing the code in a layer.

Bruce



> Best,
> Emily
>
> > On May 3, 2019, at 8:41 PM, Randy MacLeod <randy.macleod@windriver.com>
> wrote:
> >
> >> On 5/3/19 7:36 PM, Khem Raj wrote:
> >>> On Fri, May 3, 2019 at 2:09 PM Emily S <easmith5555@gmail.com> wrote:
> >>>
> >>> Hi all -
> >>>
> >>> Xilinx has the Deep Neural Network Development Kit (DNNDK) that they
> just released the source code for in the last month or so. They have the
> code written nicely in the form of yocto recipes but it doesn't appear to
> be an actual layer:
> https://github.com/Xilinx/Edge-AI-Platform-Tutorials/tree/master/docs/DPU-Integration/reference-files/files
> . Is there a possibility of creating a layer for it? Or should I look into
> other options, like adding it as a submodule to my custom layer
> meta-l1calo: https://github.com/kratsg/meta-l1calo?
> >>>
> >>> Or if anyone has additional options, suggestions are appreciated!
> >> I think we need meta-ai
> >
> > or add to:
> >   https://github.com/nnsuite/meta-neural-network
> >
> > Is most of the code Xilinx HW specific?
> > If so then a general layer may not be appropriate.
> >
> > ../Randy
> >
> >>> Thanks for the help!
> >>> Emily
> >>> --
> >>> _______________________________________________
> >>> yocto mailing list
> >>> yocto@yoctoproject.org
> >>> https://lists.yoctoproject.org/listinfo/yocto
> >
> >
> > --
> > # Randy MacLeod
> > # Wind River Linux
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await thee
at its end
- "Use the force Harry" - Gandalf, Star Trek II

--0000000000001750f105881b0f14
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default" style=3D"fon=
t-size:small"><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Sat, May 4, 2019 at 10:07 AM Emily Smith &lt;<a =
href=3D"mailto:easmith5555@gmail.com">easmith5555@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Randy - <br>
<br>
Good point it might be. Should I ask the meta-Xilinx maintainers about gett=
ing it in there? <br>
<br></blockquote><div><br></div><div><div class=3D"gmail_default" style=3D"=
font-size:small">That&#39;s probably the right thing to do, and/or just ask=
 on the xilinx mailing list what the plans are for releasing the code in a =
layer.</div></div><div class=3D"gmail_default" style=3D"font-size:small"><b=
r></div><div class=3D"gmail_default" style=3D"font-size:small">Bruce</div><=
div><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">
Best, <br>
Emily<br>
<br>
&gt; On May 3, 2019, at 8:41 PM, Randy MacLeod &lt;<a href=3D"mailto:randy.=
macleod@windriver.com" target=3D"_blank">randy.macleod@windriver.com</a>&gt=
; wrote:<br>
&gt; <br>
&gt;&gt; On 5/3/19 7:36 PM, Khem Raj wrote:<br>
&gt;&gt;&gt; On Fri, May 3, 2019 at 2:09 PM Emily S &lt;<a href=3D"mailto:e=
asmith5555@gmail.com" target=3D"_blank">easmith5555@gmail.com</a>&gt; wrote=
:<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Hi all -<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Xilinx has the Deep Neural Network Development Kit (DNNDK) tha=
t they just released the source code for in the last month or so. They have=
 the code written nicely in the form of yocto recipes but it doesn&#39;t ap=
pear to be an actual layer: <a href=3D"https://github.com/Xilinx/Edge-AI-Pl=
atform-Tutorials/tree/master/docs/DPU-Integration/reference-files/files" re=
l=3D"noreferrer" target=3D"_blank">https://github.com/Xilinx/Edge-AI-Platfo=
rm-Tutorials/tree/master/docs/DPU-Integration/reference-files/files</a> . I=
s there a possibility of creating a layer for it? Or should I look into oth=
er options, like adding it as a submodule to my custom layer meta-l1calo: <=
a href=3D"https://github.com/kratsg/meta-l1calo" rel=3D"noreferrer" target=
=3D"_blank">https://github.com/kratsg/meta-l1calo</a>?<br>
&gt;&gt;&gt; <br>
&gt;&gt;&gt; Or if anyone has additional options, suggestions are appreciat=
ed!<br>
&gt;&gt; I think we need meta-ai<br>
&gt; <br>
&gt; or add to:<br>
&gt;=C2=A0 =C2=A0<a href=3D"https://github.com/nnsuite/meta-neural-network"=
 rel=3D"noreferrer" target=3D"_blank">https://github.com/nnsuite/meta-neura=
l-network</a><br>
&gt; <br>
&gt; Is most of the code Xilinx HW specific?<br>
&gt; If so then a general layer may not be appropriate.<br>
&gt; <br>
&gt; ../Randy<br>
&gt; <br>
&gt;&gt;&gt; Thanks for the help!<br>
&gt;&gt;&gt; Emily<br>
&gt;&gt;&gt; --<br>
&gt;&gt;&gt; _______________________________________________<br>
&gt;&gt;&gt; yocto mailing list<br>
&gt;&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a><br>
&gt;&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/y=
octo</a><br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; # Randy MacLeod<br>
&gt; # Wind River Linux<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature">- Thou shalt not follow the NULL pointer, for ch=
aos and madness await thee at its end<br>- &quot;Use the force Harry&quot; =
- Gandalf, Star Trek II<br><br></div></div>

--0000000000001750f105881b0f14--
