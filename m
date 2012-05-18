Return-Path: <eballetbo@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAAB2E01422
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 00:48:01 -0700 (PDT)
Received: by yenm14 with SMTP id m14so3358972yen.35
	for <yocto@yoctoproject.org>; Fri, 18 May 2012 00:48:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=pDOSc9KRgsV1fVA3pB5jl8PMiiWZzD3tXLEPo5KjNWk=;
	b=cboi8w1Ps+6bVKG+tIiUZPeAS1bgMaoLcEjHqQPmZm9U00S8DKfvRgaLbFI23lmWEp
	iUHa/Ke2+JvDBBNlu2A5zUbugZS5+MgmwmthDTakxmBw6AbZqMkotqWpf3zJBcEElx2b
	LdwYNTt//D2prhhUVoN01/lLueaoLChGbLAhiFsZtHcfPNur34oMtRgGfbeT/ce9aF2S
	UONLzbVfhQCSTjIx7vCDfS6t3r8oXq2QPGXQSXH7tqbAmFElBS9EpmQSSJ6/RLYd3bL4
	w7Caw36FYBiFGcbZFKXnd2YNVJDTMzf50MpbiW5HlPw/mB/Pr8cpJhHDduBJxVCMx873
	eRcg==
MIME-Version: 1.0
Received: by 10.43.46.196 with SMTP id up4mr6416544icb.41.1337327280801; Fri,
	18 May 2012 00:48:00 -0700 (PDT)
Received: by 10.42.19.134 with HTTP; Fri, 18 May 2012 00:48:00 -0700 (PDT)
Date: Fri, 18 May 2012 09:48:00 +0200
Message-ID: <CAFqH_53V8xEibzh7H5m-LEAm1N1-VmDubM4qrb2GBmF2Tc6G9g@mail.gmail.com>
From: =?UTF-8?Q?Enric_Balletb=C3=B2_i_Serra?= <eballetbo@gmail.com>
To: yocto@yoctoproject.org
Subject: meta-ti layer and tag 2012.05-yocto1.2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 18 May 2012 07:48:01 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

Just to be sure, should the tag 2012.05-yocto1.2 from meta-ti layer be
compatible with yocto-1.2 (denzil) branch ? Or also depends on other
layers. Adding only the meta-ti layer to the yocto 1.2 seems is not
working, there is an unmet dependency on systemd.bbclass.

  yocto-1.2$ bitbake core-image-minimal
  ERROR: ParseError at
/home/eballetbo/Workspace/poky/yocto-1.2/meta-ti/recipes-misc/payload/bonescript.bb:5:
Could not inherit file classes/systemd.bbclass
  ERROR: Command execution failed: Exited with 1

Cheers,
   Enric

