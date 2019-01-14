Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28D2BE00CE0; Mon, 14 Jan 2019 02:42:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C26F1E00BFB
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 02:42:14 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id x6so17229635ioa.9
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 02:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=41jtfS4Knj5RgzOfpsp/2CcJhuqGrs62pzZpttkrGPQ=;
	b=rPopWhhpsW53+7CthtDf151/GrJ629Pl0tj5fx4nx3I3Cl4xDyLnaR4vmZ1LNX5fSo
	iWQxjO/WEwSJwJmpXpI/BA6rzIoOQf5Zf4dlkhwmlFT6WqlxEm9aPTura5A0WVbGqsFB
	tBHHf+/mNTtQC4v5FmvZAxd1Ul7JtdWIgoX+ePkv6HjQ+OKNxZhV/3fOcqJHsl2BY7EU
	wdckSPmBd6Wre7xr+XO4KG6mQ4TRHPtpSAG7Zif6i21UjkKzw7d/ep95psppFEXugzRd
	Ie+/II+KOnwaOrpWFrJnp/Pbjn4LZgGjpcbBgWRVWVOUgL4n8xYU/oJUrjM4LMGzcdWp
	wiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=41jtfS4Knj5RgzOfpsp/2CcJhuqGrs62pzZpttkrGPQ=;
	b=bfO22YcY+y/IrgVIZ4nDSDXtZjMpg2adOjxT+r74dIz0+P0UFzTRD5E9JsnuZmcbkH
	Es3k3GUk01BkRBgrpLAEruQ0AhUycstCAhRAHzUynQa8cv0NMsmRZyvDiL64sSFXNzgo
	912UkInUg0IUxmxK8oSMkFLFiOtsjHWl3NuY9cFEUCbQZ+ytKqAcxAyBmv3sEu5+Zwgg
	WFtRCKcmQ0OwAb3ruRvZJsptQ/KKCpYVAJknxew1+XoZpUx9E8GdSYC+la2AHuk+s40R
	h6JfmMHc+1bqM1qYnEaPim1Cy2vfEHtyAMOm1PE35HZHyM3qh9ijp8hAG5gCkisCUJJB
	VJgg==
X-Gm-Message-State: AJcUukeYMYhZXsrS+okMQSQCeMiSPX4eJp5xko33iQXNR+KeqMK0cYmq
	WikOmuGXbTr0PSFoDbUO7gl080ngDmLRkoLWFzZNHA==
X-Google-Smtp-Source: ALg8bN4y5LGjt10GwCD0nYoNxr0FAKsZPkYZcAHdLWbB9QIZlTF+W788nqYYkrKzzQVBrH5TDTzvVSHVqlEAYY+iisM=
X-Received: by 2002:a5e:820d:: with SMTP id l13mr12241727iom.201.1547462534241;
	Mon, 14 Jan 2019 02:42:14 -0800 (PST)
MIME-Version: 1.0
References: <CAGMdoFn0jYK+nvkN34eePa2XAeRDRS8gUJCZUepeLm-+DK5d9A@mail.gmail.com>
In-Reply-To: <CAGMdoFn0jYK+nvkN34eePa2XAeRDRS8gUJCZUepeLm-+DK5d9A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 14 Jan 2019 10:42:02 +0000
Message-ID: <CAJTo0LaWHfab=ED99tAOeKaZkZEji1nt6Wm4MBshNwTp1sJiZg@mail.gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Yocto distribution license
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
X-List-Received-Date: Mon, 14 Jan 2019 10:42:15 -0000
Content-Type: multipart/alternative; boundary="000000000000a83612057f68b2c7"

--000000000000a83612057f68b2c7
Content-Type: text/plain; charset="UTF-8"

The license is the sum of the parts.

Ross

On Mon, 14 Jan 2019 at 06:35, Edward Wingate <edwingate8@gmail.com> wrote:

> I understand that a Linux distribution created with Yocto is composed
> of various packages, each with their own license, and the obligations
> of the licenses must be met.  But are there any
> restrictions/obligations on the distribution itself when created with
> Yocto? Or is the license of a Linux distribution created by Yocto
> determined by whoever created it?
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000a83612057f68b2c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The license is the sum of the parts.<div><br></div><div>Ro=
ss</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Mon, 14 Ja=
n 2019 at 06:35, Edward Wingate &lt;<a href=3D"mailto:edwingate8@gmail.com"=
>edwingate8@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-st=
yle:solid;border-left-color:rgb(204,204,204);padding-left:1ex">I understand=
 that a Linux distribution created with Yocto is composed<br>
of various packages, each with their own license, and the obligations<br>
of the licenses must be met.=C2=A0 But are there any<br>
restrictions/obligations on the distribution itself when created with<br>
Yocto? Or is the license of a Linux distribution created by Yocto<br>
determined by whoever created it?<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000a83612057f68b2c7--
