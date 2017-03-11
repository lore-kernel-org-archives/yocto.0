Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0B8CE00A0C; Sat, 11 Mar 2017 01:41:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.181 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f181.google.com (mail-pf0-f181.google.com
	[209.85.192.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84726E00A08
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 01:41:57 -0800 (PST)
Received: by mail-pf0-f181.google.com with SMTP id o126so51006443pfb.3
	for <yocto@yoctoproject.org>; Sat, 11 Mar 2017 01:41:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=e88kKybpmuaJXeXHSBLrtgBHwr9NgNjbOkX8PWipmzo=;
	b=rpyz2KJZpSda+7sl1zBdfnalwy6gS6nN1ynjTxMy4AU4OzFmxzWWB0zIFKKSSKwlb1
	OXAUOIScTXdwLE5x6f4gxnbCbh7u9exiFhUjQHI41Sfrd0o/pNXZcMmggQzmVym/eHUB
	IV8cV/VDs/RJgaMwYPTjOf1krWCztjeOfI3UoNOsYjh03b5G3A/X0gsvw7kyq8xXrA3n
	QNprxz5SM30VLrirQwbFnRgRFNr2ldYu1t64AtaCakVJfF10KRlevITrZFKtT4DDpm6x
	OrYakyLohAqSqBsAtVwMaaDmxW2IqiozwxfYw0qah4gPPHhZeqJ5tMdeYv7zj2dSfzaY
	cLEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=e88kKybpmuaJXeXHSBLrtgBHwr9NgNjbOkX8PWipmzo=;
	b=WFXnKZX2p1vwbvaEM2WX9CruKhJ8d9UL/hHp0DnYMxy0qFcsMZRM//35jQRF0GsZ6c
	uhKBRaU7KKx4fMa9QUql5EbCGrd0Mywew92gUNfCfpY04ymXwOjO1DnM09slkYJmg0E1
	ytcK33RQxN5LG4lAhIxvgXpSA0XPlGf2nUuUCUMiFRuf33Y5zynxMwjM+qoxCTEVj4xa
	SkOomgxa9fwHEwNVIyY2Ii03b4poYsTnSrvtmb77IeEhSPKh2O3Ed2/I4imfQMfb9TkL
	CkoX3FODJ9n6x11mLKI+UXgn2+wdSwATEXWfvyh+DiFRwB+1OusQeTPXMfdGkDucvz7D
	cySg==
X-Gm-Message-State: AMke39nR9me2xdb8gEZl0a2DY5+q4JPFxhCSoz0Wuf3Bkhg4GQP5x/b3po+yZIpg90Lb/Q==
X-Received: by 10.84.218.205 with SMTP id g13mr31662697plm.78.1489225317404;
	Sat, 11 Mar 2017 01:41:57 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:51e9:1748:d935:c39a])
	by smtp.gmail.com with ESMTPSA id
	s13sm23137585pfd.46.2017.03.11.01.41.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 11 Mar 2017 01:41:56 -0800 (PST)
To: Michael Schwarcz <Michael.Schwarcz@arm.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <aba32a00-2694-404d-8101-5997b6ec3ed8@email.android.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <c520f0a2-19f5-0b95-12c9-46c9a62ac528@gmail.com>
Date: Sat, 11 Mar 2017 01:41:55 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <aba32a00-2694-404d-8101-5997b6ec3ed8@email.android.com>
Subject: Re: Compiling with armcc for yocto
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
X-List-Received-Date: Sat, 11 Mar 2017 09:41:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 3/11/17 12:03 AM, Michael Schwarcz wrote:
> Hi,
> 
> I have an application which I built using the poky toolchain for yocto
> on a BeagleboneBlack device.
> I would like to build my application with armcc.
> I read that you can build with armcc a linux application, is it possible
> to do it for yocto as well?

this is doable, there is a provision where you can insert and external
toolchain into build environment, you can look into sourcery layer e.g.
https://github.com/MentorEmbedded/meta-sourcery/blob/master/classes/external-toolchain.bbclass

> 
> Thanks,
> Michael
> IMPORTANT NOTICE: The contents of this email and any attachments are
> confidential and may also be privileged. If you are not the intended
> recipient, please notify the sender immediately and do not disclose the
> contents to any other person, use it for any purpose, or store or copy
> the information in any medium. Thank you.
> 
> 

