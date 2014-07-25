Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAB29E006DB; Fri, 25 Jul 2014 10:31:27 -0700 (PDT)
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
	*      [209.85.213.180 listed in list.dnswl.org]
Received: from mail-ig0-f180.google.com (mail-ig0-f180.google.com
	[209.85.213.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0BA8E003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 10:31:23 -0700 (PDT)
Received: by mail-ig0-f180.google.com with SMTP id l13so1130796iga.7
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 10:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=OaQpawJh2PEEf9RwJ9+0qqC8tLyT2DZpn2A0sevGND0=;
	b=oG1MfXDjIcF78N9dgrIr/EtmK5BPhUVJucpRY+cv/bG+cma3cV8/sAXwTk1W3jpna/
	2kdZvFjfwhz2osLWygNdd+wPjm3Y4BzBAz9Un5qilloEs6O391BKQx9sgumNh555KhPa
	5BPimqW+jUP+iGvg9Y4caAcssUiylAYRseqawjLX7HT2He8OzucW3/mn5vvivO+nCHEa
	V3Rm3V46ADfRQW1lHQQ9wK+K0PXDq1tkNg/8S9/66ED1Q15kGOh0XxC+vsfkLkM97+b8
	oRXBaqXzjqMHX6y68RM76SXN0elEyzbHXhTjMO3+bH9SuEMcBcjHQJzuyQb3+123POVk
	GCWg==
X-Received: by 10.42.90.74 with SMTP id j10mr22364613icm.29.1406309483250;
	Fri, 25 Jul 2014 10:31:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 25 Jul 2014 10:30:53 -0700 (PDT)
In-Reply-To: <CAPphmgbuZG64nAFx=u_verAsb=b14idQjA85-UhsHGf=M9NHfA@mail.gmail.com>
References: <CAPphmgbuZG64nAFx=u_verAsb=b14idQjA85-UhsHGf=M9NHfA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Jul 2014 10:30:53 -0700
Message-ID: <CAMKF1spEdPTw3Hasxeizc5hsmp-fuVU22Hj8+AYsXXP5exqYPA@mail.gmail.com>
To: Jate S <jatedev@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: change in base-files recipe does not trigger rebuild
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
X-List-Received-Date: Fri, 25 Jul 2014 17:31:27 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 25, 2014 at 9:10 AM, Jate S <jatedev@gmail.com> wrote:
> I'm on dora. I am using a different /etc/profile for base-files via a
> bbappend. Subsequent builds of my image does not add the new
> base-files package as I think it should.
>
> Running bitbake of my image after the modification reports nothing to do.
>
> Bumping the PR on the bbappend rebuilds base-files when bitbaking the
> image, but does not regenerate the image.
>
> Doing a clean of the image before bitbaking it installs the new base-files.
>
>
> Should the image be rebuilt automatically after changing base-files?
>


what does your bbappend look like ?

