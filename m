Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4A42E00DC2; Mon, 11 Dec 2017 05:22:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f179.google.com (mail-wr0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2BF7E00DB7
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 05:21:54 -0800 (PST)
Received: by mail-wr0-f179.google.com with SMTP id q9so17550136wre.7
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 05:21:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=CfOOpONw3lnrWgoyeBQKrQEesh5ujlpTyTK458lN4dA=;
	b=CxGOcnh3Bz0H773hHJkU5Et3u7WQ16NQzNZaYgwtTgFW9ggC3sPsadhN/bI58ZiUa/
	0j4eCK3NvvjOenU4m7/e+CiDUgK2vhJ8Y2xfzxA/tV4mEv+KDOuMd/Ou02ush02lBOui
	fh0IBUeaEzh9Ia1GTFdqHoRrL0jwJWPcGCG1Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=CfOOpONw3lnrWgoyeBQKrQEesh5ujlpTyTK458lN4dA=;
	b=TOLzbKLr+rn6NaHCk+w1YCkXkeux6faPLY2hVMGFx5QrYwoQPG5OonwaVxzaZbV5GQ
	TwYVirl5JE1pZQm5gSHTfNyDlL3+pUW8XNhSL+atTm9tq2mJJRnJ31Mb50nLsksX10Eu
	SRNE2Ub17VHPGDtvRuGEYpZ+XdWfltE80FRFiOMP9yu22G4tTJ60rVP3EsTDUVpXxJ5J
	v8/vP9c/D4qGtbsFkGY1dgc5WRhWVpI864KPivK8zPd3Mf3Zl0/J93PnBZkBnFzzz2Il
	aCyjljfNE4LZDsfmoyhUDtUIrXHW9IDADFfoheMKTkCEUP5zf4NfofyU5ZTAyxaGQkFT
	6KXg==
X-Gm-Message-State: AKGB3mI/IdhEeninpOw/BhkMMJGSBZlwRUgE7pDz9PMFCqwPSZzzYvJt
	eUgQd1a12d/rDEp3rV1m3urtX0+hVXU=
X-Google-Smtp-Source: ACJfBoup7FIrlElVYEEkWUgsfdrvKsdhDve3j59UoqSwLkAf/B2Ud7ThRx4CD+XnQgGSJ4IDHdzh4w==
X-Received: by 10.223.134.5 with SMTP id 5mr388487wrv.186.1512998513220;
	Mon, 11 Dec 2017 05:21:53 -0800 (PST)
Received: from [192.168.1.49] (p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id
	o27sm16146790wro.9.2017.12.11.05.21.52 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Dec 2017 05:21:52 -0800 (PST)
To: Yocto list discussion <yocto@yoctoproject.org>
From: Anton Gerasimov <anton@advancedtelematic.com>
Message-ID: <0d5535cd-a057-5538-4fe7-c90af04b4b3d@advancedtelematic.com>
Date: Mon, 11 Dec 2017 14:19:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
Subject: Checksum of an external file
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
X-List-Received-Date: Mon, 11 Dec 2017 13:22:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US

Hi,

my recipe takes a path to a file on user's file system as an input,
processes it and stores on the device. Sometimes user wants to update
this file and I'd like the recipe to be rebuilt every time the file
itself changes, even if the file path didn't.

So I had an illusion to understand how sstate cache works and wrote the
following code:

=C2=A0=C2=A0=C2=A0 def calculate_file_sha256(bb, d):
=C2=A0 =C2=A0=C2=A0 =C2=A0=C2=A0 return bb.utils.sha256_file(d.getVar("PA=
TH_TO_FILE"))

=C2=A0=C2=A0=C2=A0 PATH_TO_FILE[vardepvalue] =3D "${@calculate_file_sha25=
6(bb, d)}"

Unfortunately this doesn't work as expected (the recipe doesn't get
rebuilt when the file changes, looks like calculate_file_sha256 doesn't
run unless PATH_TO_FILE has changed) and at the same time if I
'cleanall' the recipe and change the file before rebuilding I get a lot
of "metadata is not deterministic" errors.

Is there a proper way to do that with bitbake?

Thanks,
Anton Gerasimov




