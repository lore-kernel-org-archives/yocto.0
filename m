Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB765E006EF; Wed, 14 May 2014 17:48:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f174.google.com (unknown [209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA28EE0053B
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 17:48:26 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id at1so348065iec.5
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 17:48:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=FGeKJedZDClaWkDZE1NTClExj9yVkJ9BHe8AGsQl48I=;
	b=mKFH02lqhOnLaJXQEH+vG/n+KalW4sK7XEp9x9L6qWdUR/AaVOLeigZRGP2+htnJlm
	ugbY9iuS7JTDa1EKQhOR4eYEc+/XZbppJUvvDibnNbsvm90BU5ckgX/r8aFnbtacOqdT
	er7NZJpJMsG/uph67ZNk0Xdcdh1EZpQBVouUZvnzZK/tB2jdTp+7niOeIZ0oWuYHc1XV
	QHgdkFmNZsp0KD5ALToLSHxHjseowSNKrfewYTKvJ0NALqLC/cgc0pSkAaD/naPT5+F0
	HHviayIHbISODTzzD0gBCrg6eqnlILsJIdIhTC62y1XE/pIV7Crdu3MWnXzsXNdmgZJY
	IdPg==
X-Received: by 10.50.20.8 with SMTP id j8mr8708318ige.17.1400114905940; Wed,
	14 May 2014 17:48:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.79.133 with HTTP; Wed, 14 May 2014 17:47:55 -0700 (PDT)
In-Reply-To: <1400106263-25100-7-git-send-email-akuster808@gmail.com>
References: <1400106263-25100-1-git-send-email-akuster808@gmail.com>
	<1400106263-25100-7-git-send-email-akuster808@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 14 May 2014 17:47:55 -0700
Message-ID: <CAMKF1sp1nCPzHH9r7LhpTopjFF1pBXGzRw90P_=i_rgRdLQ56Q@mail.gmail.com>
To: Armin Kuster <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 6/9] update util-linux package version and remove patch
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
X-List-Received-Date: Thu, 15 May 2014 00:48:30 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 14, 2014 at 3:24 PM, Armin Kuster <akuster808@gmail.com> wrote:
> +PR .= ".1"

can this be avoided in whole series ?

