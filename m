Return-Path: <yuchankit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C040E0082F; Wed, 26 Nov 2014 23:10:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yuchankit[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f175.google.com (mail-wi0-f175.google.com
	[209.85.212.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4542E0034B
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 23:09:59 -0800 (PST)
Received: by mail-wi0-f175.google.com with SMTP id l15so14788397wiw.8
	for <yocto@yoctoproject.org>; Wed, 26 Nov 2014 23:09:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=qrsTZyu3IrBrpN2yVIkZ+MZeaNYiWnOTcGY5oByczcw=;
	b=PinxJMFVYtC19gtc0drhOWUGpjRJpy3JSbA/movrVeDSqd3dprqs2cRpGyfYPhJ5nE
	ACgTkV80ezRXoOgzz8XybrnUpee3gvCbNdg9zeyYfPOFLXuVlD5hssOq3CsjHhAWN9dn
	0iljTVmxxSik1xjmfQyFlWhQLKkYxO587rSx3nemI445UJJONg/HSytUyOhsYWSI00tF
	+lfxey3AvkOWyg5mGU7WMtvHObfIYGm4udFkPkVUDmxF1pVdcExRvyJDykJPdk484Sid
	tTkqcj1aWYlgPLcA/x3oZVF/tF4HC8xz8hEXwuzoNrZ83MCMolD/W2/L+YJWdGs54E7N
	7Fcw==
MIME-Version: 1.0
X-Received: by 10.194.134.234 with SMTP id pn10mr57221487wjb.34.1417072198875; 
	Wed, 26 Nov 2014 23:09:58 -0800 (PST)
Received: by 10.180.72.208 with HTTP; Wed, 26 Nov 2014 23:09:58 -0800 (PST)
Date: Thu, 27 Nov 2014 15:09:58 +0800
Message-ID: <CANusJLONn2JMy-7nLY4EbZsjx3RT+H5brRyqevtq-rxWB=AsSA@mail.gmail.com>
From: Chan Kit Yu <yuchankit@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Thu, 27 Nov 2014 10:54:53 -0800
Subject: Creating a recipe to create /usr/local
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
X-List-Received-Date: Thu, 27 Nov 2014 07:10:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I'm not sure if emailing this is the most appropriate way and I
apologize in advance if that's not.

I have some scripts that require /usr/local to exist in Yocto and
therefore I need to a recipe to create /usr/local directory. I tried
to accomplish this with a simple recipe but that proved futile.

Although bitbaking that particular recipe was fine, trying to include
that package in local.conf resulted errors and those errors are
gibberish (it listed all the packages inside the image that I was
trying to comple) . Here's my simple stupid recipe:

SUMMARY= "...."
LICENSE = "something...."
...
...
INSANE_SKIP_${PN} = "installed-vs-shipped"

do_install(){
     mkdir -p ${D}/usr/local
}

Is there a better way (or preferably the canonical way) to do this?

Thanks,
Chan Kit

