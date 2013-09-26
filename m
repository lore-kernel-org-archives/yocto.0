Return-Path: <hans.beckerus@gmail.com>
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9FFAE01640
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:38:14 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id k14so443253oag.19
	for <yocto@yoctoproject.org>; Thu, 26 Sep 2013 03:38:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=w3U+NHb2aUAVszd4hCXOwysa00rwP1o9GYSJaJOcmzA=;
	b=wsFXK3o1mPMO+P79w4l3w91Vxt3BV99XD2hE13bOeyH2/ZriUujEWWtc2BRhccBpsi
	Ji7WmLPI2psblRG1sQf+/INmol+MSebokkm8ZIUP56amLM67qzRZCdkzpJ2RbH/LUtRD
	JTd5/qIVimDCsEZb7IzVg2viCKJnAhbADTnLfTm0gtvmHwPGT1zDdo3dHfGYILf10vWt
	Vwdmp0NZw8EmXbmmid84W9QP7HX+Fwvot4ipPBHTOxulqMEcpX9xNJXqC2fhTSycXPsv
	vWSVBWoUMVt86Aub9NyRqQKtSyTkLOi4m5dEDtm5/+HlOTgU3qT6kUX5hyIF9shoFIe6
	Y/0A==
MIME-Version: 1.0
X-Received: by 10.182.73.136 with SMTP id l8mr96971obv.53.1380191893441; Thu,
	26 Sep 2013 03:38:13 -0700 (PDT)
Received: by 10.182.44.8 with HTTP; Thu, 26 Sep 2013 03:38:13 -0700 (PDT)
In-Reply-To: <15510684.X3bYELTYuV@helios>
References: <CAFyqS9pb0aXUVgKH7vANiNxhrXMtfVxGRd9FDVj8Y1Rk=0XgFw@mail.gmail.com>
	<15510684.X3bYELTYuV@helios>
Date: Thu, 26 Sep 2013 12:38:13 +0200
Message-ID: <CAFyqS9q54HXgcCPvhUodqYXLZ9oqmZA4+mhOX958CyeG7VL3Gg@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to combine BBCLASSEXTEND and variable export
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
X-List-Received-Date: Thu, 26 Sep 2013 10:38:17 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Sep 26, 2013 at 12:13 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi Hans,
>
> On Wednesday 25 September 2013 17:39:04 Hans Beck=E9rus wrote:
>> Hi. I have a recipe that use BBCLASSEXTEND to extend native. For the
>> normal/base version I wish to set/export an environment variable to be
>> picked up by configure.
>> But I do not wish this variable to be set by the native package. How
>> would I accomplish that? It was ok before when I had a package-native
>> recipe but since that is obsolete in favor for BBCLASSEXTEND I wish to
>> remove it. I think I covered all the other caveats like DEPEND and
>> PACKAGE/FILES. But this one is not as straight forward, or is it?
>
> If I'm understanding the requirements correctly think you could do someth=
ing
> like:
>
> do_configure_prepend_class_target() {
>         export VARIABLE=3Dvalue
> }
>
Yes, I believe I tried that, but then the export does not persist over
do_configure(), does it?
It is only alive during the scope of do_configure_prepend() or?

> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

