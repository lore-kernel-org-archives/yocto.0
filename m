Return-Path: <coder.callahan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6340E00D33; Wed, 12 Oct 2016 10:58:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (coder.callahan[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A20CE00D08
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 10:58:18 -0700 (PDT)
Received: by mail-lf0-f52.google.com with SMTP id l131so53011135lfl.2
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 10:58:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=EId3B84mHbWSscy7fjEUen5oGJE1co2Jjlk13gOv0DU=;
	b=JaG56My6JCgPUSLDy0t+LfM8fxsKDuPpxNGbsJ+mxgk1cUGYtKmrSB/sP3/w9TNGeq
	SFNaUjlS51gwC+i9V3sF7hzn+2ky60VmCrvSyJ7AsTaOs5TYoULFjUISDL3w8Dk7cct8
	u93jRSVXZVBNgBsOQ5jz9BsFtI/2FZCQOGayqgGX7SX0eEEbJyN2nSfZHAKoScAj3fSk
	C8qB7nvSSyw2+9Cx5SjWEhE/8iJNHG8Etss+2qogjONrjsaVwS7d1X18A3vPO8IlRszm
	DNu4CMxRJSZ01LKAF2Gomw2aLxRh+HkOl/gx+u+rIwoUjTThUj93khm0VsRuk6IqdYEO
	00+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=EId3B84mHbWSscy7fjEUen5oGJE1co2Jjlk13gOv0DU=;
	b=h6hongIs1FHFtru2FeqoRbyjJiXja/ONZDGbAGFKDdLmYMM3PZZVuWGdTCvpBBRi9T
	7Lmp0ct2pVHhCRk/YAfffPeC8iZO0sgSCIqzANUmgK+iwxeuK4HKjm7wNUZGCKrpA0iX
	ll0bQXvZQadaaU4FdiMqU30kkVFjHwvlAcTgzbEb08Pd30THDSZeD1bBdxkepWaDey5N
	7SvgiU2/a8ArKChlvuDb/zDcScL/jhF6NbEOFYjym9x1+V30aMtOLGsuYuoDFSG006yT
	9HmCNq5HFKJCpMnBzqlWeZmRE5Uy2K4dFp+d1YguiyXn2aYV4wC8Z1hh/AnNnhwVPde0
	8pwg==
X-Gm-Message-State: AA6/9RlKtBjt3128r5Q8Zg8rulLfiABx6VUSpBiDn/HEWU4ce6NJbsFpPi7I3IkICx8Es/T1qcZBru7odLtFLA==
X-Received: by 10.25.131.195 with SMTP id f186mr3090610lfd.16.1476295097247;
	Wed, 12 Oct 2016 10:58:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.75.77 with HTTP; Wed, 12 Oct 2016 10:58:16 -0700 (PDT)
From: Michael Callahan <coder.callahan@gmail.com>
Date: Wed, 12 Oct 2016 11:58:16 -0600
Message-ID: <CADm5WxPcAqeDdB8f18YhsyX_365Ve7kFqtNuhN0pyp+192G7ng@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 14 Oct 2016 08:42:16 -0700
Subject: Two pythons
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
X-List-Received-Date: Wed, 12 Oct 2016 17:58:21 -0000
Content-Type: text/plain; charset=UTF-8

I just moved my project from Fido to Krogoth and now I have two
pythons (2.7 and 3).  This bumps the size of my image by approximately
25%.  What would be the most reasonable way to get back to just one
python?  Ideally I'd like a magical setting to get rid of python3
because there is no custom code for that one but I suppose with enough
work I could get all of the python2 code working with python3.

  Michael

