Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9C09FE007B6; Wed,  6 May 2015 13:18:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f176.google.com (mail-ie0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73C87E00306
	for <yocto@yoctoproject.org>; Wed,  6 May 2015 13:17:57 -0700 (PDT)
Received: by ieczm2 with SMTP id zm2so23660802iec.2
	for <yocto@yoctoproject.org>; Wed, 06 May 2015 13:17:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=YWmIy1kIrl9IIcOuNiD0avEvDgEqRKkUknQZPYCJPQ4=;
	b=SQY1I6gkkkdtVcWqXKXUVKSWccc6uAisM47qwHbh2j+za0O+NdExzZTq0oeg+fnDqM
	DDon6O0+Gp5grpczeEn9PRQsMbOqQrG+k5dGe1ANxjCIdDpBm27sf7LlHEtKs7yczAHd
	0adBz9PusOjn67+wZBu42lPmu1eJoCcCE18lTP0ZOvi4vWn4PxrPY5Bad6RAyXvPyBLn
	DUmBW11E6x/NHv1uVTeY/DUSiWXQzixUWXTi9bJ/5LGWkU68ymKvMVwEi4Uxb+j6QvrY
	S/b5BV5YGVeIw+6doMxBarUfQZ+MmLyReb7EI9cD17gRYtlxaaHjZsBunIbbvqk3mokv
	AImg==
X-Received: by 10.50.62.148 with SMTP id y20mr10316443igr.17.1430943477442;
	Wed, 06 May 2015 13:17:57 -0700 (PDT)
Received: from [192.168.141.85] ([66.49.234.10])
	by mx.google.com with ESMTPSA id pg7sm1502081igb.6.2015.05.06.13.17.56
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 May 2015 13:17:56 -0700 (PDT)
Message-ID: <554A76F1.8050407@gmail.com>
Date: Wed, 06 May 2015 16:17:53 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: openembedded-devel@lists.openembedded.org, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <55483F50.5020803@gmail.com>
In-Reply-To: <55483F50.5020803@gmail.com>
Subject: Re: [oe] Odroid-xu3 support
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
X-List-Received-Date: Wed, 06 May 2015 20:18:00 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 05/04/15 23:56, akuster808 wrote:
> I have added support for the Odroid XU3 board. This layer can be found
> at  https://github.com/akuster/meta-odroid. It supports XFCE graphics
> and has sdcard image support.

Sounds great!

In addition to your meta-odroid there are also:
https://github.com/stoupa-cz/meta-odroid
https://github.com/MarkusEich/meta-odroid

Yours supports: odroid-xu3
stoupa-cz supports: odroid-c1, odroid-u2, odroid-xu
MarkusEich supports: odroid-u2, odroid-xu

It'd be nice if someone could put together one "meta-odroid" that would
support them all ;-) Or at least it'd be nice if at least one of them
was found via the layer index ;-)

