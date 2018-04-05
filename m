Return-Path: <yocto.user.mailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99B4CE00905; Thu,  5 Apr 2018 11:48:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yocto.user.mailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6CEAE00823
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 11:48:28 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id r82so10077150wme.0
	for <yocto@yoctoproject.org>; Thu, 05 Apr 2018 11:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=7KQR3fN4ukxLNi3J3Jsj6l4yNjBw+QMLPv3Rlf4mLTw=;
	b=X/SddsmCKYK7YbVfEWtVsqZp1Vqytorb5DxkVjM4sFZ/kX949BMchXqBdq/ini5xa2
	nfML9JCQThthQBUXCGHgL1BkazVavf/QpfnUHq2lFMwoX3qul8hyn2C2TtQ1wcEXYIfP
	xJ3qtk//9RVb/IyoJZrErDOb6TioWpWibjnM2xVJmHRip0Q9XydNY1TPYAnzNXLrO+PS
	9Xq4XmSfqAOwJI2UWFN9VYjvGAhe4iXsgppg+J1g1NOnRfUjVYZRurtDtB0TNi1iFSp+
	MU+raYd8rDRvceCQ0TWdG0hqc+V56xQBO3xgY1317uF2qP1u6boqaeiqzpgG5ZfmH83u
	URvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=7KQR3fN4ukxLNi3J3Jsj6l4yNjBw+QMLPv3Rlf4mLTw=;
	b=kODRYsAcVtecmMybEosS3LnhwzPPXedLX9b8ahD40KjgGHKop/q2y+cRQ95F0JZriU
	3k47vfXuoL56nJTzLkrteOFjzGBw9GOllQESKzuEeMk2QtBBAow0SWWN/WcWoxgPFLGU
	JsorfX2z6YX+tijVY8vr2ouc7MmAK+fhJFhBOu1RPfF8ZUWOFIQG53yvIzr+QKGEOmDq
	YLR1j+sl4/M+40ykxg9s51AjfqGCNg9E3YqDHSjtdOHR+G64WRCcdeEM3woHooNOr1Ea
	becGrcnJD/vpp2FwlavP5SS6nqsdkmXvzdntpIcnGyvlprovt0gDPJwaH2OKGzamM1Nd
	pPbg==
X-Gm-Message-State: ALQs6tAMW+WGZO5Cts67Avc47sX/shbBQ76vevyrhYL1orQZMm8otPZT
	FVQkerWmxGYmn/7w8bIyf5QmCupw
X-Google-Smtp-Source: AIpwx48GR/xKolc4cHCwsY2B7eMoOLA0VGBgEjJwq4GY1TuZN5BRnlZqO30kErBEG8mebJxFXCQKrw==
X-Received: by 10.28.54.88 with SMTP id d85mr12553511wma.2.1522954107390;
	Thu, 05 Apr 2018 11:48:27 -0700 (PDT)
Received: from [192.168.42.50] (ppp-2-86-156-243.home.otenet.gr.
	[2.86.156.243]) by smtp.gmail.com with ESMTPSA id
	j3sm12086299wra.19.2018.04.05.11.48.26
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Apr 2018 11:48:26 -0700 (PDT)
To: Raymond Yeung <rksyeung@hotmail.com>
References: <MWHPR19MB11832923DB3D62F88A7A0BB5C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB118384708AABF27804EBDD66C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
	<CAMKF1sqodNOr9oxCTgqapjaZAxYjqLj3s86_MNj74i5D-1orQw@mail.gmail.com>
	<MWHPR19MB11833298715A5E9438C791C8C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Robert Berger <yocto.user.mailinglist@gmail.com>
Message-ID: <b5b5d8b1-efde-7e10-5ff1-404b2b407d89@gmail.com>
Date: Thu, 5 Apr 2018 21:48:24 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <MWHPR19MB11833298715A5E9438C791C8C5BB0@MWHPR19MB1183.namprd19.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with packages during "devtool build"
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
X-List-Received-Date: Thu, 05 Apr 2018 18:48:29 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi,

On 2018-04-05 21:02, Raymond Yeung wrote:
> "inherit module" is already in recipes/cgosapi.bb file.  In fact, as I 
> use devtool to "add" the recipe to workspace layer, this .bb file is 
> autogenerated.  I only added the last line that sets KERNELDIR that 3rd 
> Party software's Makefile uses.

Did you have a look at this out of tree kernel module example?

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta-skeleton/recipes-kernel/hello-mod

You might want to use this makefile and add your stuff there.

Regards,

Robert

