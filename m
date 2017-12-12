Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D9A29E00C0F; Tue, 12 Dec 2017 11:14:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f175.google.com (mail-ua0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B04C9E008FB
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 11:14:15 -0800 (PST)
Received: by mail-ua0-f175.google.com with SMTP id p33so15162941uag.9
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 11:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=pOWesRa+CtEihXScAYlQ9bku6bRSNAG1k3XZCo21kUs=;
	b=nwIZ3q5bHfrgXNBf741UvdPb12VjOoBwpjw0OGZn32M6Ad5oPx6mg+sgrNr4OGzyzq
	I9DzfgZTqgBVrDwVNePt9GiAH0ucf5xXxn6Jr/QB/JO48RlaUGS7DVfu/pJ6NtbIFdxL
	BklqZQzihPQNwx6hfuUli6XUSwoWv1wD4HBERr/PHh/N59MVb7FGpiEewst5+iF0z0Nr
	yrntrbXirsKzT0YB/UKG/zjQBoJH5Ij+x1brN40oewMqUxkdN9iCWlgvWpehpFc8Fhwc
	j3bxBHPR7yLAbpooHqJhKeLKYzfH99h7aenVNytKA7ri/cX9tNRykhMYNjPNe2WHECmU
	k2dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=pOWesRa+CtEihXScAYlQ9bku6bRSNAG1k3XZCo21kUs=;
	b=N34evpMPp29aI0eaM3KSRyHxGkF07pccbRCo9NW1d8Qt7kFWWvY25hDrlniBZvVojy
	0LMuJt/OVp5IYOy2P0rElviJ4IzhjXq1PPDegZlYSJe9jp3TJcVIaZBv8g+ivm4vjged
	oOJi3JYBnS6jJ3q9xAfJuA5m0/Xcnq1J+L8QCzXoaIbpB5VIVs/uLx7VnCaHZCuSX/JH
	kVoNdsCJYDfKL8Dqg+PqyQq1yzUQQc3ZmCGfrPhb6ebqY93p1Lep8UdvVvlDOTzQ7y8I
	BbIsHFgBH0ag0LhNFizZbDwoz+6Ay1Fov/6oc1zusVHfzpY5xHP+tLsBB/2gcrdFSKuQ
	el8A==
X-Gm-Message-State: AKGB3mJxhSNTEIjMCudTk8ImeBsLKScEFNR7XUzYfxR3X+LMhZmTZlFJ
	RevJIBuRKYPJc93FgcmguZKG6+3+2AjMBbFJyyLnXMxSTBfujeUDsSBwqf8yw76brPe5d6bDnKg
	vHHUKMQ3qR0GIaMoxqFw0CNY=
X-Google-Smtp-Source: ACJfBosYy//aocdF+oIvaVwjCzOBZzvbfMdyg7jpev1bS1fGhfDgyadBygEopykuk0NRWrJzpnlKiWlO+KSb1ARQyWI=
X-Received: by 10.159.48.9 with SMTP id h9mr5567391uab.191.1513106053728; Tue,
	12 Dec 2017 11:14:13 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.95.198 with HTTP; Tue, 12 Dec 2017 11:14:13 -0800 (PST)
In-Reply-To: <5c9ed8b3-48dc-eca5-250f-972da6df9810@xilinx.com>
References: <CAOLNbFanXur1zRF7KtVpdN4n6Pyx5JW7P2xhfc+74UmTabyicA@mail.gmail.com>
	<fffb74b4-80b5-60fb-0b4b-71878e29a622@mvista.com>
	<5c9ed8b3-48dc-eca5-250f-972da6df9810@xilinx.com>
From: Rail Shafigulin <rail@esenciatech.com>
Date: Tue, 12 Dec 2017 11:14:13 -0800
Message-ID: <CAOLNbFZKm3UG7UFDoHk4ynrkAm4aDMuKm0WahT34xWcOujoDqw@mail.gmail.com>
To: Vineeth Karumanchi <vineethchowz.chowdary@xilinx.com>
Cc: yocto@yoctoproject.org
Subject: Re: executable depends on the library that is built in the same recipe
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
X-List-Received-Date: Tue, 12 Dec 2017 19:14:16 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Dec 11, 2017 at 8:18 PM, Vineeth Karumanchi
<vineethchowz.chowdary@xilinx.com> wrote:
> using this might help
>
> oe_libinstall -so
>

Can you elaborate more on this? I'm not quite sure what it does.


-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



