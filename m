Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F181E00BD0; Wed, 23 Mar 2016 14:08:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48095E00B89
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 14:08:50 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id 124so7298185iov.2
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 14:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ibMmHd7kgOuxZVJWIFTuteNLPVmab18cGzetoiZ8I2c=;
	b=Jsn3rpVlpdtgas13pIPEOSsE8odQKDSkUEg/K+RTCuX2mFd8TchN2W6aNmWxPAFzTF
	s+Thw2d40syHdg+nki7TkcQA64vNcQ8oo+gWHVlKQBfecQ3X+6hXBWW+3+Bt0XpfD5MZ
	FAfoorwppQkJfDeAsYCDXm6daaoWDORwdvzgGWejz4wvnHYoa/CgQIDaY5SODRPWQYC6
	8BVDDe3YBjrPWsu9o7fmJi24lIcbQ+FCuNUoNMjEpSdNRXntCDJLQXpoRFd6CoLrr8F/
	eqAFbN1NOMNgRjlU1BLOSQBHyXLn0Kjd+KG0F85GFbz/8oY2x+kLTg9bTsXEnVQUumqy
	G0sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ibMmHd7kgOuxZVJWIFTuteNLPVmab18cGzetoiZ8I2c=;
	b=nBeYwJmgnwq6LvdDnAxG530cVBVxdXqmfOEIbJYxoV7LheCtWk8s6dxk2098NT8Yjg
	i1LrFqegxn0ft2KGHr4ipnmbeTq7iKGHkFWFyxkaxnNzbz0PlCSuUjCsndFrLL4ZawPG
	VmQtijOxnXV3Ptw+wnJdJEtzDjEwvO/bhMeHBiUOupLFkQgZ71//fmruCn+rKRd+qKAa
	/vNcC3tTE2CL5Vs7OcDyKhixzfR8cW7Ypn46tJSl1fFXwVlYCrlx5xlPiespD3Q6awKT
	r2rY9kHuy0yGIs+BTgVKZLHHs8bivg+Y9RDi4gAHorP94m+xk2VX93Z9qQFTIm/rLHOo
	c/gQ==
X-Gm-Message-State: AD7BkJKKHtJJcYuVxoufyK9cow24Pelsa/LKp9qc0lIj7Jxc6qHr1v+FDjGq/ZM6+sBLFA==
X-Received: by 10.50.29.3 with SMTP id f3mr5935151igh.59.1458767330203;
	Wed, 23 Mar 2016 14:08:50 -0700 (PDT)
Received: from linux-yxv0 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id p8sm9894659igi.2.2016.03.23.14.08.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Mar 2016 14:08:49 -0700 (PDT)
Date: Wed, 23 Mar 2016 17:08:50 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: akuster808 <akuster808@gmail.com>,
	openembedded-devel@lists.openembedded.org,
	openembedded-core <openembedded-core@lists.openembedded.org>,
	Yocto Project <yocto@yoctoproject.org>,
	"openembedded-members@lists.openembedded.org"
	<openembedded-members@lists.openembedded.org>
Message-ID: <20160323210850.GA5376@linux-yxv0>
References: <56DEF97F.9070306@balister.org>
 <56F2C618.3050205@gmail.com>
MIME-Version: 1.0
In-Reply-To: <56F2C618.3050205@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Subject: Re: [OE-core] [oe] OEDAM, April 8 in San Diego after ELC
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
X-List-Received-Date: Wed, 23 Mar 2016 21:08:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2016-03-23 @ 09:36:40 AM, akuster808 wrote:
> There are only 10 people signed up.
> Is that enough people to justify the expense room or even meet?

I have no idea what the budget might be or what a room might cost. I'll leave
it to those who do know to worry about the costs versus the benefits.

In any case I certainly think it's still worth meeting. A smaller, more
focused group can sometimes get more done than a larger group. Secondly, it's
my experience that more people always show up than sign up.

With a project like this there will always be things to discuss, and sometimes
a discussion goes better in person rather than online.

Best regards,
	Trevor

