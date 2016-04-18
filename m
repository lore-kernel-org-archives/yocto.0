Return-Path: <eric@nelint.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EE76E00D1E; Mon, 18 Apr 2016 07:04:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.41 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 973F5E00C44
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 07:04:28 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id zm5so79423944pac.0
	for <yocto@yoctoproject.org>; Mon, 18 Apr 2016 07:04:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nelint.com; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=rE8NLp1hRtgHWPEKz4/2gM2rnPOd5AiL2AqUkNedqi0=;
	b=arDIpUFpl46qq13rLMOiibq4VnMSD1I6yfddhkqV5zUXe2sa4V46sWJIEUmeCboc7f
	6LZGEESOqV7BflIGFp9D0E2VFNUKLIkfHcsJC6ZY8T4GiWfjNLHcCE97KG6ERjsjEnCq
	z1wa3htm4+mLnNEBp+idv0G9k8vYgVeHsm7Ng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=rE8NLp1hRtgHWPEKz4/2gM2rnPOd5AiL2AqUkNedqi0=;
	b=VlbfVqtFCrFfBOpAdcg5FD5DsTvtEFqsdqnkEoDfUvdVIOcv8kBZ98SWc6unjG/3Yf
	ColuXHikU+hT1QI7IndrItqb70S9TT6H75AQa+plUTihQbi/T+ij6l9qGHOw+l7uwUbW
	2OHA+H/ymszYbytSxB0s/DjPqlqy/SYWMTz/WeRpn/ek7qcmNRn1w6gcZocStxLrsfyL
	/+EDQ2of5H7DBKPiR1yjz3t0OC8ei7ZwAXtGM4T0b04pc6HGq+xB9AI0kjAUrA0ZUzJv
	rZqGr8u5xwfR74huRHpkLs8tRGoBYcW1WnGgCqJ+d2bRofPEC/AK4IBbk/so6nNKhcSd
	/Ryg==
X-Gm-Message-State: AOPr4FW04OKQd4VJj7J94woGAiSgkp42ZkOp77AFu7BV9pTlJerNOEDhEizoohAvpLsb1A==
X-Received: by 10.66.153.209 with SMTP id vi17mr7783646pab.0.1460988267813;
	Mon, 18 Apr 2016 07:04:27 -0700 (PDT)
Received: from [192.168.2.184] (ip98-167-220-73.ph.ph.cox.net. [98.167.220.73])
	by smtp.gmail.com with ESMTPSA id
	f66sm84153297pff.8.2016.04.18.07.04.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 18 Apr 2016 07:04:26 -0700 (PDT)
To: Chris Trobridge <christrobridge@hotmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DUB130-W6513A15021890FD826A907DA6B0@phx.gbl>
From: Eric Nelson <eric@nelint.com>
Message-ID: <5714E969.1070907@nelint.com>
Date: Mon, 18 Apr 2016 07:04:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <DUB130-W6513A15021890FD826A907DA6B0@phx.gbl>
Subject: Re: Using Yocto with NXP QorIQ Processors
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
X-List-Received-Date: Mon, 18 Apr 2016 14:04:32 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi Chris,

On 04/18/2016 06:58 AM, Chris Trobridge wrote:
> Has anyone attempted to use the Qoriq BSP layers with them main Yocto
> release rather than the NXP (ex Freescale) SDK they come bundled in?
> 
> I ask because the NXP SDK is somewhat behind the main Yocto release
> schedule.
> 
> It should be easier to port the BSP to the current Yocto but I have no
> idea what issues I am likely to hit.
> 
> I will try this at some point when I have enough free time but for
> planning purposes I would interested in how anyone else has got on
> attempting this.
> 
> Are Qoriq users restricted to the official SDK or would they get
> third-party support?
> 

There's a community BSP and a mailing list at:
	meta-freescale@yoctoproject.org

The release notes for the Jethro release say that the Layerscape
processors are supported:
	http://freescale.github.io/doc/release-notes/2.0/

Regards,


Eric

