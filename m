Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32D90E00998; Wed, 17 Jun 2015 10:36:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.180 listed in list.dnswl.org]
Received: from mail-pd0-f180.google.com (mail-pd0-f180.google.com
	[209.85.192.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07CAAE00998
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 10:35:59 -0700 (PDT)
Received: by pdbki1 with SMTP id ki1so45065268pdb.1
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 10:35:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=82rT4n5g7j3pEmxf2CcWnzInGE28bhr+StsNdbGTbxQ=;
	b=FEw18fDFP5BKbJKotH6BAMNXD+NVzEEs77zROdfKzQvVlF4Q9uf5Upakg4evYLwUuj
	CJQNVJWC0jKt9nX2HNFRyCLKJPMJrGMQC52OxYifVxyCtlnRGPnMxGciX5mtRlH9DKkd
	r4o0ykaCfcpG1HHEHYQQof2iG9BPaoNlmaCH6et5bpjwHoKZaj+mfMVZ2TSYwt2HIR1W
	/yxd1MXUZpQFRSrS3twwsrkjmKjqfljjpaxPCmmZK7mgMl0bpZ0ttEZ4wmWXQIRvcHSq
	dUm/Vxe2qpZa2tfiNna3wIbaUFXFPHmC1l+1LoxLwftDh+zX5bDbVgvvFiqR/Hx3mNL6
	m+9Q==
X-Received: by 10.66.118.166 with SMTP id kn6mr12924786pab.93.1434562559218;
	Wed, 17 Jun 2015 10:35:59 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1239:a5ff:d7b:c36b:ccb?
	([2601:202:4000:1239:a5ff:d7b:c36b:ccb])
	by mx.google.com with ESMTPSA id sl9sm5394902pac.41.2015.06.17.10.35.57
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 17 Jun 2015 10:35:57 -0700 (PDT)
Message-ID: <5581AFFB.1010405@gmail.com>
Date: Wed, 17 Jun 2015 10:35:55 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CACjDgAMQqkF==04mMtyXbPQw+47hQU=2w3HNs8+JSbZWFFrJgw@mail.gmail.com>
In-Reply-To: <CACjDgAMQqkF==04mMtyXbPQw+47hQU=2w3HNs8+JSbZWFFrJgw@mail.gmail.com>
Subject: Re: Recipe for ipset 6.x
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
X-List-Received-Date: Wed, 17 Jun 2015 17:36:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 06/16/2015 08:52 PM, Albert K wrote:
> Hi,
>
> Does anyone know where can I get the ipset recipe for yocto 1.7.1?
> Thank you.
>
>

Package lookups can be done via the layer index.

http://layers.openembedded.org/layerindex/branch/master/layers/

I don't see it unless it is part of another package.


- armin

