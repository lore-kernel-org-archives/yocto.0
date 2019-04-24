Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1358E00BAA; Wed, 24 Apr 2019 05:06:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE7FDE00BAA
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 05:06:45 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id o16so3645504lfl.7
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 05:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=qHemepkPtvH3Qv4En+WimcLSpQ31scyXEvJsSMTM8vY=;
	b=InY//11wCs2yGymEn4dxknCyHipHb+RHo/hduVD7YS0OuogeUPVzyQLhhvVhEufD9W
	JgwVSufPSQhQen8AAd85vhtrouYYaqt48lxxLHF+5LG9XZmBTUhOnTjOlIBcL6BQm5eA
	jFN/xayLp8X3dvpMFNXrKfXVzELtc1vBP3URQubTQbzOoMzEF76e1SNaEr78yQMDv1Y8
	dwVHKeTo5J7FjN7TDSy8MlEoARXHWd3ZyE0HiuF060TrzyYPCROtz28DSnUa4jb+Bdaa
	yiFUjneiAXZCBDCGXlmUYqEgE5sM/lQt76bodwoCtENRp1pYFS2C2BZnh1FD/eyFEcBz
	osSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=qHemepkPtvH3Qv4En+WimcLSpQ31scyXEvJsSMTM8vY=;
	b=Jmnd8VoLk8ajpSJP9++8Rpd3STXwFZkglCY86OYYGXERnHLazYhgliYYJ4X5g/scri
	yCWgDxWU8m9xJyOfbSfgg7ZjgCk6f2C6kJd/KS7SB4WPG3nC0enlYelEsjGBBjHQOCar
	Prl5o5kBytDOlheh6InCMj9nLM1OE1zUMj2ki97QqSPZrf5TVCOblyUCH4HWVJc95kNv
	cY+c1dowZjFMMdv0vv/pteI6oEOzvarMsX+QZvG6SF4wGxYaW6rTMg3VswHlH/+61nEZ
	kHavr6iB7vE8wumZtxAHPfz7XzP7inr3eq2GpJOiXofr8qGKIHp3W2dcoul0H5zVARj9
	bitQ==
X-Gm-Message-State: APjAAAWdRJhIy4nC9bNjtFpVgQlT9waqHZTx8lZDsaC/7t7IyYpZicAx
	0WItyH59azXc1+r36WPy9x2fDAKQW7+dRJzUVNgmsezr
X-Google-Smtp-Source: APXvYqxmn6kl73RMXiFqB4kSv0BqNNp0aVNlMgMaf8UNrkW4V6c64Mzgz+2azxaypuuwiGDT0+bUAT5aTnK7kPiKTmg=
X-Received: by 2002:ac2:533c:: with SMTP id f28mr14133511lfh.73.1556107589806; 
	Wed, 24 Apr 2019 05:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
	<6rh8ceu2rn.fsf@pengutronix.de>
	<CAAx3WaDQKbNg0tXZd07s8i_5PTDVctuOcScDMDbXFMmotjoJpw@mail.gmail.com>
In-Reply-To: <CAAx3WaDQKbNg0tXZd07s8i_5PTDVctuOcScDMDbXFMmotjoJpw@mail.gmail.com>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Wed, 24 Apr 2019 14:06:18 +0200
Message-ID: <CAAx3WaCL2XBSarSVpDN+KdwwYoUDEd3cLT1MfecFWriUB=OT-Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Wed, 24 Apr 2019 12:07:01 -0000
Content-Type: multipart/alternative; boundary="0000000000001f71270587458815"

--0000000000001f71270587458815
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi again,

I'm now testing genimage via meta-ptx in my Yocto workflow, but I found a
problem: I cannot set a SRC_URI in my custom image recipe (that inherit
from core-image which in turn inherit from image) because do_fetch and
do_unpack tasks have noexec set to 1. If I specify the SRC_URI with my
genimage.config, bitbake exits, complaining about LIC_FILE_CHECKSUM (that
is correctly specified). If I hack image.bbclass and comment out

#do_fetch[noexec] =3D "1"


#do_unpack[noexec] =3D "1"

The process start correctly. Is there a way to avoid touching image.bbclass
and install my configuration from the image recipe?

Thanks,
Gabriele

Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Zampieri <
gabbla.malist@gmail.com> ha scritto:

> Hi all,
>
> thank you very much for the suggestion, I will check genimage and test it=
.
>
> Gabriele
>
> Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lmann <
> u.oelmann@pengutronix.de> ha scritto:
>
>> Hi there,
>>
>> On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten <
>> Carsten.Stelling2@goerlitz.com> wrote:
>> > Have you seen https://github.com/pengutronix/genimage?
>>
>> you can find it included within https://github.com/pengutronix/meta-ptx
>> with an accompanying genimage.bbclass.
>>
>> Best regards
>> Ulrich
>>
>> > Regards,
>> >
>> > Carsten
>> >
>> > Von: yocto-bounces@yoctoproject.org [mailto:
>> yocto-bounces@yoctoproject.org] Im Auftrag von Gabriele Zampieri
>> > Gesendet: Montag, 4. M=C3=A4rz 2019 12:17
>> > An: yocto@yoctoproject.org
>> > Betreff: [yocto] Multiple ubifs partition
>> >
>> > Hi all,
>> >
>> > I'm trying to build a distribution that has multiple partitions. The
>> desiderata is something like:
>> >
>> > - rootfs.ubifs mounted on /
>> > - data.ubifs mounted on /data
>> > - opt.ubifs mounted on /opt
>> >
>> > I was wondering if there is a standard way to achieve the goal. I see
>> that there is a tool called wic, but it does not seems to support ubifs.=
 I
>> could post process the tarball image and doing stuff with my scripts, bu=
t
>> I'd prefer doing this in a single bitbake run. Can you suggest something=
?
>> >
>> > Thanks,
>> > Gabriele
>>
>>
>> --
>> Pengutronix e.K.                           | Ulrich =C3=96lmann         =
      |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/
>> |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0   =
 |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555=
 |
>>
>

--0000000000001f71270587458815
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi again, <br></div><div><br></div><=
div>I&#39;m now testing genimage via meta-ptx in my Yocto workflow, but I f=
ound a problem: I cannot set a SRC_URI in my custom image recipe (that inhe=
rit from core-image <span class=3D"gmail-tlid-translation gmail-translation=
" lang=3D"en"><span title=3D"" class=3D"gmail-">which in turn inherit from =
image) because do_fetch and do_unpack tasks have noexec set to 1. If I spec=
ify the SRC_URI with my genimage.config, bitbake exits, complaining about L=
IC_FILE_CHECKSUM (that is correctly specified). If I hack image.bbclass and=
 comment out <br></span></span></div><div><span class=3D"gmail-tlid-transla=
tion gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-"><br><=
/span></span></div><div><span class=3D"gmail-tlid-translation gmail-transla=
tion" lang=3D"en"><span title=3D"" class=3D"gmail-">#do_fetch[noexec] =3D &=
quot;1&quot; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <br>#do_unpack[noexe=
c] =3D &quot;1&quot;<br></span></span></div><div><span class=3D"gmail-tlid-=
translation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-=
"><br></span></span></div><div><span class=3D"gmail-tlid-translation gmail-=
translation" lang=3D"en"><span title=3D"" class=3D"gmail-">The process star=
t correctly. Is there a way to avoid touching image.bbclass and install my =
configuration from the image recipe?</span></span></div><div><span class=3D=
"gmail-tlid-translation gmail-translation" lang=3D"en"><span title=3D"" cla=
ss=3D"gmail-"><br></span></span></div><div><span class=3D"gmail-tlid-transl=
ation gmail-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">Than=
ks, <br></span></span></div><div><span class=3D"gmail-tlid-translation gmai=
l-translation" lang=3D"en"><span title=3D"" class=3D"gmail-">Gabriele<br></=
span></span></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Z=
ampieri &lt;<a href=3D"mailto:gabbla.malist@gmail.com">gabbla.malist@gmail.=
com</a>&gt; ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex"><div dir=3D"ltr"><div>Hi all, <br></div><div><br></div><div>thank y=
ou very much for the suggestion, I will check genimage and test it.</div><d=
iv><br></div><div>Gabriele<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Il giorno gio 7 mar 2019 alle ore 16:23 Ulric=
h =C3=96lmann &lt;<a href=3D"mailto:u.oelmann@pengutronix.de" target=3D"_bl=
ank">u.oelmann@pengutronix.de</a>&gt; ha scritto:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Hi there,<br>
<br>
On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten &lt;<a href=3D"mailto=
:Carsten.Stelling2@goerlitz.com" target=3D"_blank">Carsten.Stelling2@goerli=
tz.com</a>&gt; wrote:<br>
&gt; Have you seen <a href=3D"https://github.com/pengutronix/genimage" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/pengutronix/genimage</=
a>?<br>
<br>
you can find it included within <a href=3D"https://github.com/pengutronix/m=
eta-ptx" rel=3D"noreferrer" target=3D"_blank">https://github.com/pengutroni=
x/meta-ptx</a><br>
with an accompanying genimage.bbclass.<br>
<br>
Best regards<br>
Ulrich<br>
<br>
&gt; Regards,<br>
&gt;<br>
&gt; Carsten<br>
&gt;<br>
&gt; Von: <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blan=
k">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bounc=
es@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] =
Im Auftrag von Gabriele Zampieri<br>
&gt; Gesendet: Montag, 4. M=C3=A4rz 2019 12:17<br>
&gt; An: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt; Betreff: [yocto] Multiple ubifs partition<br>
&gt;<br>
&gt; Hi all,<br>
&gt;<br>
&gt; I&#39;m trying to build a distribution that has multiple partitions. T=
he desiderata is something like:<br>
&gt;<br>
&gt; - rootfs.ubifs mounted on /<br>
&gt; - data.ubifs mounted on /data<br>
&gt; - opt.ubifs mounted on /opt<br>
&gt;<br>
&gt; I was wondering if there is a standard way to achieve the goal. I see =
that there is a tool called wic, but it does not seems to support ubifs. I =
could post process the tarball image and doing stuff with my scripts, but I=
&#39;d prefer doing this in a single bitbake run. Can you suggest something=
?<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Gabriele<br>
<br>
<br>
--<br>
Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulrich =C3=96lmann=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
Industrial Linux Solutions=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| <a href=3D"http://www.pengutronix.de/" rel=3D"noreferrer" ta=
rget=3D"_blank">http://www.pengutronix.de/</a>=C2=A0 |<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0=C2=A0=
 =C2=A0 |<br>
Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =
Fax:=C2=A0 =C2=A0+49-5121-206917-5555 |<br>
</blockquote></div></div>
</blockquote></div>

--0000000000001f71270587458815--
