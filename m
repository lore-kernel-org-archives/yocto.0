Return-Path: <k4230r6@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F40B1E00510; Sat, 28 Jun 2014 13:06:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (k4230r6[at]gmail.com)
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
	*      [209.85.213.180 listed in list.dnswl.org]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F363E003D6
	for <yocto@yoctoproject.org>; Sat, 28 Jun 2014 13:06:56 -0700 (PDT)
Received: by mail-ig0-f180.google.com with SMTP id h18so3069484igc.1
	for <yocto@yoctoproject.org>; Sat, 28 Jun 2014 13:06:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=qO1O+urF8Hl4B/SCYgHS+6cwAa85mIqBarx1TCj/AC8=;
	b=hFZlzMH2Xea2r/wQVt/+udZMfD+nysi4nCwrgIcDS6j2igWGaKoyq4zfASjoGbpbMi
	J3ohG62Q/ImuLkidHs7qWZqZ8v4MLkgVBy7U2squDLQiUtUclBlfvLJA//P1HXxoz+Ni
	uanZsSS0ycwpne2o98H8MGMxSsgUqnVPzR4K9sYoRt18WerY8fUq0wExTHRyDl5JAe/q
	mEHWwGT3cTtxO/ncwoy0KH1tw8nZKZBtmFQrU42l/gnUnrhBVR6LZLfsWGC5ATfGqpvg
	x/6KllfsSC8vLpIbx1Q1hHChvhTM/JKnTRz0r3gp8CRPYLyaZ65Wa5Xi1zEFnFDtxm2P
	NFVg==
MIME-Version: 1.0
X-Received: by 10.42.239.196 with SMTP id kx4mr3367430icb.71.1403986015036;
	Sat, 28 Jun 2014 13:06:55 -0700 (PDT)
Received: by 10.64.86.199 with HTTP; Sat, 28 Jun 2014 13:06:54 -0700 (PDT)
Received: by 10.64.86.199 with HTTP; Sat, 28 Jun 2014 13:06:54 -0700 (PDT)
In-Reply-To: <CALXw4G4sWVH+ZegiAfvF4g0CSWhUz_db87hNtOLVX8DnZAUDUw@mail.gmail.com>
References: <CALXw4G4sWVH+ZegiAfvF4g0CSWhUz_db87hNtOLVX8DnZAUDUw@mail.gmail.com>
Date: Sat, 28 Jun 2014 22:06:54 +0200
Message-ID: <CAALGJZYmVU8+Bs8+ftZO4uDGRqAVkwrgTm1MNVGqmnTdzqpXaQ@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: Michael Gloff <mgloff@emacinc.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Pulseadudio depends
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
X-List-Received-Date: Sat, 28 Jun 2014 20:06:59 -0000
Content-Type: multipart/alternative; boundary=001a113333e8b22a7b04fceaf77d

--001a113333e8b22a7b04fceaf77d
Content-Type: text/plain; charset=UTF-8

Am 28.06.2014 21:54 schrieb "Michael Gloff" <mgloff@emacinc.com>:
>
> All,
> I'm having some build errors when pulseaudio tries to configure. It looks
like there is a dependency on libcap. If the image already has libcap
pulled in or I manually make it so, everything is fine. Just wondering if
anyone else has experienced this and/or can duplicate on a clean build.
>
It may fixes your Problem by addind RDEPENDS += "libcap"

to the pulsaudio recipe. It may worth filing a patch if it is fixed.

Regards,
Christian
> Thanks,
>
> Michael Gloff
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a113333e8b22a7b04fceaf77d
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
Am 28.06.2014 21:54 schrieb &quot;Michael Gloff&quot; &lt;<a href=3D"mailto=
:mgloff@emacinc.com">mgloff@emacinc.com</a>&gt;:<br>
&gt;<br>
&gt; All,<br>
&gt; I&#39;m having some build errors when pulseaudio tries to configure. I=
t looks like there is a dependency on libcap. If the image already has libc=
ap pulled in or I manually make it so, everything is fine. Just wondering i=
f anyone else has experienced this and/or can duplicate on a clean build.<b=
r>

&gt;<br>
It may fixes your Problem by addind RDEPENDS +=3D &quot;libcap&quot;</p>
<p dir=3D"ltr"> to the pulsaudio recipe. It may worth filing a patch if it =
is fixed.</p>
<p dir=3D"ltr">Regards,<br>
Christian<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Michael Gloff<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto">https://list=
s.yoctoproject.org/listinfo/yocto</a><br>
&gt;<br>
</p>

--001a113333e8b22a7b04fceaf77d--
