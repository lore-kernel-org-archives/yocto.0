Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9157E00A81; Mon, 10 Aug 2015 14:38:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wi0-f174.google.com (mail-wi0-f174.google.com
	[209.85.212.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9456FE00A7D
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:38:07 -0700 (PDT)
Received: by wijp15 with SMTP id p15so152113623wij.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 14:38:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=OS0a3d/2BlcBuxinI0aHCUeAJBieEd7NTU0IMIbhrCo=;
	b=ATPOP3ZQYJL8ngcIVFTC94mZzVS+tyPJDhDDErnJpItPSJySClcL9ewRWXG1wlfVD5
	hRzhxojofdT5v384m1kBCcdmPxRbHpz/B0XDsxngkTcFj3NhewVtXOxgcRIzr68t/mvn
	vw3DacNNbqnP38JKmZu1XM65Y3tRWO4Vu8NpCeJeGI2ivgJQ/EEYDrPLbO0AMGPK/4Tb
	GGhesbG7w+aY03lH4mlwBCigrX4XQVhf23pNao3srxQt0JiDBmwqZjTKja9z4LDwOvF5
	uSi60yqw8zhBoW9Gkv2jMoLNjqmHDnAcvw3fiBhmSqgGt6Q9fLOEfxv3WMMWvsiloRKe
	bGJQ==
X-Gm-Message-State: ALoCoQnkSqHqt1A0+bgt0+UFf1Lh7aXVEAGTlC055mezFs35tQdFTxoi/gtBJ3KzVLyWD9itN9q/
X-Received: by 10.194.103.130 with SMTP id fw2mr51758091wjb.121.1439242686707; 
	Mon, 10 Aug 2015 14:38:06 -0700 (PDT)
Received: from resin ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	bu12sm31362244wjb.44.2015.08.10.14.38.05
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 10 Aug 2015 14:38:06 -0700 (PDT)
Date: Mon, 10 Aug 2015 23:38:04 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20150810213804.GE4718@resin>
References: <1439193167-20618-1-git-send-email-raj.khem@gmail.com>
MIME-Version: 1.0
In-Reply-To: <1439193167-20618-1-git-send-email-raj.khem@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/2] README: Add extra iformation on creating/sending patches using git
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
X-List-Received-Date: Mon, 10 Aug 2015 21:38:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello,

On Mon, Aug 10, 2015 at 12:52:47AM -0700, Khem Raj wrote:
> Current instructions could be improvised to help user in creating
> properly formatted patches with some command help on git format-patch
> and git send-email
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> ---
>  README | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)

Merged to master. Thanks.

--
Andrei Gherzan

