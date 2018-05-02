Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60838E0084D; Tue,  1 May 2018 23:19:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.174 listed in list.dnswl.org]
Received: from mail-qt0-f174.google.com (mail-qt0-f174.google.com
	[209.85.216.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E7B5E007F2
	for <yocto@yoctoproject.org>; Tue,  1 May 2018 23:19:18 -0700 (PDT)
Received: by mail-qt0-f174.google.com with SMTP id m5-v6so17066999qti.1
	for <yocto@yoctoproject.org>; Tue, 01 May 2018 23:19:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YWv4puz6m0/qCxfTpzMEIyXJ7W/9WQd6H3td7FBdW0M=;
	b=IWD+zEC0wlkc+juqG9OIHLChW3blWFdm4pEuF8PGbwy6OhjOYUhIJi/UA+aEcUtxy9
	W0JIlMqiUclmef4XPdDdcRPYWxDMBVWQwhpkjv7xKDxjS3irjGORu+bzcrKDz+ooQ3gi
	6WlMFD0rPaVAjqCZQiYZuG3I9BQZjWrQWfDhC7RhJJwiMFLnFaxJb6ZCGObokF7yKUYA
	ZvUUdC4nrkiolQdVN9nui57e3GIwfvdsBSa1ggOgCBHQYc/jK2vUsMMASin2moBT0PkW
	d0sbI079qQSWua4Hi88eZVXDf3aTRUZKhQ75nHZNEK7qbCbfZBoBVFv6YwR6L8cEHgue
	yGxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YWv4puz6m0/qCxfTpzMEIyXJ7W/9WQd6H3td7FBdW0M=;
	b=AFjVRM8Q5w/pFEXwCXfbsnrC6Hz0cXZs8vKN9jN2rQtD1TNzT+ulK+64v78pMVJUTS
	8J5RpOUTcfLWfwloqEUNimoFsElO1x6PepjWDoMMn0h9KK9TGvJnDIyhg9tKaAvEbPqI
	pYQocw4n7FH12mdZ1bEA75n3dZ5+373tm4M2h1n1ZFnOp9CHvz7BKJLQSF6nUF/fI5/e
	6xe9VCK3+JO9J0oc70rh3FQlDK2wFIMjqhwx39vXjmf8/j1vlpA+C+2r+PqU/lQ4jwW1
	yeQNVBDtBkhBls2mvdsmuNpsUL1x38Iga4lwrOfc1lw98xUhycXupmO4joyJOVd0iqXh
	AwtQ==
X-Gm-Message-State: ALQs6tB/heth7HZuVKxXOKqd46CLujfOqGsaqJIC/EFkRQXFjRhKVTK0
	XV9/RTWhy2fzQnf9quL7FvQ0KQd6HwUNkW99Rd4=
X-Google-Smtp-Source: AB8JxZrsW72tTukUWEBIdI3mQJfuztRPzxLmg977LBpvquFNJ3YFgla76Tyrl8Pmbf1F1kaUYRkFrEO4JldmXE7/9hk=
X-Received: by 2002:aed:222b:: with SMTP id
	n40-v6mr15466097qtc.146.1525241958116; 
	Tue, 01 May 2018 23:19:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Tue, 1 May 2018 23:19:17 -0700 (PDT)
In-Reply-To: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183D3C8CA06798F8109DCFCC5810@MWHPR19MB1183.namprd19.prod.outlook.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 2 May 2018 08:19:17 +0200
Message-ID: <CAGAf8LymM_PYzz3CVDqvG9+yq-YCeQ+UmMOOPDmCaovm6dFYgA@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem with Python when running oe-init-build-env
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
X-List-Received-Date: Wed, 02 May 2018 06:19:20 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Raymond,

The problem is that you (talking about your host distro):
[1] Do NOT have python3 package installed;
[2] Do have python3 package < 3.4.0 version, so you need to upgrade!

So, I have no idea which host distro you are using, but:
[1] If Debian/Ubuntu, then: apt-get install python3
     If Fedora, then dnf install python3
[2] If Debian/Ubuntu, then: apt-get update python3
     If Fedora, then dnf update python3

Hope this helps,
Zoran
_______

On Tue, May 1, 2018 at 10:43 PM, Raymond Yeung <rksyeung@hotmail.com> wrote:
> I'd just git cloned Rocko and meta-ti.  When I try to source
> oe-init-build-env, I got errors:
>
>
> -bash: python3: command not found
>
> BitBake requires Python 3.4.0 or later as 'python3'.  "python -V" gives
> "Python 2.7.9".  "python3" is not in $PATH.  I'd followed some detailed
> online description to install Python 3.6 on CentOS 7.  However, after
> installation, it looks like I need to invoke it with python3.6.
>
>
> How does this work now?  I suppose the oe-init-build-env script uses/expects
> python3, not python3.6.
>
>
> Any insight?
>
>
> Raymond
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

