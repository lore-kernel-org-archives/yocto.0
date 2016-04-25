Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 598BFE0071E; Mon, 25 Apr 2016 07:43:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2328EE00566
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 07:43:03 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id bi2so67752449igb.0
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 07:43:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=1XWCoBYJzhL5q0uM2JpVuoA0HT+Jxk4gd3cU54Q1Z2s=;
	b=0OF0Ajs/qGfK6aaZLpRwmh7985L7CHip+8HjpTrcHu+BVJcaAeQuTyWqhZyj6SC9IN
	QUH0tqEz5lGeGNBhYVvZgjDRrNIhm9FQl72L8TLHXymGQ6cXQ47NP+W6xDGkfz5GxAGU
	7oubLT/ikn4tPRdVdTwYMcXG4dRO7jkATLMhYVSvNVD50DBg3tC2MqSPqhVuq00lcmOE
	Z301IoU1yRsK1eV03vP1bHSNYqbUbQ/LvZea5hFXYeu+rgQDo5PerFR6plyVUoEdGqeW
	eSx6TjLLEPyA/+qBY2UKVoWuhEHfKPAMdoBjncxeZF1fLAgPInJ8aYf8Lur7lVS9MtYR
	F0jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=1XWCoBYJzhL5q0uM2JpVuoA0HT+Jxk4gd3cU54Q1Z2s=;
	b=ak8RidGsWOGVbGU7JzKrn8RwhjgfS+lngUQE92HZzHRiX1Q95FBxkAXxGa+ToPTvrj
	+K06EeZt75WRkIpnUzH5L3HO4T61NduHshecxqzbuQS7jG1P9HZRlN9Z2zN0NCb91aIN
	lVBvmeP23r6os0SGPVD3Y6g7Gp4lXU8x+5qGpofkWQv1AoQgqOvsTOfdJkVnocbjrY1d
	rIHqj/T7Y2gQryMoVe7RmCbMTAkUKh8yh8EayanTaNYGWMsjE1bL6+FChKcXrLh8PvjA
	qVkfsstzmfhVVoqVDJMVdDAszC0ViPbxBjDG7ggNmfPdAcbIig+hEuQgStwuTyXNvn8+
	5AjQ==
X-Gm-Message-State: AOPr4FXuVc3w2UIvHkxnfg9gFxSfOA1hq3tLXi4q3i3sh8O65lXmLDS4Reyl4k2Z8eHP+BX+uUAZ1lk6dqGpf8Sh
X-Received: by 10.50.62.20 with SMTP id u20mr12635105igr.52.1461595383021;
	Mon, 25 Apr 2016 07:43:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.9.106 with HTTP; Mon, 25 Apr 2016 07:42:43 -0700 (PDT)
In-Reply-To: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
References: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 25 Apr 2016 15:42:43 +0100
Message-ID: <CAJTo0LY9Vtas26+M_Zq2fzREkpqXLD-uNOtXpJbzN8_9it=1Pg@mail.gmail.com>
To: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure: Unable to find revision 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream
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
X-List-Received-Date: Mon, 25 Apr 2016 14:43:07 -0000
Content-Type: multipart/alternative; boundary=047d7bdca6069c85180531503196

--047d7bdca6069c85180531503196
Content-Type: text/plain; charset=UTF-8

On 25 April 2016 at 14:30, Jaggi, Manish <Manish.Jaggi@caviumnetworks.com>
wrote:

> It seems the revid / tag is not on any branch
> git branch  --contains 2134d97aa3a7ce38bb51f933f2e20cafde371085
> returns nothing.
>
> How to fix this issue ?
>

You probably want to use git branch -r --contains 213... as otherwise git
branch will only list local branches.  The web UI says that this commit
exists on master though...

Ross

--047d7bdca6069c85180531503196
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 25 April 2016 at 14:30, Jaggi, Manish <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:Manish.Jaggi@caviumnetworks.com" target=3D"_blank">Manish.Jaggi@caviu=
mnetworks.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex"><div>It seems the r=
evid / tag is not on any branch</div>
<div>git branch =C2=A0--contains 2134d97aa3a7ce38bb51f933f2e20cafde371085=
=C2=A0<br>
</div>
<div>returns nothing.</div>
<div><br>
</div>
<div>How to fix this issue ?</div></blockquote></div><br>You probably want =
to use git branch -r --contains 213... as otherwise git branch will only li=
st local branches.=C2=A0 The web UI says that this commit exists on master =
though...</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_ext=
ra">Ross</div></div>

--047d7bdca6069c85180531503196--
