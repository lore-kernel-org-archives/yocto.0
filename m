Return-Path: <pranap@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEA53E01472
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:17:12 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id 9so4040988iec.18
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2013 00:17:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:references:in-reply-to:mime-version
	:content-transfer-encoding:content-type:message-id:cc:x-mailer:from
	:subject:date:to;
	bh=m/dncCpTNlnwJ9dFeqMx4Bz41YHPFqpsfw62cZLVYEg=;
	b=cIe+ZafSWcf4HuhO20qsb2JMUIm++0/83pIXL8eqZzSI2zv7ULnOxQ8VvJpM9BflQf
	Rv77rTI6hhe5lffzjWiTcwR9WoetIMLV1pz8FCXM2AYpng15ohfb+29qwsv3wKaDjB+p
	YkzuOEoNT7vhBbg+DJfQzMQ9rh4I04xGbQj2O9+Dfzxq6LAMLzv//fkO2IeQG21eaV33
	vfqGrHWxygecDAfBuyumM7K/JS+fcg+3DLBw+7y+VT2/GY0dDxaVEEW99oSA+GCXqS7K
	SvcjvggaUKFbKvblUry7/FI8TWb3XaOlFWnpg27Pn4PbgHjXPWknpKwaY2R01Zfn0Mec
	XQGQ==
X-Received: by 10.50.135.8 with SMTP id po8mr591345igb.41.1363331832259;
	Fri, 15 Mar 2013 00:17:12 -0700 (PDT)
Received: from [172.20.10.228] ([207.170.195.34])
	by mx.google.com with ESMTPS id xd4sm914941igb.3.2013.03.15.00.17.10
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 15 Mar 2013 00:17:11 -0700 (PDT)
References: <9BACABF0C6B14A4D8C33B42A795119BE1B6F3998@POCITMSEXMB05.LntUniverse.com>
	<CA+Z6RkUxVBDJqRT0kcwyqNROhjVsxKkRugB3EMVWAadsDL2-Pw@mail.gmail.com>
In-Reply-To: <CA+Z6RkUxVBDJqRT0kcwyqNROhjVsxKkRugB3EMVWAadsDL2-Pw@mail.gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <7E022AA2-E447-4C9A-8186-5F19D3DFD859@gmail.com>
X-Mailer: iPhone Mail (9A405)
From: Prana <pranap@gmail.com>
Date: Fri, 15 Mar 2013 00:17:10 -0700
To: Navani Srivastava <navani.srivastava@gmail.com>
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
X-List-Received-Date: Fri, 15 Mar 2013 07:17:12 -0000
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary=Apple-Mail-218F7580-5E1E-4958-9DCA-BC1A55C2AFFA

--Apple-Mail-218F7580-5E1E-4958-9DCA-BC1A55C2AFFA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

Try adding this to your machine.conf
PREFERRED_VERSION_qt4-embedded =3D "4.8.1"
Thx,
Prana
On Mar 15, 2013, at 12:06 AM, Navani Srivastava <navani.srivastava@gmail.c=
om> wrote:

> Hi,
>=20
>  I wish to create SDK with meta-toolchain-qte recipe.  As two versions a=
re provided by Poky-8.0. How can I direct compilation of SDK for qt4-embedd=
ed_4.8.1.bb ?
>=20
>  
>=20
> Right now I am getting following error-
>=20
> ERROR: Multiple .bb files are due to be built which each provide qt4-emb=
edded (/home/user/danny/meta/recipes-qt/qt4/qt4-embedded_4.8.1.bb /home/use=
r/danny/meta/recipes-qt/qt4/qt4-embedded_4.8.3.bb).
>=20
> Thanks and Regards
> Navani Kamal Srivastava
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-218F7580-5E1E-4958-9DCA-BC1A55C2AFFA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head></head><body bgcolor=3D"#FFFFFF"><div>Try adding this to your m=
achine.conf</div><div><pre><font class=3D"Apple-style-span" face=3D"Helveti=
ca"><span class=3D"Apple-style-span" style=3D"white-space: normal;">PREFERR=
ED_VERSION_</span></font><font class=3D"Apple-style-span" color=3D"#000000"=
 face=3D"Helvetica" style=3D"white-space: normal; "><a href=3D"http://qt4-e=
mbedded_4.8.1.bb" style=3D"white-space: normal;">qt4-embedded</a>&nbsp;</fo=
nt><span class=3D"Apple-style-span" style=3D"font-family: Helvetica; white-=
space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -we=
bkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composi=
tion-frame-color: rgba(77, 128, 180, 0.230469); ">=3D "4.8.1"</span></pre><=
pre><span class=3D"Apple-style-span" style=3D"font-family: Helvetica; white=
-space: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -w=
ebkit-composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-compos=
ition-frame-color: rgba(77, 128, 180, 0.230469); ">Thx,</span></pre><pre><s=
pan class=3D"Apple-style-span" style=3D"font-family: Helvetica; white-space=
: normal; -webkit-tap-highlight-color: rgba(26, 26, 26, 0.296875); -webkit-=
composition-fill-color: rgba(175, 192, 227, 0.230469); -webkit-composition-=
frame-color: rgba(77, 128, 180, 0.230469); ">Prana</span></pre><br></div><d=
iv><br>On Mar 15, 2013, at 12:06 AM, Navani Srivastava &lt;<a href=3D"mailt=
o:navani.srivastava@gmail.com">navani.srivastava@gmail.com</a>&gt; wrote:<b=
r><br></div><div></div><blockquote type=3D"cite"><div><p>Hi,</p>
<p>&nbsp;I wish to create SDK with meta-toolchain-qte recipe.&nbsp; As two=
 versions are provided by Poky-8.0. How can I direct compilation of SDK for=
 <a href=3D"http://qt4-embedded_4.8.1.bb">qt4-embedded_4.8.1.bb</a> ?</p>
<p>&nbsp;</p>
<p>Right now I am getting following error-</p>
<p>ERROR: Multiple .bb files are due to be built which each provide qt4-em=
bedded (/home/user/danny/meta/recipes-qt/qt4/<a href=3D"http://qt4-embedded=
_4.8.1.bb">qt4-embedded_4.8.1.bb</a> /home/user/danny/meta/recipes-qt/qt4/<=
a href=3D"http://qt4-embedded_4.8.3.bb">qt4-embedded_4.8.3.bb</a>).</p>

<p>Thanks and Regards<br>
Navani Kamal Srivastava<br>
</p>
</div></blockquote><blockquote type=3D"cite"><div><span>__________________=
_____________________________</span><br><span>yocto mailing list</span><br>=
<span><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><=
/span><br><span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto">h=
ttps://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></blockquo=
te></body></html>

--Apple-Mail-218F7580-5E1E-4958-9DCA-BC1A55C2AFFA--
