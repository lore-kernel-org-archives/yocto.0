Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2BC4E0077F; Wed,  6 Apr 2016 08:36:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E811E0048B
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 08:36:56 -0700 (PDT)
Received: by mail-ig0-f177.google.com with SMTP id g8so45526634igr.0
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 08:36:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mxXnCuGrnrML7Xq8yV9QkiR8ff+P7ys0PZhPThSG5Gg=;
	b=eDUq6/vh5w3eyr1iCsG3Cerk/kiqLNdxmOe8hTk0dp3b/QwIsww/JrKnJl2zPAuq1G
	B9GnC47byC3Pw78GUB/Qd1vFwSKiw8xJs6nS9D69Krkde4cQpuU9y6STvLx64uXBm1Nf
	SW9RLcHBP/92S7YXdF5usGh8KXlTnieSImsn7e3b24dhWt4GyXtzsoMQz62FznXEGmHr
	AflOFpSHUh4M+Snt4FElVmEbLbhPgnSnVeIMePG5M+nuzB0jCHZYgmL+CHjCr7NI6Po4
	Rc84wsLfir2bVZvD/ArdkS5dkTdyUQ+cxEZeeR2EQ/I8bMzbtwjHx3TkH3iwY6ULElW0
	d46w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mxXnCuGrnrML7Xq8yV9QkiR8ff+P7ys0PZhPThSG5Gg=;
	b=jKWzc1SW7w18CsZc7aiqvu5DwGysDIvLuysJFTYOmwvIIrMZvoDmUS3q1NcZ118zlG
	HfuozztcuRCEX+um8xs4lJOJuI5Vm8s4Tgy+Oa+BnvcY3F4i8oHGXgqb/7lvzKT1RfL1
	FM43Vll5ZMuex15uGSQNnAaNrg9tky1pJSBg1+27EbtWZ+lhD/OdQCE2T+uVbt2Y/0Kx
	3dvSj4fAgeQ/sXSVJVEqvN6gUDf9MT2fmT4LZvwwd/dmB2OnjLHUDb1OngB8vILheirP
	ggoIM+vN+Zzxo/m+jrnenkYftvYF9t88j+JklM3eqGP/RaOAnSihNkDDkY3zWY0Mp5Jm
	GBaQ==
X-Gm-Message-State: AD7BkJIIwS0JF7GePtnpQmORnU33xPUpIbRVErZgjP66jaXLSDWSVzACd7JfL+Noh5IVdVAqs4V8aMxUzxcH6HJR
X-Received: by 10.50.27.106 with SMTP id s10mr21441940igg.64.1459957016148;
	Wed, 06 Apr 2016 08:36:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Wed, 6 Apr 2016 08:36:36 -0700 (PDT)
In-Reply-To: <CALRMKQri=KgPhxk-0iTUxD59PU-K0i6bfvcxkVF6i_J7UX_Agw@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
	<CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
	<CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
	<CALRMKQrWwR03YyenAefS1GaPQ34GhmRCz0r5GS=rR+1gx45Jqg@mail.gmail.com>
	<CAJTo0LYYRHjZGezVmKBzhv9tEtEJmAEDdMPGMCmcFy==xQVOXQ@mail.gmail.com>
	<CALRMKQri=KgPhxk-0iTUxD59PU-K0i6bfvcxkVF6i_J7UX_Agw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 6 Apr 2016 16:36:36 +0100
Message-ID: <CAJTo0LYQO0GhOL1otLHBj7QR-b2uAxqH+CQjac_5DZT6R2_Zug@mail.gmail.com>
To: Ronald Oakes <ronaldo@brc2.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Wed, 06 Apr 2016 15:37:00 -0000
Content-Type: multipart/alternative; boundary=047d7b10cabd55ff4b052fd2bba6

--047d7b10cabd55ff4b052fd2bba6
Content-Type: text/plain; charset=UTF-8

On 6 April 2016 at 15:27, Ronald Oakes <ronaldo@brc2.com> wrote:

> Unfortunately, my build system is airgapped from the Internet, making
> copying files into emails (or attaching them) extremely difficult.
>

Can you not put them on a USB stick?

Ross

--047d7b10cabd55ff4b052fd2bba6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 6 April 2016 at 15:27, Ronald Oakes <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ronaldo@brc2.com" target=3D"_blank">ronaldo@brc2.com</a>&gt;</span> wro=
te:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-=
left:1px #ccc solid;padding-left:1ex"><div id=3D":8ts" class=3D"a3s" style=
=3D"overflow:hidden">Unfortunately, my build system is airgapped from the I=
nternet, making<br>
copying files into emails (or attaching them) extremely difficult.<br></div=
></blockquote></div><br>Can you not put them on a USB stick?</div><div clas=
s=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--047d7b10cabd55ff4b052fd2bba6--
