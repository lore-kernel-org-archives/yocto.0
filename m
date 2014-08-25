Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC517E0074B; Mon, 25 Aug 2014 16:26:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B634BE00566
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 16:26:34 -0700 (PDT)
Received: by mail-pa0-f54.google.com with SMTP id fa1so22170049pad.13
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 16:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=3FyMcXjBz87eK6RQq9fKCfIygQ3hcaP44kw1lIKhsso=;
	b=jdOZir/akaHfpMh0b2AOTof0wqluWUzEXGYCh12xyxTwLFAuOwOEs8kvMevp1IaetK
	0sKLdq50lohNT40Y+De4yKhQyv4IKmsazZdyAogAMmIMbpsEB1Cldz1edvY4XaFxyf5I
	bvg/Ukc+F/7ca8csIAWz5ZGXGkBULcZaVaBQy/q0eRqyyEgPeesAmKOYWGQSNMnHn8wN
	b7y3Yr39GX0o723ESNOV5ZEefO/iAn5BP1FIjkhSSwAWPKI1nzrl6Bs5jzacfeCbjEdx
	nmYvqY7+d4SRMeCIBQiw8bmHMIkFi6bSi3/UJZ9t3JUdhvXtExE/+ChTZPskmdpFpMHg
	tRzA==
X-Received: by 10.70.90.198 with SMTP id by6mr4415756pdb.164.1409009193490;
	Mon, 25 Aug 2014 16:26:33 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id jw6sm890841pbc.79.2014.08.25.16.26.32
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 25 Aug 2014 16:26:32 -0700 (PDT)
Date: Mon, 25 Aug 2014 16:30:14 -0700
From: Khem Raj <raj.khem@gmail.com>
To: akuster808 <akuster808@gmail.com>
Message-ID: <20140825233000.GA9458@haswell>
References: <53FA6F09.6040502@gmail.com>
	<CADkTA4PeNvAuv8SDfUNtpsTT_25OHvTMRbuFtAe2-gJZQxB4rA@mail.gmail.com>
	<53FBBF39.7010909@gmail.com>
MIME-Version: 1.0
In-Reply-To: <53FBBF39.7010909@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: New kernel error after syncing
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
X-List-Received-Date: Mon, 25 Aug 2014 23:26:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-25 15:56:57, akuster808 wrote:
> Khem
> 
> it was the config option not being set..
> 
> seems like a kernel bug to me.. kconfig or otherwise.

OK, I was thinking may be it would help if we should somehow review the 
linux-yocto kernel patches may be on this mailing list too may be just a FYI
pointing to a git.yp.org showing the commits that went between the SRCREV 
bumps in metadata, Bruce does a great job of explaining what has changed 
but hey show me the code :). But if they already are then ignore me.

-Khem

