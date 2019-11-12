Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CDA40E00DFC; Tue, 12 Nov 2019 13:42:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF3F2E00D46
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 13:41:59 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 47CLmh0p9TzF3;
	Tue, 12 Nov 2019 22:41:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1573594916;
	bh=Lwwth5/fUPEecmSoufeMW2RaOD4T6LATENbTjVMFiZo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AMQXIu6Nk6p7L6/eRy9LDend2U3g+Hk/yEyi+Xl7T4xfbl9MOj3gORgWsN7fot0pl
	0tvVq33oXhoHae2ID5Db5kU3rYbMY82hw/BxLYIW7OHGKzEYXxOnSEyQfhUEKLiy8n
	txlTllD/XcX2D6OEWwX5P25zWueZIfRORA94W7KiDWp9yD3742racMTD8PPfndmz3H
	eVFHHLTEZGhzBbDEiJgj2kkzdkaRw3V/gbTv6WRYsfDpZXCVswV51xzpGT1nONv1jm
	fa6E5d6VzLgVvueeGGHKZzFV4ia0CV1isLBOssf5Sth80wCUZgucgRIYfkSvHAEALB
	w5hSw3h3+BHgfpxM7j7RctG25QdQEq00N8Kta9dpf5lrlwkSFMppGsSXK2Gt3xb/hS
	xoihf0RJdR5i6B4nnvQUI4MXMt/GiuqEw3Bgu4OAuODoOoNSfP2C53vPsUUfQUIaII
	tzz+o1Ez6PKddj9GWw5U3g/uOtLbHFgBF2XY9aGwL3J5uWBaNY1ubzXVRSLD2TmzuL
	Q8U+B1Rwz4eaoyvPxtUdXQGDV5kp6PZpDIbiNvhDQ1HpfH10isu8zyKlFXljvVT8Gp
	MuwlHpQAE14qiKjnr6dmuM8SWpor+d2foWM9M84di2D5/+xghguXKJwcQeuqww1CLj
	vKXi27XRZUm42wIT6C61ohIA=
Date: Tue, 12 Nov 2019 23:41:54 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Mark Hawthorne <markhawthorne172@gmail.com>
Message-ID: <20191112214154.GA32308@localhost>
References: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAEEV9O3FJLe8kuGWXRYUTHSJL6WY7tLzxuHouCUFtG5e2pFhkg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org
Subject: Re: pkg-config not found
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
X-List-Received-Date: Tue, 12 Nov 2019 21:42:01 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Nov 12, 2019 at 03:06:25PM -0600, Mark Hawthorne wrote:
>...
> DEPENDS_${PN} = "libpng freetype glm libegl libgles2 libspatialite"
>...

DEPENDS, not DEPENDS_${PN}

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


