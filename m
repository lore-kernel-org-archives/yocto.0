Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09A81E00CA1; Fri,  4 Mar 2016 06:00:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54D26E00C72
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 06:00:06 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id n186so36125124wmn.1
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 06:00:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-disposition:user-agent;
	bh=kCbz9mMjh57kFF8UQEYzIOM9560zIaTcpsfEk4tqKUo=;
	b=0T7aWVCnecTKIden2LluAjx0XXI8wKfes/zN4+2zjqtRLB3p40jT56HpmwP/JQXVGK
	fuUG/PsJl4lkN70WRqaGnMXqyk1URjTLM/4Ah/BZWS59uPDC9eoqHUzXuBI55Ji+TsWf
	4U8t75gUeX934Uue+nsHwNCuOVmiFLNVZtN1wKw3BW2tA2U7ewbXbq0xPLXS8JTNbNLv
	OSclSxf59+MaJ64XRnkt1PzkNIXIvK+HC7S3+ZuLUZ8fVX539d0Cv79wrcfFMpMj8HWX
	G+sEhUeDlQOQJQu47hKfXr0sqbNBeOmA5l3bzT+yFOhNLRN61YhrofDExdpkqZ7K3qUi
	yN4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:mime-version:content-disposition:user-agent;
	bh=kCbz9mMjh57kFF8UQEYzIOM9560zIaTcpsfEk4tqKUo=;
	b=Nxf2siDQ7TWlf/+07wJLHc3xj/ODVZxroIqfBfNbZz6wpaDNSuC2xtUV18VF5B/DpR
	0WLoYka3QdoKctQZWYTIbJGkA52aKs2bgdIdcR6lWx1LwmAILwg6HMJ1JLFhc5ahohjc
	fYWHrzpF2mOkK4pNwZdxUcmi+MxlTpUVD4UUy2LZmnWBgX9CUc0ofdnDG+0hzRFOhWlL
	f8KRn+UIVzJgNdtiKAmQlUZfrLBXKKr7qirkOnyfp2Vs6bRKFucDQmlQ9PyfIIhe0+h8
	g/U/2PxoN+VRUL9fB+b8TDaciAoMhhSCD2ijO43cCRC4cu4IeaeN355rRu+e966Dlu9t
	vjXA==
X-Gm-Message-State: AD7BkJK4QH4tJNojsqTZ8qMTjbXys+4edCRx6IybtoTivMw+TomaqoJRkMDFcP2NvojbUw==
X-Received: by 10.194.83.42 with SMTP id n10mr9442427wjy.20.1457100005112;
	Fri, 04 Mar 2016 06:00:05 -0800 (PST)
Received: from localhost (x55b1e84f.dyn.telefonica.de. [85.177.232.79])
	by smtp.gmail.com with ESMTPSA id
	c136sm3467324wmd.3.2016.03.04.06.00.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Fri, 04 Mar 2016 06:00:04 -0800 (PST)
Date: Fri, 4 Mar 2016 14:55:27 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160304135527.GA769@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Howto change the default shell in yocto?
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
X-List-Received-Date: Fri, 04 Mar 2016 14:00:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

how can I change the default shell on the yocto target from bash to
another shell like dash?

is there a variable for local.conf? or do I need to adapt my passwd for
every user?

Best Regards,

Oliver

