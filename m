Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6B59EE00D4E; Fri, 16 Dec 2016 08:58:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 81EBCE008D3
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 08:58:24 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id p66so10243745pga.2
	for <yocto@yoctoproject.org>; Fri, 16 Dec 2016 08:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=jCCIwKlXyA8seJ6lXnL8L6gA4+aiGhgCgrJdaie2Mp4=;
	b=SlbR624bEKiSbk5MER0VT8YIU+LLPKsCJG0tChxdXfQrlch+6X0SyBt+LA0zx4s4be
	KLpLZ6CbTN/E0pxl4v16xFZyb4yljKsv/FnC8O/Bt17mPGjhm9TRQnqWJBaW9Vk9z7Y7
	Gr+gAtaoy1tfFaptm5qKTgWq7VQ54CdKo/mKrvXMXfYeTazByOP5ZXzbWU24ExvG0Meb
	0gCV3WtEWIwY9RWt1nkyuQRfgf/2eJjniyrF+Xcca1cV6T/NlfpoXWHVN7gQEU2IRrCp
	hMWA4Rl8dHVM8eu8AuudKuMG04UV71k7VvVuNWw1Am8ag4nrdnx0q1osSYiNxmoadtTt
	Zewg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=jCCIwKlXyA8seJ6lXnL8L6gA4+aiGhgCgrJdaie2Mp4=;
	b=ukkVWUoKc81B9642sLTBCpFILXBBW0TiNhLFhn9qCN0Pwf78Vroc07GDR/zLepDq8R
	H2GnDEpyaClwU/RtFuMBHD+y1wvX0b5MfIFoHnlcEcZ5uXw2zTa4Asvrvs4Uwt3AcD1d
	WdzIjNe3vThtD7xy3XgtxNNaBOXxYp6cwXTtFvJeypFiWdnXb0IJnzQKepMxNUIJq66R
	sazfqksdSIfkwz/V7MVD1fxlzwZZ0s0rD9/rf8CZWPtMV3Fky2s49KtmQIY8w6Rw8Tei
	nNogx3YviRiU6Jw1f2pWvyIq1oZLYEGXEjzTgHJSzLYSR0qfAGb58reBAaTOzhwkktDZ
	nCcw==
X-Gm-Message-State: AKaTC03QLAqTCTu0Wg9ENA3gbfcuA3LJQGdLylheHRWQHlcTw7B6DDdYURP2vrBDulCBbg==
X-Received: by 10.84.218.136 with SMTP id r8mr8843161pli.23.1481907503726;
	Fri, 16 Dec 2016 08:58:23 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:8035:ba73:d6e2:ea72?
	([2601:646:8882:b8c:8035:ba73:d6e2:ea72])
	by smtp.gmail.com with ESMTPSA id
	d197sm13194233pfd.38.2016.12.16.08.58.22
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 16 Dec 2016 08:58:23 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.2 \(3259\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
Date: Fri, 16 Dec 2016 08:58:22 -0800
Message-Id: <7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
	<1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
To: Piotr Lewicki <piotr.lewicki@elfin.de>
X-Mailer: Apple Mail (2.3259)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Fri, 16 Dec 2016 16:58:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Dec 15, 2016, at 2:05 AM, Piotr Lewicki <piotr.lewicki@elfin.de> =
wrote:
>=20
> Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
> ---
> recipes-kernel/linux/linux-rpi.inc | 11 +++++++++--
> 1 file changed, 9 insertions(+), 2 deletions(-)
>=20
> diff --git a/recipes-kernel/linux/linux-rpi.inc =
b/recipes-kernel/linux/linux-rpi.inc
> index 95a9530..c665b9f 100644
> --- a/recipes-kernel/linux/linux-rpi.inc
> +++ b/recipes-kernel/linux/linux-rpi.inc
> @@ -34,11 +34,13 @@ kernel_configure_variable() {
>     fi
> }
>=20
> -do_configure_prepend() {
> +do_rpi_kconfig_clean() {
>     # Clean .config
> -    echo "" > ${B}/.config
> +    echo -n "" > ${B}/.config
>     CONF_SED_SCRIPT=3D""
> +}
>=20
> +do_configure_prepend() {
>     # oabi / eabi support
>     kernel_configure_variable AEABI y
>     if [ "${ARM_KEEP_OABI}" =3D "1" ] ; then
> @@ -124,8 +126,11 @@ do_configure_prepend() {
>     # Keep this the last line
>     # Remove all modified configs and add the rest to .config
>     sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> =
'${B}/.config'
> +    # Clean variable- useful when calling configure step multiple =
times
> +    CONF_SED_SCRIPT=3D""
>=20
>     yes '' | oe_runmake oldconfig
> +
> }
>=20
> # Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
> @@ -146,3 +151,5 @@ python () {
>=20
>     configfile.close()
> }
> +
> +addtask rpi_kconfig_clean before do_configure after do_populate_lic

we should investigate the kernel tooling from OE-Core and use that IMO=

