Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D8380E009A3; Mon, 11 May 2015 15:03:20 -0700 (PDT)
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
	*      [209.85.223.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A1B1E007B9
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 15:03:18 -0700 (PDT)
Received: by iepj10 with SMTP id j10so117250159iep.0
	for <yocto@yoctoproject.org>; Mon, 11 May 2015 15:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=5Xn4p7jIi1FyCfK+8c2lpADvMX4h4ldlOCwbNFffq78=;
	b=R3OXz0Az2t9067Y26kCgOIsVDg/XaDL6/Etgfx02yCwZyuh46N2BriLJUKGiH4O56B
	uKiMlKo9NPIURYJUMzha9qHQGpR/nyVvW+THqzAHvMcvAFULkLIlKK9HAXgnRZY56N5t
	zOrL4IgNhU1aqgsLX8g8BgL2gE392RONT1Sl0RFbygB3y0ZehSE0JSgrmUeiJc1n1QHz
	hBNa+UYWoYCsOswhMyRF8vnKb/OiWJ16WYnfIaBjoiCaTo49IF3SHo6MmCH6jO/ycIQG
	vWI5Ex3ohGTAixabH1a1MOkOYaNO1rl8wwuzPDk29WH9cMdXu9LI02HoWu1lEuZOBrjp
	54ag==
X-Received: by 10.107.129.22 with SMTP id c22mr15676685iod.81.1431381798287;
	Mon, 11 May 2015 15:03:18 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by mx.google.com with ESMTPSA id
	z195sm10590137iod.33.2015.05.11.15.03.17
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 May 2015 15:03:17 -0700 (PDT)
Message-ID: <55512721.1050607@gmail.com>
Date: Mon, 11 May 2015 18:03:13 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: "Keskinarkaus, Teemu" <Teemu.Keskinarkaus@Maximatecc.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <83DB4EC8FADD45428E3CC4E3664761FD218F77C5@AMDTCEX10.actuant.pri>
In-Reply-To: <83DB4EC8FADD45428E3CC4E3664761FD218F77C5@AMDTCEX10.actuant.pri>
Subject: Re: Toolchain and SDK
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
X-List-Received-Date: Mon, 11 May 2015 22:03:20 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 05/11/15 03:52, Keskinarkaus, Teemu wrote:
>   
>
> I’ve learned that there is command: bitbake image-recipe –c
> populate_sdk that’ll create the sdk. The thing is that it contains the
> sysroots, but toolchain is not there.
>

Just to clarify, you're not literally typing "bitbake image-recipe -c
populate_sdk", are you? The "image-recipe" part should be replaced with
the actual image string you want the generate an SDK for. For example,
if you were building "bitbake core-image-minimal", then you generate its
SDK with "bitbake core-image-minimal -c populate_sdk".

>  
>
> I tried meta-toolchain – target as well, but that too didn’t make the
> toolchain or at least I couldn’t find it anywhere.
>

Have you looked in $TMPDIR/.../deploy/.../sdk ? (different version
and/or different distros put it in different places, but looking for an
"sdk" directory beneath a "deploy" directory is your best bet)

