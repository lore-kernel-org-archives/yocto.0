Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 42826E0044A; Fri, 11 Jul 2014 21:51:28 -0700 (PDT)
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
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F096AE003FA;
	Fri, 11 Jul 2014 21:51:18 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id h3so158092igd.5
	for <multiple recipients>; Fri, 11 Jul 2014 21:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=cKSBZFpnQAgGe5DytNcMxLpttm7AFcz6+sp68yl7uK4=;
	b=Tb0ajEEtZBVRripaLDRK/AGUt3ZBRMFcFlY8z/8ItWa2NEr2Q23erzIV08hAUXvdW1
	Z/7bpEwq6tlcRecYjGaPKCKRpPnXaufh7NfYhU7SSN/dy2GMyK8YkbClJML7/cdFQPDG
	xQ9YCXCcAT9U3DT98ayeU1w6DfVknGUTTpClWYM4G4vtC9dmZ4IOjAAZtR4VH8rkDfap
	TbqtPb6kkhgElTkj8BYmMdIfKYbc/PekaFETGnKQZUZyGGRmdGqu5LChOtQWiGHADFVA
	mt/0JOb5JeuaLPphGP7rScRcXVhRMQl3DlHSNuXeJ4Sd778dvQpoQGmR7JY7zMVbC4K+
	kDFg==
X-Received: by 10.50.43.134 with SMTP id w6mr9664275igl.17.1405140678079; Fri,
	11 Jul 2014 21:51:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 11 Jul 2014 21:50:47 -0700 (PDT)
In-Reply-To: <CAL0pqZ0JznEDkTPUG+fBQwf3BX_MbRbeCXbMFyJ4f98Py25b+w@mail.gmail.com>
References: <CAL0pqZ0JznEDkTPUG+fBQwf3BX_MbRbeCXbMFyJ4f98Py25b+w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 11 Jul 2014 21:50:47 -0700
Message-ID: <CAMKF1sqFRUvvk-=b-9NykrrE5NT00mL3Rhv2VXuuj9Bm1saSug@mail.gmail.com>
To: Leah <leah@wolfssl.com>
Cc: meta-intel@yoctoproject.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: CyaSSL library now available for use in Yocto Project
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
X-List-Received-Date: Sat, 12 Jul 2014 04:51:28 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 11, 2014 at 2:47 PM, Leah <leah@wolfssl.com> wrote:
> CyaSSL lightweight SSL library is now available for use in Yocto Project
> images! Check out our layer which we built and tested using the Minnowboard:
> http://yassl.com/yaSSL/Blog/Entries/2014/7/11_meta-wolfssl_Layer_for_Yocto_and_OpenEmbedded.html
>

thanks. It seems you need to submit this layer for indexing in
http://layers.openembedded.org/
currently it has git://github.com/cconlon/meta-yassl.git  listed which
seems to be old version ?

>
> --
>
> Leah Thompson
> www.wolfssl.com
> leah@wolfssl.com
> 406-570-1389
> Skype: lchristina26
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

