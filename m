Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F71AE009EB; Fri,  5 Jun 2015 07:52:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.6 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f170.google.com (mail-lb0-f170.google.com
	[209.85.217.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 465CAE009E7
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 07:52:43 -0700 (PDT)
Received: by lbbtu8 with SMTP id tu8so31583673lbb.2
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 07:52:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent;
	bh=RYY7P3FFI1C3md0e0npenq/gb68/QFSra/IkYmO6VNc=;
	b=Fm0DRAyTdzaYdVCyecwrhdehzyKL2TU2zZ03wIOf3QvLhV5+0Gb/6SjU1ApwTsbCXM
	rO31wxXspVgQMOOrfe5Q2AcB0sZzstihIm+7KnXa0nZItha5jWmmHEIcVBcl5eA/+xTt
	H3obm/uGIhjfssW10DwPq2v0zbWBESD42fwws+PaAMh1DwKLAfuS97kVHnVEr+KYoLQP
	AkXav72TTh8o943ji4VR7awBzzKEegTUydqYOZ92AQEUUv0cj7kj8rdYnIPZwaiM77L3
	Ts+Om4ugrsuqxXs74McI/1bffn68VSwCy1FA08B/gNN4CYZAHvMJ9c6b4s+gUfSY3CCA
	f0dQ==
X-Gm-Message-State: ALoCoQm+KP25BEVCuMc/ZW/6IPqaVL83dMGYMvfEytM0lrri6UCnQiwrbVFfhiIatNuK4zJakSCe
X-Received: by 10.152.28.131 with SMTP id b3mr3765125lah.44.1433515961989;
	Fri, 05 Jun 2015 07:52:41 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id rp10sm1824227lbb.8.2015.06.05.07.52.39
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2015 07:52:40 -0700 (PDT)
Date: Fri, 5 Jun 2015 16:52:34 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Thomas Perrot <thomas.perrot@tupi.fr>
Message-ID: <20150605145234.GE1829@gmail.com>
References: <1432289035-762-1-git-send-email-thomas.perrot@tupi.fr>
MIME-Version: 1.0
In-Reply-To: <1432289035-762-1-git-send-email-thomas.perrot@tupi.fr>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] If SERIAL_CONSOLE is already define by another layer, this value may not be good.
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
X-List-Received-Date: Fri, 05 Jun 2015 14:52:50 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, May 22, 2015 at 12:03:55PM +0200, Thomas Perrot wrote:
> Signed-off-by: Thomas Perrot <thomas.perrot@tupi.fr>

Merged to master. Thank you.

--
Andrei Gherzan

