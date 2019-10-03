Return-Path: <phodina@protonmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 294FBE00D8C; Thu,  3 Oct 2019 04:01:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (phodina[at]protonmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [185.70.40.133 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 383 seconds by postgrey-1.32 at yocto-www;
	Thu, 03 Oct 2019 04:01:15 PDT
Received: from mail-40133.protonmail.ch (mail-40133.protonmail.ch
	[185.70.40.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D590E00D8C
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 04:01:15 -0700 (PDT)
Date: Thu, 03 Oct 2019 10:54:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=default; t=1570100089;
	bh=7q8ZZ3o0x90UKwPuojv+K0JEoKO7ISwb0kM2tLnvYcA=;
	h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:
	Feedback-ID:From;
	b=Z9OCK9G55wj3BxPyVGSMFWlo6ZY+b48PO5SwSwr0zrjRI/quseQ32W0pa8Rf9bzkG
	tGduXKOU9dIVWMCYNahUqj83TgxViNnMivLthhh+VYgN/U0kmZj26S62jgWunGeQN5
	N5pRRelohZgPEH2QFIaf8JhyDa2++nFStardjXg4=
To: Randy MacLeod <randy.macleod@windriver.com>
From: phodina <phodina@protonmail.com>
Message-ID: <22BfbVtjbhONAXnU9qn5Y9CVM7XsrherXE1JZilwa7w2GWJIJOrFBWALmNOl10uWEfKSV99dcRjYTRCmUGPh6OcZbHUv5fyhYxhQw80UQIE=@protonmail.com>
In-Reply-To: <e9a77cdd-8f1a-69d9-2d09-aed56c7d13b3@windriver.com>
References: <iKxrudTDXgn2XHKttVPFe-_xTAbPoQUMbSBzr7r6Xza3vohxh9wPCRrFZo7bf1bgrQj_DKCt-5Ky7-dagX_blQpi_uZbWfnAvp7TDCCbh0U=@protonmail.com>
	<8bb3f05c-966b-4076-6593-d042bb8240ad@gmail.com>
	<6v81ntCcT70rvm2b8GwiRAeNSZSIEec-hUpr0hIN7HYR9RySExiu50vZaZM0jXSjiu2PYGbQ5mKn1e0cv3q13NlyJ5rwb6cdV0h1mpb9jXc=@protonmail.com>
	<wNEOi-_A4sN9BRhUCA6bCldM2iWQIpgYPAYUaT3Gqku16wkJq_fXBk_jlOuoUZpFBv4T7_CqWpoA7Yl0I0rHbvrsYpI5g7FtdjQ36SyI2Xc=@protonmail.com>
	<bb902393-3fc3-6b68-f418-3c2a4d3b189c@gmail.com>
	<Ji28AOGAddYhx0MrDU5EjIkRSdwJCwFCsKtxE6zFAllu6lRRNxSKIJd_HoP2gWRr2U6Mkl1i-39AIVXKdnsWpiBIX40FA4DdGUqmy0zOGpA=@protonmail.com>
	<e9a77cdd-8f1a-69d9-2d09-aed56c7d13b3@windriver.com>
Feedback-ID: WU-00Ahv_QFc-Old2XdUwP9_sGElXtQR31rOJwjYWWqLX_9ex7ByiHdLFjcA-uzDxwcHRsVBm6TqgwWtgB1KAA==:Ext:ProtonMail
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Awkward line wrapping in bash
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: phodina <phodina@protonmail.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Oct 2019 11:01:17 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,

so I managed to minimize the build image and run it in QEMU. Now I build on=
ly poky, open-embedded and our own layer, containing minimal reciepes. The =
problem with the awkward line wrapping is still present. Sometimes it doesn=
't come up until I change the size of terminal window.

More interesting is that if I run `busybox sh` the issue is not present and=
 the line wraps correctly.

The issue happens with ssh as well as serial.

I tried to install the `xterm` pkg which has `resize` binary for changing t=
he terminal window size, but without any luck.

Kind regards
Petr


Sent with ProtonMail Secure Email.

=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90 Original Me=
ssage =E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90=E2=80=90
On Thursday, September 19, 2019 8:45 PM, Randy MacLeod <randy.macleod@windr=
iver.com> wrote:

> On 9/19/19 11:43 AM, phodina wrote:
>
> > Hi,
> > based on Andr=C3=A9 recommendation I commented out the PS1 variable and=
 now I get `-sh-4.4#` for the prompt. I also checked and nothing is overwri=
ting the variable.
> > But I tried to change the size of the shell by using `stty cols 100 row=
s 40` as well as different sizes (smaller and bigger than 80 columns), but =
the amount of characters I get on the line stays at 81 followed by carrige =
return. However if I record the session with `script` I get the correct amo=
unt of characters per line.
>
> If you are able to reproduce this proble on the master, or a
> stable (1) branch with one of the supported qemu or HW BSPs (2),
> please open a defect in:
> https://bugzilla.yoctoproject.org/
>
> Please report the branch, what layers you are using (hopefully you
> can reproduce it with just oe-core/poky + a HW layer) and
> with a standard image.
>
> ../Randy
>
> (1) https://wiki.yoctoproject.org/wiki/Releases
>
> (2):
> The list here is a good start, I'm not sure about the FSL support and
> I suspect that minnow board is no longer relevant.
>
> https://bugzilla.yoctoproject.org/describecomponents.cgi?product=3DBSPs
>
> If your hardware isn't listed, and you can't reproduce the issue
> in qemu or supported HW, you should contact your HW supplier.
>
> -------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
---------------------------------------------------------------------------=
-------------------------------------------------
>
> Randy MacLeod
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> Wind River Linux
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D



