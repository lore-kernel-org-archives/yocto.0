Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6BCCE006D8; Fri, 13 Jan 2017 09:07:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.178 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
Received: from mail-pf0-f178.google.com (mail-pf0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10781E0033D
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 09:07:13 -0800 (PST)
Received: by mail-pf0-f178.google.com with SMTP id f144so33887311pfa.2
	for <yocto@yoctoproject.org>; Fri, 13 Jan 2017 09:07:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=jLIziQJecqF7LHXVwxBYLvOnHVuO00/4YgguNTx1pPU=;
	b=rOfq3h/DWGtgr9XsRQGd26TlXqV4PY24IgWPp8i6VSSeMPUfyEQnV7+FMgy2tqYcUX
	AVJs0CCgymyoAd/tct82Ov2snArFLeRQeq9tSbI7ePZfVOfs9WHkenWnTXwr6E5kxspj
	a26P6WRek12HzUL5v7glVLltDQLXSZVzR1QxrQHcr682P5LCx5q4K2K3uzLNyHNAVNSe
	78xJoLRif38PMWVXo/Ab+KVhmqrN0N5EI3u8FmcHNeynVq5zLCvVUxTmNAYmNTPvY9u9
	10TFFaJXWU9ZsRbQJx1dWiMITCnvkCBCBJ7+4OdHMp6JEL34wodsIPRRL9/aGSnFzZpo
	cg9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=jLIziQJecqF7LHXVwxBYLvOnHVuO00/4YgguNTx1pPU=;
	b=TQIvCa/SR/oyDyHIie21yjZzEKLmDdWNn0OGxhqwBhTN4Im0qbPXjG8qfBujTjMdek
	j7CMsLJqsZmVh5+mJe+9f/+38Kfdy5ODSkCjEjYjQPvySNP23JmKt/2iNWKx19H+d/6Q
	DxdBx3380MamoSiM22jgKzcBwKMPVEZGqG/UgWQxZTQm7H1JjNsnmDhjvDI0elgSqdX0
	tB3A3k1Cpr4qmIijSh+oc0oTze7U/7Xcg+KlqqYVDXYKyAwWtuekB7aK4d3oI1juRnTS
	lr2oCeDnBgWuVE4PvWZboKQ+GdGpB7MlWqzJEnTY3t+G3wPCl+FkQQP5pArCgpC7v93R
	6Maw==
X-Gm-Message-State: AIkVDXLCuHno3kO8mqVdWHY05HiG63QNbTme1zzBkkC06Dza6h3Gqh+h2IZvdaQvQmo+CQ==
X-Received: by 10.98.220.139 with SMTP id c11mr23658262pfl.96.1484327232764;
	Fri, 13 Jan 2017 09:07:12 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:4198:472b:7988:3451])
	by smtp.gmail.com with ESMTPSA id
	75sm17214902pfp.80.2017.01.13.09.07.12 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Jan 2017 09:07:12 -0800 (PST)
To: yocto@yoctoproject.org
References: <479b9a6cb016421f850b9ae8e1cdbb88@FE-MBX1014.de.bosch.com>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <1dcc72e1-2e97-5439-bba9-cca617f892a4@gmail.com>
Date: Fri, 13 Jan 2017 09:07:11 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:50.0)
	Gecko/20100101 Thunderbird/50.0
MIME-Version: 1.0
In-Reply-To: <479b9a6cb016421f850b9ae8e1cdbb88@FE-MBX1014.de.bosch.com>
Subject: Re: How to decide which Yocto branch to use -krogoth or Jethro or any other
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
X-List-Received-Date: Fri, 13 Jan 2017 17:07:14 -0000
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 1/13/17 2:38 AM, Eswaran Vinothkumar (BEG-PT/PJ-IOT1) wrote:
> Hello,
> 
> I am newbie to the Yocto world. I am trying to learn how to create an
> Embedded Linux distribution using the Yocto and so far have succeeded in
> building a base image for my customized board and the system is working
> fine. I am currently using the Yocto branch - krogoth. I checked the
> Yocto website for the stable releases:
> 
> https://wiki.yoctoproject.org/wiki/Releases
> 
> Krogoth and Jethro branches are marked as the stable versions. Since the
> Krogoth version is relatively new, I decided to use that. Now I am
> planning to create an Yocto based build system for my embedded Product.

latest release is morty (2.2)
> 
> What's the influence in choosing one branch over the other. Any long
> term benefits or what should I keep in mind when I choose which branch
> to use? Any inputs on these would be helpful. cheers:)
> 

You should always choose latest stable with a plan to be easily
upgradable to newer release, so limit the changes to core metadata and
if you do find issues and fix them then upstream the issues as soon as
possible, so you dont have to forward port them when you upgrade.

