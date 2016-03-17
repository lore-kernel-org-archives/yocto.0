Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 941CDE00C23; Thu, 17 Mar 2016 08:38:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.171 listed in list.dnswl.org]
Received: from mail-pf0-f171.google.com (mail-pf0-f171.google.com
	[209.85.192.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7737FE00929
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 08:38:05 -0700 (PDT)
Received: by mail-pf0-f171.google.com with SMTP id 124so126007322pfg.0
	for <yocto@yoctoproject.org>; Thu, 17 Mar 2016 08:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=tGKj/GsrmT8Of2yP+3ILfDT58s4kU07anMIsVvKxTyk=;
	b=zc3kkQJJz+4Fww7vYk84nYCXdgtx10xpbKLMvOkyHo5yOF4/V2VqUxD+Zqnvg+ziHG
	V4OuS+grLGfuLDrfYsix0fIvKWgLbP89Yvg0HBG1aw1TpivJijHSczTNc4RjPxRtneZO
	16yTdSqnRxA5OaaSbfyDmEcIRTAoa2ynABHWzW0zzSzPhGmyAcquUL3jVho9936rRnmv
	pANy7eBLIVWoskF/2th+TN/Uf85lMnLSx3e6ugWlxYZLkDNl5C+EbK+pNvEXru5hJjZk
	RxSf+ibVcPnri8gCLsIbM4vEwxmCmYdSRL83fQtgwWZz4Sa2Lm/B8nv3wiHnR3n3x018
	lRUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=tGKj/GsrmT8Of2yP+3ILfDT58s4kU07anMIsVvKxTyk=;
	b=mgXYkMsOpapl5KiIZwD2O3dFLvu7rG67dz47wSDiCCe4Q5XZLjbEG5tdBdgLG+sj0L
	1BkQ60Dm+QFuzGNJajiYu+TBYjw9Ynl5aOH4LXSGw+NR83dr17vTK/6o2rL5EteJ+2B0
	sPnAmwEtZ1X55nXhIvJWK/KPYHUQ66rdbLHcDgo8NFLIfukJ0zLHnvqsFxBBC/qPg4+H
	o15RbiR3MFZkGLIz2XdidZO2p5tKL/6QfGNATG1hLn58lmrUQd42S/TctcErlSbzUCii
	mho4EKIHRI3Nt9GJRtsdT0QndDXkE+LNaLjewBTIPLKd6DN3H3oX5rXNtcnb9ns/1if+
	DFZg==
X-Gm-Message-State: AD7BkJK/EM5PoiLYENrNCwNMCaONZ+gWvwL8g8k8sffGLoWtOIXNZzRt+Rd97o0VrcDsgw==
X-Received: by 10.98.70.67 with SMTP id t64mr15961614pfa.110.1458229085253;
	Thu, 17 Mar 2016 08:38:05 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	s87sm14257152pfa.89.2016.03.17.08.38.04
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 17 Mar 2016 08:38:04 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: K Richard Pixley <rich@noir.com>
Date: Thu, 17 Mar 2016 08:38:02 -0700
Message-ID: <1641800.PSzhSzxVU0@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.3.6-201.fc22.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <8857db4a-e4b3-44d0-64c2-46e53a3c8b26@noir.com>
References: <56E64947.5020606@mlbassoc.com>
	<CAEKp-abbXs5DNuW5KZD_wdFWCYwccBLksXjBJ1dUCAK6Lw6rWg@mail.gmail.com>
	<8857db4a-e4b3-44d0-64c2-46e53a3c8b26@noir.com>
MIME-Version: 1.0
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Problems building live image
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
X-List-Received-Date: Thu, 17 Mar 2016 15:38:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday, March 14, 2016 04:38:35 PM K Richard Pixley wrote:
> 
> What stops us from building different boot labels for different images?  
> That seems like the obvious choice.  Or perhaps, using "boot" for all 
> syslinux images and adding "install" for "live" images.

Fair question. Nothing really, I would think. The classes need to be adjusted to deal with different LABELS.
 :rjs

