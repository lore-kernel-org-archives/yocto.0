Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2540BE00B6F; Sun, 31 Jan 2016 07:57:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, T_REMOTE_IMAGE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE098E00B66
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 07:57:14 -0800 (PST)
Received: by mail-ig0-f181.google.com with SMTP id ik10so20250479igb.1
	for <yocto@yoctoproject.org>; Sun, 31 Jan 2016 07:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=inMxDK8QbjPwgSqUJ9+yxdbjza+o0vry/4T9SO7qZ0o=;
	b=WSoK7HO/I3MJfjbPc3AdstZ3pZI/qB3vRuMGMboxIWJwQgoJSJKwrgMr6qNZGJ79kh
	jHiDG8KpIp8ZgAGYyHcPnwdEQlK/FOsgCSNv+ujphpPCuQvjmh+OStZSvCeb9KKq6dhi
	fz15xahxACunbVc4R/QS6EksL9veS9HuQIjl+r1al2NmjKb8+GfIGUh9sVrSp7ekhpVi
	0Y8lCqf2Wy3QuR//Cy2S0qtYi6/yyEOivDSn1C0+GVTg5pxdk9mlYSvM0Q0lAunJ5exq
	f+T9P4+Ylo55A+Y+jRaqmG6BuJcSfrcPNHH5XWS+UGReTOmvZrsD9cApiGqMNmaKtRh+
	Jopg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=inMxDK8QbjPwgSqUJ9+yxdbjza+o0vry/4T9SO7qZ0o=;
	b=GEESiJB9q6PxRpDOhbPCfC204I86LcV4Y/dyggwbm1qSv3xfODyqQwce9AOZuRExtU
	IJoNLQoNBhUc5Rx9bt78EAGzPOVp/lnRDZ2qmYqtoGUty4rmF5WnL+M+30WGJRUATWyN
	NpnP0w8dnRk+dFWbID/vdZAXu/t9R0zBpXhycAZKZ+Obxj07lqyUyECeE46mN3qEuWYs
	44USYCOKyGcAhE8ZMf0HHz/4WNpWOevU/X1BqL1mPK0jmn8S6KieAylRSgu/fSK8/0rX
	sLay69kP9899l+aOwr/JNejyOYOLDlco58HAYo5cM8s6vhZ503I/q8hH4BqUAWIYamuv
	KQ1A==
X-Gm-Message-State: AG10YOTKDuMG+VUDYKbq2l4cGD+fX2uJc9ZKkYcsQff5Rp1ftmgNElESjoHv5L30aYYs70cPC5uVsd5UMm4SpQ==
X-Received: by 10.50.141.226 with SMTP id rr2mr5992812igb.75.1454255833754;
	Sun, 31 Jan 2016 07:57:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Sun, 31 Jan 2016 07:56:44 -0800 (PST)
In-Reply-To: <VI1PR03MB15676A1DE3EB2E80783D2D79DADD0@VI1PR03MB1567.eurprd03.prod.outlook.com>
References: <VI1PR03MB15676A1DE3EB2E80783D2D79DADD0@VI1PR03MB1567.eurprd03.prod.outlook.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 31 Jan 2016 07:56:44 -0800
Message-ID: <CAMKF1srExY59jqjN5LNxsiHsH7P+wuuGKSVp8D+hQoMqmupJbw@mail.gmail.com>
To: Kosta Zertsekel <kzertsekel@mrv.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Ran Wainstein <rwainstein@mrv.com>
Subject: Re: Yocto for NFS/SDN networking product
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
X-List-Received-Date: Sun, 31 Jan 2016 15:57:20 -0000
Content-Type: multipart/alternative; boundary=089e013a0108623523052aa35288

--089e013a0108623523052aa35288
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Kosta

Yocto project is developed by many volunteers and people sponsored by
corporations, all development happens in opensource. The community supports
the project. There are also lot of commercial OS vendors
which use Yocto project to build their products, so you can always go to
them if you are looking for commercial support.

For advantages, it can build a small footprint since it builds bottom up.
So you can really get only needed
packages for your custom image. It will create a source based distribution
for you where you have control over every part of the OSS stack. You can
really tailor your solution to your needs.

It builds in cross-build environment, supports many CPU architectures and
machines

=E2=80=8BThe community is very welcoming and helpful. You can easily contri=
bute to
the project and fulfil your needs by doing so.

The learning curve might be a bit steeper. but then you do have trainings
available offerred by professionals.

Thanks
-Khem
=E2=80=8B
On Sun, Jan 31, 2016 at 4:22 AM, Kosta Zertsekel <kzertsekel@mrv.com> wrote=
:

> Hi dear Yocto community,
>
>
> I'm trying to evaluate Yocto as the candidate to create Linux distro
>
> for NFS/SDN networking product. Through Google I get an impression
>
> that there is a race between Yocto, CentOS (RedHat) and 6WIND
>
> Linux distributions to get most of NFV/SDN Linux distro market.
>
>
> Can you please help to find cons and pros of using Yocto for
>
> NFV/SDN networking product?
>
>
> I google over NFV/SDN part of www.etsi.org but couldn't make up
>
> my mind what specific distro got the traction.
>
>
> I see that Yocto has NFV/SDN layers (reference
> <http://events.linuxfoundation.org/sites/events/files/slides/YP_and_OpenS=
tack_LinuxCon2014.pdf>
> ):
>
> ```
> git clone git://git.yoctoproject.org/meta-cloud-services
> git clone git://git.openembedded.org/meta-openembedded
> git clone --branch icehouse git://git.yoctoproject.org/meta-virtualizatio=
n
> git clone git://git.openembedded.org/openembedded-core oe-core
> ```
>
> Are these layers officially supported by Intel?
>
> Does Intel provide the NFV/SDN support?
>
>
> Thanks,
>
> --- KostaZ
> [image: E-Banner] <http://www.mrv.com/blog>
>
>
> MRV Communications is a global supplier of packet and optical solutions
> that power the world=E2=80=99s largest networks. Our products combine inn=
ovative
> hardware with intelligent software to make networks smarter, faster and
> more efficient.
>
>
> The contents of this message, together with any attachments, are intended
> only for the use of the person(s) to whom they are addressed and may
> contain confidential and/or privileged information. If you are not the
> intended recipient, immediately advise the sender, delete this message an=
d
> any attachments and note that any distribution, or copying of this messag=
e,
> or any attachment, is prohibited.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--089e013a0108623523052aa35288
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:georgia,=
serif">Kosta</div><div class=3D"gmail_default" style=3D"font-family:georgia=
,serif"><br></div><div class=3D"gmail_default" style=3D"font-family:georgia=
,serif">Yocto project is developed by many volunteers and people sponsored =
by corporations, all development happens in opensource. The community suppo=
rts the project. There are also lot of commercial OS vendors</div><div clas=
s=3D"gmail_default" style=3D"font-family:georgia,serif">which use Yocto pro=
ject to build their products, so you can always go to them if you are looki=
ng for commercial support.=C2=A0</div><div class=3D"gmail_default" style=3D=
"font-family:georgia,serif"><br></div><div class=3D"gmail_default" style=3D=
"font-family:georgia,serif">For advantages, it can build a small footprint =
since it builds bottom up. So you can really get only needed</div><div clas=
s=3D"gmail_default" style=3D"font-family:georgia,serif">packages for your c=
ustom image. It will create a source based distribution for you where you h=
ave control over every part of the OSS stack. You can really tailor your so=
lution to your needs.</div><div class=3D"gmail_default" style=3D"font-famil=
y:georgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-famil=
y:georgia,serif">It builds in cross-build environment, supports many CPU ar=
chitectures and machines</div><div class=3D"gmail_extra"><br></div><div cla=
ss=3D"gmail_extra"><div class=3D"gmail_default" style=3D"font-family:georgi=
a,serif">=E2=80=8BThe community is very welcoming and helpful. You can easi=
ly contribute to the project and fulfil your needs by doing so.</div><div c=
lass=3D"gmail_default" style=3D"font-family:georgia,serif"><br></div><div c=
lass=3D"gmail_default" style=3D"font-family:georgia,serif">The learning cur=
ve might be a bit steeper. but then you do have trainings available offerre=
d by professionals.</div><div class=3D"gmail_default" style=3D"font-family:=
georgia,serif"><br></div><div class=3D"gmail_default" style=3D"font-family:=
georgia,serif">Thanks</div><div class=3D"gmail_default" style=3D"font-famil=
y:georgia,serif">-Khem =C2=A0</div><div class=3D"gmail_default" style=3D"fo=
nt-family:georgia,serif">=E2=80=8B</div></div><div class=3D"gmail_extra"><d=
iv class=3D"gmail_quote">On Sun, Jan 31, 2016 at 4:22 AM, Kosta  Zertsekel =
<span dir=3D"ltr">&lt;<a href=3D"mailto:kzertsekel@mrv.com" target=3D"_blan=
k">kzertsekel@mrv.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x">




<div dir=3D"ltr">
<div style=3D"font-size:12pt;color:#000000;background-color:#ffffff;font-fa=
mily:Calibri,Arial,Helvetica,sans-serif">
<p>Hi dear Yocto community,</p>
<p><br>
</p>
<p>I&#39;m trying to evaluate Yocto as the candidate to create=C2=A0Linux d=
istro</p>
<p>for NFS/SDN networking product. Through Google I get an impression</p>
<p>that there is a race between Yocto, CentOS (RedHat) and 6WIND</p>
<p>Linux distributions=C2=A0<span style=3D"font-size:12pt">to get most of N=
FV/SDN Linux distro=C2=A0market.</span></p>
<p><br>
</p>
<p>Can you please help to find cons and pros of using Yocto for</p>
<p>NFV/SDN networking product?</p>
<p><br>
</p>
<p>I google over NFV/SDN part of=C2=A0<a href=3D"http://www.etsi.org" title=
=3D"http://www.etsi.org
Ctrl+Click or tap to follow the link" target=3D"_blank">www.etsi.org</a>=C2=
=A0but couldn&#39;t make up</p>
<p>my mind what specific=C2=A0distro got the=C2=A0traction.</p>
<p><br>
</p>
<p>I see that Yocto has NFV/SDN layers (<a href=3D"http://events.linuxfound=
ation.org/sites/events/files/slides/YP_and_OpenStack_LinuxCon2014.pdf" titl=
e=3D"http://events.linuxfoundation.org/sites/events/files/slides/YP_and_Ope=
nStack_LinuxCon2014.pdf
Ctrl+Click or tap to follow the link" target=3D"_blank">reference</a>):</p>
<p></p>
<div>```<br>
</div>
<div>git clone git://<a href=3D"http://git.yoctoproject.org/meta-cloud-serv=
ices" target=3D"_blank">git.yoctoproject.org/meta-cloud-services</a><br>
</div>
<div>git clone git://<a href=3D"http://git.openembedded.org/meta-openembedd=
ed" target=3D"_blank">git.openembedded.org/meta-openembedded</a></div>
<div>git clone --branch icehouse git://<a href=3D"http://git.yoctoproject.o=
rg/meta-virtualization" target=3D"_blank">git.yoctoproject.org/meta-virtual=
ization</a><br>
</div>
<div>git clone git://<a href=3D"http://git.openembedded.org/openembedded-co=
re" target=3D"_blank">git.openembedded.org/openembedded-core</a> oe-core<br=
>
</div>
<div>```<br>
</div>
<br>
<p></p>
<p>Are these layers officially supported by Intel?<br>
</p>
<p>Does Intel provide the NFV/SDN support?<br>
</p>
<p><br>
</p>
<p>Thanks,</p>
<p>--- KostaZ</p>
</div>
<a href=3D"http://www.mrv.com/blog" target=3D"_blank"><img alt=3D"E-Banner"=
></a><br>
=C2=A0<br>
<div style=3D"background-color:#ffffff;padding:.8em">
<p style=3D"font-size:10pt;color:#b8b9c8;line-height:8pt;font-family:&#39;a=
rial&#39;,&#39;times roman&#39;,serif">
MRV Communications is a global supplier of packet and optical solutions tha=
t power the world=E2=80=99s largest networks. Our products combine innovati=
ve hardware with intelligent software to make networks smarter, faster and =
more efficient.</p>
</div>
=C2=A0<br>
<div style=3D"background-color:#ffffff;padding:.8em">
<p style=3D"font-size:8pt;color:#b8b9c8;line-height:8pt;font-family:&#39;ar=
ial&#39;,&#39;times roman&#39;,serif">
The contents of this message, together with any attachments, are intended o=
nly for the use of the person(s) to whom they are addressed and may contain=
 confidential and/or privileged information. If you are not the intended re=
cipient, immediately advise the
 sender, delete this message and any attachments and note that any distribu=
tion, or copying of this message, or any attachment, is prohibited.</p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--089e013a0108623523052aa35288--
