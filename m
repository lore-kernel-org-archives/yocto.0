Return-Path: <jacob.kroon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 70401E00571; Wed,  7 Jan 2015 10:52:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacob.kroon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f174.google.com (mail-lb0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A0E3E002F9
	for <yocto@yoctoproject.org>; Wed,  7 Jan 2015 10:52:57 -0800 (PST)
Received: by mail-lb0-f174.google.com with SMTP id 10so1589712lbg.5
	for <yocto@yoctoproject.org>; Wed, 07 Jan 2015 10:52:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=liVgUv6+F0K0voGbp+F31m7wyo6t4EV1LOQqvwQm4so=;
	b=Aw3VSD4hPpB8ZiYul9ugaINGKBe9A9l84FIFH8LB00rWkwWGVMEpeDT8iuTu7b92IW
	A+PvvvILV7kxhZne/zjjWHmcqluIwlTI5Pe/SN53OWncURyM+5LP176Up5vniH1KzuEN
	pk+N3eLRFgyG11PL4B0DFl8U0YfqtpfLYiHjRqaTYe0jXPbDUOZPVPT6mGHGW0clNWid
	CV+LeXpMa0/pOx5N4nGkwcX8gN8r8tMEjlAvXDSWmv/KjR/TSxInyM2ijTHy/LBmrI6z
	g4kuPPcJCG4er/RAZfYR9zz92s+vbsA88o40ckP5R2Vt68OMTLx3JaGL3FijgvYeSQeS
	vxwA==
MIME-Version: 1.0
X-Received: by 10.152.207.37 with SMTP id lt5mr7266073lac.66.1420656771608;
	Wed, 07 Jan 2015 10:52:51 -0800 (PST)
Received: by 10.25.155.18 with HTTP; Wed, 7 Jan 2015 10:52:51 -0800 (PST)
In-Reply-To: <573D0D80-1040-45E4-A918-32324FFAE45D@gmail.com>
References: <CAE_REAuUO358xnPwCcaApwwcz_vb3sW60bouATcV4xBu_riAOg@mail.gmail.com>
	<573D0D80-1040-45E4-A918-32324FFAE45D@gmail.com>
Date: Wed, 7 Jan 2015 19:52:51 +0100
Message-ID: <CAPbeDCmL40fUQ0zLr7xGR=UraZhDEMCjTSHS1eps4wLWH6_1hg@mail.gmail.com>
From: Jacob Kroon <jacob.kroon@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Want to add native-gcc in SDK tar ball
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
X-List-Received-Date: Wed, 07 Jan 2015 18:52:59 -0000
Content-Type: multipart/alternative; boundary=001a113455da3836b6050c146ed1

--001a113455da3836b6050c146ed1
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 7, 2015 at 7:36 PM, Khem Raj <raj.khem@gmail.com> wrote:

>
> On Jan 7, 2015, at 6:57 AM, Gaurang Shastri <gmshastri@gmail.com> wrote:
>
> Hi,
>
> Has anyone try to add native-gcc as part of SDK tarball ? Is it possible ?
>
> My aim is to have "gcc" (along with cross-gcc) as part of SDK.
>
>
> you can add tools-dk to EXTRA_IMAGE_FEATURES in local.conf or some other
> config metadata
> then bitbake -cpopulate_sdk <your image>
>
>
I thought "tools-sdk" was for enabling compiling natively on $MACHINE ?
This request seems to be about getting a gcc for compiling natively on
$SDKMACHINE, would "tools-sdk" help here too ?

--001a113455da3836b6050c146ed1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On W=
ed, Jan 7, 2015 at 7:36 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"=
><br><div><span class=3D""><blockquote type=3D"cite"><div>On Jan 7, 2015, a=
t 6:57 AM, Gaurang Shastri &lt;<a href=3D"mailto:gmshastri@gmail.com" targe=
t=3D"_blank">gmshastri@gmail.com</a>&gt; wrote:</div><br><div><div dir=3D"l=
tr"><div><div><div>Hi,<br><br></div>Has anyone try to add native-gcc as par=
t of SDK tarball ? Is it possible ?<br><br></div>My aim is to have &quot;gc=
c&quot; (along with cross-gcc) as part of SDK. <br></div></div></div></bloc=
kquote><div><br></div></span><div>you can add tools-dk to=C2=A0<span style=
=3D"font-family:&#39;Liberation Mono&#39;">EXTRA_IMAGE_FEATURES in=C2=A0</s=
pan><font face=3D"Liberation Mono">local.conf or some other</font></div><di=
v><font face=3D"Liberation Mono">config metadata</font></div>then bitbake -=
cpopulate_sdk &lt;your image&gt;</div><div><br></div></div></blockquote><br=
></div>I thought &quot;tools-sdk&quot; was for enabling compiling natively =
on $MACHINE ?<br></div><div class=3D"gmail_extra">This request seems to be =
about getting a gcc for compiling natively on $SDKMACHINE, would &quot;tool=
s-sdk&quot; help here too ?<br><br></div></div>

--001a113455da3836b6050c146ed1--
