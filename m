Return-Path: <matt.hoosier@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B1102E00A27; Wed, 16 Mar 2016 14:47:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (matt.hoosier[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8129E007D2
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 14:47:30 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id p65so755363wmp.1
	for <yocto@yoctoproject.org>; Wed, 16 Mar 2016 14:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=9J501da6F2VrvCKyx/TFYW7Ius9QRtOZ1zqOW8M1K/k=;
	b=kMyL5c0UJ8w7Dgz2yLfhM/kufpGll2Vp84ZgpxsqP+cYmekjOgjRb66Vebmh+tWC5C
	ANB2LHNWbtWPiJ0agKjfMlV+cfn4TraN5UOxHSH778xrCqiGc+KBo3PA4KCpBalU0UzM
	LaiJKUSXopkQGFTuOwikTjo4l/P+VZusR4l/zEw8FCeG5WDng9QQR/3VVbAFtTuBVDGL
	58Lp1QlyV92lv/mSaRv72Lg6TW02du3U3YVnI+L8tPYL3ikHLCZPjYJe4J/C9GN1SnaO
	p7Ap+fhmfNYB2r8tUjZKVECTRJbZvxEgcjNbJetosKiTYCKOfINXVeBunbpMcbvUrOvs
	lo6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=9J501da6F2VrvCKyx/TFYW7Ius9QRtOZ1zqOW8M1K/k=;
	b=SUekQ0Auxd2pZHCMyIBceyTaUuDgr6t/f7WGq5UUmfhrd1dD7RJZb3qCxXx5urKLve
	svluIosjCTWYFGXuulMmnlmh7dBacmZC2jPyZG/7NzhTPpOgqjDz+B0zwhQSMK6mE7nK
	52y7P52mQNJr2sM6iBNVNniocRiCY+wPQ3hM7EBI6mSEknaz8K4VHbBmsJaLquwtt4EJ
	mTMCBc6fzjTyUFGhIJ/F94uod2FZdABlsH6Un4cUQomiUPVwiKBPW11TXS+lEK+MyNIc
	EzuBgEWWZoorMttWcEBMHu3Pg/FV9QUijWEdXXwDZPocx2dRSHnCZTinchM/dgZUYYON
	hw/w==
X-Gm-Message-State: AD7BkJLA0sIkFBSfuPyvuvD/QaYzL5/mUJD90C+dvLRCNBAq926m6ctepiQDIxmjLPPT6g4/EjWnSoCFpqnTAw==
X-Received: by 10.28.126.131 with SMTP id z125mr7127183wmc.77.1458164849551;
	Wed, 16 Mar 2016 14:47:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.0.83 with HTTP; Wed, 16 Mar 2016 14:46:50 -0700 (PDT)
In-Reply-To: <CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
References: <CAJgxT391GcHnUBGRRKNWhFbfBwk36pc0Ru763Sp78qwW-4tRrw@mail.gmail.com>
	<CABcZANmCEd9p--+p9RPMOMwVJQ27oz4_gJmCADoSw_gN9hf7Jg@mail.gmail.com>
From: Matt Hoosier <matt.hoosier@gmail.com>
Date: Wed, 16 Mar 2016 16:46:50 -0500
Message-ID: <CAJgxT39u7GCsSiOrdumoSXmwX0VNtJTON6fTwUBKsuPpkPdxLQ@mail.gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Installing the SDKs made with meta-mingw
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
X-List-Received-Date: Wed, 16 Mar 2016 21:47:31 -0000
Content-Type: multipart/alternative; boundary=001a11419f88e1aff6052e31752c

--001a11419f88e1aff6052e31752c
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <clarson@kergoth.com>
wrote:

> On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <matt.hoosier@gmail.com>
> wrote:
>
>> I've successfully built a Canadian-cross SDK using the meta-mingw layer.
>> Very nice!
>>
>> Because the layer lobotomizes the SDK_PACKAGING_FUNC when ${SDKMACHINE}
>> is set to a MinGW host, though, the resulting SDK is not encapsulated into
>> the self-extracting tarball and the corresponding relocation logic (
>> relocate_sdk.py and so forth) is omitted.
>>
>> Any suggestions on how to do the last-mile work to use the SDK on
>> Windows? Or perhaps nothing is needed at all, except adjusting the prefixes
>> built into environment-setup-<arch>? Although that would be nice, I
>> think at least some installation-time adjustment is necessary though; when
>> I do:
>>
>>     arm-poky-linux-gnueabi-gcc -o foo foo.c
>> --sysroot=d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>
>> , the following happens during linking:
>>
>>     ld.exe: cannot find /lib/libc.so.6 inside
>> d:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi
>>
>
As it turns out, the immediate error here was simply that libc.so.6 did not
exist, so ld.exe was telling the truth in this case. The symbolic links
stored in the SDK tarball that would have created libc.so.6 aren't
meaningful on Windows, so tar just ignores them when unpacking. Presumably
some fancier handling of the tarball unpacking to simulate symlinks by
making copies of the pointed-to file would cure this.


>
> Mark Hatle's branch switches to batch files for environment setup and
> whatnot. I don't know if it addresses the reloc issue or not, but it's a
> substantial improvement over master. See
> https://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=mgh/meta-mingw
>

Thanks, I'll try that.

--001a11419f88e1aff6052e31752c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Wed, Mar 16, 2016 at 4:40 PM, Christopher Larson <span dir=3D"ltr">&=
lt;<a href=3D"mailto:clarson@kergoth.com" target=3D"_blank">clarson@kergoth=
.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,=
204);border-left-style:solid;padding-left:1ex"><div dir=3D"ltr"><span class=
=3D"">On Wed, Mar 16, 2016 at 2:32 PM, Matt Hoosier <span dir=3D"ltr">&lt;<=
a href=3D"mailto:matt.hoosier@gmail.com" target=3D"_blank">matt.hoosier@gma=
il.com</a>&gt;</span> wrote:<br></span><div class=3D"gmail_extra"><div clas=
s=3D"gmail_quote"><span class=3D""><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
border-left-color:rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I&#39=
;ve successfully built a Canadian-cross SDK using the meta-mingw layer. Ver=
y nice!<div><br></div><div>Because the layer lobotomizes the SDK_PACKAGING_=
FUNC when ${SDKMACHINE} is set to a MinGW host, though, the resulting SDK i=
s not encapsulated into the self-extracting tarball and the corresponding r=
elocation logic (<span style=3D"font-family:monospace,monospace">relocate_s=
dk.py</span>=C2=A0and so forth) is omitted.</div><div><br></div><div>Any su=
ggestions on how to do the last-mile work to use the SDK on Windows? Or per=
haps nothing is needed at all, except adjusting the prefixes built into <fo=
nt face=3D"monospace, monospace">environment-setup-&lt;arch&gt;</font>? Alt=
hough that would be nice, I think at least some installation-time adjustmen=
t is necessary though; when I do:</div><div><br></div><div><font face=3D"mo=
nospace, monospace">=C2=A0 =C2=A0 arm-poky-linux-gnueabi-gcc -o foo foo.c -=
-sysroot=3Dd:/projects/yocto-sdk/sysroots/cortexa15t2hf-vfp-neon-poky-linux=
-gnueabi</font></div><div><br></div><div>, the following happens during lin=
king:</div><div><br></div><div><font face=3D"monospace, monospace">=C2=A0 =
=C2=A0 ld.exe: cannot find /lib/libc.so.6 inside d:/projects/yocto-sdk/sysr=
oots/cortexa15t2hf-vfp-neon-poky-linux-gnueabi</font></div></div></blockquo=
te></span></div></div></div></blockquote><div><br></div><div>As it turns ou=
t, the immediate error here was simply that libc.so.6 did not exist, so ld.=
exe was telling the truth in this case. The symbolic links stored in the SD=
K tarball that would have created libc.so.6 aren&#39;t meaningful on Window=
s, so tar just ignores them when unpacking. Presumably some fancier handlin=
g of the tarball unpacking to simulate symlinks by making copies of the poi=
nted-to file would cure this.<br></div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-color:rgb(204,204,204);border-left-style:solid;padding-left:1ex">=
<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote"><spa=
n class=3D""><div><br></div></span><div>Mark Hatle&#39;s branch switches to=
 batch files for environment setup and whatnot. I don&#39;t know if it addr=
esses the reloc issue or not, but it&#39;s a substantial improvement over m=
aster. See <a href=3D"https://git.yoctoproject.org/cgit.cgi/poky-contrib/lo=
g/?h=3Dmgh/meta-mingw" target=3D"_blank">https://git.yoctoproject.org/cgit.=
cgi/poky-contrib/log/?h=3Dmgh/meta-mingw</a> <br></div></div></div></div></=
blockquote><div><br></div><div>Thanks, I&#39;ll try that.</div></div><br></=
div></div>

--001a11419f88e1aff6052e31752c--
