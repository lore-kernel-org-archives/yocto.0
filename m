Return-Path: <kamal.jagesia@networkmarvels.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3D7CE00DF3; Wed,  4 Sep 2019 01:33:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com
	[209.85.160.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1649E0098A
	for <yocto@yoctoproject.org>; Wed,  4 Sep 2019 01:33:11 -0700 (PDT)
Received: by mail-qt1-f179.google.com with SMTP id r15so17789643qtn.12
	for <yocto@yoctoproject.org>; Wed, 04 Sep 2019 01:33:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=networkmarvels-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=26EU5XZV5zLh28dxCmvSamBi8rxtmlc4EmeLrrDdXtE=;
	b=o28ML9Fs9KOiX8bHlKYdmyKZkOErqhu2YpbnFpJe5t8liDAPuuv1pOLOWNkXpbf6/u
	hYw3ITR9lQmKRQQJW+gkqHtFkCWz2ABomvJeIfFNZa9pMrekRUksKu38io3NsddiPNyw
	lFCJY9glTdvVRNi3/EVuLfH2mrhq/RIa/Fm1yhp6XNglJRoldisEAnXkq2PXqbQQmwBt
	s4HBnBy7Ww/qBDx+BObaMJ9yD1mobagIrd4PqjLbHwlxeco5tR7l2WFGsQyVYJ9oaByw
	inUaEAKNfICwmSZTddaX1r1Ac5jid0RJlLl5GUwR3BMpSRYUcg4UpZc7/YBACzSkV6Ry
	BrKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=26EU5XZV5zLh28dxCmvSamBi8rxtmlc4EmeLrrDdXtE=;
	b=KvQJROzxRhvG0FIikvBDdKCQPOSAPUIuQonuSmiNmi+GSEDR2tB0D3OIb0EQPGRKVN
	CSb//l07L9CumjKM85t7kpMOuoYqXt/t4vkMB7/n8lQE69y62FA3woUOzdLwzJg3x4zD
	Y+B5vW6OBdAp9QdicxTbcpLGgPkNoaPCApIfcW2ueBtPk5F2SutsflYZqRG5rHgdgPnr
	uDoCB5q/PkAQUSB+Cc9AusrgAWjF5opelwV/SW6/e5VFy0EtNjEUVmYn2G+MxgEAiix9
	njnGH2rli1AqCuvIiuTWlzF78YldoJJipEd6zR3nZ/xzri/Ls+H8jeXnT5JkG0xzSbyQ
	zs5A==
X-Gm-Message-State: APjAAAWOi0+2zaDU2IlSqAv4NFdNuGlNIMhcFN36ljyelTnRWrGznsji
	Hv+MuFaasC0Oqfnnvk4o7CoaNkELKSQozPA+HjqKdXFzD7U=
X-Google-Smtp-Source: APXvYqyfF6rC310R7rKQ9jYuK3i6jXXqg0fDWCEB6PQ7sVpm6xXjJ7mkK34Q6RuWcprhSkSnaLbnONglJnFu22MErQk=
X-Received: by 2002:a0c:d018:: with SMTP id u24mr11325695qvg.202.1567585990912;
	Wed, 04 Sep 2019 01:33:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAG6kgP4ZgS4gERCqfGUNYJGJ1zD1NDX59UzHLTM_UGq1s1U0Jw@mail.gmail.com>
	<7597589de33f174bcb4671f3b187f25746fbb354.camel@linuxfoundation.org>
	<CAJrV_B2DSYCoX23KEBzcfcTEhmrR_aGuJ4QqBdO+wp-aGJ-HBw@mail.gmail.com>
	<d48535e24f045ea19ed3c9e45277b2ceda39c15e.camel@linuxfoundation.org>
In-Reply-To: <d48535e24f045ea19ed3c9e45277b2ceda39c15e.camel@linuxfoundation.org>
From: Kamal Jagesia <kamal.jagesia@networkmarvels.com>
Date: Wed, 4 Sep 2019 14:03:00 +0530
Message-ID: <CAJrV_B2tT3o9eX0gTqJqZ=Q6meknu3yW1eUG581CwaJedrux3w@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 09 Sep 2019 02:06:56 -0700
Subject: [poky] Want to create a x11 image of less than 100 MB with bitbake
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
X-List-Received-Date: Wed, 04 Sep 2019 08:33:13 -0000
Content-Type: multipart/alternative; boundary="00000000000024bca20591b60ef5"

--00000000000024bca20591b60ef5
Content-Type: text/plain; charset="UTF-8"

Hi All
> I need your help to create a small Embedded Linux Image less than 100
> MB with x11 libraries.
> I have been trying to do this with core-image-x11 but I need to
> eliminate packages like bluez5 (Bluetooth) from poky bitbake build.
> Kindly let me know how to do this .

Regards
Kamal

--00000000000024bca20591b60ef5
Content-Type: text/html; charset="UTF-8"

<div dir="ltr"><div class="gmail_quote"><div dir="ltr" class="gmail_attr"><br></div><br>Hi All<br>
&gt; I need your help to create a small Embedded Linux Image less than 100<br>
&gt; MB with x11 libraries.<br>
&gt; I have been trying to do this with core-image-x11 but I need to<br>
&gt; eliminate packages like bluez5 (Bluetooth) from poky bitbake build.<br>
&gt; Kindly let me know how to do this .<br><br>Regards<br>Kamal<br>
<br>
</div></div>

--00000000000024bca20591b60ef5--
