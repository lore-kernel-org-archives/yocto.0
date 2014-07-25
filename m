Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EEBDE006C4; Fri, 25 Jul 2014 10:19:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yh0-f53.google.com (mail-yh0-f53.google.com
	[209.85.213.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C91DE003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 10:19:47 -0700 (PDT)
Received: by mail-yh0-f53.google.com with SMTP id c41so3082201yho.40
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 10:19:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=XSqybKG7mPXsJfP2VCBu/vQJAA872aG/oAso/rC+nV4=;
	b=bwynjL0FIlhjn6t4MO0eet4sfM6NWN8UOQ6yjg6Ic2cQG9pitVLt+X0u3pnXE2xDPi
	pa3hUu/g5qGACJjWVeBiKuPNehw2Qp9s9q3vTjI7YietK0ZPAwPez0gzhmWwkBeewX3B
	EIXDRhS4tvdVlBAMiOuZysno0OPo3nkNGl4eNcTEuUmF9QA+uHULCoG1l75UhgqVexYw
	iRQXHRMLtCPAwUWop1e2dYF5jCXnoD/T1iv0H+ORQxRfFNtLjADQaUmQsZD8UV/YDxOz
	hMCu6SOSD4ZwYAehhELq+qkTcoFLV9yDiD3Rq2DvV7Lojhch8rhG9pK1STN/vej9n84x
	VKcg==
X-Received: by 10.236.155.200 with SMTP id j48mr25231427yhk.40.1406308786600; 
	Fri, 25 Jul 2014 10:19:46 -0700 (PDT)
Received: from [155.1.1.163] ([187.11.221.17]) by mx.google.com with ESMTPSA id
	e10sm21427066yhh.40.2014.07.25.10.19.45 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 25 Jul 2014 10:19:46 -0700 (PDT)
Message-ID: <53D29187.4030800@gmail.com>
Date: Fri, 25 Jul 2014 14:19:03 -0300
From: Daniel Hilst Selli <danielhilst@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5323c871b64c43d0bb0ab349b96a6d70@EPBYMINSA0001.epam.com>
	<53D26E1B.9090704@gmail.com>
In-Reply-To: <53D26E1B.9090704@gmail.com>
Subject: Re: [oe] [meta-oracle-java][PATCH] Version update and Java for ARM
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
X-List-Received-Date: Fri, 25 Jul 2014 17:19:57 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/25/2014 11:47 AM, Daniel Hilst Selli wrote:
> Can someone forward me the patch please, I can't apply it from web interface.
>
> Here is the link: https://lists.yoctoproject.org/pipermail/yocto/2014-June/020223.html
>
>
>
> Cheers,
Ok I got the patch, but can't apply it, got this message
`fatal: corrupt patch at line 90'

which contains simply
`+SRC_URI[sha256sum] = "d736fb4fd7c8ef50b76411daa640c6feeb48a5c275d29a90ffeb916a78d47a48"'


Any ideas?
Cheers


