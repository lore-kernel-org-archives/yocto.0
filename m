Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21507E00F06; Fri, 22 Jul 2016 02:18:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-io0-f173.google.com (mail-io0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF7B6E00D5F;
	Fri, 22 Jul 2016 02:18:27 -0700 (PDT)
Received: by mail-io0-f173.google.com with SMTP id 38so100157944iol.0;
	Fri, 22 Jul 2016 02:18:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=QVNPFITRCLsJgSgHN1tq+rnQ712vGU3XlsGBEjnJDHE=;
	b=aNSl1nzBjMMHZDZJ+Fo83BBjEAz54DQjBKzGXoatvqsnEeXwCkOlfSbHE1uDUMnG/Z
	sdA1/1yC7BwY7A9afmkE+nHNB4vUMwZ1BFDURU7SPmCkyY90Nz9Ygv9hrEB+Fh2lxjOB
	fEms1t0xP6S3q6AxSa1QHCX6FnZS5vALF4H9UrgR/A35hm6FKRFPuuFFoYYNrJxuW3iE
	f/7DQu69y6kZVfLNeXE+WH6G/A7FGItuiuKSA0fSEwluzCuTjMyelOYBoyO4iMi08FR9
	zJ7k4q5c8ltaXDu+AoQap6TopZEsAA6DjN4QO6rLJPXwYI83tPDu5xIA4p0qstyAVhrV
	Ye/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QVNPFITRCLsJgSgHN1tq+rnQ712vGU3XlsGBEjnJDHE=;
	b=HBQ3yabiwGbqOqzd+3YKEhYDD2wuNm0Y9oRSUPlFH0rgfvgeU9JjfOhwZlsuVt3wPN
	3OjMqJ0QHI0RfS4uMXCyNKLeh0e8I4jWgZ39VnOFWcw3t+Zz4W1pJm6c5JJY0VZeTrVO
	f4yzfqLMBgjpBqzx0aBKzjgfGBDOe/CtSJiN0heTzygcFeJ00mOHy58y082IZPdxaDtc
	24tiCB2iEOebidTLPzREBXFvJ4mgdr2saXpu/OdF6AVxoQ4x5lr1wSGp7hE8z1g1DSky
	mUSXtgiqQq2jHEyMqJ6o+8ML/JLoED2WsT8b8Nt3lw0U23IjvCnyBUTrv0KYUOw4i/Dt
	jB1Q==
X-Gm-Message-State: AEkoous51cKpNYPk1zfkNI1pf0nEjT/5BaESbE25Ucx4jKwFxeF3oirjdeu5CPRLeV+3al8WhycmZoRdZybZCQ==
X-Received: by 10.107.142.22 with SMTP id q22mr3400032iod.37.1469179106676;
	Fri, 22 Jul 2016 02:18:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.113.203 with HTTP; Fri, 22 Jul 2016 02:18:26 -0700 (PDT)
From: jags gediya <jags.gediya@gmail.com>
Date: Fri, 22 Jul 2016 14:48:26 +0530
Message-ID: <CAP3RZoj5vuUqnWy5EAPtT2u2RLND-teYNT-q9RUOTa=uSFp2qQ@mail.gmail.com>
To: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: regarding bbappend file
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
X-List-Received-Date: Fri, 22 Jul 2016 09:18:31 -0000
Content-Type: multipart/alternative; boundary=94eb2c05a9e8c3d534053835eae4

--94eb2c05a9e8c3d534053835eae4
Content-Type: text/plain; charset=UTF-8

Hi All,

Can i have 2 bbappend file for single recipe?
I want to add something to the recipe whom bbappend file is already
available but i don't want to modify that file directly. I want to add new
bbappend file for that recipe in my custom layer, Is it possible?

--94eb2c05a9e8c3d534053835eae4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi All,<div><br></div><div>Can i have 2 bbappend file for =
single recipe?</div><div>I want to add something to the recipe whom bbappen=
d file is already available but i don&#39;t want to modify that file direct=
ly. I want to add new bbappend file for that recipe in my custom layer, Is =
it possible?</div></div>

--94eb2c05a9e8c3d534053835eae4--
