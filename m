Return-Path: <pawan4749@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91DCEE00B23; Thu, 11 Oct 2018 21:49:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (pawan4749[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B553CE0090C
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 21:49:00 -0700 (PDT)
Received: by mail-ot1-f44.google.com with SMTP id o14so11224810oth.4
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 21:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=4njBjVYfCTUZLVjx2wDJOnAJshRxB9+fLes8paRXmUY=;
	b=JPizB2u6cPw1R5zL/bbX0S2Kxs1VhhYjq0d0rgXmnQ2UB9gR7wp5soI8huuCXU+6FF
	nUdIWiOqFCG54lLYNGIxCA+np5l5707hxo11S+NplH5XMMy63keLPzWkr5SdbNgvyWxw
	x3sDVQ9F1YUBobDqnLXQwaUKj/ABbYjZZFJ0b09DU+Ur60DsgxGN9GsDZDxdQgWrwCK7
	EDNoV0h1px0vIfhL9pEIQgGQgC8DEUsvacvW9W4F7NeLNA1kC/ADFYxJp+tP199DH4UE
	eD/BpukvuPIQHLkwanigTtckIrDWYSYGCoKSohiewoKxU8/4I4m9VmyjedIuMoN8PgT7
	59AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=4njBjVYfCTUZLVjx2wDJOnAJshRxB9+fLes8paRXmUY=;
	b=XD5uQk1fvL492oz7AS/70qOtJOCfz6zydcjb5xyZjEltlAzdM3KPyniRSly03dHD+b
	Cprp4Putppr9+5XWy4IveZ4x1lDad/sTDdU9kkyM7GBigLrtF86pUza8m91VE+hU77HK
	7+3moBnVuEZLOnARJM8CaHSaEnLkqvSyL+HP1DKNBAa4SgR/BGk7XT4paoQc06Co5HgO
	qTbgEFME/Zmw/qPUHJJuD5F5SZ3f6W6sn63YXuco53U4U3zhGs4aHu5OtG7zSvl9G+5q
	QK1By4PiKKx4tYpCK/nhQOx/NlBUPbfc2lS/4aoslSfRPEM9+XooEUNSDmRXda9LiAH/
	fjzg==
X-Gm-Message-State: ABuFfojf1PZ6cNMeHlRBhdtGPbx/nnqp4S3565Bgszm9vBtr7Nrw5U5W
	K1Z61oTEM/ud1EVH4Hreo84ohmzdZL+WkR0HcpaMYg==
X-Google-Smtp-Source: ACcGV601B+OspafUoT8YesrUutxqrwMYtadX+4kAMvQVcfSjdCOybFJzEg6vcIeMgm9+QfkKnpU3yDiofPa85KikxZI=
X-Received: by 2002:a9d:38f9:: with SMTP id k54mr2793738ote.135.1539319739553; 
	Thu, 11 Oct 2018 21:48:59 -0700 (PDT)
MIME-Version: 1.0
From: pawanKumar <pawan4749@gmail.com>
Date: Fri, 12 Oct 2018 10:16:50 +0530
Message-ID: <CALd6x_vpOXcH3sUTb4QJYu6T+fkiGT2R3fApA0N16RMXts8K6w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: PACKAGE_EXCLUDE not working
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
X-List-Received-Date: Fri, 12 Oct 2018 04:49:01 -0000
Content-Type: multipart/alternative; boundary="000000000000459ced057800ce5d"

--000000000000459ced057800ce5d
Content-Type: text/plain; charset="UTF-8"

Hi team,

I have added line PACKAGE_EXCLUDE=acl in local.conf to exclude the acl
packages, but it is not working.

Any help please how to exclude the acl packages.


Thanks,
Pavan


On Fri 12 Oct, 2018, 12:30 AM , <yocto-request@yoctoproject.org> wrote:

> Send yocto mailing list submissions to
>         yocto@yoctoproject.org
>
> To subscribe or unsubscribe via the World Wide Web, visit
>         https://lists.yoctoproject.org/listinfo/yocto
> or, via email, send a message with subject or body 'help' to
>         yocto-request@yoctoproject.org
>
> You can reach the person managing the list at
>         yocto-owner@yoctoproject.org
>
> When replying, please edit your Subject line so it is more specific
> than "Re: Contents of yocto digest..."
>
>
> Today's Topics:
>
>    1. Excluding Package: (pawanKumar)
>    2. [Yocto][poky][meta] already-stripped ignore if set for any
>       other package then INSANE_SKIP_${PN} (M?ns Zigher)
>
>
> ----------------------------------------------------------------------
>
> Message: 1
> Date: Thu, 11 Oct 2018 19:25:21 +0530
> From: pawanKumar <pawan4749@gmail.com>
> To: yocto@yoctoproject.org
> Subject: [yocto] Excluding Package:
> Message-ID:
>         <CALd6x_uaO3aypMYCqUA=
> Jpra_+EptuMdBkvfdJ0KMjjjo2zu8g@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi team,
>
> I'm using PACKAGE_EXCLUDE ="acl" to exclude the acl and complementary
> packages but it is not working.
>
> Can you provide solution how to exclude acl and complementary packages.
>
>
>
> Thanks,
> Pavan
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20181011/fb8a60ba/attachment-0001.html
> >
>
> ------------------------------
>
> Message: 2
> Date: Thu, 11 Oct 2018 19:08:25 +0200
> From: M?ns Zigher <mans.zigher@gmail.com>
> To: Yocto discussion list <yocto@yoctoproject.org>
> Subject: [yocto] [Yocto][poky][meta] already-stripped ignore if set
>         for any other package then INSANE_SKIP_${PN}
> Message-ID:
>         <CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=
> qcm1Eyy-mYABFcCdRA@mail.gmail.com>
> Content-Type: text/plain; charset="utf-8"
>
> Hi,
>
> I have been struggling with a problem where I need to create a package in a
> recipe and set already-stripped for that package. The package in question
> is not the the default one so I am trying to set it by using
>
> INSANE_SKIP_${PN} += " \
> dev-so \
> already-stripped \
> "
>
> But the result is like it ignore is it. The only way to get it to work is
> if I include the file in the default package and set already-stripped to
> INSANE_SKIP_${PN}. When looking at the code at package.bbclass this seems
> to be correct
>
> if 'already-stripped' in (d.getVar('INSANE_SKIP_' + pn) or "").split():
>
> Is this really the way it should work. I mean dev-so can be set per package
> in a recipe but is it not supported to set already-stripped per package? I
> am running rocko but could not set that this have be updated in sumo. The
> documentation doesn't describe this limitation either.
>
> BR
> M?ns Zigher
> -------------- next part --------------
> An HTML attachment was scrubbed...
> URL: <
> http://lists.yoctoproject.org/pipermail/yocto/attachments/20181011/cada21cf/attachment-0001.html
> >
>
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> End of yocto Digest, Vol 97, Issue 34
> *************************************
>

--000000000000459ced057800ce5d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div>Hi team,<div dir=3D"auto"><br></div><div dir=3D"auto=
">I have added line PACKAGE_EXCLUDE=3Dacl in local.conf to exclude the acl =
packages, but it is not working.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Any help please how to exclude the acl packages.</div><div dir=3D=
"auto"><br></div><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks,</div=
><div dir=3D"auto">Pavan</div><br><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Fri 12 Oct, 2018, 12:30 AM , &lt;<a href=3D"mailto:yocto-reques=
t@yoctoproject.org">yocto-request@yoctoproject.org</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Send yocto mailing list submissions to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto@yoctoproject.org" targe=
t=3D"_blank" rel=3D"noreferrer">yocto@yoctoproject.org</a><br>
<br>
To subscribe or unsubscribe via the World Wide Web, visit<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://lists.yoctoproject.org/listi=
nfo/yocto" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/listinfo/yocto</a><br>
or, via email, send a message with subject or body &#39;help&#39; to<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-request@yoctoproject.or=
g" target=3D"_blank" rel=3D"noreferrer">yocto-request@yoctoproject.org</a><=
br>
<br>
You can reach the person managing the list at<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"mailto:yocto-owner@yoctoproject.org"=
 target=3D"_blank" rel=3D"noreferrer">yocto-owner@yoctoproject.org</a><br>
<br>
When replying, please edit your Subject line so it is more specific<br>
than &quot;Re: Contents of yocto digest...&quot;<br>
<br>
<br>
Today&#39;s Topics:<br>
<br>
=C2=A0 =C2=A01. Excluding Package: (pawanKumar)<br>
=C2=A0 =C2=A02. [Yocto][poky][meta] already-stripped ignore if set for any<=
br>
=C2=A0 =C2=A0 =C2=A0 other package then INSANE_SKIP_${PN} (M?ns Zigher)<br>
<br>
<br>
----------------------------------------------------------------------<br>
<br>
Message: 1<br>
Date: Thu, 11 Oct 2018 19:25:21 +0530<br>
From: pawanKumar &lt;<a href=3D"mailto:pawan4749@gmail.com" target=3D"_blan=
k" rel=3D"noreferrer">pawan4749@gmail.com</a>&gt;<br>
To: <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nore=
ferrer">yocto@yoctoproject.org</a><br>
Subject: [yocto] Excluding Package:<br>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CALd6x_uaO3aypMYCqUA=3D<a href=3D"mailto:Jp=
ra_%2BEptuMdBkvfdJ0KMjjjo2zu8g@mail.gmail.com" target=3D"_blank" rel=3D"nor=
eferrer">Jpra_+EptuMdBkvfdJ0KMjjjo2zu8g@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi team,<br>
<br>
I&#39;m using PACKAGE_EXCLUDE =3D&quot;acl&quot; to exclude the acl and com=
plementary<br>
packages but it is not working.<br>
<br>
Can you provide solution how to exclude acl and complementary packages.<br>
<br>
<br>
<br>
Thanks,<br>
Pavan<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20181011/fb8a60ba/attachment-0001.html" rel=3D"noreferrer noreferrer" ta=
rget=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachments/2=
0181011/fb8a60ba/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
Message: 2<br>
Date: Thu, 11 Oct 2018 19:08:25 +0200<br>
From: M?ns Zigher &lt;<a href=3D"mailto:mans.zigher@gmail.com" target=3D"_b=
lank" rel=3D"noreferrer">mans.zigher@gmail.com</a>&gt;<br>
To: Yocto discussion list &lt;<a href=3D"mailto:yocto@yoctoproject.org" tar=
get=3D"_blank" rel=3D"noreferrer">yocto@yoctoproject.org</a>&gt;<br>
Subject: [yocto] [Yocto][poky][meta] already-stripped ignore if set<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 for any other package then INSANE_SKIP_${PN}<br=
>
Message-ID:<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 &lt;CAEhQi8khYYi3O5MZVxhfM4BJS_meR4w=3D<a href=
=3D"mailto:qcm1Eyy-mYABFcCdRA@mail.gmail.com" target=3D"_blank" rel=3D"nore=
ferrer">qcm1Eyy-mYABFcCdRA@mail.gmail.com</a>&gt;<br>
Content-Type: text/plain; charset=3D&quot;utf-8&quot;<br>
<br>
Hi,<br>
<br>
I have been struggling with a problem where I need to create a package in a=
<br>
recipe and set already-stripped for that package. The package in question<b=
r>
is not the the default one so I am trying to set it by using<br>
<br>
INSANE_SKIP_${PN} +=3D &quot; \<br>
dev-so \<br>
already-stripped \<br>
&quot;<br>
<br>
But the result is like it ignore is it. The only way to get it to work is<b=
r>
if I include the file in the default package and set already-stripped to<br=
>
INSANE_SKIP_${PN}. When looking at the code at package.bbclass this seems<b=
r>
to be correct<br>
<br>
if &#39;already-stripped&#39; in (d.getVar(&#39;INSANE_SKIP_&#39; + pn) or =
&quot;&quot;).split():<br>
<br>
Is this really the way it should work. I mean dev-so can be set per package=
<br>
in a recipe but is it not supported to set already-stripped per package? I<=
br>
am running rocko but could not set that this have be updated in sumo. The<b=
r>
documentation doesn&#39;t describe this limitation either.<br>
<br>
BR<br>
M?ns Zigher<br>
-------------- next part --------------<br>
An HTML attachment was scrubbed...<br>
URL: &lt;<a href=3D"http://lists.yoctoproject.org/pipermail/yocto/attachmen=
ts/20181011/cada21cf/attachment-0001.html" rel=3D"noreferrer noreferrer" ta=
rget=3D"_blank">http://lists.yoctoproject.org/pipermail/yocto/attachments/2=
0181011/cada21cf/attachment-0001.html</a>&gt;<br>
<br>
------------------------------<br>
<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"noreferr=
er">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
<br>
<br>
End of yocto Digest, Vol 97, Issue 34<br>
*************************************<br>
</blockquote></div></div></div>

--000000000000459ced057800ce5d--
