Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D35B5E00970; Fri, 24 Mar 2017 07:08:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A43E2E004E5
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 07:07:57 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id g2so1616351pge.3
	for <yocto@yoctoproject.org>; Fri, 24 Mar 2017 07:07:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=4Q5KGLSgvaOmUKKtPROZ4W/pcC64W02Q3CQi4zbiO1s=;
	b=rUbRdx1HJh7bQyULpWLfo94lyaDxUMz3IETczMogiV39Eg2HXjDPFACLqN2H5soSlP
	pcBWe8vD/WdbM8rahLAoguekGsScQuBMNWrmAS/ocaBRvN4GsI7pqXD0kuyuvwj0O2re
	j9ladf/Ye3PYokfG82PsrOPsQ2Hphi9GC1CWsMCewvvwedU3b+lBGKpXM28A+7Dqzv2G
	UX3ilRvUiANp/ZUGftPFYEngLE2qOU2utCqG+E5Herhb4xzaaQfOxez7e+0VRlRPSO2F
	jpdoQSuheK75P2+Mg2qGhSjFe4ez3/fTIlLTwMPHH31FyNKIg8CznoJ0Zf1fhbeHZBnn
	HWcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=4Q5KGLSgvaOmUKKtPROZ4W/pcC64W02Q3CQi4zbiO1s=;
	b=oFHYfOnDYqIHk3PncoNzf8MLRgBjwWD9RqZU2/JV7x3G1O8YtPhMtdP3H/0Tn2wXKi
	O+ufKOBkNDw7q/yLOpCQEm6mGWECuSswEUEfs8JJwmCLAXxMT+4w9wP2k8KH4LK4T2/h
	QDWXZINh6L8vXWpEJNE2O1DYY+U1drNgwpAwnE7rwvp/7ryWk2IhriwBMqQw16Xvdz3K
	Lm4hqIgvMEeDKys/pilKAOjfpNl8bNaVC1qaBFVrSqNcSks5eLUaooAkibQmdKVRJQr+
	jdfpc24gmvmPeVsYaCgzBRiWsmDdRvuXQniaIxeELKE/703VjFA8oYipMLeLQdXcapsZ
	c0XA==
X-Gm-Message-State: AFeK/H0ocItym2Gy1X/+ldDmiOQcCnAYWjK+H8WzR+kDbWKIsf7hW6W5WA5u1upuadLq4g==
X-Received: by 10.99.37.199 with SMTP id l190mr9363676pgl.86.1490364476635;
	Fri, 24 Mar 2017 07:07:56 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:e3df:bf0a:9f90:498e?
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id l3sm5115412pgn.10.2017.03.24.07.07.55
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Mar 2017 07:07:56 -0700 (PDT)
To: Patrick Ohly <patrick.ohly@intel.com>, Armin Kuster <akuster808@gmail.com>
References: <1490345058.6396.258.camel@intel.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <0a778c6f-9a20-02b7-a724-2bb054a4d5ca@gmail.com>
Date: Fri, 24 Mar 2017 07:07:55 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <1490345058.6396.258.camel@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security] master-next rebased?
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
X-List-Received-Date: Fri, 24 Mar 2017 14:08:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 03/24/2017 01:44 AM, Patrick Ohly wrote:
> Hello Armin!
>
> Did you accidentally rebase all of master-next?
looks like it.
>
> The current master-next tip (3b9dd3688b6c725aa0146c91ee1a58c26095e48d)
> isn't rooted in the current master
> (8b38c93f2387793fb03d082e47723002cf667ae9) anymore:
>
> $ git branch -r --contains origin/master-next
>    origin/master-next
> $ git log --oneline origin/master..origin/master-next  | wc -l
> 179
> $ git log --oneline origin/master  | wc -l
> 211
>
> Looking at the content, it seems that only the last two commits in
> master-next are actually new ;-}
correcting it now.

thanks.
-armin
>


