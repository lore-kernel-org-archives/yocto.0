Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF0EEE00C5B; Wed, 28 Nov 2018 16:27:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7BCCE009AA
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 16:27:57 -0800 (PST)
Received: by mail-qt1-f181.google.com with SMTP id n32so140759qte.11
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2018 16:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=D6Uvskqt7XCnJkvPFGIDw1B4ew7FAl6csGZ3yz3e7TQ=;
	b=kYUnfiQEojLRF3qJK7jZSsSLH981XYmqdg12yAZPfqMtXsZgGNZZvHJTvTGrMdA1sW
	JZ/0IoOmL7aKtqqibG+9nJcWLJR/AsAFznyWBNsFD3zZ+s8jIfJsagrV+PeVCoMQtcug
	qpuhlDkIWm8j358W2E4ZEZi0Nx68XBXUGbUWukRKj7hlNreag2VN+Wp742D60jkzMg5m
	JzjM2vsiu6iwv0kS7PtIa3V8Ezd7qDbOynJFyasO4+I7J04YIOV6ZUSq/yzn4W/WLwT1
	H5xSf1/AWALBJIn23r5tDtqBJf7s4MzBvHHXSO9z7sGAitvHMSm4x75wsHcuRgH2meQ9
	nVGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=D6Uvskqt7XCnJkvPFGIDw1B4ew7FAl6csGZ3yz3e7TQ=;
	b=i5syLSgAWGLXW09wBztifkflKb6qupViHwkaEi4RFguxzJhPjREVJIiRNQncS6oHvz
	LHU/tu/uUZ08ZmR/+se2iMt0YTogskU4guRp51NVKdmWIMj3ncEMMXrCsyhL3y8rqkxh
	10mUL+pTXZ81MpXI3pQpHMUZ1q3SscWb5RlInxZJ5fHnRM5HUjPMjHR/Vtw5jQ7oN4H4
	eCwi8d3N5J/c3UoJ7U6Zd3PLMT/D2Jkc2/Wax1E6KcP/6VAKJnGcuGDFXN3SgEA1CSFV
	ytak/mKysigS820n1hPbk3Nunw2GWTxPIqnWUkbbYwXQcGH42FEPseUTTliBMMEPpOPJ
	7ScA==
X-Gm-Message-State: AGRZ1gJeJtRkAlbIzEgahrZs3Ed0ZrFIjy2WEahpPOTlw9R667b4CyVM
	PKoxDuLtxEpiF6E4mN5+Wq1hPPEndmvPQj9y0T4=
X-Google-Smtp-Source: AJdET5eYIW9X8WXOtzfccuC0ZEWsoUsRFLun0/cAUH5+qo0Jfy2dymqGzhzFVmnRvy/QuuyxM8oYc/V4bPzA62KQJnE=
X-Received: by 2002:ac8:16d8:: with SMTP id y24mr37720497qtk.253.1543451277164;
	Wed, 28 Nov 2018 16:27:57 -0800 (PST)
MIME-Version: 1.0
References: <CAB=6tBRrH+BUNcQ4Hs_hyoNO8rP0VVbJkd5-tuE_yh6KYVn7HA@mail.gmail.com>
In-Reply-To: <CAB=6tBRrH+BUNcQ4Hs_hyoNO8rP0VVbJkd5-tuE_yh6KYVn7HA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 28 Nov 2018 16:27:45 -0800
Message-ID: <CAMKF1sopxUSG-unEX2Q=UPV13qKP248Gbd68f927jnxUACWvGw@mail.gmail.com>
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Thud - /lib64 link - Build Failure
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
X-List-Received-Date: Thu, 29 Nov 2018 00:27:59 -0000
Content-Type: multipart/alternative; boundary="0000000000001a8720057bc2c10f"

--0000000000001a8720057bc2c10f
Content-Type: text/plain; charset="UTF-8"

Can you try postprocess instead of preprocess

On Wed, Nov 28, 2018 at 4:10 PM Chuck Wolber <chuckwolber@gmail.com> wrote:

> Background: I have an image that works in pyro. I am migrating the image
> to thud.
>
> Some of the add-on code to our image requires the /lib64 directory (in
> particular the VirtualBox Additions). I have proven that a simple symlink
> (/lib -> /lib64) fixes the problem. This symlink was being applied with the
> following code at the very bottom of the image:
>
> IMAGE_PREPROCESS_COMMAND += "symlink_lib64; "
>
> symlink_lib64() {
>
>     ln -s /lib ${IMAGE_ROOTFS}/lib64
>
> }
>
>
> When I use that same code with Yocto thud, I get the following build error:
>
> DEBUG: Executing shell function prelink_image
>
> Size before prelinking 818112.
>
> /build/poky/tmp/work/qemux86_64-linux/common-os-image/1.0-r0/recipe-sysroot-native/usr/sbin/prelink:
> Could not record directory /lib/modules-load.d: No such file or directory
>
> WARNING: exit code 1 from a shell command.
>
>
> Looking at the image generation diagram here (
> https://www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.html#image-generation-dev-environment),
> it would seem to indicate that IMAGE_PREPROCESS_COMMAND runs after the
> linker steps in do_rootfs. So it is unclear why prelink is failing during
> the do_image phase.
>
> Where is the correct place to create a /lib -> /lib64 symlink in our image
> recipe?
>
> Thank you,
>
> ..Ch:W..
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000001a8720057bc2c10f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Can you try postprocess instead of preprocess</div><=
/div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed, Nov 28, 2=
018 at 4:10 PM Chuck Wolber &lt;<a href=3D"mailto:chuckwolber@gmail.com">ch=
uckwolber@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div dir=3D"ltr"><div>Background: I have an image that wor=
ks in pyro. I am migrating the image to thud.=C2=A0=C2=A0</div><div><br></d=
iv>Some of the add-on code to our image requires the /lib64 directory (in p=
articular the VirtualBox Additions). I have proven that a simple symlink (/=
lib -&gt; /lib64) fixes the problem. This symlink was being applied with th=
e following code at the very bottom of the image:<div><br></div><div><block=
quote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div>





<p class=3D"m_-2177198526732544936gmail-p1" style=3D"margin:0px;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-si=
ze:12px;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(40=
,254,20);background-color:rgba(0,0,0,0.9)"><span class=3D"m_-21771985267325=
44936gmail-s1" style=3D"font-variant-ligatures:no-common-ligatures">IMAGE_P=
REPROCESS_COMMAND +=3D &quot;symlink_lib64; &quot;</span></p>
<p class=3D"m_-2177198526732544936gmail-p1" style=3D"margin:0px;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-si=
ze:12px;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(40=
,254,20);background-color:rgba(0,0,0,0.9)"><span class=3D"m_-21771985267325=
44936gmail-s1" style=3D"font-variant-ligatures:no-common-ligatures">symlink=
_lib64() {</span></p>
<p class=3D"m_-2177198526732544936gmail-p1" style=3D"margin:0px;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-si=
ze:12px;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(40=
,254,20);background-color:rgba(0,0,0,0.9)"><span class=3D"m_-21771985267325=
44936gmail-s1" style=3D"font-variant-ligatures:no-common-ligatures"><span c=
lass=3D"m_-2177198526732544936gmail-Apple-converted-space">=C2=A0 =C2=A0 </=
span>ln -s /lib ${IMAGE_ROOTFS}/lib64</span></p>
<p class=3D"m_-2177198526732544936gmail-p1" style=3D"margin:0px;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-si=
ze:12px;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(40=
,254,20);background-color:rgba(0,0,0,0.9)"><span class=3D"m_-21771985267325=
44936gmail-s1" style=3D"font-variant-ligatures:no-common-ligatures">}</span=
></p></div></blockquote><div><br></div><div>When I use that same code with =
Yocto thud, I get the following build error:</div><div><br></div></div><blo=
ckquote style=3D"margin:0px 0px 0px 40px;border:none;padding:0px"><div><div=
>





<p class=3D"m_-2177198526732544936gmail-p1" style=3D"margin:0px;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-si=
ze:12px;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(40=
,254,20);background-color:rgba(0,0,0,0.9)"><span class=3D"m_-21771985267325=
44936gmail-s1" style=3D"font-variant-ligatures:no-common-ligatures">DEBUG: =
Executing shell function prelink_image</span></p>
<p class=3D"m_-2177198526732544936gmail-p1" style=3D"margin:0px;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-si=
ze:12px;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(40=
,254,20);background-color:rgba(0,0,0,0.9)"><span class=3D"m_-21771985267325=
44936gmail-s1" style=3D"font-variant-ligatures:no-common-ligatures">Size be=
fore prelinking 818112.</span></p>
<p class=3D"m_-2177198526732544936gmail-p1" style=3D"margin:0px;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-si=
ze:12px;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(40=
,254,20);background-color:rgba(0,0,0,0.9)"><span class=3D"m_-21771985267325=
44936gmail-s1" style=3D"font-variant-ligatures:no-common-ligatures">/build/=
poky/tmp/work/qemux86_64-linux/common-os-image/1.0-r0/recipe-sysroot-native=
/usr/sbin/prelink: Could not record directory /lib/modules-load.d: No such =
file or directory</span></p>
<p class=3D"m_-2177198526732544936gmail-p1" style=3D"margin:0px;font-varian=
t-numeric:normal;font-variant-east-asian:normal;font-stretch:normal;font-si=
ze:12px;line-height:normal;font-family:&quot;Courier New&quot;;color:rgb(40=
,254,20);background-color:rgba(0,0,0,0.9)"><span class=3D"m_-21771985267325=
44936gmail-s1" style=3D"font-variant-ligatures:no-common-ligatures">WARNING=
: exit code 1 from a shell command.</span></p></div></div></blockquote><div=
><div><br></div><div>Looking at the image generation diagram here (<a href=
=3D"https://www.yoctoproject.org/docs/2.6/overview-manual/overview-manual.h=
tml#image-generation-dev-environment" target=3D"_blank">https://www.yoctopr=
oject.org/docs/2.6/overview-manual/overview-manual.html#image-generation-de=
v-environment</a>), it would seem to indicate that IMAGE_PREPROCESS_COMMAND=
 runs after the linker steps in do_rootfs. So it is unclear why prelink is =
failing during the do_image phase.=C2=A0</div><div><br></div><div>Where is =
the correct place to create a /lib -&gt; /lib64 symlink in our image recipe=
?</div><div><br></div><div>Thank you,</div><div><br></div><div>..Ch:W..</di=
v></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--0000000000001a8720057bc2c10f--
