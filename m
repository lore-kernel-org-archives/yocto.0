Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F8C5E007F6; Fri, 25 Jul 2014 10:24:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-ie0-f181.google.com (mail-ie0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07909E007DF
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 10:24:14 -0700 (PDT)
Received: by mail-ie0-f181.google.com with SMTP id rp18so4011307iec.40
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 10:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=IJs90SBmjVdv6noHMyeqYXjPjM3gHDQvgwO4YzBGdWk=;
	b=clF/hksvW3BM43YbyxFieLlhhSTK6d6hSeqETWi1Xs+V7CBeHqkY6+Fv/vBM3ZzjGE
	VkZwYcBwogvSiNeNZAsYRAWMKiEuj9V/ssap4Ns4YPYYPFkOkp6/gVkDHRiXAekJcK1D
	g+mHNe30HOVy9oTMpN5V1IQpf8DLumx9c5gqHRypeJCb7iEOUG6e88wvIDHjB5e3yzT1
	NGKsxFg8GY8ihr262bO7fqFotZKE5/ESee2wy2JXnW6cQRBkIKrHMjMQvfgkYmArlJZv
	262RoVbxuWAVnoQXePCHmDaVsI5b54WiAaL4R0EcnlPwRz3yJHOwBA7CWYCn85zhtS6q
	3zNQ==
X-Received: by 10.50.13.102 with SMTP id g6mr7798250igc.20.1406309053768; Fri,
	25 Jul 2014 10:24:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 25 Jul 2014 10:23:42 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407251250270.7984@localhost>
References: <alpine.LFD.2.11.1407250833370.3458@localhost>
	<CAMKF1sodH6FbZn1+tX3exH6uSwgjGMv0F_bdp=uNfd5b2si=yw@mail.gmail.com>
	<alpine.LFD.2.11.1407251250270.7984@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Jul 2014 10:23:42 -0700
Message-ID: <CAMKF1sqxcHdWyvcAfVw6iNzfRNBn3_d9qwXzG6U28=HDwmb-qQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: are there any more obvious candidates for ASSUME_PROVIDED?
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
X-List-Received-Date: Fri, 25 Jul 2014 17:24:22 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 25, 2014 at 9:51 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   fair enough, but what about the simpler example of gzip as opposed
> to bzip2? it's just trying to understand what makes the list and what
> doesn't.

gzip can be replaced by pigz and it can be used to provide gzip-native

