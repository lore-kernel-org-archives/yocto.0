Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E45FE0094C; Mon,  9 Feb 2015 11:40:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F165E00945
	for <yocto@yoctoproject.org>; Mon,  9 Feb 2015 11:39:55 -0800 (PST)
Received: by mail-pa0-f53.google.com with SMTP id lf10so28247787pab.12
	for <yocto@yoctoproject.org>; Mon, 09 Feb 2015 11:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=iiSnzP88dM9hwyNbvYUl4xmWHOLS5/bhxy8CcSJ4SxE=;
	b=e5M5UqLwueJKk1ORGLlnC90FPzlIlgS7I6R+KrwUYepJPDq+DGngdmVmd5WdEGD11P
	V9D79O/1CcfqnxGhQ9bPZgzbRvn4yH7fMGiwbwx9I/5mTffatvqJZSLMESs9SqZVcikJ
	V1t8gB+VtC6bilsDn9f8U7dXgfsksC/eChRUeKlbw+zUB/MZHfz5bFcjyAQlK7l4y3hd
	xBWEZQ8A9up5q88UhWNRBl5j/OXsRo/mwk1mXTC2SkBjBC536HrMN39zZbCrVS8qTZb/
	/+rbYl9fw3ki6V2LCJhfD7gqpnX/mpcjnGwWjQqG1jYLxX0o9XrSwqA7bOIQ2dXlp81x
	j8sA==
X-Received: by 10.66.219.35 with SMTP id pl3mr32034882pac.32.1423510794857;
	Mon, 09 Feb 2015 11:39:54 -0800 (PST)
Received: from rjs-mbpro.streifs.net (ip98-176-9-105.sd.sd.cox.net.
	[98.176.9.105])
	by mx.google.com with ESMTPSA id c2sm17166498pdi.25.2015.02.09.11.39.53
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 09 Feb 2015 11:39:53 -0800 (PST)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 09 Feb 2015 11:39:52 -0800
Message-ID: <4538641.4Bn96qz3hN@rjs-mbpro.streifs.net>
User-Agent: KMail/4.14.2 (Linux/3.17.2-300.fc21.x86_64; KDE/4.14.2; x86_64; ; )
In-Reply-To: <B046C5B92CE1444CA49E26AF3182447DAB6FBD18@ORSMSX110.amr.corp.intel.com>
References: <B046C5B92CE1444CA49E26AF3182447DAB6FBD18@ORSMSX110.amr.corp.intel.com>
MIME-Version: 1.0
Subject: Re: Slashes in branch names
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
X-List-Received-Date: Mon, 09 Feb 2015 19:40:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Michael,

Could you please be more specific on what the issue is? The Yocto Project's 
kernel repos use slashes in branch names.

:rjs

On Monday, February 09, 2015 07:10:49 PM Harvey, Michael wrote:
> Our git SCM infrastructure uses slashes in the branch names (android style)
> for organization, and that breaks yocto. Is there any way to support this
> in yocto?


