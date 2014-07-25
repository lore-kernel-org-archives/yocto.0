Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76D54E0043F; Fri, 25 Jul 2014 09:10:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.42 listed in list.dnswl.org]
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DE25E003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 09:10:43 -0700 (PDT)
Received: by mail-qg0-f42.google.com with SMTP id j5so5257381qga.15
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 09:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=JSNnZNGn2CGvaCoU3lrgw5mA+K4nEIyTAvJEoKglkfo=;
	b=t4gbhRAyybQ55ouiF6aXr5xtstKBVLmEmnQ8F3jBrmyqVEIVkykEpEp2EjjNTYbc2g
	8biEKHKFmrc8gdAQUT/DcTIrnEZt1qaQrWyzDGvXvB82UoQuc5e2XpDWs0IM2VJ8J2n4
	jebZZ+A2CguG4CRHD0mBUB0PqKcU5eX+rZvqsa5MCYcajxjpmxcrIkkt/Zv9mtRoaRjo
	JbD/7eOMYGXGsja8GP7LkHIi+UC+DZwGL1BRvHCeuF7WziXgcpg7TEAP2uH57coSQpda
	U5OINR9P3Y3sR3P1uJwSolN8vplt+I4UzbmyKizEFqA3XzfrsvMMs0X2nP+WCdvk1xlB
	uPgA==
MIME-Version: 1.0
X-Received: by 10.140.95.101 with SMTP id h92mr28064821qge.35.1406304643187;
	Fri, 25 Jul 2014 09:10:43 -0700 (PDT)
Received: by 10.140.34.76 with HTTP; Fri, 25 Jul 2014 09:10:43 -0700 (PDT)
Date: Fri, 25 Jul 2014 12:10:43 -0400
Message-ID: <CAPphmgbuZG64nAFx=u_verAsb=b14idQjA85-UhsHGf=M9NHfA@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: change in base-files recipe does not trigger rebuild
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
X-List-Received-Date: Fri, 25 Jul 2014 16:10:58 -0000
Content-Type: text/plain; charset=UTF-8

I'm on dora. I am using a different /etc/profile for base-files via a
bbappend. Subsequent builds of my image does not add the new
base-files package as I think it should.

Running bitbake of my image after the modification reports nothing to do.

Bumping the PR on the bbappend rebuilds base-files when bitbaking the
image, but does not regenerate the image.

Doing a clean of the image before bitbaking it installs the new base-files.


Should the image be rebuilt automatically after changing base-files?


- Jate S.

