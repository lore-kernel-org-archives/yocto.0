Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60B3AE0091F; Fri,  3 Apr 2015 07:37:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f169.google.com (mail-pd0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B96A7E00906
	for <yocto@yoctoproject.org>; Fri,  3 Apr 2015 07:37:49 -0700 (PDT)
Received: by pdbni2 with SMTP id ni2so123497205pdb.1
	for <yocto@yoctoproject.org>; Fri, 03 Apr 2015 07:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=Q2f8NBamJy0uXecoJ867jfT/8oJf0zH+K2Hc7Ph4EDM=;
	b=zCtgDiDlkCzeka8UJYxm2JPYfXVaUqp02yTEug+qHXmpLwJOpt2g/r+D1DhZQF6QA2
	8KKhXy4B+AbOneXxi5OCynlpITRsy53/w1m2AWnamLB+brriEORdpgdoZAU65QOSTZsO
	MkQLHKl/yFXmA08kLN7kA0nDEDpPaFFV594rdFbAtM+4MpMwj6TpuYw4DOFHiZfGU5tJ
	4Qu+gnQT/6H+dRQXAfhIldVKE1PbpIwnfvV+MEbrR7Ye40LmEKWabtgjsCB/8hKvzMb7
	GeG9hlgdMIdP3ubL+fz0Iya4phTPe7pOGUNOV5e4BwzTLporkL1PaX1kdP3yLjG+HFfM
	ooZw==
X-Received: by 10.70.134.102 with SMTP id pj6mr4803788pdb.95.1428071868685;
	Fri, 03 Apr 2015 07:37:48 -0700 (PDT)
Received: from ?IPv6:2601:c:a700:3ba7:c58:5feb:7967:5a21?
	([2601:c:a700:3ba7:c58:5feb:7967:5a21])
	by mx.google.com with ESMTPSA id wt1sm8284360pbc.76.2015.04.03.07.37.46
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 03 Apr 2015 07:37:47 -0700 (PDT)
Message-ID: <551EA5B1.3010103@gmail.com>
Date: Fri, 03 Apr 2015 07:37:37 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Poky Build User <pokybuild@centos7-a.osl.yoctoproject.org>, 
	yocto@yoctoproject.org
References: <20150403045054.881D040004F3@centos7-a.osl.yoctoproject.org>
In-Reply-To: <20150403045054.881D040004F3@centos7-a.osl.yoctoproject.org>
Cc: otavio@ossystems.com.br
Subject: Re: Release Candidate Build for yocto- now available.
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
X-List-Received-Date: Fri, 03 Apr 2015 14:37:51 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

What version does that poky hash tag equate to ? dizzy, fido. I am too 
lazy to look it up ; )

Also the referenced url is broken.

- armin

On 04/02/2015 09:50 PM, Poky Build User wrote:
>
> A release candidate build for yocto- is now available at:
>
>
> http://autobuilder.yoctoproject.org/pub/releases/yocto-
>
>
> Please begin QA on this build as soon as possible.
>
>
> Build hash information:
> meta-intel : 53eea4f12311b4808b3af9695ac822eea1fc60c2
> meta-fsl-arm : bfe01a0ebde407086f4a7710ea165c6beff310d7
> meta-minnow : 13a5f2ab84c7284647a3e067a33109c11dae0568
> meta-qt3 : 3016129d90b7ac8517a5227d819f10ad417b5b45
> meta-fsl-ppc : 4c8cd553f9de56379e2b6502ceb996521e2d6a20
> poky : 33558eacc8a2d3dce3396b9ab2fd0773ac5076bc
>
>
> This is an automated message from
> The Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder
> Email: elizabeth.flanagan@intel.com
>

