Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.6965.1581040521424447442
 for <yocto@lists.yoctoproject.org>;
 Thu, 06 Feb 2020 17:55:21 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=gRGGUyIn;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0D4EE01682; Thu,  6 Feb 2020 17:55:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com [209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A986AE01640;
	Thu,  6 Feb 2020 17:55:19 -0800 (PST)
Received: by mail-io1-f49.google.com with SMTP id h8so442772iob.2;
        Thu, 06 Feb 2020 17:55:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=gWXpsCAek7kmCzvTTk1+/UC7yRhP+6C/rAkRgxRI50g=;
        b=gRGGUyInkUaCRn6Yf7AHoidDKdT2uRi1KBuDn6DIBiPEfAkQcPfGz+epFq+tWDQZ3v
         0EaxfQod5rASwEv1jWVQbgc01/fEL4iSeLAy6H47tk8J9DZgLEwZL1mcb2Lqy9QbeHNt
         cZKG3adF1EhvVxF/pcWMwXb5CB8433mNbjtRDK9EmKpj37qUPBqufwbfbziSoNxSrlX9
         tytKe9aVd3aix28vbsMrFolD73sD2cUPo4PPmj9rUuPSSSgzaBBzj96pZd9kW7h1EhkI
         M0YvhaANif8z/sb6D6RlqYI817DxzBZO8MTBR+OcWE0t6Cn5EAVDmaYe4sV2AKbAJNg8
         lMnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=gWXpsCAek7kmCzvTTk1+/UC7yRhP+6C/rAkRgxRI50g=;
        b=tWMHbQeg+kcWAOKT5iPpiTsJ0FDk7m2odf0cePfpmkW94JnyoMzBTPwLr55QFVBjSw
         vqlkQNyeO1UagkeLL0sObZ+o+8Ad2oImp0Hp/lT9jXDFbWrbO2FK+pfrsydQSLu+vDEp
         7p7D+C6qPNFU+1CxcYLU1t6a5lfzIqj4a6VLNWP80fRMH+PiiPGVFr3dGK3fwyqqQAUZ
         dYHX+KbXk8Jyk0P4ozLQALNMc6GPSX6GQ6qUs1SoP6KryDjjlFqnosHZ8q+/cbr8cObM
         2MSaZ+COKz+rqz+Q6i+Yal6AXG6jMkK482a6QcI0L1Dk7ec/tUezDbwKprIGp+O+etpJ
         1nKQ==
X-Gm-Message-State: APjAAAWOkFMBPhEdW21lcxq99hbgPLSVplDXjhdMIaU3etkUdfE4HV6i
	///Zz9htP6JG5ptsY//MtSVPdlCfvuzWI2cHLXI=
X-Google-Smtp-Source: APXvYqzNnmbIKj9/1ea4/6D0eJE0mrN9hKAPqYazSKVSK7oI4guzIoyjbCqPYcuu4+6paN0Zj98FjmD0uJ1niF5Wbn8=
X-Received: by 2002:a92:390d:: with SMTP id g13mr6929563ila.53.1581040519087;
 Thu, 06 Feb 2020 17:55:19 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Thu, 6 Feb 2020 17:55:18 -0800 (PST)
In-Reply-To: <CAAx3WaAhLo1wbfsUdwdoNrYyEkJ38AgyFO0H+ckLyyqSgc3bOA@mail.gmail.com>
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <CAAx3WaDGin=NcQk3X4=MTK8RfTrNO=LvrG+LbAyrWFUnWgU9aQ@mail.gmail.com>
 <CAA=hcWSAbcf9GchJN_+-DzMDYJQfMKBGYHmJzRNwY5P_szMvOg@mail.gmail.com> <CAAx3WaAhLo1wbfsUdwdoNrYyEkJ38AgyFO0H+ckLyyqSgc3bOA@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Fri, 7 Feb 2020 12:55:18 +1100
Message-ID: <CAA=hcWQL8se7RR9bfuBsS0xpof0Y7vwEyQ5Zg_hm+Vq0FwjTPg@mail.gmail.com>
Subject: Re: [yocto] Support UBI u-boot
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Meta Freescale <meta-freescale@yoctoproject.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	U-Boot Mailing List <u-boot@lists.denx.de>
Content-Type: text/plain; charset="UTF-8"

Hi Gabriele,

On 2/6/20, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> As far as I know uboot (usually virtual/bootloader) does not have a task to
> run menuconfig directly from bitbake.
> I usually have a local clone of uboot and I simply run `make [...]
> menuconfig|savedefconfig` , then I create a patch
> to add my defconfig (custom_defconfig) to configs/ and specify
> UBOOT_MACHINE = "custom_defconfig"

Are there any document to use cross compiler tools to build u-boot-imx
on Ubuntu 18 host machine? It seems that build environment will not be
the same as the Yocto build environment I am currently running on
Ubuntu 18 host.

Thank you Gabriele for great helps.

Kind regards,

- jh
