Return-Path: <jdelapena@lexmark.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E2ABE00746; Mon, 11 Aug 2014 05:17:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [64.18.3.96 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from exprod8og108.obsmtp.com (exprod8og108.obsmtp.com [64.18.3.96])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F06AAE00524
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 05:17:33 -0700 (PDT)
Received: from mail-lb0-f181.google.com ([209.85.217.181]) (using TLSv1) by
	exprod8ob108.postini.com ([64.18.7.12]) with SMTP
	ID DSNKU+i0XAnPEI4a/M9v/A8IGNxOXNI+f2lG@postini.com;
	Mon, 11 Aug 2014 05:17:41 PDT
Received: by mail-lb0-f181.google.com with SMTP id 10so5677767lbg.26
	for <yocto@yoctoproject.org>; Mon, 11 Aug 2014 05:17:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=WeWXBuix+pdcOVeH+eIxZCaYALF32R58C1q9wL3rFkU=;
	b=mSKbMZn9OtERGkd3tizN0tXzx5Lqk6skwtg5gmhOlK82T2Ma69PyFmUxd72YrRr+lS
	cp89oV53OObLLVWh/rZCQCO+NFc9msjvaU1JOFqTBjkqO3xAvOUgChks4fYdU4VMFpGS
	k80MYt/aK+YfWKFUJdS41FjS7gu2cVp4paOFJSt+rdQuU7QvLnOx79gMWDxAganSpZ7U
	ddWb4wkgyTLSHtRqYd/uCMNsiMXhQPwdMtG+0yKqFJ+klM95HWKfnLHXT2iBiw7AjAi2
	ky0w7ECkUZw4iP2g33NNRur/jEse9BDnwGVVA2KwRHV5lBaEFH3XQQvdK8yYa/4Wgyes
	AQCg==
X-Gm-Message-State: ALoCoQkUABkhTb+Hdd8+lyyKIHpN0JPcY58buOn585sZnsM5ya3XaWJgfL/RwdrwP2Pd5qfZAraZ5v5YbSsPKKXSRMXQbvoYVSSJCaenjlUzzNBdyLP9JRQPfYIaxulgxw9Fd+fMbqlH
X-Received: by 10.112.24.167 with SMTP id v7mr35944840lbf.19.1407759451583;
	Mon, 11 Aug 2014 05:17:31 -0700 (PDT)
MIME-Version: 1.0
X-Received: by 10.112.24.167 with SMTP id v7mr35944830lbf.19.1407759451470;
	Mon, 11 Aug 2014 05:17:31 -0700 (PDT)
Received: by 10.152.36.37 with HTTP; Mon, 11 Aug 2014 05:17:31 -0700 (PDT)
In-Reply-To: <1832456.ZmMOoJekSa@peggleto-mobl5.ger.corp.intel.com>
References: <CAJrRHk6A_S98KrnddvaacU7WmhAuuv2gkxwfduAvQTJftuWNgg@mail.gmail.com>
	<CAJTo0Lap-VyZ0Z=+mqc1hj=6mjhasSLYmzY3bwn3QgRBLXuOZg@mail.gmail.com>
	<CAJrRHk4aQdjQAPm5+cKE3m4XH0kxbcRfAk5Ge+xQ5pzbxkKHFQ@mail.gmail.com>
	<1832456.ZmMOoJekSa@peggleto-mobl5.ger.corp.intel.com>
Date: Mon, 11 Aug 2014 20:17:31 +0800
Message-ID: <CAJrRHk5oQPmQ0Fpa7TxCGvF20GsLM7xF-NeHSBQ4hD0GJXbqrA@mail.gmail.com>
From: =?UTF-8?Q?Joseph_Andrew_de_la_Pe=C3=B1a?= <jdelapena@lexmark.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: SDK not contianing archive libraries
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
X-List-Received-Date: Mon, 11 Aug 2014 12:17:43 -0000
Content-Type: multipart/alternative; boundary=001a1134997a08d2ae0500598a72

--001a1134997a08d2ae0500598a72
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Good day Paul,

Yes, it worked. I can see my archive libs now. BUT one last problem, there
are few units publishing archive libs that were not included. What would I
need to add in my recipe to those units for it to work?

Apparently, I have my own meta-layer, and I put the SDKIMAGE_FEATURES in
one of my distro's conf. Is this the right place for this variable?

Thanks,
Joseph


On Mon, Aug 11, 2014 at 5:39 PM, Paul Eggleton <
paul.eggleton@linux.intel.com> wrote:

> Hi Joseph,
>
> On Monday 11 August 2014 13:49:52 Joseph Andrew de la Pe=C3=B1a wrote:
> > Still can't find the solution to include archive libraries into SDK. I
> have
> > already checked staticdev and my unit is already using it. The archive
> libs
> > are installed successfully in the image's sysroot but apparently not in
> > sdk. Hope you could shed some light here.
>
> Have you tried SDKIMAGE_FEATURES =3D "dev-pkgs staticdev-pkgs dbg-pkgs" ?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>

--001a1134997a08d2ae0500598a72
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Good day Paul,<div><br></div><div>Yes, it worked. I can se=
e my archive libs now. BUT one last problem, there are few units publishing=
 archive libs that were not included. What would I need to add in my recipe=
 to those units for it to work?</div>
<div><br></div><div>Apparently, I have my own meta-layer, and I put the SDK=
IMAGE_FEATURES in one of my distro&#39;s conf. Is this the right place for =
this variable?</div><div><br></div><div>Thanks,</div><div>Joseph</div></div=
>
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Aug 1=
1, 2014 at 5:39 PM, Paul Eggleton <span dir=3D"ltr">&lt;<a href=3D"mailto:p=
aul.eggleton@linux.intel.com" target=3D"_blank">paul.eggleton@linux.intel.c=
om</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi Joseph,<br>
<div class=3D""><br>
On Monday 11 August 2014 13:49:52 Joseph Andrew de la Pe=C3=B1a wrote:<br>
&gt; Still can&#39;t find the solution to include archive libraries into SD=
K. I have<br>
&gt; already checked staticdev and my unit is already using it. The archive=
 libs<br>
&gt; are installed successfully in the image&#39;s sysroot but apparently n=
ot in<br>
&gt; sdk. Hope you could shed some light here.<br>
<br>
</div>Have you tried SDKIMAGE_FEATURES =3D &quot;dev-pkgs staticdev-pkgs db=
g-pkgs&quot; ?<br>
<br>
Cheers,<br>
Paul<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
<br>
Paul Eggleton<br>
Intel Open Source Technology Centre<br>
</font></span></blockquote></div><br></div>

--001a1134997a08d2ae0500598a72--
