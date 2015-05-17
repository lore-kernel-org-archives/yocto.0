Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92E3EE00988; Sun, 17 May 2015 15:51:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.3 FSL_HELO_FAKE FSL_HELO_FAKE
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.43 listed in list.dnswl.org]
Received: from mail-la0-f43.google.com (mail-la0-f43.google.com
	[209.85.215.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22FBAE007B6
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 15:51:41 -0700 (PDT)
Received: by labbd9 with SMTP id bd9so194384153lab.2
	for <yocto@yoctoproject.org>; Sun, 17 May 2015 15:51:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=YP1xB6L09Z/a6LT88mDGcfMt5OOsCTrnCWL5+BBI5GM=;
	b=LdyT13Ucwnwhv8qU7Bczye3szeZ6kMLdQSA1ok5V3rFor/Fl41KoMVyRbZKgK29z63
	dKJPED0xlRxR5L1Ev9GQAw4mbGYTkizkuH0lM4SWUqwLR2t2k0rC3mTfw72xeGNeeA4h
	jc4XtHkkrVh0C/wALCWKxPBJ+LbJ7CVrhEmBiaOd5WJTvPc8CucxwhRczbl8Jgsbk3AZ
	la9wA/r9HqvGdOA5XT2jsoEZTXnrkQmWeeHnuRjjClzVqhhSMvx8OXiZqIsdQglvsMC/
	Wh0zwaClo0QF+JOGHTEPbkeo0cOrh0FkcVPDeffRi0h7xBP4iTHip+RvhMoWqSHxAjKU
	YV+w==
X-Gm-Message-State: ALoCoQlbOBiQoFUPumc+2r6bVQ1k0/vM0laNMQxORDhB2wU84SmSxduBb7x/TSEABeKIodN8cJew
X-Received: by 10.152.5.134 with SMTP id s6mr5570804las.99.1431903099308;
	Sun, 17 May 2015 15:51:39 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id oe1sm2226429lbb.23.2015.05.17.15.51.37
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 17 May 2015 15:51:38 -0700 (PDT)
Date: Mon, 18 May 2015 00:51:35 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150517225135.GB3772@gmail.com>
References: <cover.1431121258.git.petter@technux.se>
	<b4802eb7c1222f52cf5fcd4d913e4fea7e89a196.1431121258.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <b4802eb7c1222f52cf5fcd4d913e4fea7e89a196.1431121258.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 4/5] linux-raspberrypi: Drop support for old kernel versions
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
X-List-Received-Date: Sun, 17 May 2015 22:51:46 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Fri, May 08, 2015 at 11:49:04PM +0200, Petter Mabäcker wrote:
> meta-raspberrypi currently supports too many versions in order to ensure
> that all of them are frequently tested and updated. Change to only
> support latest stable + 2 long term versions.
>
> [Support #59]
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>

Patch merged to master. Thanks.

--
Andrei Gherzan

