Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 037BCE00D1C; Fri, 29 Dec 2017 07:44:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FC3BE00D1C
	for <yocto@yoctoproject.org>; Fri, 29 Dec 2017 07:44:57 -0800 (PST)
Received: by mail-wr0-f196.google.com with SMTP id p17so18186236wre.7
	for <yocto@yoctoproject.org>; Fri, 29 Dec 2017 07:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=jjXaJnHr5cAESpA8IfZdQvpVmGMWU5OFbtlYZwQ78+c=;
	b=1g9jUubRyPvgWWC91qEIQyHK8YUAUzrWIuRoQTV4AGQUXbLGaWp7dIwcpARFbTMaKI
	1Ksfs0rMl5GO5W3FnD9uUCFLmB87NlY72ywIALO1iein05FEUdD2CkaUWofm3qyryokE
	ZtGrEwAsKqsKEAiDgMuX7vv7MELfnnY/ftaLOiXNB3sCEPpGZnfKbclW5pP301zODI0y
	/C1rS9ZETvGT08hhiQu+tUP02AlbDvd5cP94yxUPTmA/AleOFgJYkd25p4QV76njqy2i
	f9OeBo/gdXt9jPcV95A5upkYJkpQX8jfjlLf27LHCkwS9qUcdFn9/CeborlvIPyx0Q8q
	pTnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=jjXaJnHr5cAESpA8IfZdQvpVmGMWU5OFbtlYZwQ78+c=;
	b=UtbPPhMGAigy1IydZZkgZE8gp290e6gMIeAT1chPEZi6ehk4OJaxXB/PH9aNK611Cq
	rM1/vA9J+0UP947KQ+VNj0fJATRX2Yc0na4OiCADavbyFH7leu8QWA3k4oW5LLwz82gE
	GvTNVIFUjw1m4I0KLBHeb0iuDn21WL7F9wnVczMoPBaMKaFhBp1CDf4UJ+c58pSfd+Z/
	XzI2P8j79He/XiSvea2DYsctWe+9pXO8tkrsEJ432cavSW8MGJbWci/5al8jGUsJbHeP
	wWjwJl49s3z47ILoNavcvSln4gGAEa3/TxojnrUBHQ/bTl/7TSTWvmakmCbQGEdCXjyW
	DeMA==
X-Gm-Message-State: AKGB3mLt80FgzmJ0UAMoN/Zj9+vDSVmK9EXHF8eCRTRtc33tj4uEOXQo
	zfEKBs+z+C14PBEPZh9BObH37S+gH085tCW+iwyg9w==
X-Google-Smtp-Source: ACJfBovTp3PFUreSqnOOCjJMtm3g/tQ9Ghaa8pAdk/R3Z66BUuZZJhA48iAa1eg9UehG5c9fIfKTIEW9LMm9LTtZa2w=
X-Received: by 10.223.141.133 with SMTP id o5mr36620837wrb.35.1514562297165;
	Fri, 29 Dec 2017 07:44:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.182.79 with HTTP; Fri, 29 Dec 2017 07:44:56 -0800 (PST)
In-Reply-To: <1514502046-18414-1-git-send-email-drew.moseley@northern.tech>
References: <1514502046-18414-1-git-send-email-drew.moseley@northern.tech>
From: Paul Barker <pbarker@toganlabs.com>
Date: Fri, 29 Dec 2017 15:44:56 +0000
Message-ID: <CAPyrkgxRik8jN1kiPciXmo90ioeqp8mWb3UwmFMm102T0Gh+sA@mail.gmail.com>
To: drew.moseley@northern.tech
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] rpi-config: Allow arbitrary additions to config.txt.
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
X-List-Received-Date: Fri, 29 Dec 2017 15:45:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 28, 2017 at 11:00 PM,  <drew.moseley@northern.tech> wrote:
> From: Drew Moseley <drew.moseley@northern.tech>
>
> Setup a bitbake variable to allow users to specify
> arbitrary additions to config.txt that are not otherwise
> covered by specific settings.
>
> Signed-off-by: Drew Moseley <drew.moseley@northern.tech>

This is already implemented on master as commit 9bf91801.

Cheers,

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

