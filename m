Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F0E7E00E61; Thu, 19 May 2016 07:57:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FSL_HELO_HOME,RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  1.0 FSL_HELO_HOME FSL_HELO_HOME
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CBA13E00D86
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:57:05 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id r12so21733644wme.0
	for <yocto@yoctoproject.org>; Thu, 19 May 2016 07:57:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ZRCbK2/knhe7FmrubKvo9XpFg8sA9e4eLbcyMmeXwpo=;
	b=cAdQSndJjoVO3H6h7nI1KANOe71XrxDNGXKKC1G2OaOcNcu6t8VwrJAH+wsw2JIq+g
	vIL0ElUwo2w/RkiUN8ULFdQQlBQRTLsZBLbgxzXSJABwz9QNDNt9V4ywecCCK4yWK6OE
	SxCLaSjeNkz3K6WklUk53berd3gZ3xPRxlj7pVrA3E5OuKgDU5AC2exwGyDVlct7SK6l
	PuqKrLIaRzruIKhbtFg+L3flMD3mS9e1d6QX9kU9FHAuG3f4u0n4pH97A1Lin6IKSlpl
	f9W0ymZsnJxYx/M64OR0s0dm7pna2ECS0iznI5NLN0ZxxXEsCRs167nxlK0bLz9/XaBK
	qnzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ZRCbK2/knhe7FmrubKvo9XpFg8sA9e4eLbcyMmeXwpo=;
	b=TCHR+MGNtw9MhBai4NkxP2/RgO5dcv8mK3fsJBbNG0i70OkuWqdNyixpI1iU8KTEC8
	eJJuMYaAGDlyQmjfPNKbXx6myn6wYgkBlJFjyhs+h8D5AKsqQTcaXPUAxmbVkxcSdgJc
	TJxyGwTijtxyK16sJMVBn5ZAFSDniEPd3p28M6dBEbFJfFM1HzwZ7wTwpbVfLz8lStOW
	AuXbT3zQCZZ+1B8w9DniOT/Qt3Rsqrf7N1W1sy4NntE1qAEHxJKPq7kgULsmSB+uNXGI
	a2UvinODLKfPdmeEUtYW1tiIr3BmHwLU8aiZUZhvXwcshibXuD8iZhlDJLzqrqJ+RynN
	kh+A==
X-Gm-Message-State: AOPr4FWNFPPz4NZ8xA7+4j//XjNDvlTzGs98/SieRBfq4JbNPZDbnbFHwRHo7DAHice5Tg==
X-Received: by 10.28.48.203 with SMTP id w194mr15031649wmw.67.1463669824993;
	Thu, 19 May 2016 07:57:04 -0700 (PDT)
Received: from resin.home (ip5f5acdbc.dynamic.kabel-deutschland.de.
	[95.90.205.188])
	by smtp.gmail.com with ESMTPSA id 63sm35733050wmz.5.2016.05.19.07.57.04
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 19 May 2016 07:57:04 -0700 (PDT)
Date: Thu, 19 May 2016 16:57:02 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Message-ID: <20160519145702.GE3601@resin.home>
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
MIME-Version: 1.0
In-Reply-To: <1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/8] Support for vc4 graphics driver: add vc4-kms-v3d to the overlays
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
X-List-Received-Date: Thu, 19 May 2016 14:57:08 -0000
X-Groupsio-MsgNum: 30074
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zjcmjzIkjQU2rmur"
Content-Disposition: inline

--zjcmjzIkjQU2rmur
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 18, 2016 at 08:21:16PM +0800, Herve Jourdain wrote:
> This patch series enables the support for the VC4 graphics driver from Eric Anholt.
> Add vc4-kms-v3d overlay if 'vc4graphics' is in MACHINE_FEATURES.
> (This patch has a dependency on the patch that enables the support of .dtbo overlay files)
>
> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
> ---
>  recipes-bsp/bootfiles/rpi-config_git.bb | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
> index 4bc8eb7..79e436d 100644
> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
> @@ -19,6 +19,8 @@ PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
>  PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
>  PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
>
> +VC4GRAPHICS="${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "1", "0", d)}"
> +
>  inherit deploy
>
>  do_deploy() {
> @@ -102,6 +104,12 @@ do_deploy() {
>          echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>          echo "enable_uart=1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>      fi
> +
> +    # VC4 Graphics support
> +    if [ "${VC4GRAPHICS}" = "1" ]; then
> +        echo "# Enable VC4 Graphics" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
> +        echo "dtoverlay=vc4-kms-v3d,cma-256" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt

NIT: space after >>

--
Andrei Gherzan

--zjcmjzIkjQU2rmur
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXPdQ+AAoJEHO76Gt+erfPE6oQAJFdCQMHsWgiC3pXzr1m/KAh
vHtI7t5FtXYnPjCZHwaG+LBCXFT6/OsxdZwAVUuSYZsr8HHJp1kt5uC5cs1i+VQo
HBDOE/3kMms1ogtI7zrTrEYqEE0wZdlsnC7y7UIzsefeVaYXCg38sgszs3HSgozU
7Qe+bjDeq6gomO+QBg+1DYaRwTpfdjs5q8TD3h+VWQ7XnOmmwajAVh901LPYoMJ2
O5hxZOi6AK5ou+Y4sYGC68ZrXLZuYUtsesU1tJTvvxlahjWFd7zlDcuWqN2jtoBy
X7AZdm/c6Vrj/PIfeKeKiPaUGEmtcqlDAC+N3XUYUE2Bb2k7fqpRzR7gwsUtZTVf
JheI8WdwPDhnlxuFw7fYXjoH2UJ0dN6Otmtf0tJlUb5t81pyXfzy7fJ0DBHAyO9M
UH73zCwIznor+5CpB0BcKZTBr/++WJGIhakxvWWoNvnagdEfGgoZKO2VYXaR2H4B
zZV6yAq743GltOKOusMbgfAUE6LqXlQkwD8owYDa/Nhaa3FDTuLbFQ4yKMDwiJOW
KyhjixOl8UFyIoUaciRJ8FLFTzeMj6iz0pDuiP7OJ0pmxGTjJTiuvH/598CZiNjv
BDIHsj8jpsa2iDOcaY8UYh4FR95+XYLAwvKcw3cX21PLS0ekZc41hO7H3Y40L4fU
h+xiDbkafJgD9zqOYjHK
=bX5U
-----END PGP SIGNATURE-----

--zjcmjzIkjQU2rmur--
