Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B646E00848; Wed,  1 Aug 2018 12:16:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47D1AE00708
	for <yocto@yoctoproject.org>; Wed,  1 Aug 2018 12:16:58 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id l16-v6so14089902lfc.13
	for <yocto@yoctoproject.org>; Wed, 01 Aug 2018 12:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gwbXOGxQGw9zA3jpxI//ObGQkroxy+pniSUWcgM4ies=;
	b=QAk3nfXhMCQN1PvNlWp5hGoUmr75PMVnYeudd+lTSW0WwPOvxPZSPHodufSHWjNb0k
	kTE3onVmIylFoGBvnhsB67QhSZ/qILeyzvUf2l6fYezEOOn070JPMCmSCEoJPzNgIDhw
	rvjsTrEj5JxyQf+ktpVQQPcHvH+QlhyR2u1hY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gwbXOGxQGw9zA3jpxI//ObGQkroxy+pniSUWcgM4ies=;
	b=lDVRLP+0T0Zm3SBhZT/viezxJhuQBcHhjbk7jWZSw2FjtabtuTZiIhGDQGb95e10nJ
	RP8vimEZ9q1lYlJ8jZwnSepPAmBZBQuhUkCB+7tCweDYIikKsh3wQx3wg51XM1Fdjulb
	gKy0ZK7mUC+ex8BdQRsfSYwNv83heHSHCKeiZPXHd+GcqB7vrIkXMoE7OYDepivTumo1
	N1fHfZFbcL0FgiyA8IXY004rO8q+b1VZKKhIBTJGiq1RmWGHUcMyYHWb3InuXcGyHyY2
	NBcBQF3pxNal/k36uV8C4X+XHp68/W43U8mmLMhSbg3qWHlVhhBJMjtmah1mp69BCYkp
	QGng==
X-Gm-Message-State: AOUpUlFIJ2w1B8QkywMKANsuQBiXJSEC5wPwWWd8vKjLXMbdywoheIBy
	PFpgbrZqsfKh0GYh4fulfDaAvryv9XHLBz4d2uDDsA==
X-Google-Smtp-Source: AAOMgpdoENqjj0YPEd3YvNYwzO3iAp9Re0zDwKbO5t8203h81PoZ0nsqxx3uBFYq5D99YhgG3RLKsXW7J5q/IVPBN/M=
X-Received: by 2002:a19:1604:: with SMTP id
	m4-v6mr16179960lfi.120.1533151017141; 
	Wed, 01 Aug 2018 12:16:57 -0700 (PDT)
MIME-Version: 1.0
References: <6e2f9d0c0420474c89b939e115bc2c67@XCGC3026.northgrum.com>
In-Reply-To: <6e2f9d0c0420474c89b939e115bc2c67@XCGC3026.northgrum.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 1 Aug 2018 21:16:46 +0200
Message-ID: <CAP71Wjx1RcfsnXg70zrGn11mbCZxAz6RGA5BhDS27Gw+Dw6J5w@mail.gmail.com>
To: Shuchi.Anandpura@ngc.com
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Using FreeRADIUS on Yocto?
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
X-List-Received-Date: Wed, 01 Aug 2018 19:16:59 -0000
Content-Type: multipart/alternative; boundary="000000000000c39c7605726489e2"

--000000000000c39c7605726489e2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

hi,

assuming you are referring to freeradius.org, it looks like this project is
already integrated into meta-openembedded recipes layer, it was added about
one year ago. While this layer is not part of the default Yocto Project
releases (Poky), it is generally straight forward to add new layers into
the build configuration and benefits from additional recipes/features.

See:
http://layers.openembedded.org/layerindex/recipe/67407/
http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes=
-connectivity/freeradius/freeradius_3.0.17.bb

cheers
nicolas


On Wed, Aug 1, 2018 at 5:20 PM Anandpura, Shuchi [US] (AS) <
Shuchi.Anandpura@ngc.com> wrote:

> Hi everyone!
>
>
>
> I couldn=E2=80=99t find this too easily on the internet, but I was wonder=
ing if
> Yocto supports freeRADIUS. I know that Xilinx does not, but I have never
> used Yocto (or even heard of it pretty recently), so I=E2=80=99m not full=
y aware of
> its capabilities and limitations.
>
>
>
> If anybody has any insight on this, could you please let me know? I
> apologize if this is the wrong mailing list for this.
>
>
>
> Thank you so much!
>
>
>
> *Shuchi Anandpura*
>
> shuchi.anandpura@ngc.com
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000c39c7605726489e2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">hi,<div><br></div><div>assuming you are referring to <a hr=
ef=3D"http://freeradius.org">freeradius.org</a>, it looks like this project=
 is already integrated into meta-openembedded recipes layer, it was added a=
bout one year ago. While this layer is not part of the default Yocto Projec=
t releases (Poky), it is generally straight forward to add new layers into =
the build configuration and benefits from additional recipes/features.</div=
><div><br></div><div>See:</div><div><a href=3D"http://layers.openembedded.o=
rg/layerindex/recipe/67407/">http://layers.openembedded.org/layerindex/reci=
pe/67407/</a></div><div><a href=3D"http://cgit.openembedded.org/meta-openem=
bedded/tree/meta-networking/recipes-connectivity/freeradius/freeradius_3.0.=
17.bb">http://cgit.openembedded.org/meta-openembedded/tree/meta-networking/=
recipes-connectivity/freeradius/freeradius_3.0.17.bb</a><br></div><div><br>=
</div><div>cheers</div><div>nicolas</div><div><br></div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr">On Wed, Aug 1, 2018 at 5:20 PM Anandpura=
, Shuchi [US] (AS) &lt;<a href=3D"mailto:Shuchi.Anandpura@ngc.com">Shuchi.A=
nandpura@ngc.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-3842467562924122309WordSection1">
<p class=3D"MsoNormal">Hi everyone!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I couldn=E2=80=99t find this too easily on the inter=
net, but I was wondering if Yocto supports freeRADIUS. I know that Xilinx d=
oes not, but I have never used Yocto (or even heard of it pretty recently),=
 so I=E2=80=99m not fully aware of its capabilities
 and limitations. <u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">If anybody has any insight on this, could you please=
 let me know? I apologize if this is the wrong mailing list for this.<u></u=
><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thank you so much!<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><b><span style=3D"font-size:14.0pt;font-family:DaunP=
enh;color:#0070c0">Shuchi Anandpura<u></u><u></u></span></b></p>
<p class=3D"MsoNormal"><a href=3D"mailto:shuchi.anandpura@ngc.com" target=
=3D"_blank"><span style=3D"font-size:14.0pt;font-family:DaunPenh;color:#007=
0c0">shuchi.anandpura@ngc.com</span></a><span style=3D"font-size:14.0pt;fon=
t-family:DaunPenh;color:#0070c0"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000c39c7605726489e2--
