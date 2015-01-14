Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22A05E00824; Tue, 13 Jan 2015 16:02:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.180 listed in list.dnswl.org]
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC051E003E3
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 16:02:26 -0800 (PST)
Received: by mail-we0-f180.google.com with SMTP id w62so5877923wes.11
	for <yocto@yoctoproject.org>; Tue, 13 Jan 2015 16:02:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=AcSqHr5rIs6DdRjmpcOMkon3vKQ6aflnWMCLPz3wLKQ=;
	b=WU4X76SrLmb8s8YPYrV8KRJ6q0EOd4oQUSzdWIahOyX2O4CviTgUDR4VJ6imoMJ3po
	qHEKS9zIJOMd4aA3b2ptDQ0U0SeIsfcuYt4qSrdVx81TigSgiAVKwtHl21iTxIvRmfyj
	ZMxpHuLdkNkGZKe6D/tjgkxAO2j9hAcpTPeRr+0Z0Q9ggFN+VP9dMsPESanEwhjD6mlf
	jvkWgtcNQ1pGg/Lc3zIILmk2MTfLsMRncrBYTmHv1gFiDH5vjC5GAp9WsYjPK/+t9jOm
	OWrwZ/bwkYhP1F+zru99qlHHLiOKEsL59BbD6MQWszGGLBYjw2q8tlFIsN2t3cNL+TN8
	u9aQ==
X-Gm-Message-State: ALoCoQmZYnmNcZUzzq3svWv+OW16TJlbVSQhOF8izyKFJhFSp2khXmXdMa99vhknT43+Og6Ry3Qx
X-Received: by 10.194.48.11 with SMTP id h11mr856594wjn.23.1421193745246; Tue,
	13 Jan 2015 16:02:25 -0800 (PST)
MIME-Version: 1.0
Received: by 10.216.107.132 with HTTP; Tue, 13 Jan 2015 16:02:05 -0800 (PST)
X-Originating-IP: [195.249.186.165]
In-Reply-To: <698759930.395474.1418701900246.JavaMail.yahoo@jws10940.mail.sg3.yahoo.com>
References: <698759930.395474.1418701900246.JavaMail.yahoo@jws10940.mail.sg3.yahoo.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 14 Jan 2015 01:02:05 +0100
Message-ID: <CAK18fxHsS6YmT1x8zNULqXoMDO=QQ+UcEi4CpTS95sUd7Lf=sA@mail.gmail.com>
To: abhishek srivastava <just_abhi22@yahoo.co.in>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: adding drivers to rpi-basic-image
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
X-List-Received-Date: Wed, 14 Jan 2015 00:02:39 -0000
Content-Type: multipart/alternative; boundary=047d7bacbd8257c21c050c9174ac

--047d7bacbd8257c21c050c9174ac
Content-Type: text/plain; charset=UTF-8

Hello

On Tue, Dec 16, 2014 at 4:51 AM, abhishek srivastava <
just_abhi22@yahoo.co.in> wrote:

> Hi all
> I have generated image for raspberrypi basic image rpi-basic-image using
> "hob"
>
> Now How can i add my TFT drivers or any other driver to the
> rpi-basic-image?
>
You have to change the kernel config and recompile kernel and image.


> I am also willing to know some more details on package importance in
> building raspberrypi image such that what those packages would do, if I add
> them to my image or how it helps?
>
What packages are you talking about? Be a little more specific.


> Actually I am into making a customized LINUX just for my target
> requirement so I want to be very specific on packages I am adding and why?
>
Please guide me.
>
> --
*Andrei Gherzan*

--047d7bacbd8257c21c050c9174ac
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello<br><div class=3D"gmail_extra"><br><div class=3D"gmai=
l_quote">On Tue, Dec 16, 2014 at 4:51 AM, abhishek srivastava <span dir=3D"=
ltr">&lt;<a href=3D"mailto:just_abhi22@yahoo.co.in" target=3D"_blank">just_=
abhi22@yahoo.co.in</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div><div style=3D"color:#000;background-color:#fff;font-family:HelveticaNe=
ue,Helvetica Neue,Helvetica,Arial,Lucida Grande,Sans-Serif;font-size:14px">=
<div dir=3D"ltr"><span>Hi all</span></div><div dir=3D"ltr"><span>I have gen=
erated image for raspberrypi basic image rpi-basic-image using &quot;hob&qu=
ot;</span></div><div dir=3D"ltr"><br><span></span></div><div dir=3D"ltr"><s=
pan>Now How can i add my TFT drivers or any other driver to the rpi-basic-i=
mage?</span></div></div></div></blockquote><div>You have to change the kern=
el config and recompile kernel and image.</div><div>=C2=A0</div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc soli=
d;padding-left:1ex"><div><div style=3D"color:#000;background-color:#fff;fon=
t-family:HelveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,Sans-Se=
rif;font-size:14px"><div dir=3D"ltr"><span>I am also willing to know some m=
ore details on package importance in building raspberrypi image such that w=
hat those packages would do, if I add them to my image or how it helps?<br>=
</span></div></div></div></blockquote><div>What packages are you talking ab=
out? Be a little more specific.</div><div>=C2=A0</div><blockquote class=3D"=
gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-=
left:1ex"><div><div style=3D"color:#000;background-color:#fff;font-family:H=
elveticaNeue,Helvetica Neue,Helvetica,Arial,Lucida Grande,Sans-Serif;font-s=
ize:14px"><div dir=3D"ltr"><span></span></div><div dir=3D"ltr"><span>Actual=
ly I am into making a customized LINUX just for my target requirement so I =
want to be very specific on packages I am adding and why?=C2=A0</span></div=
></div></div></blockquote><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div style=3D=
"color:#000;background-color:#fff;font-family:HelveticaNeue,Helvetica Neue,=
Helvetica,Arial,Lucida Grande,Sans-Serif;font-size:14px"><div dir=3D"ltr"><=
span>Please guide me.<br></span></div><div><div><br></div></div></div></div=
></blockquote></div>-- <br><div class=3D"gmail_signature"><div dir=3D"ltr">=
<div style=3D"text-align:center"></div><div style=3D"text-align:center"><di=
v align=3D"left"><b style=3D"font-family:Arial;font-size:small;color:rgb(51=
,51,51);text-align:center">Andrei Gherzan</b><br></div></div></div></div>
</div></div>

--047d7bacbd8257c21c050c9174ac--
