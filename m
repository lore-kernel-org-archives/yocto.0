Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69BB8E00547; Wed, 30 Jul 2014 23:35:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A8A6E0043F
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 23:35:55 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h3so4396176igd.2
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 23:35:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=OtuOmV66WulmYE/RDFbmekcrzmosdOPCoT6VxN8qmMc=;
	b=ZnHT5mCS9CxEgeTnIPALhcFV2g7NJZ5hJX66HV/yjwhPeTIlHsE/qc9WYnvWtExBsG
	OL3yh9NIXDDj113B1s6WPXu1frhJUtt5Jib6QUNTj9diQzQWUGvx1/xMg+CqIWGyedn6
	UI62Znh7M1GDbO+5PSBoV1HVfVmokGlVOcNX77Cf5NGODBOTUTJgRDDvfiVGPU2tYGlb
	LiKaD9v5w64U97ya/3EvCSj0fgwteW07FnroPj1f89pVIc9tW/7BGtch2jnV3JXESK34
	iAMPczKk6g2M8DE1Z/DpUkDEBAlvK9yXxoBwtV8QuERWpjnsrFzW6ZoGNubSjzv2LRaD
	WMpw==
X-Received: by 10.50.25.71 with SMTP id a7mr60101838igg.17.1406788555499; Wed,
	30 Jul 2014 23:35:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Wed, 30 Jul 2014 23:35:25 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15B5@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1407301522260.30037@localhost>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983FD15B5@ORSMSX101.amr.corp.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Jul 2014 23:35:25 -0700
Message-ID: <CAMKF1sqyPbb1-oe23zZ0Rpm31Oxn9pz+yPDDsD_j10h4h2K1FA@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why does dev manual, "Supported Board Support Packages", mention only meta-intel?
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
X-List-Received-Date: Thu, 31 Jul 2014 06:35:57 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 30, 2014 at 10:50 PM, Rifenbark, Scott M
<scott.m.rifenbark@intel.com> wrote:
> The point of the section is to show how to set up the meta-intel repository

I think it should cover the general case.

