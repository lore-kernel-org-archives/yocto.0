Return-Path: <jefro.net@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 323F5E003D8; Mon, 23 Jun 2014 09:25:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	HTML_IMAGE_ONLY_32,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,T_REMOTE_IMAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* 0.0 HTML_IMAGE_ONLY_32 BODY: HTML: images with 2800-3200 bytes of
	words *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE019E00282
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 09:25:01 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id z11so4844477lbi.38
	for <yocto@yoctoproject.org>; Mon, 23 Jun 2014 09:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=yXEG7K7WEuZ0tftO7ubwQJHCJQFq61FLCtdpN7Nvb+0=;
	b=ckBVFb5/r+Xn79Jd4Rv6S35ylRIdSf76OU+u21ooxQMYPz+PcnnkMtwV4pmDr8F26+
	b+GqKbw5u05rOqv5q0/oSnDsmqq9AbNaUPgnyEifGrd22lUBWD7kPaSIckmPI0INO3n4
	8b2WOWjQljg9gLASIWj9Y4SjYy3n9r2bme5Ft5k4Wk3CiFa5eOGvSjeOnibDcicTmLKL
	TGN1EtVvAcO1eVD9pTttMW+3AGiP1Jdzi801bqWdRdHNI0UJcEAoAbxAQcOzOfWf1zPJ
	ONNGBuMVWEBIKLBi8ZYRF7gS70KwpXyqjBO/vafclKlPC7EGPqYAYGQtBTADJyTnTJIS
	yuLw==
X-Received: by 10.152.206.11 with SMTP id lk11mr2433710lac.72.1403540700574;
	Mon, 23 Jun 2014 09:25:00 -0700 (PDT)
MIME-Version: 1.0
Sender: jefro.net@gmail.com
Received: by 10.112.89.135 with HTTP; Mon, 23 Jun 2014 09:24:40 -0700 (PDT)
In-Reply-To: <20140621065542.3653.qmail@f4mail-235-236.rediffmail.com>
References: <20140621065542.3653.qmail@f4mail-235-236.rediffmail.com>
From: Jeff Osier-Mixon <jefro@jefro.net>
Date: Mon, 23 Jun 2014 09:24:40 -0700
X-Google-Sender-Auth: UgjJfHodaVdocujN2C7faKO2_DA
Message-ID: <CA+YB3raRmo2Do_CXuy2nK4oB_2QdngeyCzvd8ib_psTSj772zA@mail.gmail.com>
To: Himanshu Pandey <pandey_himanshu80@rediffmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hi
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
X-List-Received-Date: Mon, 23 Jun 2014 16:25:06 -0000
Content-Type: multipart/alternative; boundary=001a11349392e2be6404fc83489a

--001a11349392e2be6404fc83489a
Content-Type: text/plain; charset=UTF-8

Hello - these are questions with a very large set of answers. I think you
probably want to start with the documentation:

https://www.yoctoproject.org/documentation/current

best of luck


On Fri, Jun 20, 2014 at 11:55 PM, Himanshu Pandey <
pandey_himanshu80@rediffmail.com> wrote:

> Hi,
>
> I am a starter in yocto.
>
> I have a couple of  questions:
>
> 1. Please explain me in yocto the exact steps involved in creating a final
> image. That means what all scripts are used,used receipes,used bbclasses
> etc.
>
> 2. What are the steps involved in creating a final .tar.bz2. Please
> explain all the scripts,receipes,bbclasses etc. that are involved.
>
> 3. I have a requirement that once the .tar.bz2 is created I want my shell
> script to be executed finally. So what I have to do in order to achieve
> this.
>
> Regards,
> Himanshu Pandey
>
>
>
>
>
>
> <http://sigads.rediff.com/RealMedia/ads/click_nx.ads/www.rediffmail.com/signatureline.htm@Middle?>
> Get your own *FREE* website, *FREE* domain & *FREE* mobile app with
> Company email.
> *Know More >*
> <http://track.rediff.com/click?url=___http://businessemail.rediff.com/email-ids-for-companies-with-less-than-50-employees?sc_cid=sign-1-10-13___&cmp=host&lnk=sign-1-10-13&nsrv1=host>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Jeff Osier-Mixon @Intel
Yocto Project Community Manager http://yoctoproject.org

--001a11349392e2be6404fc83489a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello - these are questions with a very large set of answe=
rs. I think you probably want to start with the documentation:<div><br></di=
v><div><a href=3D"https://www.yoctoproject.org/documentation/current">https=
://www.yoctoproject.org/documentation/current</a><br>

</div><div><br></div><div>best of luck</div></div><div class=3D"gmail_extra=
"><br><br><div class=3D"gmail_quote">On Fri, Jun 20, 2014 at 11:55 PM, Hima=
nshu  Pandey <span dir=3D"ltr">&lt;<a href=3D"mailto:pandey_himanshu80@redi=
ffmail.com" target=3D"_blank">pandey_himanshu80@rediffmail.com</a>&gt;</spa=
n> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br><br>I am a starter in yocto.<br><br>I=
 have a couple of=C2=A0 questions:<br><br>1. Please explain me in yocto the=
 exact steps involved in creating a final image. That means what all script=
s are used,used receipes,used bbclasses etc.<br>

<br>2. What are the steps involved in creating a final .tar.bz2. Please exp=
lain all the scripts,receipes,bbclasses etc. that are involved. <br><br>3. =
I have a requirement that once the .tar.bz2 is created I want my shell scri=
pt to be executed finally. So what I have to do in order to achieve this.=
=C2=A0 <br>

<br>Regards,<br>Himanshu Pandey <br><br>=C2=A0 <br><br>=C2=A0 <br><br><a hr=
ef=3D"http://sigads.rediff.com/RealMedia/ads/click_nx.ads/www.rediffmail.co=
m/signatureline.htm@Middle?" target=3D"_blank"><img src=3D"http://sigads.re=
diff.com/RealMedia/ads/adstream_nx.ads/www.rediffmail.com/signatureline.htm=
@Middle"></a><table cellpadding=3D"0" cellspacing=3D"0">

<tbody><tr><td><div style=3D"font-family:Arial,Helvetica,sans-serif;font-si=
ze:14px">Get your own <span style=3D"padding-bottom:0px;background-color:#c=
c0000;padding-left:3px;padding-RIGHT:3px;font-family:Arial,Helvetica,sans-s=
erif;color:#ffffff;font-size:12px;padding-top:0px"><b>FREE</b></span> websi=
te,  <span style=3D"padding-bottom:0px;background-color:#c00;padding-left:3=
px;padding-RIGHT:3px;font-family:Arial,Helvetica,sans-serif;color:#ffffff;f=
ont-size:12px;padding-top:0px"><b>FREE</b></span> domain &amp; <span style=
=3D"padding-bottom:0px;background-color:#c00;padding-left:3px;padding-RIGHT=
:3px;font-family:Arial,Helvetica,sans-serif;color:#ffffff;font-size:12px;pa=
dding-top:0px"><b>FREE</b></span> mobile app with Company email. =C2=A0</di=
v>

</td><td><a href=3D"http://track.rediff.com/click?url=3D___http://businesse=
mail.rediff.com/email-ids-for-companies-with-less-than-50-employees?sc_cid=
=3Dsign-1-10-13___&amp;cmp=3Dhost&amp;lnk=3Dsign-1-10-13&amp;nsrv1=3Dhost" =
style=3D"font-family:Arial,Helvetica,sans-serif;color:#fff;font-size:14px;c=
olor:#0000cc" target=3D"_blank"><b>Know More &gt;</b></a></td>

</tr></tbody></table><br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>Jeff Osi=
er-Mixon @Intel<br>Yocto Project Community Manager <a href=3D"http://yoctop=
roject.org" target=3D"_blank">http://yoctoproject.org</a>
</div>

--001a11349392e2be6404fc83489a--
