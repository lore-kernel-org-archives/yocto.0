Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1BD2E00825; Wed,  2 Dec 2015 14:08:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f45.google.com (mail-wm0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78C85E005B7
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 14:08:25 -0800 (PST)
Received: by wmvv187 with SMTP id v187so49097wmv.1
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 14:08:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=LBuSdkt0t8PVMs77RAPbVgv6uts42wJMHnaKhPLjYvQ=;
	b=px14JLq/GvfsVRotnceyDsy9tUAMMa0tfi+O507IdrrU6iiAdeFUaruZ9erlAPhdCS
	TIF7PK00wJrYAouxfCaiU9mJ2BQJY7nTS3HLejU/jYbB4Z8uvCd5nH3Q65iG/iUMoZk1
	2TCWWa6g1Z/iN0vRI+cbDTcmM5py+a3Lhyq1/lhxM7U+nlxDZZBU2/exgOZ+lVXEEWyn
	77RCRklj0YkhNmvagV0EQSaIXoKWEkCJvkB8Po1EWp5jjjdZRrdsCrwLbxyLUWsjjcal
	imm2M1DsVD89eCOebuCB0UoYhiUJgQTs6oZ9ca7iCi89QQei5j20x3vgPF6SAyZcCoby
	flWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=LBuSdkt0t8PVMs77RAPbVgv6uts42wJMHnaKhPLjYvQ=;
	b=lj3Zdm239b4O12Ta7f3H305i/JwB7utTqrzZvhc9KFPzjxpH4UHB7VNHj6vt4xoSwR
	mEf1TyVdj7MGRCitcz+uaT+1O9rqkiX944Lwgxh9AcnS99CHqiRDtCBq41DmD5mw/bVX
	/N/lvM/iAO0tBEgQqB0WfSBpqIfPem8yjMt898r1BFfo2D5N82RwYt2MSaVWb/lNGCmz
	5Wh+D7j8iscWVNdGxVXSl4u7ijwV4NEPEU2QtZC4gy3Wv44n7zV1Ypj3Uv2QeJ8ShalX
	ht6r3Wj1mr1p0Y466zWO4uQXgQXij/XgfAt5fq0x7G+OAoZkSXtnSptwNwd1QoCVw7Kk
	PSIg==
X-Gm-Message-State: ALoCoQljoFxWOPxsOFXXCmtX9XoWGvEyLHAd/rJwOA8nsXI4zYgobtK1eSJzdoQtxlDCAAfVdnLd
X-Received: by 10.194.114.34 with SMTP id jd2mr7447436wjb.12.1449094105238;
	Wed, 02 Dec 2015 14:08:25 -0800 (PST)
Received: from resin (ipservice-092-217-115-210.092.217.pools.vodafone-ip.de.
	[92.217.115.210])
	by smtp.gmail.com with ESMTPSA id q6sm4625315wjx.28.2015.12.02.14.08.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Dec 2015 14:08:24 -0800 (PST)
Date: Wed, 2 Dec 2015 23:08:22 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20151202220822.GE8209@resin>
References: <1447590685-8145-1-git-send-email-net147@gmail.com>
	<20151202220556.GC8209@resin>
MIME-Version: 1.0
In-Reply-To: <20151202220556.GC8209@resin>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v5] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Wed, 02 Dec 2015 22:08:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Dec 02, 2015 at 11:05:56PM +0100, Andrei Gherzan wrote:
> On Sun, Nov 15, 2015 at 11:31:25PM +1100, Jonathan Liu wrote:
> > [Support #16]
> > 
> > Signed-off-by: Jonathan Liu <net147@gmail.com>
> > ---
> 
> Merged to master. Thank you.
>

Ignore this. It was not merged. Messed up the threads. Sorry for the noise.
 
> -- 
> Andrei Gherzan

-- 
Andrei Gherzan

