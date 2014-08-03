Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C21FE007D1; Sun,  3 Aug 2014 13:03:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12FE8E0079D
	for <yocto@yoctoproject.org>; Sun,  3 Aug 2014 13:03:34 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id et14so8703324pad.21
	for <yocto@yoctoproject.org>; Sun, 03 Aug 2014 13:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=F/1pkBlDsXS2gyOj8xT9fowPAwMLyDtYkro9OXZcJtA=;
	b=epuOohTOzaVuu6LJ4MHJzMWCvFICcdEC+PS07vT7VrySTInXtHh8Nxm3UnbKoJyGOs
	DrFOxoC/mgEy6rgG8DXqujt5LKxLzvJrnh7niCOt+vOkaZUM1BMyib24JX3t+r+KHG3R
	rbyFbrKSZxbgxCKvecz9sM2fn5z4QfllGHdn5zEa6nmKShOBmMGINa7j/UCll8Yk+1U+
	q1kBsU27oPinvQojjNpm4LJorhKjskiRVHd5ONpYKedyuQDHY8M9YK3TOh2INs6FhYAG
	71aasM3nLG9V9zoXOvIgQpGN01x28g4L4l2EywiBQe9SB2u8oMFHOSmh/lnva00rXNF5
	QOrA==
X-Received: by 10.67.30.45 with SMTP id kb13mr19807084pad.16.1407096214591;
	Sun, 03 Aug 2014 13:03:34 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id
	bt5sm18471036pdb.95.2014.08.03.13.03.33 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 Aug 2014 13:03:33 -0700 (PDT)
Date: Sun, 3 Aug 2014 13:06:49 -0700
From: Khem Raj <raj.khem@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20140803200649.GA9373@haswell>
References: <alpine.LFD.2.11.1408030445460.14082@localhost>
MIME-Version: 1.0
In-Reply-To: <alpine.LFD.2.11.1408030445460.14082@localhost>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual, multilib sample code looks wrong
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
X-List-Received-Date: Sun, 03 Aug 2014 20:03:39 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-03 04:48:13, Robert P. J. Day wrote:
> 
>   dev manual, section 5.5.2.2 suggests example configuration in
> local.conf:
> 
>      MACHINE = "qemux86-64"
>      require conf/multilib.conf
>      MULTILIBS = "multilib:lib32"
>      DEFAULTTUNE_virtclass-multilib-lib32 = "x86"
>      IMAGE_INSTALL = "lib32-connman"   <---- ?????????
> 
> isn't that last assignment going to wipe out the entire typical
> assignment to IMAGE_INSTALL? maybe that should be using "_append"?
> thoughts? am i just misreading this?

Most of images used IMAGE_INSTAL += so this may work in some case but
for documentation we should use IMAGE_INSTALL += or append.

