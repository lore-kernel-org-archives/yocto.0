Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DFF5E00A1C; Mon, 23 Apr 2018 23:45:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 717B0E009BC
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 23:45:18 -0700 (PDT)
Received: by mail-it0-f42.google.com with SMTP id l83-v6so14124114ita.5
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 23:45:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zQnxYFwTBT29Z1MA9EUm/jHfYOUxas8jPjwNQgrmfnY=;
	b=iKgalK9OXXwWGQBFv0cGwb06E9ccN/RYousqtzf8ZAMQa2Czo13Srr+uozDmlhnRYV
	3jZBsqqFP6e0wlUVlCvv3T2jKQk6LWiWv1EpN8QBHcjVKwwhzh+BGswbAbmhF+GW/yPB
	QiJclU1Xl4bbBjNQF7qzCadtOxo4O3fUnBND8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zQnxYFwTBT29Z1MA9EUm/jHfYOUxas8jPjwNQgrmfnY=;
	b=WT8kevpsi8uW1cZuRZnXxcciUMLKRhFScPZbezH3Yb19dK38YBzOwnB/xQoiFrpfeS
	wKK/uv5VHnLJtyFLdLtrRBmUuMWcHTVhsPM6vMyNv9rPoJmPccUb4DweWm/pznWLVpMW
	0MJHtEATpUwbtCnU4LcBgflN7bt9VU9c3EsTwSIg+TfsmW/BXtZS7V4dDPSFqrKbduP1
	m1WXlGvR5uTB6cgkJ0AjYCSxNpyX9Aa1frs3uUwVDP/piMQXP6rv2oObcV2WVlXUFtl4
	EjCkMltQev0N0NVsjiEH/kuIOwdmloYJMmef0GzwI0rrgEtfSKuNq7DwXC4smalSV6vb
	wGAw==
X-Gm-Message-State: ALQs6tD9xNsJxMsLCPeT4JKAycui4GVqF7Ei52S3iPNrYaK/k5Nt4259
	MU6uX92QpHAqmzbjQmgVE7Jajaahuz84VACOzVf52w==
X-Google-Smtp-Source: AIpwx4/wjKhTphrQhXb9nbGCL6FRWtGK9qZXE3VR5Twa0RlMX3/h/ZuimM12nJ0fZJNiZY2qIHJIrpPSJdeDqGRfpc4=
X-Received: by 2002:a24:730e:: with SMTP id
	y14-v6mr17992336itb.45.1524552317912; 
	Mon, 23 Apr 2018 23:45:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:6664:0:0:0:0:0 with HTTP; Mon, 23 Apr 2018 23:45:17
	-0700 (PDT)
In-Reply-To: <CAJTo0LaMzWdr3c5siBv2CU2p-ZWCcRi06khNmMFgT-0PV0+17w@mail.gmail.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
	<5ad9c6a5.d806630a.b3470.003fSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAJTo0La99prBuhp5XDr1UPPYMqKHfHry6SWrQxpwudbK5KKCsA@mail.gmail.com>
	<CAALXFYxrWHrsJTKApWahyeXmjnAGXUfvc+ffmgfNGhjyvcTwcw@mail.gmail.com>
	<CAJTo0LaMzWdr3c5siBv2CU2p-ZWCcRi06khNmMFgT-0PV0+17w@mail.gmail.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Tue, 24 Apr 2018 08:45:17 +0200
Message-ID: <CAALXFYxaTYfwDwfVR4dYDTePYyePinxjk-w13OXYn5PL2GNT3g@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Tue, 24 Apr 2018 06:45:19 -0000
Content-Type: multipart/alternative; boundary="00000000000059f06a056a927fb1"

--00000000000059f06a056a927fb1
Content-Type: text/plain; charset="UTF-8"

That sounds really convincing, I will give it a chance and come back to
describe the hole process after all. Thank you for that valuable
information Mr. Ross

2018-04-23 17:38 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

> Very curious as to what book said that, because *any* example of that
> happening is a bug in the recipe itself.  I wouldn't listen to it: the YP
> autobuilder has a shared sstate for three distributions * four
> architectures * two libc implementations and doesn't have problems.
>
> Ross
>
>

--00000000000059f06a056a927fb1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">That sounds really convincing, I will give it a chance and=
 come back to describe the hole process <span style=3D"color:rgb(34,34,34);=
font-family:arial,sans-serif;font-size:small;font-style:normal;font-variant=
-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:n=
ormal;text-align:start;text-indent:0px;text-transform:none;white-space:norm=
al;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-style=
:initial;text-decoration-color:initial;float:none;display:inline">after all=
</span>. Thank you for that valuable information Mr. Ross<div><div class=3D=
"gmail_extra"><br><div class=3D"gmail_quote">2018-04-23 17:38 GMT+02:00 Bur=
ton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" ta=
rget=3D"_blank">ross.burton@intel.com</a>&gt;</span>:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div dir=3D"ltr">Very curious as to what book said that, beca=
use *any* example of that happening is a bug in the recipe itself.=C2=A0 I =
wouldn&#39;t listen to it: the YP autobuilder has a shared sstate for three=
 distributions * four architectures * two libc implementations and doesn&#3=
9;t have problems.<span class=3D"HOEnZb"><font color=3D"#888888"><div><br><=
/div><div>Ross</div></font></span></div><div class=3D"HOEnZb"><div class=3D=
"h5"><div class=3D"gmail_extra"><br></div></div></div></blockquote></div>
</div></div></div>

--00000000000059f06a056a927fb1--
