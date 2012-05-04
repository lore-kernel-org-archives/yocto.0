Return-Path: <kristoffer.ericson@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D59C2E0044D
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 14:22:45 -0700 (PDT)
Received: by lagu2 with SMTP id u2so3254988lag.35
	for <yocto@yoctoproject.org>; Fri, 04 May 2012 14:22:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=jcf+VjiwY3CMN2b+ErF/2FDMjGheUVcBejBKPKTi8vA=;
	b=L0VOAwp1WWs6+8L3cbFm4DgvKzklEkDTyAAdWGXvWpXzfF4j3FBnZCXXdffOZo0U3H
	u7uPewuAIygekAEhQMeI0hZ9SVEkX501JS1fSm30cUSshsstReNm+3FDo4Mlg3qdUlsp
	HjyE7ZFVyNTFjNKLWMbJjNx7lX0JjKt1RjFVF3JxKe5TBpmoV0iCttDePDOI2lHO02zw
	sftK8Rohih9GDz6SL0POLJ/pESaLu+NEzCthkaaNZEHjzbfMOoaxc5Iu5A9FWprtcM7x
	eXTqrMxeiihCCvPceSLSiq4oy0C9zwM9/E0C8XP9IjKC3GXbbHC4KmdWLdiOeJ7T+AOb
	A5og==
Received: by 10.112.85.42 with SMTP id e10mr3566023lbz.17.1336166564549;
	Fri, 04 May 2012 14:22:44 -0700 (PDT)
Received: from Kristoffers-iMac.local
	(c-c3dde555.010-30-6c6b7012.cust.bredbandsbolaget.se.
	[85.229.221.195])
	by mx.google.com with ESMTPS id o2sm12373146lbd.7.2012.05.04.14.22.42
	(version=SSLv3 cipher=OTHER); Fri, 04 May 2012 14:22:42 -0700 (PDT)
Message-ID: <4FA448A1.5070306@gmail.com>
Date: Fri, 04 May 2012 23:22:41 +0200
From: Kristoffer Eriksson <kristoffer.ericson@gmail.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:12.0) Gecko/20120428 Thunderbird/12.0.1
MIME-Version: 1.0
To: Apelete Seketeli <apelete@seketeli.net>
References: <20120425214752.GA3525@hermes>
In-Reply-To: <20120425214752.GA3525@hermes>
X-Mailman-Approved-At: Fri, 04 May 2012 14:31:29 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [opkg-utils] Asking for an old patch review
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 May 2012 21:22:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Any updates on this?

Apelete Seketeli skrev 2012-04-25 23:47:
> Hello,
>
> I'm trying to get a patch for opkg-utils into oe-classic, and it seems
> some of the changes of my patch were already submitted to yocto a
> month ago:
>
> https://lists.yoctoproject.org/pipermail/yocto/2012-March/007851.html
>
> Since the opkg-utils recipe in oe-classic is using the yocto
> repository as SRC_URI, the patch mentioned in the link above should be
> applied to the yocto repository before I make further changes to
> opkg-utils.
>
> Could someone here do a review of the above mentioned patch please ?
>
> Best regards.


