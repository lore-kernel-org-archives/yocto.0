Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3C66FE00EB4; Thu, 21 Dec 2017 09:17:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 912A3E00E3F
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 09:17:12 -0800 (PST)
Received: by mail-oi0-f53.google.com with SMTP id f69so17284750oig.10
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 09:17:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=Y2yaphQm8vnEZsB9eXZuVn6edEHfJBq6e1Le4/D7vTI=;
	b=N27Hv2vYVZPJOWbnSEAgdtpx1LKblIu1WL40v8v12pE2RrjLxnQDSI1lenpxo8x/hi
	/PcRuyMODoJyO86Mqj8N181SOcST2NHxJ5N62ZpWlJKH/mwZAMQwvAdTi/jJmri3mwC2
	hVmClaZGc+xuR/g6ocn9sCeIM8h1pe0802RpcWr99+vLjdFB1JQBqoGEtzClbo10e+E1
	SFez+50KVdC89c/I8bSbagIpP/J+13s7z2Wv5ijYfsSsTcmVf8V/wL6oPkCCwJbMtHuN
	a4+MDRF4IiMetqPWqC7OgN2P40eDi9ZUvm1tRyb8ADiyczzZr2s9zpR0PHTiTZUNSWCH
	y8QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Y2yaphQm8vnEZsB9eXZuVn6edEHfJBq6e1Le4/D7vTI=;
	b=SYDL/mhlE3qTzHLNiXFtWxpHGcoXGVoXRbh0kuHb5lq/oLQwEPROEHSglT03CQIT/9
	I5yUp/dMUWMdbV/nXO8cfhgCns6+VI/Dzv9nVCfp9DlhXDILY+55K0HPhzJeruieRLDW
	7rJMPm9bj+UKnCmD3WZXibgTVvFRaPWFR8czI/LgomkWMNvYsisAXc+WTwXz4D3+UNiz
	k+HJQC4Lv+1zfHZLOg18YWar9mtVGiaQexXd5XfcnYnuPv78Z38b39T2sLUjc87Az2eb
	G/IbFCbEPUtM/EyYBOdGr2ObmTXrw2ySCZ/i1ksUyN0Pa77dsVj68loHeDkrZaJ8rPj4
	sFsA==
X-Gm-Message-State: AKGB3mJS1uSOMLC7bqH1IZweMHQQL6z1deBUINLMZYs7rKETkJt8ogG5
	jKW5dHVshDx/jhY0zW7slWly31UsxB8PLkYLR/jgADjC
X-Google-Smtp-Source: ACJfBotJYOGQrR1gwOhm1F0imHNR6mu4lXcDfLvF11LLWhTEMG1puyy/1Cnv+4FQxk7yt5GVhxl1ut+iuYvVE0J9mig=
X-Received: by 10.202.79.65 with SMTP id d62mr7444892oib.274.1513876631229;
	Thu, 21 Dec 2017 09:17:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.157.42.194 with HTTP; Thu, 21 Dec 2017 09:17:10 -0800 (PST)
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Thu, 21 Dec 2017 18:17:10 +0100
Message-ID: <CAOT_U5Zb+aMyseXVPpjYxG_9TPD2nxa_Rvgu_z7N6qS1kBFGMg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Python cryptography failing due to undefined symbol: pthread_atfork
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
X-List-Received-Date: Thu, 21 Dec 2017 17:17:13 -0000
Content-Type: text/plain; charset="UTF-8"

Hi there,
just did a migration to Rocko and am witnessing"

    root@device:~# python3
    Python 3.5.3 (default, Dec 20 2017, 02:02:22)
    [GCC 7.2.0] on linux
    Type "help", "copyright", "credits" or "license" for more information.
    >>> from cryptography.hazmat.bindings._openssl import ffi, lib
    Traceback (most recent call last):
      File "<stdin>", line 1, in <module>
    ImportError:
/usr/lib/python3.5/site-packages/cryptography/hazmat/bindings/_openssl.abi3.so:
undefined symbol: pthread_atfork


Have tried both the recipe that comes with Rocko
and master of meta-openembedded.

Seems to be the same bug as this one:

https://bugs.gentoo.org/630578

resolved with this patch:

https://gitweb.gentoo.org/repo/gentoo.git/commit/?id=c824d1c44fcf4556de21d2c8b8ae3732b0fc0c5b

Can someone provide hints on what would that translate to
 for the python cryptography recipe?

