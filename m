Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67096E009A6; Thu,  8 May 2014 03:53:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 499 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 03:53:41 PDT
Received: from mail-qc0-f171.google.com (unknown [209.85.216.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DC83E006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 03:53:41 -0700 (PDT)
Received: by mail-qc0-f171.google.com with SMTP id x13so2578475qcv.2
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 03:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=T9qCQG+kK7P3/M7bB+RF35PiexhiqpUt0TTey98bj1g=;
	b=RmPWaV4QdEZJRZ+tNYWLrRDaQOt1y+JxxLHgOi/q3rgQiCZRqH7w3TqemcU7UgzL8q
	ain8k54w+EgMenDPSYh8Hu5RjMEyHpnX3a3GomUq9fWEDiUHpBAary6i/hJhR2TTvhlf
	H6G/VhzpeFayk00AT0P7Nb9Ya3ibxtepIWGBwRCnQRuI/RRjDrGiFWMXF5zK5G6YTwpR
	pWSfT0taFwBrx2H8DsPMHzN5TJL89igOVfCyMvyx9B3F0+5Mm5/NzrvpQv7fa9QiQEdh
	YkOSq9mmuIjms2bVA/vPIy7GB3kFaVqZdiYOUZAjsUaDVp+rDhV4NPcoW1lfGHJhPaSt
	071w==
X-Received: by 10.229.58.68 with SMTP id f4mr3537296qch.18.1399545921558; Thu,
	08 May 2014 03:45:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.48.112 with HTTP; Thu, 8 May 2014 03:45:01 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1405080318520.27694@localhost>
References: <alpine.LFD.2.11.1405080318520.27694@localhost>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Thu, 8 May 2014 07:45:01 -0300
Message-ID: <CAMCfZKFHCLp2aJJQU4LEQ7nd4_NtNuOgy-ghYFaqAzO5-qtzkw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: couple simple questions on building for intel galileo
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
X-List-Received-Date: Thu, 08 May 2014 10:53:46 -0000
Content-Type: multipart/alternative; boundary=001a113306b0805c1f04f8e12dba

--001a113306b0805c1f04f8e12dba
Content-Type: text/plain; charset=ISO-8859-1

Robert,

Here is some instructions with some workarounds:
http://www.malinov.com/Home/sergey-s-blog/intelgalileo-buildinglinuximage

And I think that you already saw meta-intel-iot-devkit:
http://git.yoctoproject.org/cgit/cgit.cgi/meta-intel-iot-devkit/

As soon as I get my Galileo I'll try to put Yocto on it.

Please, share your results with us.

Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/


On Thu, May 8, 2014 at 4:21 AM, Robert P. J. Day <rpjday@crashcourse.ca>wrote:

>
>   just got an intel galileo board, and want to whip together a
> yocto-built image for it on my fedora rawhide system. before even
> starting, a quick google showed me that people seemed to be having
> trouble:
>
> https://communities.intel.com/thread/51115
>
> where are the canonical instructions for building a basic image for
> the galileo with yocto? i found this:
>
> http://wiki.ros.org/IntelGalileo/HydroGalileoInitialInstall
>
> but i'd like to make sure i'm using the most current instructions to
> avoid problems. thanks.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113306b0805c1f04f8e12dba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Robert,<div><br></div><div style>Here is some instructions=
 with some workarounds:</div><div style><a href=3D"http://www.malinov.com/H=
ome/sergey-s-blog/intelgalileo-buildinglinuximage">http://www.malinov.com/H=
ome/sergey-s-blog/intelgalileo-buildinglinuximage</a><br>

</div><div style><br></div><div style>And I think that you already saw meta=
-intel-iot-devkit:</div><div style><a href=3D"http://git.yoctoproject.org/c=
git/cgit.cgi/meta-intel-iot-devkit/">http://git.yoctoproject.org/cgit/cgit.=
cgi/meta-intel-iot-devkit/</a><br>

</div><div style><br></div><div style>As soon as I get my Galileo I&#39;ll =
try to put Yocto on it.</div><div style><br></div><div style>Please, share =
your results with us.</div><div class=3D"gmail_extra"><br clear=3D"all"><di=
v>

<div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego Sueir=
o<br><br>Administrador do Embarcados<br><a href=3D"http://www.embarcados.co=
m.br/?utm_source=3Dassinatura_diego&amp;utm_medium=3De-mail&amp;utm_campaig=
n=3DAssinatura%20Email%20Diego" target=3D"_blank">www.embarcados.com.br</a>=
<br>

<br>/*long live rock &#39;n roll*/<br></div></div>
<br><br><div class=3D"gmail_quote">On Thu, May 8, 2014 at 4:21 AM, Robert P=
. J. Day <span dir=3D"ltr">&lt;<a href=3D"mailto:rpjday@crashcourse.ca" tar=
get=3D"_blank">rpjday@crashcourse.ca</a>&gt;</span> wrote:<br><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex">

<br>
=A0 just got an intel galileo board, and want to whip together a<br>
yocto-built image for it on my fedora rawhide system. before even<br>
starting, a quick google showed me that people seemed to be having<br>
trouble:<br>
<br>
<a href=3D"https://communities.intel.com/thread/51115" target=3D"_blank">ht=
tps://communities.intel.com/thread/51115</a><br>
<br>
where are the canonical instructions for building a basic image for<br>
the galileo with yocto? i found this:<br>
<br>
<a href=3D"http://wiki.ros.org/IntelGalileo/HydroGalileoInitialInstall" tar=
get=3D"_blank">http://wiki.ros.org/IntelGalileo/HydroGalileoInitialInstall<=
/a><br>
<br>
but i&#39;d like to make sure i&#39;m using the most current instructions t=
o<br>
avoid problems. thanks.<br>
<br>
rday<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
Robert P. J. Day =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 Ottawa, Ontario, CANADA<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://crashcour=
se.ca" target=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0 <a href=3D"http://twitter.com/rpjday" target=3D"_blank">http://=
twitter.com/rpjday</a><br>
LinkedIn: =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 <a hr=
ef=3D"http://ca.linkedin.com/in/rpjday" target=3D"_blank">http://ca.linkedi=
n.com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br></div></div>

--001a113306b0805c1f04f8e12dba--
