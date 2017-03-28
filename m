Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31739E003E1; Tue, 28 Mar 2017 10:27:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3A75E00349
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 10:27:47 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id o81so4280154wmb.1
	for <yocto@yoctoproject.org>; Tue, 28 Mar 2017 10:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TAVnFwK9yeYaTQKbysHrOiA8QKeMHJIdjweykyvssz4=;
	b=j0rfmh7ahq/ZrsUIsfUluPpNPCCUqrWQp6lK7vmJaINfJAx9qXJBYdMuMBbdg83YRw
	hkiONR42LTWLgmOYwQ/h4vbyWvSaXBw62zjiCS/aS9L7Ne8bk/PqAv1EddXcinaHk5Oe
	BTvYQ6ZkcTmaFb4RVpVPW5V5omNxw2timHVFGq7+rHq8/vNejZYNRM5C5lqNzMVSaXC1
	UmClprdncjMTI3ZZE7cjw+0CYIpGWzpM2OGugth5b/GeEkVfWXi0i+muuOR28qW2vu7a
	0BspdKGaGyF9wSzEdySCkThigSIM7Wll5KjrNCXM6OnEOFdfwFUOyTwmIXFIEKyNAYXp
	owEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TAVnFwK9yeYaTQKbysHrOiA8QKeMHJIdjweykyvssz4=;
	b=SvT6G/cNXw/IvTpzzKV69dJ3vpVbx3CpP7Karj2Ju+CBokhFALccupusM41AAC/6JS
	uNF3FOuqI+/0AjGhMgQZgL4Kr2d3xDLvEmAkUko507FgdrBvK1OunH/azoisvuqtyxte
	+a17zwjU+Fi37YTQQUH3oSk/aRqHNjJLRJ/4hhXls/dz+3j/6Sr/u2oBi6P7XYh6BuVF
	rhy00T8ckr/K2DPnrhjEtD6FtxWWUs+gxEZZA/NZoeTB7JlsYB9ILsgJsAloRKhXEJNt
	klrPbR6dYJ/Y0faVyzJ6RzJDBPjICD0/VYI1CNlSlif4CDbhNLT2o2HekA8IBQi3Qm7k
	lH/w==
X-Gm-Message-State: AFeK/H0X7UZiBdUa3DqkF5op0z81qrL4Va+JmtUSF9fzpwIWQJZ7uiwyhJxl0SzWJ0/9HQIAZMqx7k8G2mZ5kg==
X-Received: by 10.28.165.145 with SMTP id o139mr15866070wme.13.1490722066303; 
	Tue, 28 Mar 2017 10:27:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.162 with HTTP; Tue, 28 Mar 2017 10:27:15 -0700 (PDT)
In-Reply-To: <CAKEinFwC58g5q9wmvwhTfn5Au3n3Qrx8xRkSy7yUpehyedLiog@mail.gmail.com>
References: <CAKEinFwC58g5q9wmvwhTfn5Au3n3Qrx8xRkSy7yUpehyedLiog@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 28 Mar 2017 10:27:15 -0700
Message-ID: <CAMKF1soTiRbge8yY3TJc8+EPgeQpmAPOe1q4=SN=9duSyEix5A@mail.gmail.com>
To: Cody Piersall <cody@arrc.ou.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Remove a recipe's do_install_append() function in an append file
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
X-List-Received-Date: Tue, 28 Mar 2017 17:27:51 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 23, 2017 at 3:28 PM, Cody Piersall <cody@arrc.ou.edu> wrote:
> Hello,
>
> I am building zsh from meta-oe layer, and it has a do_install_append()
> function defined like this:
>
> do_install_append () {
>     rm -fr ${D}/usr/share
> }
>
> which gets rid of lots lots of useful functionality, like
> context-aware autocompletion.  Can a bbappend file get rid of that
> function, or do I need to edit the actual recipe? I've attempted
> defining an empty do_install_append() { : } but it didn't work.
>

if its in a bbappend, there is not much you can do about undoing it except
to not apply the bbappend or modify it directly.

So you can send a patch to meta-oe to convince that its a good idea to keep
/usr/share for zsh, or you can carry a local patch to meta-oe where you undo it


> Thanks,
> Cody
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

