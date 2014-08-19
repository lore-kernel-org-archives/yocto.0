Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B6876E00563; Tue, 19 Aug 2014 11:04:22 -0700 (PDT)
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
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CE2BE004F5
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 11:04:18 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h3so10043119igd.2
	for <yocto@yoctoproject.org>; Tue, 19 Aug 2014 11:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZU+aUUVkpOOSaD34+xJuhuM4Fa2Wq4oMDh51ua1mVdc=;
	b=ox0O+/f1SruD+uz7hd8+n91siey6XAsGTxsjiHKCOr4LMT2MXiHZNZbOySWWzvYVKo
	Iu+oWJue0fYeRi6fvqTdDb4gtbbOPAUo9fXr8AreO8TjXHDHtPyhMqUhW6hZzt98f9EK
	gq4qSo3rxIEuIQ6Wrza0a1UrTR3ur7bIGOyDiUf5EJ386iqxp0saKRiqJIOLgX6kLjnq
	J+xrINrKJRyzYcvWs2xxYerukzV0I9taH6zNiGf0zxybtgxgZGLXRxCnngDIcj6qQXXA
	LRZdGTYQA1jtgXAK4t/TJHyY09wJjhAy3Rl1ly+F5JrAMxdiD3HMTvHARCO9rdPGD5sq
	+vpQ==
X-Received: by 10.50.234.193 with SMTP id ug1mr7644294igc.20.1408471458512;
	Tue, 19 Aug 2014 11:04:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.126.103 with HTTP; Tue, 19 Aug 2014 11:03:48 -0700 (PDT)
In-Reply-To: <CA+JN8xOphTVYqWHfx4ebKsHN-0_1O8zY6j1T8mGGeBFwKfRPLw@mail.gmail.com>
References: <CA+JN8xOphTVYqWHfx4ebKsHN-0_1O8zY6j1T8mGGeBFwKfRPLw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 19 Aug 2014 11:03:48 -0700
Message-ID: <CAMKF1srLF=JFB-pkAaH-HXZ7Nskqanj9yEkFEmtjimQhnid4cQ@mail.gmail.com>
To: Seth Bollinger <seth.boll@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Coverity
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
X-List-Received-Date: Tue, 19 Aug 2014 18:04:22 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 19, 2014 at 10:20 AM, Seth Bollinger <seth.boll@gmail.com> wrote:
> Hello All,
>
> We have a few code bases that we need to run Coverity on.  Does someone have
> an example of how that would hook into a recipe?
>

I dont think anyone have submitted patches for that yet. but you would
actually write a task in a bbclass and then offer to  inherit it
globally or per recipe

in that task you will implement the needed bits for running scans and
all dependencies etc needed for scan.

_________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

