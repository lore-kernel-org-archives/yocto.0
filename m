Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8151E00ACE; Fri, 12 May 2017 19:01:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.174 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.174 listed in list.dnswl.org]
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BE54E00826;
	Fri, 12 May 2017 19:01:54 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id e55so55895917uaa.2;
	Fri, 12 May 2017 19:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ST/aCFziNNRH3gyjr0DNXmm4gY8tTXecORru59UU2Dw=;
	b=FfqDMagOxOj+LSIxub64v8qCQu3XE4t7C4OYJiDTlG2OnMv/l+cnr6sEnAuwcb5p+s
	nGT3sBFuIFO8bpg+iIKximrkHe1/FkUFKc5OAyOTuLlADEoKwS+1JIr4hLA/NLp+k7z+
	CWITqzMZeM+cw3f8at/uAjiayAXCGJmQIHPubgNY8+Im0BXe2/z5YaZUNu1oMdh/u2NZ
	TK3Q+i5eoS3/XtSVz9yTVYRgdBoYNf59GYfacR8Zfc2lvHcLPLAkHo0/T2IkGJWzfG4U
	vFyssrkEbgU8ZZdwH7uEmHxMpsNJ/XTBAl+PhsNRgeD95PuS9Rckx9ymaliqXoYNG4Oe
	+B+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ST/aCFziNNRH3gyjr0DNXmm4gY8tTXecORru59UU2Dw=;
	b=Vg4KLQw+1LLepHBCLmAV/e6aJ4ztPm1Yxq+tEye9ieDSAC5/QM0URmbVUFkbAHz4hI
	cZiywVBFKvsUbaEINkd6KQuojK/Sn1XnPM5N9Ep/RIq4JCrVbB35x/Qf/0am5kf6WCwb
	3rFih+sozs/HyB5ZnFsXmuA3tGzirHQOblHaBqtXHjxmKLvaFrzblcPPsCXc7j1lgKA7
	3M/V0G7PzYjU5bwWhi5hAgR/aXDd4ntcbJbDOzRDZZzd34rYg/7WIZ6reUGzIr+usYbN
	edJhxK3X9Qysnsm4FuRYZ0NTdivLg9H5F6o9/EauAauVagfdDmFfhOryYI8Bal8NAIHo
	naPw==
X-Gm-Message-State: AODbwcAr1OJ2Rs/vt0RTUJ5Li7r/H0yMOeDmJPNfJURtDBuoousQeKEh
	fwCmMmScCHCnYV9eWZo8VfG8Jc+F8w==
X-Received: by 10.159.33.71 with SMTP id 65mr3801410uab.50.1494640913711; Fri,
	12 May 2017 19:01:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Fri, 12 May 2017 19:01:53 -0700 (PDT)
In-Reply-To: <59165130.4000409@intel.com>
References: <59165130.4000409@intel.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Fri, 12 May 2017 22:01:53 -0400
Message-ID: <CAHUNapQk_wE3hFvhum8tKhCVYYUDhyFAoFLkn_iH5PZc2Yw=uw@mail.gmail.com>
To: Tracy Graydon <tracy.graydon@intel.com>
Cc: yocto-announce@yoctoproject.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-announce] [ANNOUNCEMENT] Yocto Project 2.3 (pyro 17.0.0) Released
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
X-List-Received-Date: Sat, 13 May 2017 02:01:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, May 12, 2017 at 8:20 PM, Tracy Graydon <tracy.graydon@intel.com> wrote:
> The latest release of the Yocto Project 2.3 (pyro-17.0.0) is now available for download at:

w00t!! Congrats everyone! :-)

