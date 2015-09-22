Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8A53E0104D; Tue, 22 Sep 2015 07:17:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
Received: from mail-yk0-f181.google.com (mail-yk0-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5326FE01041
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 07:17:17 -0700 (PDT)
Received: by ykdz138 with SMTP id z138so10247047ykd.2
	for <yocto@yoctoproject.org>; Tue, 22 Sep 2015 07:17:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=UXQ/m2oYsCyCDSqI5syGBm3mE3WHv1P+ow/mri5JdiQ=;
	b=L1rsiebPFWPcxIOW7hL+CUI0pto4LDPRdKS1gqMWssFXYNK6AvPOc5Z8QngZjUDQmN
	3ovrL2xG/2+MGGPNeQUaEdI07W0B0KfL8HOUCptqKC75gv6vrf7But2lOaHmDtr21WEj
	8E9p2nfiCZwGna5IYsYsWhjsufHHZ3vtLIJ//rmHLpForhdoJtfTEBrn21dYoosXsfMj
	XnpvvYQZcoGuXmCS0Lr+I3V6mMDgJLyMmAjKOpaufSLnBKVla4iRlIY1zOTEEn5AlUGs
	PhSPn+Cm2iXjmLPl2elPhvXBYTnIc1V/ZCVeV41Ywq8PGmyMPPXd40usPNeTUCRFlEb7
	1qEA==
MIME-Version: 1.0
X-Received: by 10.13.204.81 with SMTP id o78mr21626271ywd.108.1442931436789;
	Tue, 22 Sep 2015 07:17:16 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Tue, 22 Sep 2015 07:17:16 -0700 (PDT)
In-Reply-To: <CAKjpqyJDgoV=+4QqtJ5Q5p2WcdqkioFDR5LMNicc+h42seEbpA@mail.gmail.com>
References: <CAKjpqyJDgoV=+4QqtJ5Q5p2WcdqkioFDR5LMNicc+h42seEbpA@mail.gmail.com>
Date: Tue, 22 Sep 2015 11:17:16 -0300
Message-ID: <CAF3SDA7_M70fr29QWLdtN4jxGWiQozH=nVjAk9tYNroM11c0gw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Mayank Agarwal <mayank77fromindia@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: error in do_rootfs
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
X-List-Received-Date: Tue, 22 Sep 2015 14:17:27 -0000
Content-Type: multipart/alternative; boundary=001a114820c4b9ad0f052056a7b1

--001a114820c4b9ad0f052056a7b1
Content-Type: text/plain; charset=UTF-8

There should be a log.do_rootfs in something like
BUILD_DIR/tmp/work/MACHINE-TOOLCHAIN/IMAGE/PV-PR/temp/. There you will find
a proper failure message with the command that triggered the failure and is
output.

Cheers,
- dhs

2015-09-22 6:36 GMT-03:00 Mayank Agarwal <mayank77fromindia@gmail.com>:

> Hi,
>
> I am getting the below error in do_rootfs:
>
> ERROR: Unable to install packages. Command
>  returned 255:
>
>
> I uderstand this error comes from certificate validation
> failure.
>
> Is there any option i can override the certificate validation
> in do_rootfs and get the binaries imstalled in final image
>
> Regards
> Mayank
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a114820c4b9ad0f052056a7b1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>There should be a log.do_rootfs in something lik=
e BUILD_DIR/tmp/work/MACHINE-TOOLCHAIN/IMAGE/PV-PR/temp/. There you will fi=
nd a proper failure message with the command that triggered the failure and=
 is output. <br><br></div>Cheers,<br></div>- dhs<br></div><div class=3D"gma=
il_extra"><br><div class=3D"gmail_quote">2015-09-22 6:36 GMT-03:00 Mayank A=
garwal <span dir=3D"ltr">&lt;<a href=3D"mailto:mayank77fromindia@gmail.com"=
 target=3D"_blank">mayank77fromindia@gmail.com</a>&gt;</span>:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">Hi,<div><br></div><div>I am getting =
the below error in do_rootfs:</div><div><br></div><div>ERROR: Unable to ins=
tall packages. Command</div><div><div>=C2=A0returned 255:</div></div><div><=
br></div><div><br></div><div>I uderstand this error comes from certificate =
validation</div><div>failure.</div><div><br></div><div>Is there any option =
i can override the certificate validation</div><div>in do_rootfs and get th=
e binaries imstalled in final image</div><div><br></div><div>Regards</div><=
span class=3D"HOEnZb"><font color=3D"#888888"><div>Mayank</div><div><br></d=
iv></font></span></div>
<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature"><div style=3D"text-align:right"><i>&quot;Do or do not. There is=
 no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div=
>
</div>

--001a114820c4b9ad0f052056a7b1--
