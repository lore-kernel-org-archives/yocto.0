Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37279E00BB3; Thu,  2 Mar 2017 08:25:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF9B4E00A53
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 08:25:09 -0800 (PST)
Received: by mail-lf0-f42.google.com with SMTP id a6so36114147lfa.0
	for <yocto@yoctoproject.org>; Thu, 02 Mar 2017 08:25:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SFGQLPuVymp0YQfNwoCsJasY1juS1ykCLClPavWO3jM=;
	b=ivh9EKb+eyScworSABv8zyJnrEdTAhnCGd0khLMx768aqOoGF0y4/hf8DaZWjc9Bvt
	w0O8JV7PdY/LvbOXGo7l94uUKhxfWug+nS16zf4dAjWh+EAl9ZxkgeHf4nTuTtTB3zbM
	yLndxC/U8vu5qBmXCBcFzggqphcyIymcv+jWdhW7GH4PjZfVdhaxfPTP0Suc18Da+TS6
	7RG4qLtGqx0o9ysfqMmItTdPOhpAB02riek3envone/mlNaI5SPz2IiSL+rbQHIMfLoO
	sbDAV04O5ov1+3/iYDYNYwuw2r2c34at/ivvZHKX4tbCFAkPO/a84Dw0neEfJZVS8qzI
	WYNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SFGQLPuVymp0YQfNwoCsJasY1juS1ykCLClPavWO3jM=;
	b=Ai6ka0D4TSQf6QiaJH6zNf/UVxVqGhKguuS/O/1rvPlDajJXVnV75J7EXJzKV6Smna
	dKbq2j3pUOSU0a6+5Wvvc3KK+uDfnqWzQl3/sdvWjOA6i6WfBPxNOkms86EhgtT30FVt
	hmLyWsisY8TOja+Zv5UHdip85d5hON78/AQJW0aYAUwGHd+kftxImOmj6HOtGOqTNphr
	CownTNkr54Lb6zp/pVOxEzZviHWMQkIqMQSIlucspitNquQA8fOpAoAByhrAS0+wz6iL
	0AD5pGeYWMxPeM8o5v5ZZ9YtbKX04D0AAZfj4t5voL3xvhWzbYbrzUD1I45nBK2tGjwz
	zZoQ==
X-Gm-Message-State: AMke39n7YwPoWTmnJPTvp7JRIdeHQTO7NENGpvdDRVQmHqCIDknVf5BEfp08M3T2bZI5G+5dl+wjAZpMKzCZfw==
X-Received: by 10.46.74.1 with SMTP id x1mr4901624lja.105.1488471908654; Thu,
	02 Mar 2017 08:25:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Thu, 2 Mar 2017 08:25:08 -0800 (PST)
In-Reply-To: <CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
	<CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Thu, 2 Mar 2017 21:55:08 +0530
Message-ID: <CAF1M0z463Yg9KWPW8pvm+8svGxPrhGbqx8X+gurvO_VxmxOeCA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Thu, 02 Mar 2017 16:25:14 -0000
Content-Type: multipart/alternative; boundary=f403045ebdc25fa43b0549c1df71

--f403045ebdc25fa43b0549c1df71
Content-Type: text/plain; charset=UTF-8

Hi Ross,

Pls go through this link,

https://www.yoctoproject.org/product/meta-ti-bsp-layer

very clearly mentioned

Thanks & Regards,
satya

On Thu, Mar 2, 2017 at 9:49 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 2 March 2017 at 16:14, SatyaNarayana Sampangi <satya.2891@gmail.com>
> wrote:
>
>> I am using beagle bone black, for which meta-ti layer and poky versions
>> compatible is daisy 1.6 as mention in the official website of yocto. If I
>> upgrade the poky to the latest version, then compatibity will be lost. Pls
>> help me out here.
>>
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/ has branches for
> krogoth (2.1) and morty (2.2).  Where did you see that 1.6 is the last
> release supported?
>
> Ross
>

--f403045ebdc25fa43b0549c1df71
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Ross,<div><br></div><div>Pls go through this link,</div=
><div><br></div><div><a href=3D"https://www.yoctoproject.org/product/meta-t=
i-bsp-layer">https://www.yoctoproject.org/product/meta-ti-bsp-layer</a><br>=
</div><div><br></div><div>very clearly mentioned=C2=A0</div><div><br></div>=
<div>Thanks &amp; Regards,</div><div>satya</div></div><div class=3D"gmail_e=
xtra"><br><div class=3D"gmail_quote">On Thu, Mar 2, 2017 at 9:49 PM, Burton=
, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" targe=
t=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D"=
"><br><div class=3D"gmail_quote">On 2 March 2017 at 16:14, SatyaNarayana Sa=
mpangi <span dir=3D"ltr">&lt;<a href=3D"mailto:satya.2891@gmail.com" target=
=3D"_blank">satya.2891@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=
<div>I am using beagle bone black, for which meta-ti layer and poky version=
s compatible is daisy 1.6 as mention in the official website of yocto. If I=
 upgrade the poky to the latest version, then compatibity will be lost. Pls=
 help me out here.</div><div></div></blockquote></div><br></span><a href=3D=
"http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/" target=3D"_blank">http=
://git.yoctoproject.org/<wbr>cgit/cgit.cgi/meta-ti/</a> has branches for kr=
ogoth (2.1) and morty (2.2).=C2=A0 Where did you see that 1.6 is the last r=
elease supported?<span class=3D"HOEnZb"><font color=3D"#888888"><br></font>=
</span></div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"g=
mail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></span></=
div>
</blockquote></div><br></div>

--f403045ebdc25fa43b0549c1df71--
