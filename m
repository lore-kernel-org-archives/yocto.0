Return-Path: <navani.srivastava@gmail.com>
Received: from mail-oa0-f44.google.com (mail-oa0-f44.google.com
	[209.85.219.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4531EE01473
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 01:42:46 -0700 (PDT)
Received: by mail-oa0-f44.google.com with SMTP id h1so3154546oag.17
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 01:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=WFYN3Ydbw2L7Bqn4jveI0eQOZthotcPmQxUkOCg8kCk=;
	b=AhGjRaSjeOnujvfhVJWCWTxZuVpKjw5LflBD3CHkn6C2cZsLLXcBU27P8I1CerYdzB
	m16mYMJtfF1ueMKO3ZfNuqxGGEZ0xrvz0nwX2UiHA0LUDXF9WdmVJzriLm6OsVfkc3JJ
	qKYiG3M+GpXlPBpnMRLxyLunMehOAbJW8kFOfjuSpOsHu2Y8VX+5vHNU1nY1Izw56Ttu
	KywIBX8Qy7+NETrU/OfdxcrzpjuGIFiLvBCAwC2HW+s24UXw3PGLgsN+JW5Th5glNmf8
	dQlmJsMebd7WhvGt+2A2LrsEbekYT72J+gvRAuZ2WfrrOQSXWnGqycWplnp+1f+8CovY
	+sAA==
MIME-Version: 1.0
X-Received: by 10.60.7.67 with SMTP id h3mr2583363oea.69.1363336965474; Fri,
	15 Mar 2013 01:42:45 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Fri, 15 Mar 2013 01:42:45 -0700 (PDT)
Received: by 10.182.121.99 with HTTP; Fri, 15 Mar 2013 01:42:45 -0700 (PDT)
In-Reply-To: <1B03475D-B706-43D2-A25F-DCB9B0DAF68F@gmail.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE1B6F3998@POCITMSEXMB05.LntUniverse.com>
	<CA+Z6RkUxVBDJqRT0kcwyqNROhjVsxKkRugB3EMVWAadsDL2-Pw@mail.gmail.com>
	<1B03475D-B706-43D2-A25F-DCB9B0DAF68F@gmail.com>
Date: Fri, 15 Mar 2013 14:12:45 +0530
Message-ID: <CA+Z6RkUCNAaR_BTCmHQEGcNcAssuyJ6Kg7Rqp5vOwGpmuyUNzw@mail.gmail.com>
From: Navani Srivastava <navani.srivastava@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK creation
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
X-List-Received-Date: Fri, 15 Mar 2013 08:42:46 -0000
Content-Type: multipart/alternative; boundary=e89a8f9240788952d804d7f29f87

--e89a8f9240788952d804d7f29f87
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I tried giving
PREFERRED_PROVIDER_qt4_embedded ?= "4.8.1"

in machine configuration file but it didn't helped..
Any suggestions?
 On Mar 15, 2013 12:31 PM, "Khem Raj" <raj.khem@gmail.com> wrote:

>
> On Mar 15, 2013, at 12:06 AM, Navani Srivastava <
> navani.srivastava@gmail.com> wrote:
>
> Hi,
>
>  I wish to create SDK with meta-toolchain-qte recipe.  As two versions are
> provided by Poky-8.0. How can I direct compilation of SDK for
> qt4-embedded_4.8.1.bb ?
>
>
>
> use PREFERRED_VERSION to pin qt4-embedded to 4.8.1
>
>
>
> Right now I am getting following error-
>
> ERROR: Multiple .bb files are due to be built which each provide
> qt4-embedded (/home/user/danny/meta/recipes-qt/qt4/qt4-embedded_4.8.1.bb/home/user/danny/meta/recipes-qt/qt4/
> qt4-embedded_4.8.3.bb).
>
> Thanks and Regards
> Navani Kamal Srivastava
>  _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>

--e89a8f9240788952d804d7f29f87
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<p>Hi, </p>
<p>I tried giving<br>
 PREFERRED_PROVIDER_qt4_embedded ?=3D &quot;4.8.1&quot; </p>
<p>in machine configuration file but it didn&#39;t helped..<br>
Any suggestions?<br>
</p>
<div class=3D"gmail_quote">On Mar 15, 2013 12:31 PM, &quot;Khem Raj&quot; &=
lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<=
br type=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div style=3D"word-wrap:break-word"><br><div><div>On Mar 15, 2013, at 12:06=
 AM, Navani Srivastava &lt;<a href=3D"mailto:navani.srivastava@gmail.com" t=
arget=3D"_blank">navani.srivastava@gmail.com</a>&gt; wrote:</div><br><block=
quote type=3D"cite">
<p>Hi,</p><p>=A0I wish to create SDK with meta-toolchain-qte recipe.=A0 As =
two versions are provided by Poky-8.0. How can I direct compilation of SDK =
for <a href=3D"http://qt4-embedded_4.8.1.bb/" target=3D"_blank">qt4-embedde=
d_4.8.1.bb</a> ?</p>
<div><br></div></blockquote><div><br></div><div><br></div><div>use PREFERRE=
D_VERSION to pin qt4-embedded to 4.8.1</div><br><blockquote type=3D"cite"><=
div>=A0<br></div><p>Right now I am getting following error-</p><p>ERROR: Mu=
ltiple .bb files are due to be built which each provide qt4-embedded (/home=
/user/danny/meta/recipes-qt/qt4/<a href=3D"http://qt4-embedded_4.8.1.bb/" t=
arget=3D"_blank">qt4-embedded_4.8.1.bb</a> /home/user/danny/meta/recipes-qt=
/qt4/<a href=3D"http://qt4-embedded_4.8.3.bb/" target=3D"_blank">qt4-embedd=
ed_4.8.3.bb</a>).</p>
<p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>
_______________________________________________<br>yocto mailing list<br><a=
 href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoprojec=
t.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" targ=
et=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div></blockquote></div>

--e89a8f9240788952d804d7f29f87--
