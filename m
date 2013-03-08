Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f42.google.com (mail-pb0-f42.google.com
	[209.85.160.42]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id D85EEE0048C
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 06:47:10 -0800 (PST)
Received: by mail-pb0-f42.google.com with SMTP id xb4so1233916pbc.29
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 06:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=GJMi/clh3YytoSaEsVqLhAL/CmtCggGHZ3273TAArfI=;
	b=njgCimPsBEgrlDFlsAFsHwStS2BNSh1ALBcVorc+uor66sdyPuSsn2kxPHbF9oqRux
	y8UvWw1bBAX1jvjiHc4ipFV0pmtr6IAeq9ukppe//pOfVWmWMbzOAVtb4bThlWBRHpRl
	Xrn75MexOscl+r2WmJwUJMt7iNGOS26ovFr+FLmisnD09qPnftKC7i6hUjyJMWVAkqZC
	WgAcj6R/t1O+JsGRMILJFF4wcdJ8mw5fbVin347XF9zlYwFyJd4QQbpYBHBdVQV5GltE
	2Yz80qFf76F6ASUNlV7qysFOCLaIKn3E2O9xh3lH1jjX7YwcNxFUlab1daoNFEVcpBgG
	w4sg==
X-Received: by 10.66.121.198 with SMTP id lm6mr4449947pab.184.1362754030573;
	Fri, 08 Mar 2013 06:47:10 -0800 (PST)
Received: from sa-nc-apg-191.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPS id li8sm6504152pab.8.2013.03.08.06.47.09
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 06:47:09 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <A27ACA22-65D4-4788-990C-995A78481038@gmail.com>
Date: Fri, 8 Mar 2013 06:47:08 -0800
Message-Id: <A651E935-B11A-43E6-A1D6-FF5F49A5B52C@gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
	<CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
	<D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
	<CAMKF1sqmNf9hfjC4BWF3eF=4iENxVkaFEFtqaroM6cGQDFOtbw@mail.gmail.com>
	<61562AF7-3671-408C-AD77-E638C8535263@gmail.com>
	<CAMKF1spG1x5Ne_RiSoHV-Fp46YRo+o_2NovctR9RrVH9UfeA6w@mail.gmail.com>
	<A27ACA22-65D4-4788-990C-995A78481038@gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Fri, 08 Mar 2013 14:47:10 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


On Mar 8, 2013, at 2:28 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:

> | configure: error: cannot compute suffix of object files: cannot compile
> | See `config.log' for more details.
> | make: *** [configure-target-libgcc] Error 1

seems some missing header or libs but doesn't say much. where is config.log ?

