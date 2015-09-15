Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4447CE00CF0; Tue, 15 Sep 2015 07:53:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA3D2E00B51
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 07:53:31 -0700 (PDT)
Received: by igcpb10 with SMTP id pb10so16075857igc.1
	for <yocto@yoctoproject.org>; Tue, 15 Sep 2015 07:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=Ykf7AEh78zhV+N6eDscFlw6orDiL2I6yNDjXNaAMhUs=;
	b=JbQQc1I49haMaO1d9v3Sh6yBM4MuPMHrNzyQCjYvI0tXv3fqHUMfYxDfxRkZ2ltz9Y
	vHvXnjJE7NP6jNkwfLXlFB4u31RRw1UZGjBwBitpnUtQXocbxkfysC1oWnb2f0we3CG/
	F87MXWnW/huc2T7oMRZ+4uifmf9oDGqp3jqzZCkpUOAzQ+nNGrXLwEvtN5CYSuHDHTO6
	IEbDNKuNroFG2Ui+we0lm9xMq38c5JwYuTsxgQS9g4Jp+8PiOR1tk2ZrCtXpPnOhBYIF
	ZpTnW7dmyQ5qVUm9XXdzcPhCwmpTj55wRUnpasxZsz/cwOU7OTnbXrRMCzECf+9aW1iP
	G9uw==
X-Received: by 10.50.124.4 with SMTP id me4mr6764029igb.34.1442328811454;
	Tue, 15 Sep 2015 07:53:31 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	ro10sm7742125igb.1.2015.09.15.07.53.26
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Sep 2015 07:53:30 -0700 (PDT)
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>, yocto@yoctoproject.org
References: <A240ECF1A90D49B7ACC78379329FE808@PAULD> <55F82F8A.0@gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <55F830DF.5030804@gmail.com>
Date: Tue, 15 Sep 2015 10:53:19 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <55F82F8A.0@gmail.com>
Subject: Re: I hate busybox!
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
X-List-Received-Date: Tue, 15 Sep 2015 14:53:32 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/15/15 10:47, Trevor Woerner wrote:
> The only place busybox (and
> toybox) are needed today are in the MMU-less-type systems, such as
> Cortex-Ms etc.

Actually, the presence or lack of MMU is irrelevant, I meant to single
out those systems with limited on-SoC flash.

