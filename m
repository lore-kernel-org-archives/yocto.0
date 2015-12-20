Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCF7AE00A92; Sun, 20 Dec 2015 13:54:37 -0800 (PST)
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
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A36D6E0083E
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 13:54:33 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id o67so137853420iof.3
	for <yocto@yoctoproject.org>; Sun, 20 Dec 2015 13:54:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=9Q/yd53x256d+O5RZx1OEaCH1bYlYOWDA/bOOZweKOE=;
	b=YbWyC2xrM7OAl5CTJwxCFFt8AH0chApxUlvXnVvJ4sEodeqSYhlD9nOe6/TedQRSIw
	a/cSfifPwZkTMBkVUwaSc31RQQgYVS89vHivGfQwqJkhcdmXkefGia7lWLAr4oI3HUXp
	/v7YiCHnCam/Rc5w3O6Ax/ArwUeHL441uBvKDh1qvrGBb20P02qim8iQgZblUOyZmMKI
	9qGzTmt9wPDShPMLfFThmTOp732PGkfjyAjPZ+CcpPhhuG3f43heRexYd+xQkWROK2eJ
	udvTJq+x5kUCUvk4K6oUy26ACpu91AWUZNrE4lcKsGKiO0ODHy5Y6MgYjurl5vprYVwS
	9z5g==
X-Received: by 10.107.4.213 with SMTP id 204mr18313617ioe.195.1450648473608;
	Sun, 20 Dec 2015 13:54:33 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Sun, 20 Dec 2015 13:54:04 -0800 (PST)
In-Reply-To: <MA1PR01MB00569830BC74B09868831E5282E30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB00569830BC74B09868831E5282E30@MA1PR01MB0056.INDPRD01.PROD.OUTLOOK.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Dec 2015 13:54:04 -0800
Message-ID: <CAMKF1soDYYREu56B7LOuDpJ5JZVRCJyXaDxJ_B3bL-fAix5dXQ@mail.gmail.com>
To: Raghavendra Kakarla <Raghavendra.Kakarla@inedasystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to add disk space to qemumips image
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
X-List-Received-Date: Sun, 20 Dec 2015 21:54:37 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Dec 20, 2015 at 1:03 AM, Raghavendra Kakarla
<Raghavendra.Kakarla@inedasystems.com> wrote:
> Hi All,
>
>
> I want to install some package using nodjs. The package itself having the
> more memory but in my qemumips I have 1000MB of free diskspace.
>
>
> Could please help in adding the extra diskspace to qemimips image.

Read Documentation e.g.

http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-IMAGE_ROOTFS_EXTRA_SPACE
http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html#var-IMAGE_OVERHEAD_FACTOR

>
>
> Thanks in advance.
>
>
> Regards,
>
> Raghavendra K.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

