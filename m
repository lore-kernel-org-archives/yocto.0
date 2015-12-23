Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 29940E00D08; Wed, 23 Dec 2015 09:27:02 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f174.google.com (mail-yk0-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C7D8E00956
	for <yocto@yoctoproject.org>; Wed, 23 Dec 2015 09:27:00 -0800 (PST)
Received: by mail-yk0-f174.google.com with SMTP id x67so15053991ykd.2
	for <yocto@yoctoproject.org>; Wed, 23 Dec 2015 09:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=8WRqsah/kqewe7HDjeAqtMYzu4Wc0B5qvzMj02CkBzU=;
	b=Yd5lhqi3UMD0TX8gq0ZnyNwPzQMR5K5X/GMED44p5cEvtZZdC5IPRNXEMvQxcePP/o
	7m+ta9N5FKOx32lmvwXjubPi3m8y1TW0qN7GXMD1ksj9qbg07VnX8XZzSh7jFylhNpop
	ClqzQwp6y659IUU8vIJoIArDKhRj0ozL7fBfk4TkA5EZoMgi+CCST3ZdrZlW52L36Ngs
	w/b8YA6ovqaddO1gfhHxWp5CH/sZq+5EETmfP0a7UDbwdWDeZz9CtyPsfrYkuHdtJKVH
	rvPDHVqoepgBlKNbl34kQC86ckf+w7jpwCHss1+2xv8EKmQhEo/2PeDMufSzrR5uKqo9
	k4GA==
MIME-Version: 1.0
X-Received: by 10.129.155.14 with SMTP id s14mr23484386ywg.317.1450891619500; 
	Wed, 23 Dec 2015 09:26:59 -0800 (PST)
Received: by 10.129.155.216 with HTTP; Wed, 23 Dec 2015 09:26:59 -0800 (PST)
In-Reply-To: <CAF3SDA7mxPkziwWaoetrnDYaTG_6_G5u7Yd=b+zgxgc3imHrZg@mail.gmail.com>
References: <CAF3SDA7mxPkziwWaoetrnDYaTG_6_G5u7Yd=b+zgxgc3imHrZg@mail.gmail.com>
Date: Wed, 23 Dec 2015 15:26:59 -0200
Message-ID: <CAF3SDA4ERARnhDLP9BGgooH23dqs90rxWdvPTwQ=10Hr9rHjtQ@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to keep image version and changelog
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
X-List-Received-Date: Wed, 23 Dec 2015 17:27:02 -0000
Content-Type: text/plain; charset=UTF-8

Hi, sorry I miss pressed enter :/

continued...

So I can simply fix bugs and update changelog with the fixes, this
should autoincrement the version of image and everything should work
in a nearly automagic way. I just have to update the changelog and the
image version is updated too. But I have problems puting new lines
inside variable, any ideas?

Best regards,

2015-12-23 11:22 GMT-02:00 Daniel. <danielhilst@gmail.com>:
> Hi everybody,
>
> I need to versionate and keep a changelog of my images. Today I have a
> file (/etc/image-version) that holds the image vesion taken from PV of
> my image recipe and compilation date. I need to keep a changelog so I
> can easily keep track of changes in image.
>
> My first idea was creating an CHANGELOG variable inside the image's
> recipe, update it there and have a kind of auto PV to increment at
> everychange on recipe. So I can simply fix bugs and
>
> --
> "Do or do not. There is no try"
>   Yoda Master



-- 
"Do or do not. There is no try"
  Yoda Master

