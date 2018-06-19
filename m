Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63A00E01213; Mon, 18 Jun 2018 23:50:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 590ADE00A38
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 23:50:58 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id 15-v6so8705994pge.2
	for <yocto@yoctoproject.org>; Mon, 18 Jun 2018 23:50:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:organization:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=dl8b2DIqkOsYZVLyKwGN0srCEPdw0TjTwxAE1WIcCms=;
	b=Xvzj3bYNqGPlCOlYGkx2SHBwrBZhNYZx3kLi+IcygruW+8YnaWuOx/OBPFSImoblSU
	dKuumfSKDIHJeHUe3qO2/XFx/U2vO3rKGyW8/yIVQzYXWyBxRIFMXOT9PMvefRK5Vtre
	9HOlDGC0EQzstvw/P6pthdUCSuipLfBxd8mbyC2xAuOUm2sZjLUyWDmAXoFxrU1pgKET
	7+LJnkx6Ep7zjbbPdxA3usox+GIX5GXY9S0m4km6dmENRKl3sSCD7Ybr7ouw8kq2xZFZ
	Nz0i5QYxQwqKktaUDvVyNBZjyNVzN+cWQEyGa5EzUdjeAiZr2gsmk3U5rW+1PZaMVFJ9
	QKOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language:content-transfer-encoding;
	bh=dl8b2DIqkOsYZVLyKwGN0srCEPdw0TjTwxAE1WIcCms=;
	b=A8k+s19dUIMHsoooxbsilNlK+XnGPuVaa5DBLKYxEXRR+SLPfic6zgVPICEZ+Yy7NW
	AWh/6BMBoZrglzwq4Bq5nWBi8R9UD9rtk1OhiNNGwxOP9QaMYpAv/BpufSd711HyCEZN
	xFAmFCN1vY4BTe9arHmlP1PjgL2h8gPvdtvQTdb2DwuQitr308bwlgAtBx1+Va4FHP3N
	v//e15GXOZ6S4kpi6VdIHdSu67c45FbWGkP3FbOD7WPrh4RT20pVerqrtAe1truxHCNy
	F7RQH1KWdjjPcQWsVB6EZV1VzsJXV4ngHWEJOJwF0966X33V7ODLXQ0lpZMTHSNDH56g
	bCDg==
X-Gm-Message-State: APt69E1Gzjg70vgLZjKYbrk2Z2+TgcHUKIWvndrabL8Ho9buVYWHfJiF
	MxqkpBw2UliAgNE5mRurhoER1x4z
X-Google-Smtp-Source: ADUXVKKmjc3c7K2LF8d8fBiqtzjLcpef2NMYFambp0sUlJbcyx4dnLVYdsrsknUXjHeZYWDjDXupRw==
X-Received: by 2002:a63:b407:: with SMTP id
	s7-v6mr14027974pgf.334.1529391057395; 
	Mon, 18 Jun 2018 23:50:57 -0700 (PDT)
Received: from hermes.local ([2601:646:877f:9499:357e:b79d:523e:6945])
	by smtp.gmail.com with ESMTPSA id
	z18-v6sm24723880pgc.0.2018.06.18.23.50.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 18 Jun 2018 23:50:56 -0700 (PDT)
To: Ankit Rastogi <Ankit.Rastogi@kpit.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <BM1PR0101MB12833B9EE6843CFD07689D6A91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
	<BM1PR0101MB12830193263FDC30B66D225E91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <5f718157-9d74-90c3-777f-47d436e9f814@gmail.com>
Date: Mon, 18 Jun 2018 23:50:55 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <BM1PR0101MB12830193263FDC30B66D225E91700@BM1PR0101MB1283.INDPRD01.PROD.OUTLOOK.COM>
Subject: Re: How to export kernel specific headers to userspace
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
X-List-Received-Date: Tue, 19 Jun 2018 06:50:59 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 6/18/18 10:19 PM, Ankit Rastogi wrote:
> Hi,
> 
> 
> Can someone provide any pointers on how to export kernel specific 
> headers to userspace?
> 
> I am getting below error while building our one of the component which 
> requires kernel uapi headers.
> 
> Error Received:
>   /hdmi-capture/main.c:16:10: fatal error: linux/hdmi_info.h: No such 
> file or directory
>> |  #include <linux/hdmi_info.h>
>> |           ^~~~~~~~~~~~~~~~~~~
>> | compilation terminated.
> 
> In yocto 2.5, userspace is boot strapped with linux-libc-headers package 
> which uses a set of uapi headers from Linux kernel 4.15. Can someone 
> suggest for custom kernels, how to expose uapi headers to userspace? 
> Thus create a separate linux-apl-headers package with those files.
> 

you can write your own kernel headers recipe and make that preferred 
provider.

or you can add patch to existing recipe.

I would suggest that be careful to expose the APIs here, if its already 
an UAPI in later versions of kernel and you are backporting to an older 
version it might be fine but ramdom header export would land you in 
problems later.

> Thanks,
> Ankit
> 
> This message contains information that may be privileged or confidential 
> and is the property of the KPIT Technologies Ltd. It is intended only 
> for the person to whom it is addressed. If you are not the intended 
> recipient, you are not authorized to read, print, retain copy, 
> disseminate, distribute, or use this message or any part thereof. If you 
> receive this message in error, please notify the sender immediately and 
> delete all copies of this message. KPIT Technologies Ltd. does not 
> accept any liability for virus infected mails.
> 

