Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f178.google.com (mail-vc0-f178.google.com
	[209.85.220.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 622D2E01482
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 02:24:58 -0700 (PDT)
Received: by mail-vc0-f178.google.com with SMTP id id13so6202077vcb.37
	for <yocto@yoctoproject.org>; Wed, 29 May 2013 02:24:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=6LCqdoMA+41uL0Ha5LqhwKa0wp9k0B2jWvOFiYSfZkI=;
	b=PwdQvH4jMSlHN1/tPkNrKzvkdP0WQL+1SzByNP4Y7B1Y5BNmYJBv1b21BpM8DG3liA
	meIAGwJ7eZAaPUPTKEVTcsKCQZRjsLdwREedDrbDOnjiWPrrl0C0Y7o/jYIaLy/rTRM5
	vwdi5080yeywdL5dLW9aatPmYxBElMhR8LPUxz1N0kS0aeeojvDRSSetQiJf0WFyja+x
	1Pba+Si20fI5Gd1LxdTA7tWMMaSmcAdejvWOb/QXixxccgkiP2gjoTkMV6zdXTmWxFK3
	hxzQa2EjPzb0ifh9XP/IQJbLsifkIggdAXQ0vK3Laks6JcuU3RebEk8fY1PeP5wzzaiG
	sNLw==
X-Received: by 10.59.3.198 with SMTP id by6mr968946ved.39.1369819497335; Wed,
	29 May 2013 02:24:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.98.7 with HTTP; Wed, 29 May 2013 02:24:37 -0700 (PDT)
In-Reply-To: <51A5C7A0.2000908@mycable.de>
References: <51A5C7A0.2000908@mycable.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 29 May 2013 10:24:37 +0100
Message-ID: <CAJTo0LbU2qs5gpzxZiu3bhBO3O83Lcxks17EyqKtucOT32h0Cw@mail.gmail.com>
To: =?UTF-8?Q?Sebastian_S=C3=BCsens?= <su@mycable.de>
X-Gm-Message-State: ALoCoQmH/kPd5QMvZ5QQ9Se3oEFmSuC4usTJqpBGX6X3f1mj6/hHGh0ERP1dZgBI18xCeEC+foff
Cc: yocto@yoctoproject.org
Subject: Re: How can I change the install path of the rootfs?
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
X-List-Received-Date: Wed, 29 May 2013 09:24:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 29 May 2013 10:17, Sebastian S=C3=BCsens <su@mycable.de> wrote:
> I want to install scripts in a folder names can. My bitbake file looks
> following:
>
> DESCRIPTION =3D "Test scripts for testing xxsq701 interfaces"
> SECTION =3D "test_applications"
> PR =3D "r0"
> PN =3D "test-scripts"
> LICENSE =3D "${MYC_LICENSE}"
> LIC_FILES_CHKSUM =3D "file://${MYC_LICENSFILE};md5=3D${MYCMD5_LICENSFILE}=
"
>
> S=3D"${TOPDIR}/../applications/meta-testapps/test-scripts/src"
>
> do_install() {
>     echo "DO_INSTALL: install test-scripts to ${D}/can"
>     install -d ${D}/can
>     install -m 0777 ${S}/can/init_can.sh ${D}/can
> }
>
> When I run bitbake I get following error:
> WARNING: QA Issue: test-scripts: Files/directories were installed but
> not shipped
>   /can
>   /can/init_can.sh
>
>
> And bitbakes break off with this message:
> Unable to resolve package test-scripts
>
>
> When I replace can with ${bindir} it works.
>
> How can I change the install path of the rootfs?

If you want to install stuff into a non-standard path then you'll need
to redefine the FILES_ variables (which defaults to $bindir and so on,
for convenience).  In this case, FILES_${PN} =3D "/can" will be
sufficient.

http://www.yoctoproject.org/docs/1.4/ref-manual/ref-manual.html#var-FILES
is the relevant section in the reference documentation.

Ross

