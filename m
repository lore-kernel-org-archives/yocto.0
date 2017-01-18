Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 692C2E004D2; Wed, 18 Jan 2017 13:35:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38845E00480
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 13:35:29 -0800 (PST)
Received: by mail-wm0-f54.google.com with SMTP id r144so46865671wme.1
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 13:35:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=wEih3oVCsThisuy69c6+T3mBNx76+yGXsK1WM1FDmFI=;
	b=RHs8ZYhDu7hN9Y5KISRkV53+VoZGUNOKucnA6QpBsD4VtqfFtC39j4014O2PioeaO9
	ogiB+mN370oUWKGn1lXHXhSYFxYS76uV0TzRTGcgz730vwekKdYJzYXA6MMhZWi10azG
	vLmMYwkAkf9ONECwso+onnRhv8cLGCmZdghnZIOQy7nhfaiMuThAj2IqpkTIpEkdJnf5
	TIl5oe2zs2rgZiU+3diJMXezV6dPWiW/tMlmeG0hfTV2Q3zg15NqOUknTo+A7wEenjz0
	lPDOt8W9Gy+SNeO6TcJJocxshdI1Yb48fbkp7oC3J2OIBgAxWVswzJDLRr4uOemdme65
	sBoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=wEih3oVCsThisuy69c6+T3mBNx76+yGXsK1WM1FDmFI=;
	b=cUrRw06oU5W7vgozzpmNkPiXzmd5SUADYJSjZNtzjUGkjmJt0Y4jIvGDH15tPwXr97
	FOXkAeUV+9RyA3LLcebDzTPw53MYarfuBcQhSRsuhFG54GS/jhtWQxTpz4tb319FUYsG
	+FgjzJaRum4/cBhjG15fnpvaV2r+WEd8seJA3xlODJ4NWyQiY7yQ2+3KMMRflMamMM36
	ftZPAA3UpheOjwuNeXCSZ8PfJR/3NOnoHRB6AISJ9Mg5H2FojMI4ndgpSct7Si633Brr
	lzrFwM8EQebhVgsjYvPUiyIXVF7zDP05XquZpG50+tAHxz5x23pPzIMz9T8d4I9zJIUg
	J+nA==
X-Gm-Message-State: AIkVDXIQ5FMCJyzQi63xKinuDR/evoGlqz6UDYpjfLXfacCgikB+HGiNvVjB/be6lZuCcDDLfDwrXK3i6SpuYQ==
X-Received: by 10.223.178.9 with SMTP id u9mr4536350wra.125.1484775328728;
	Wed, 18 Jan 2017 13:35:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.194.248.129 with HTTP; Wed, 18 Jan 2017 13:35:28 -0800 (PST)
In-Reply-To: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
References: <049201d2719c$fea9e670$fbfdb350$@ln-systems.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 18 Jan 2017 13:35:28 -0800
Message-ID: <CAJ86T=Xx0Dt_Y6x+5Ujz=5-edNzFusrFa_oyrEOcZjW9mkCrkA@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Changing over to systemd (no dhcp)
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
X-List-Received-Date: Wed, 18 Jan 2017 21:35:33 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 18, 2017 at 7:10 AM,  <colin.helliwell@ln-systems.com> wrote:
> We have a configuration for our embedded system which is working via SysV=
,
> but we=E2=80=99re investigating moving over to systemd.
>
> Not sure if this is =E2=80=98wise=E2=80=99 =E2=80=93 if anyone has techno=
logical arguments
> for/against then I=E2=80=99d be interested =E2=80=93 but I wanted to inve=
stigate it anyway.
>
> I=E2=80=99ve modified local.conf (right or wrong) with
>
>   DISTRO_FEATURES_append =3D " systemd"
>   VIRTUAL-RUNTIME_init_manager =3D "systemd"
>   DISTRO_FEATURES_BACKFILL_CONSIDERED =3D "sysvinit"
>   VIRTUAL-RUNTIME_initscripts =3D ""
>   KERNEL_ENABLE_CGROUPS =3D "1"
>
> I also found a readme
> (https://cgit.freedesktop.org/systemd/systemd/tree/README#n37) about the
> kernel requirements for systemd, and it does at least now boot.
>
> However although eth0 is coming up (=E2=80=98ifconfig eth0=E2=80=99), the=
re doesn=E2=80=99t seem to
> be any dhcp happening =E2=80=93 no IP etc.
>
> Previously (under SysV) I had the busybox dhcp client; now it seems that =
is
> missing. There=E2=80=99s a symlink /etc/systemd/system/busybox-udhcpc.ser=
vice to
> /dev/null
>
> I=E2=80=99m using
>
>   Poky Jethro
>   Kernel 4.4.0
>   Busybox 1.23.2 (with =E2=80=98CONFIG_FEATURE_SYSTEMD=3Dy=E2=80=99)
>
> I wondered if this is just a simple switch I=E2=80=99m missing somewhere,=
 or is
> there a whole load more modifications I need to dig into and hand-craft?
> (Was hoping for something =E2=80=98out of the box=E2=80=99=E2=80=A6.)

Try:

  VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

Enabling systemd is somewhat documented by the example in
{meta-poky,openembedded-core/meta}/conf/local.conf.sample.extended,
which is:

#
# Use systemd for system initialization
#
# DISTRO_FEATURES_append =3D " systemd"
# DISTRO_FEATURES_BACKFILL_CONSIDERED +=3D "sysvinit"
# VIRTUAL-RUNTIME_init_manager =3D "systemd"
# VIRTUAL-RUNTIME_initscripts =3D "systemd-compat-units"

