Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E6BDE00843; Fri, 19 Sep 2014 07:57:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ob0-f172.google.com (mail-ob0-f172.google.com
	[209.85.214.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 678BAE0079A
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 07:57:38 -0700 (PDT)
Received: by mail-ob0-f172.google.com with SMTP id uy5so1807290obc.31
	for <yocto@yoctoproject.org>; Fri, 19 Sep 2014 07:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=o6PFc4lHIpRNpMHPt/KcUD6L99fee6j54Uxr2aBHzfc=;
	b=nBDkdDkWqP2uM3kAfbb0TiWEMpFKIk4TdEyOLAf0sxpZFmwbGCQf/DtsgC1yPb14VW
	CeTdQVxgb2xAUGpSWQs6Hht32KeoKxHZCTf1L1FHWU0tz8XqiyDsjlZeZnhJviLE8uJy
	dZJDIgVxf04osr13oKk3AApdf/QRsrW3/L5AQgu9xp1URbkqAKqiqlN+wEYguW1xO3yB
	wooeD1O/Ig+a8YHKSX/hAWcrg2KkDR3M7bqDTuFo5mAeQlVcTk3aczOW9k3H3/WN5EYa
	0G7V3707c1OpWEUuO6xrebE0rWUgUSx1Ocuf3gvu4QO9ZgHiiHG+fn1/jgNgRK/DPQDu
	iHUw==
MIME-Version: 1.0
X-Received: by 10.60.64.40 with SMTP id l8mr1865320oes.63.1411138658346; Fri,
	19 Sep 2014 07:57:38 -0700 (PDT)
Received: by 10.182.76.227 with HTTP; Fri, 19 Sep 2014 07:57:38 -0700 (PDT)
In-Reply-To: <CABhkJRdYQfPKbmPZQA+Tk33QaG0LvPBmubWed5Zggj_s88yCkw@mail.gmail.com>
References: <CABhkJRdYQfPKbmPZQA+Tk33QaG0LvPBmubWed5Zggj_s88yCkw@mail.gmail.com>
Date: Fri, 19 Sep 2014 07:57:38 -0700
Message-ID: <CAEKp-abEgBnx8f7ZYP4zb0kbz9rPjo5cFhDGgRrdw1dxsUSCzQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: Ashish Dalela <ashish.dalela@gmail.com>
X-Mailman-Approved-At: Fri, 19 Sep 2014 14:29:21 -0700
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Linux Headers question
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
X-List-Received-Date: Fri, 19 Sep 2014 14:57:46 -0000
Content-Type: multipart/alternative; boundary=001a11c3de0675adc005036c5215

--001a11c3de0675adc005036c5215
Content-Type: text/plain; charset=UTF-8

Hi Ashish,

Which Yocto package has stdio.h file (and other header files)?
>
> That depends on what C library you are using. The default for YP/OE is
eglibc. The headers would be in eglibc-dev.


> I tried linux-libc-headers-dev and linux-libc-headers-dbg and I did not
> get the stdio.h file.
>
> I see a packages-split directory for eglibc-dev but I don't see an RPM
> being built for that (I have RPMs being built for every other build). Also
> I cannot do bitbake eglibc-dev.
>

The RPM would be libc6-dev-<version>.<architecture>.rpm, for
instance libc6-dev-2.19-r0.cortexa8hf_vfp_neon.rpm for an ARM Cortex A8
using hard fp.

Best regards,
Rudi

--001a11c3de0675adc005036c5215
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ashish,<br><div class=3D"gmail_extra"><br><div class=3D=
"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex"><div dir=3D"ltr"><div>Which Yocto package ha=
s stdio.h file (and other header files)?</div><div><br></div></div></blockq=
uote><div>That depends on what C library you are using. The default for YP/=
OE is eglibc. The headers would be in eglibc-dev.</div><div>=C2=A0</div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;padd=
ing-left:1ex"><div dir=3D"ltr"><div></div><div>I tried linux-libc-headers-d=
ev and linux-libc-headers-dbg and I did not get the stdio.h file.</div><div=
><br></div><div>I see a packages-split directory for=C2=A0eglibc-dev but I =
don&#39;t see an RPM being built for that (I have RPMs being built for ever=
y other build). Also I cannot do bitbake=C2=A0eglibc-dev.</div></div></bloc=
kquote><div><br></div><div>The RPM would be=C2=A0libc6-dev-&lt;version&gt;.=
&lt;architecture&gt;.rpm, for instance=C2=A0libc6-dev-2.19-r0.cortexa8hf_vf=
p_neon.rpm for an ARM Cortex A8 using hard fp.</div><div>=C2=A0</div><div>B=
est regards,</div><div>Rudi</div></div>
</div></div>

--001a11c3de0675adc005036c5215--
