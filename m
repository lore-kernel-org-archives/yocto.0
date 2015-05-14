Return-Path: <ashcharles@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 72C8CE009BB; Thu, 14 May 2015 11:22:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashcharles[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC203E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 11:22:15 -0700 (PDT)
Received: by iecmd7 with SMTP id md7so67928497iec.1
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 11:22:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wmym0kt+KvtvNQqr9o/Oj8q3mMwYlZy68NbYEBhxRGQ=;
	b=CUXMmRnHtp7WwX+1GAtiDsj5j5KFLJQ1vtsYfEdInAWSWZeDODwKcAGSSNEvEiF6iJ
	3/5v3XTlb6RKD4HeP/K2xEMjKjiE2LdodKJI6pgAGZlbbrwyt/MiNa+XS6Ns+xLV2M0o
	Z5qxN81mIRb3FAly0PF+dAyxxkTTBh1PFTAM1y8mBWg8B3mX/luD2kC7Jt3jCybaNKuB
	2Z+rUA5V/268yAjZy/E7tv6vnLN7kS8E8gxOhDHL6z9uzj7eZwDnTv+a7+gCk6olbALs
	HkhyTe/2/49j5eAl6GK0fbMV0N4o9evJS4G54DCGE/TywuPphTdVXNCnMEXodlWYB2PP
	K2jg==
X-Received: by 10.50.115.4 with SMTP id jk4mr32562074igb.21.1431627734673;
	Thu, 14 May 2015 11:22:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.138.144 with HTTP; Thu, 14 May 2015 11:21:44 -0700 (PDT)
In-Reply-To: <555407B9.7040105@windriver.com>
References: <CAK8F28nH13quAv_8KqfEDnyua99mBYvLnBYej0ugC73dP5LX+A@mail.gmail.com>
	<555407B9.7040105@windriver.com>
From: Ash Charles <ashcharles@gmail.com>
Date: Thu, 14 May 2015 11:21:44 -0700
Message-ID: <CAK8F28=iqLWycPRJtvbJ3cjHd04e-XvrQhqHQ0iC7xZ6ADrASA@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Using smart within an SDK
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
X-List-Received-Date: Thu, 14 May 2015 18:22:19 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 13, 2015 at 7:26 PM, ChenQi <Qi.Chen@windriver.com> wrote:
> For the nativesdk part, we can use smart/rpm to manage packages. A long time
> ago, I tried this out and succeeded.
> However, for the target part, we cannot do the same thing as the rpm
> database for the target part is not usable after installation. I once tried
> to solve this problem but failed.
> You can have a little try and if you have some good news, let me know.
Thanks for your response.

I've not been able to use smart to install packages even on the
nativesdk part---could you explain your steps?

What are the barriers to using the RPM database for the target part?

--Ash

