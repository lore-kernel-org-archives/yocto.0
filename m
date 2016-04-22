Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29500E00EA7; Fri, 22 Apr 2016 10:04:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.193 listed in list.dnswl.org]
Received: from mail-io0-f193.google.com (mail-io0-f193.google.com
	[209.85.223.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E66CDE00849
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 10:04:15 -0700 (PDT)
Received: by mail-io0-f193.google.com with SMTP id u185so15411295iod.2
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 10:04:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Y/JboeuPQDzqQCIHq+ysHnlvLN419Tc5kbytdwewl6I=;
	b=tj2AkhWxdpZIiaowKNMGfp1xEQPV1Ky3VSw9SYOnQRpjm3XeAxxH12ILYOJ1if+IZX
	LRK/B+NOAuBi8ZVFAkYawhuwK4mKBl0+T1cN8MEnJiTW5nmFXLFpc3zHp2WSPxqyeAPt
	Uh1uoBvgdjfTWcCCDqbS2ydGpPPYAajvKL+B/UyQS7H+7+PrPxs5g7tqtp/EqjN1MgZ2
	FD5sobAuObEvomt6gbo3nftWyigaNZyC8zdC48bqthPgk1ryeysFblNYsmKcOFWwEpcK
	B7hHmDc79EmtEsX5eyzdkzVh+2auoUH228c7K2tgelDEFJoxoUDHGUPB6Zv0uIkk0dji
	MJkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Y/JboeuPQDzqQCIHq+ysHnlvLN419Tc5kbytdwewl6I=;
	b=Wy+UV9i+JEEYHDp98ZSq2oqX6hkQ4EDENUciKiSeZyqdeeBIoUR8onwVRYGxvA8990
	+rVYsbDJS++ufo2YE+mCGYgGWx2+n9F9old4w+EV8NaIv6cVfbLbGGwH/LdWkgbadwfP
	nPSBtYhFreU60XiHjn0pLobikd3R9TDHEhz66rGqCYTAs/q9h+7RaRjFu3iMunrUmXSP
	hwG2u2gw1OaEQ29qjP+nODui1u80VZljKIaKSmvH0z17+/Nxnch8ydOhuKfVhIZNeNO3
	ctu7KMV5RKeM+IooH0cAfEvDV2luj0vLwWhl0sewEGORqlfc3ZY1TPDBpBIQu2rClwp1
	fgig==
X-Gm-Message-State: AOPr4FVF6k5yLsHwCAdLFkcYhaQr5RsHP1V6huaah9lptgFlNqDXJsKrykKYpaMdqz6uSw==
X-Received: by 10.107.138.224 with SMTP id c93mr18979679ioj.143.1461344654768; 
	Fri, 22 Apr 2016 10:04:14 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id au6sm4430588igc.0.2016.04.22.10.04.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 22 Apr 2016 10:04:14 -0700 (PDT)
Date: Fri, 22 Apr 2016 13:04:10 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>
Message-ID: <20160422170410.GB23308@linux-yxv0>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E570F86EE@fmsmsx111.amr.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E570F86EE@fmsmsx111.amr.corp.intel.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Yocto Project Status WW17
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
X-List-Received-Date: Fri, 22 Apr 2016 17:04:19 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Fri 2016-04-22 @ 03:13:21 PM, Jolley, Stephen K wrote:
> o   Encourage adoption of new tools (toaster, eSDK, CROPS)

Have the eSDK and CROPS projects been announced publicly? Are they available
for us to "play with"?

