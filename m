Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E087E0055C; Thu,  5 Jan 2017 20:13:56 -0800 (PST)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2773AE0052B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2017 20:13:53 -0800 (PST)
Received: by mail-it0-f67.google.com with SMTP id c20so1016541itb.0
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2017 20:13:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=svquKAfVFx7ea2ODZoq4iqMAl72RS2ufaBAz3x8Esvs=;
	b=QuWTK0tkqsrkCbcLR6Ynz8UMUJ3XltaZUmSf7JskcNj7+T7eUs6SmwVV3nyn0wcKDl
	i0hBRny5/INFgIZdlMPcuxbXBPn2I8mp28q2UsIN3S+k651pcDuSI5Vz45HhkI/Z7DEG
	rNY5U2BdBnyhioS3vhkcyTgad3qdg7MtMFfAnm8dtOS+NAlDGu87puTtSU/QBeu0jLFr
	Jr4lbwuv5PzFWSk8D8mPnwUWdLLw2nAz5zea+PL1U/CXo2aFtjmMLZW8/hWIKBuCfX8T
	xT1AHeL1OD8CtAKBD5Fxzg+cvNh7/GxxSPN9AXVCIFcQAzX6zUnSB0ZS0sJoOC1QP0Bm
	pnLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=svquKAfVFx7ea2ODZoq4iqMAl72RS2ufaBAz3x8Esvs=;
	b=r8t3y3JJP9P4w1htCyNli9MAo+EnxYutdjAjuiVCqLx6HUHsfEv35unQGhP3ytP2oo
	zg3wOI+aLOiba2oIQJxS9R/xZrRR3lsrumuooUv/S3jEf3LixNXJ2AJI542E4mLjpzCl
	IeusARDitlOSTQN+i4HI1whIy1h1wkai8O0zl7QahOOgsCTi3jI3PGlDZdzDj+9WCZzu
	ErWFJCKVrikEuemYtMcCo/rzV9GWG3Mw2eepP6szefqGPzECj3Zx/YxYD0mznpIXddyY
	lv5UEhMtwhMWd+vvQJSyq3bC5Crk3/w4A/DZmE6gYXiY2gTCS5rG3lFkpCmTMg7uCq4V
	YuBA==
X-Gm-Message-State: AIkVDXKTpbW72oE7EMGmfwUymNGTB8HFEb854cI1L9MUhKNzq7kD4DJfCnkVpFlTkCkEog==
X-Received: by 10.36.101.129 with SMTP id u123mr948863itb.30.1483676032646;
	Thu, 05 Jan 2017 20:13:52 -0800 (PST)
Received: from openSUSE-i7.site (76-10-182-217.dsl.teksavvy.com.
	[76.10.182.217]) by smtp.gmail.com with ESMTPSA id
	d25sm27802001ioj.25.2017.01.05.20.13.51 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Jan 2017 20:13:51 -0800 (PST)
Date: Thu, 5 Jan 2017 23:13:49 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20170106041349.GA23468@openSUSE-i7.site>
References: <20170105174229.1648-1-twoerner@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20170105174229.1648-1-twoerner@gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Fri, 06 Jan 2017 04:13:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

As it turns out, this v2 patch doesn't work, the kernel fails to build
successfully with this stripped down config. Maybe I didn't generate it
correctly?

