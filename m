Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 83284E00A81; Tue, 14 Mar 2017 22:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 489E9E00A48
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 22:56:06 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id b140so13793876iof.1
	for <yocto@yoctoproject.org>; Tue, 14 Mar 2017 22:56:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=LklGeatG+HrLQpmTNp9JGUwh8aVQGrNM8Xt1rVEwUnw=;
	b=d9rPrbXQzdABLyJfnecdDqdmfSGnsQBJJ5QeD9JIE65YzAi9/1HLDoE1su7E3DJgkx
	JWoHkfVzH86QaZ1//fjH5dvRzVutXlg5KOYTPLvs63VNC7bvsTUf8zPJ9FF2OAJVM+9N
	jL60FtkSGedDWvL+7kfqYr/HiHUa694GPNqdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=LklGeatG+HrLQpmTNp9JGUwh8aVQGrNM8Xt1rVEwUnw=;
	b=E1478cjDw6RQedqZfVAir0r/eVkNBdV21uZu9aTP6yFE/KwsUvY8RjRekFPjKf/P8j
	MWr3cgtkrtCN4ZQEXimwBQV1YcBuQLh4B4zlofvagjMhbkoPC5NXkAVrI/qD6o/HQyFb
	YZs/c+OO13nIw9DopIM800wiz0BHPxp0vIzw7AsrMD28cHwtTJ+6V0M1mlnTVsa+hiAK
	ldmMIvnjw7ZTYxSPGrhpTg2eUh+KYliL6iq34tOvCt6DuS0cXAv90D8TdXf6l2b/cSXu
	ckfOFPE4xmw7XnFdRI84+y5L+il7Z2eTpGDnWQPAVe767Gz1hRJuD6f7s9w5u96Mt7Jy
	dzeg==
X-Gm-Message-State: AFeK/H2CBI4j6yRs4z8zLzquws7XziXt5Vm5Hjmu0YpC0eHuyVC4nsDmnXT3qXvM8XR/IoaWePVyDWG1Fo0K8Q==
X-Received: by 10.107.154.194 with SMTP id c185mr3377379ioe.109.1489557365795; 
	Tue, 14 Mar 2017 22:56:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Tue, 14 Mar 2017 22:56:05 -0700 (PDT)
In-Reply-To: <CAJTo0LbwTORRPSw7TkYLDkg0MSw7w8BXCrDZHU=fu_ze2wg++g@mail.gmail.com>
References: <CALDHXteTtgxuKk_6iO4c8GhGqzTo_DVHS7jAB6tGijnY5ivORA@mail.gmail.com>
	<CAJTo0LbwTORRPSw7TkYLDkg0MSw7w8BXCrDZHU=fu_ze2wg++g@mail.gmail.com>
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Wed, 15 Mar 2017 11:26:05 +0530
Message-ID: <CALDHXtcVFgtqtxeSFOBscbQaTW+nYKwe_ip-faLx=Ro3kkjUVA@mail.gmail.com>
To: yocto@yoctoproject.org, "Burton, Ross" <ross.burton@intel.com>, 
	Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Subject: Re: core-image-minimal-xfce error
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
X-List-Received-Date: Wed, 15 Mar 2017 05:56:10 -0000
Content-Type: multipart/alternative; boundary=001a1140f4b6a96821054abe9938

--001a1140f4b6a96821054abe9938
Content-Type: text/plain; charset=UTF-8

Thank you for your answers.
I checked out the correct branch of meta-openembedded.
Now it is building properly i checked for qemux86 machine, *
core-image-minimal-xfce* image builded and working fine.
Now i am trying to build  for odroid-xu3 board.


On Tue, Mar 14, 2017 at 3:35 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 14 March 2017 at 09:20, ravikiran j <ravikiran.j@mistralsolutions.com>
> wrote:
>
>>
>> *ERROR: ExpansionError during parsing
>> /home/mistral/yocto/poky/meta-openembedded/meta-xfce/recipes-xfce/xfce4-power-manager/xfce4-power-manager_1.6.0.bb
>> <http://xfce4-power-manager_1.6.0.bb>: Failure expanding variable
>> PACKAGECONFIG, expression was ${@bb.utils.filter('DISTRO_FEATURES',
>> 'systemd', d)} which triggered exception AttributeError: 'module' object
>> has no attribute 'filter'*
>
>
> This error message tells me that you're using meta-openembedded master,
> not krogoth.  Checkout the correct branch of meta-openembedded.
>
> Ross
>

--001a1140f4b6a96821054abe9938
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Thank you for your answers.<br></div>I checked o=
ut the correct branch of meta-openembedded.<br>Now it is building properly =
i checked for qemux86 machine,=C2=A0<b> core-image-minimal-xfce</b> image b=
uilded and working fine.<br></div>Now i am trying to build=C2=A0 for odroid=
-xu3 board.<br><div><br></div></div><div class=3D"gmail_extra"><br><div cla=
ss=3D"gmail_quote">On Tue, Mar 14, 2017 at 3:35 PM, Burton, Ross <span dir=
=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ros=
s.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quot=
e" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">=
<div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br><div class=
=3D"gmail_quote">On 14 March 2017 at 09:20, ravikiran j <span dir=3D"ltr">&=
lt;<a href=3D"mailto:ravikiran.j@mistralsolutions.com" target=3D"_blank">ra=
vikiran.j@mistralsolutions.<wbr>com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex"><b>ERROR: ExpansionError during parsing /home/mistral/yoct=
o/poky/meta-<wbr>openembedded/meta-xfce/recipes<wbr>-xfce/xfce4-power-manag=
er/<a href=3D"http://xfce4-power-manager_1.6.0.bb" target=3D"_blank">xfce<w=
br>4-power-manager_1.6.0.bb</a>: Failure expanding variable PACKAGECONFIG, =
expression was ${@bb.utils.filter(&#39;DISTRO_FEA<wbr>TURES&#39;, &#39;syst=
emd&#39;, d)} which triggered exception AttributeError: &#39;module&#39; ob=
ject has no attribute &#39;filter&#39;<br></b></blockquote></div><br></span=
>This error message tells me that you&#39;re using meta-openembedded master=
, not krogoth.=C2=A0 Checkout the correct branch of meta-openembedded.</div=
><span class=3D"HOEnZb"><font color=3D"#888888"><div class=3D"gmail_extra">=
<br></div><div class=3D"gmail_extra">Ross</div></font></span></div>
</blockquote></div><br></div>

--001a1140f4b6a96821054abe9938--
