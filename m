Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DD68E00B66; Tue, 17 Jun 2014 13:23:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.172 listed in list.dnswl.org]
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 822F8E00B5C
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 13:23:47 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id hi2so6515746wib.11
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 13:23:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=ECEjPFbLJBw9sozhnMeJFYFhd5UEGMUwNGeNb0W0PT8=;
	b=YcGq1rrfBmcldAtqKSP8Gtx85AEtRc3JTgzIW6lQMGzRwImMuykFP+RtoKnfnIsRBJ
	y50/S5gNsnE0YIP090+hJG8eQyBxCjhdg0MCnEk+iFnWu9j0YlPoVsGWGc40Jn2TLHwL
	dieYV1AfrDEw7MUBU2jHwVRkTFcA4Yd+z/N7mEaSr6gNb9MwpOWRc48CCdiWy/SJ5IFy
	cln04ug6gETTynVGVOrFfc4rkLqcbw91VWTfKY7HzrKwXvxuxAEbujb7ipdxI0sZ9xIF
	DPDVf/qPfTnqayAn19ogPQxgPZkWL4hujwkNgtfV5yQsYM+6SnuaWAvDGNLzNdTqxhgW
	xLqA==
X-Received: by 10.194.179.170 with SMTP id dh10mr40879321wjc.7.1403036626881; 
	Tue, 17 Jun 2014 13:23:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.44.136 with HTTP; Tue, 17 Jun 2014 13:23:26 -0700 (PDT)
From: Insop Song <insop.song@gmail.com>
Date: Tue, 17 Jun 2014 13:23:26 -0700
Message-ID: <CACzyEJ-cuXazzEDHpiVx-ad1jMaBvFL6AX8vDk-YVbPnEJ031A@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: how to disable shell access
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
X-List-Received-Date: Tue, 17 Jun 2014 20:23:57 -0000
Content-Type: text/plain; charset=UTF-8

All,

We usually want to block shell access for the product that we release,
but want to have a way to log in for debugging and troubleshoot.

I want to ask how other developers are doing this.

So two main questions:

1. how to change the default password of root?

2. how to block shell access but to open for debugging access
For this, I could think of that we could block ssh access and only open console.
Or opening ssh for a hidden port only.

I look forward to hearing from your experiences.

Thank you,

ISS

