Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f50.google.com (mail-pb0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A25A0E01439
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 20:07:51 -0700 (PDT)
Received: by mail-pb0-f50.google.com with SMTP id wy17so8534301pbc.23
	for <yocto@yoctoproject.org>; Tue, 28 May 2013 20:07:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:references
	:organization:content-type:x-mailer:mime-version
	:content-transfer-encoding;
	bh=B6NLRActLUJgFJ+z5ToS4vK46Co9TESjBrc6E30Ut1Y=;
	b=Atnd6yLsaXSZgj6ukcnoD7LwprajDICB7vJ6JwHn5SDv4bdzHk7rNeS26LYwFY7SG5
	pkHZevur4mdAkGwGlUnQoJ1aE7Is5YsZn+LZgmO5JVMHtJA3MCuD2FRYHU7VTUxii7a6
	qmtdmoicVcKCyEI5oUjl37s6e440KnGkL3i1czIOZw1kvl0fY3vPgKTEMKzy4N12bp+g
	4T1fiX0AHrtY8qATrHnxnX7fDBbf2zM1KSl68pNePcCpYEXWjUQqWMT3NutlyHL8jw8T
	oX4g7CjJx9txTWw0NSXyOkSitKOhSiXeyw5FBiVZKjZiNH++jx9eIOna0vzp7+/wikGZ
	3Eew==
X-Received: by 10.66.150.106 with SMTP id uh10mr1298447pab.118.1369796871500; 
	Tue, 28 May 2013 20:07:51 -0700 (PDT)
Received: from [192.168.1.82] (99-57-140-209.lightspeed.sntcca.sbcglobal.net.
	[99.57.140.209]) by mx.google.com with ESMTPSA id
	fp2sm35306337pbb.36.2013.05.28.20.07.50 for <multiple recipients>
	(version=SSLv3 cipher=RC4-SHA bits=128/128);
	Tue, 28 May 2013 20:07:50 -0700 (PDT)
Message-ID: <1369796869.20925.1.camel@fedora>
From: Khem Raj <raj.khem@gmail.com>
To: varun bhatnagar <varun292006@gmail.com>
Date: Tue, 28 May 2013 20:07:49 -0700
In-Reply-To: <CAGxOggGqkqG-Tss3-nvX+DGkb7+Wo_pUZ2-kxQOG2=mPO4+CQQ@mail.gmail.com>
References: <CAGxOggGqkqG-Tss3-nvX+DGkb7+Wo_pUZ2-kxQOG2=mPO4+CQQ@mail.gmail.com>
Organization: Sakrah LLC
X-Mailer: Evolution 3.8.2 (3.8.2-1.fc19) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: qemu: keyboard mapping got changed
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: raj.khem@gmail.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 29 May 2013 03:07:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-05-29 at 00:11 +0530, varun bhatnagar wrote:
> 
> I have build an image by using bitbake -k core-image-minimal. After
> that I booted the image through qemu. But when I tried logging in I
> found out that the key mapping of the keyboard got changed and correct
> alphabets are not getting typed. I am attaching a screenshot below.

what OS/machine are you running the console on ? is it a Mac then you
might have to choose right encoding by adding 
qemuparams="-k en" to runqemu invocation


