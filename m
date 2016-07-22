Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7BDAE00ECB; Thu, 21 Jul 2016 18:22:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,FREEMAIL_REPLY,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5A95E00EBC
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 18:22:43 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id x72so35688886pfd.2
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 18:22:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=IaTMF/bru0VD5rlUWHE2miKpsRI8xlyIxrGZnlZrqVg=;
	b=vfRtSwzJ0jHecfNbi5E9nGLAIFQmObLcSeBIFFUgZNbANLBeFxhB77xt3My6RS32xB
	R7itlchQF+E20TwVNxlDBFMEU0fKHXLOWeC3MWB377uKa1oVx5ogrVcc+LdVky89JSWP
	XfBFFTGMKRZy2M2lZWgYAubkifLl0m4LwBy7+vMz6u2hK2TE4Io+1sK2ivxcQViI0YS+
	nYYPWJB0KQHXN449+daIfn3Hcll2NCATpEubKxkYhFUnIfCRWdwyQWlRLLMgKmIFKUEU
	feW9bN/9bSEaSxd9sL7C3oOK+f9QXJeolpE1TjqLnvKqCSYYFwpCr227crUPrxG4ETCd
	QL9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=IaTMF/bru0VD5rlUWHE2miKpsRI8xlyIxrGZnlZrqVg=;
	b=AY8wO45UKURm1MxSbeaPhOo97VLj2wFZFxcd+TuH9LzudToINeLH51MVf6piAxdeYv
	uRDKh8/VkEI0TRII8kYdp51h8CHZT2GQk4AXfRiDC336eJ7511rXTWPsHjV5YQZA4dLr
	Ll0E1f1tytjp3fTSDSLy9E5Cdh4K5l4G3jgTNMQ4vAPxyYg7vgnAEd68dFJgvQMdr0i3
	CedcNgb02BCmcVvYc2Tfkp8FM7X4TI4TCH/3oX1Js26h/ekItTbkfSeRy3oQn1qhOBDs
	fAbOs/AIWF3HJ83oq7XZG26f3hYcTScslgtK5PaJ4kt3dlntoGlsfJmaidyzYxNig/fv
	yEyA==
X-Gm-Message-State: AEkoouvMav0cSfW2QNCjYglC7f4+j6vppdwp37cluGvIWt9sFag0BEx+TdMWjazufMs+8Q==
X-Received: by 10.98.75.219 with SMTP id d88mr1908811pfj.91.1469150562702;
	Thu, 21 Jul 2016 18:22:42 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:3c4d:dddf:359e:d5c?
	([2601:646:8882:b8c:3c4d:dddf:359e:d5c])
	by smtp.gmail.com with ESMTPSA id
	yt4sm15085136pab.26.2016.07.21.18.22.41
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Thu, 21 Jul 2016 18:22:41 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CAJ58UN=ZNBHx+HHeyM-=QmuDqr8bZJh8iN8ok9idTDeOc1W-_A@mail.gmail.com>
Date: Thu, 21 Jul 2016 18:22:32 -0700
Message-Id: <EF6FEB28-A462-4940-94A4-FBAA5EB30AEE@gmail.com>
References: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
	<CAJTo0LYdSWbPsMV5DM=KU8MZ1m9_tsCMS-3qRLFDZNf92W8D5w@mail.gmail.com>
	<662CD185-8933-4DEF-A46F-F4405875563D@gmail.com>
	<CAJ58UNnokEQS=RD2jeg6mxkvknH_OBgLs9xAc07FA-xEdfD-MQ@mail.gmail.com>
	<3D08749C-C5D5-46A4-BC0F-1E6C99655620@gmail.com>
	<CAJ58UN=ZNBHx+HHeyM-=QmuDqr8bZJh8iN8ok9idTDeOc1W-_A@mail.gmail.com>
To: Vijayakumar Badiger <vijayakumarmb@gmail.com>
X-Mailer: Apple Mail (2.3124)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error during adding a new recipe.
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
X-List-Received-Date: Fri, 22 Jul 2016 01:22:44 -0000
X-Groupsio-MsgNum: 31169
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A52C4130-1773-4C34-B75E-69EE89FEBD2E";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A52C4130-1773-4C34-B75E-69EE89FEBD2E
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_AC220A21-67F0-4029-92F0-1D248D17A780"

--Apple-Mail=_AC220A21-67F0-4029-92F0-1D248D17A780
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8


> On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger =
<vijayakumarmb@gmail.com> wrote:
>=20
> The sync driver is already ported in the kernel.  I just need to get =
this compilation error fixed. I tried adding below change to kernel bb =
file but still I get that same error.
>=20
> PACKAGES =3D+ "kernel-headers"
> FILES_kernel-headers =3D "${KDIR}/usr/include=E2=80=9D

there is a different recipe for headers linux-libc-headers that also =
needs to be patched and then hopefully kernel build system is exporting =
this header for userspace automatically
and you will be set.

>=20
>=20
> Cheers
> Vijay
>=20
>=20
> On Thu, Jul 21, 2016 at 4:11 PM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
>=20
>> On Jul 21, 2016, at 3:34 PM, Vijayakumar Badiger =
<vijayakumarmb@gmail.com <mailto:vijayakumarmb@gmail.com>> wrote:
>>=20
>> I am trying to integrate the adb daemon by pulling in the userspace =
project from the android system/core. =
http://androidxref.com/6.0.1_r10/xref/system/core/ =
<http://androidxref.com/6.0.1_r10/xref/system/core/>
>> When we try to compile libsync I am getting this error. Can you pls =
let me know how to overcome this. Thanks.
>>=20
>>=20
>=20
> you need to port the sync driver to kernel you are using and also it =
should be patching the kernel-headers package since it seems they are =
also exposing
> some APIs to userspace.
>=20
>>=20
>> On Thu, Jul 21, 2016 at 3:08 PM, Khem Raj <raj.khem@gmail.com =
<mailto:raj.khem@gmail.com>> wrote:
>>=20
>>> On Jul 21, 2016, at 2:59 PM, Burton, Ross <ross.burton@intel.com =
<mailto:ross.burton@intel.com>> wrote:
>>>=20
>>>=20
>>> On 21 July 2016 at 22:51, Vijayakumar Badiger =
<vijayakumarmb@gmail.com <mailto:vijayakumarmb@gmail.com>> wrote:
>>> =
/local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarch64-poky-li=
nux/system-core/git-r17/system/core/libsync/sync.c:24:24: fatal error: =
linux/sync.h: No such file or directory
>>> compilation terminated.
>>> make[2]: *** [libsync_la-sync.lo] Error 1
>>>=20
>>> That's not a standard user-space kernel header and doesn't appear to =
be a standard header at all, so the question is where do you expect that =
header to come from?
>>>=20
>>=20
>> Its from android sync driver for kernel, which is not upstreamed yet.
>>=20
>>> Ross
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>>> https://lists.yoctoproject.org/listinfo/yocto =
<https://lists.yoctoproject.org/listinfo/yocto>
>>=20
>>=20
>=20
>=20


--Apple-Mail=_AC220A21-67F0-4029-92F0-1D248D17A780
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 21, 2016, at 5:20 PM, Vijayakumar Badiger &lt;<a =
href=3D"mailto:vijayakumarmb@gmail.com" =
class=3D"">vijayakumarmb@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">The sync driver is already ported in the kernel.&nbsp; I just =
need to get this compilation error fixed. I tried adding below change to =
kernel bb file but still I get that same error.<div class=3D""><br =
class=3D""></div><div class=3D""><div class=3D"">PACKAGES =3D+ =
"kernel-headers"</div><div class=3D"">FILES_kernel-headers =3D =
"${KDIR}/usr/include=E2=80=9D</div></div></div></div></blockquote><div><br=
 class=3D""></div><div>there is a different recipe for headers =
linux-libc-headers that also needs to be patched and then hopefully =
kernel build system is exporting this header for userspace =
automatically</div><div>and you will be set.&nbsp;</div><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
dir=3D"ltr" class=3D""><div class=3D""><br class=3D""></div><div =
class=3D""><br class=3D""></div><div class=3D"">Cheers</div><div =
class=3D"">Vijay</div><div class=3D""><br class=3D""></div></div><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On Thu, =
Jul 21, 2016 at 4:11 PM, Khem Raj <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" =
class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
style=3D"word-wrap:break-word" class=3D""><br class=3D""><div =
class=3D""><span class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 21, 2016, at 3:34 PM, Vijayakumar Badiger &lt;<a =
href=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank" =
class=3D"">vijayakumarmb@gmail.com</a>&gt; wrote:</div><br class=3D""><div=
 class=3D""><div dir=3D"ltr" class=3D"">I am trying to integrate the adb =
daemon by pulling in the userspace project from the android =
system/core.&nbsp;<a =
href=3D"http://androidxref.com/6.0.1_r10/xref/system/core/" =
target=3D"_blank" =
class=3D"">http://androidxref.com/6.0.1_r10/xref/system/core/</a><div =
class=3D"">When we try to compile libsync I am getting this error. Can =
you pls let me know how to overcome this. Thanks.</div><div class=3D""><br=
 class=3D""></div><div class=3D""><br =
class=3D""></div></div></div></blockquote><div class=3D""><br =
class=3D""></div></span><div class=3D"">you need to port the sync driver =
to kernel you are using and also it should be patching the =
kernel-headers package since it seems they are also exposing</div><div =
class=3D"">some APIs to userspace.</div><span class=3D""><br =
class=3D""><blockquote type=3D"cite" class=3D""><div class=3D""><div =
class=3D"gmail_extra"><br class=3D""><div class=3D"gmail_quote">On Thu, =
Jul 21, 2016 at 3:08 PM, Khem Raj <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:raj.khem@gmail.com" target=3D"_blank" =
class=3D"">raj.khem@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
style=3D"word-wrap:break-word" class=3D""><br class=3D""><div =
class=3D""><span class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Jul 21, 2016, at 2:59 PM, Burton, Ross &lt;<a =
href=3D"mailto:ross.burton@intel.com" target=3D"_blank" =
class=3D"">ross.burton@intel.com</a>&gt; wrote:</div><br class=3D""><div =
class=3D""><div dir=3D"ltr" class=3D""><div class=3D"gmail_extra"><br =
class=3D""><div class=3D"gmail_quote">On 21 July 2016 at 22:51, =
Vijayakumar Badiger <span dir=3D"ltr" class=3D"">&lt;<a =
href=3D"mailto:vijayakumarmb@gmail.com" target=3D"_blank" =
class=3D"">vijayakumarmb@gmail.com</a>&gt;</span> wrote:<br =
class=3D""><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
class=3D"">/local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarc=
h64-poky-linux/system-core/git-r17/system/core/libsync/sync.c:24:24: =
fatal error: linux/sync.h: No such file or directory</div><div =
class=3D"">compilation terminated.</div><div class=3D"">make[2]: *** =
[libsync_la-sync.lo] Error 1</div></blockquote></div><br class=3D"">That's=
 not a standard user-space kernel header and doesn't appear to be a =
standard header at all, so the question is where do you expect that =
header to come from?</div><div class=3D"gmail_extra"><br =
class=3D""></div></div></div></blockquote><div class=3D""><br =
class=3D""></div></span><div class=3D"">Its from android sync driver for =
kernel, which is not upstreamed yet.</div><br class=3D""><blockquote =
type=3D"cite" class=3D""><div class=3D""><div dir=3D"ltr" class=3D""><div =
class=3D"gmail_extra">Ross</div></div><span class=3D""><font =
color=3D"#888888" class=3D"">
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" =
class=3D"">yocto@yoctoproject.org</a><br class=3D""><a =
href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank" =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto</a><br =
class=3D""></font></span></div></blockquote></div><br =
class=3D""></div></blockquote></div><br class=3D""></div>
</div></blockquote></span></div><br =
class=3D""></div></blockquote></div><br class=3D""></div>
</div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_AC220A21-67F0-4029-92F0-1D248D17A780--

--Apple-Mail=_A52C4130-1773-4C34-B75E-69EE89FEBD2E
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAleRdWAACgkQuwUzVZGdMxSmygCeJbYrmUdB4syKSykbeBAfWf45
+4MAniIxiKjaHowPBYXmsnL3qDn49SLN
=49Bg
-----END PGP SIGNATURE-----

--Apple-Mail=_A52C4130-1773-4C34-B75E-69EE89FEBD2E--
