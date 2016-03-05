Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6ACFE00C29; Sat,  5 Mar 2016 03:49:05 -0800 (PST)
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
	*      [74.125.82.53 listed in list.dnswl.org]
Received: from mail-wm0-f53.google.com (mail-wm0-f53.google.com [74.125.82.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A384E00C1C
	for <yocto@yoctoproject.org>; Sat,  5 Mar 2016 03:49:01 -0800 (PST)
Received: by mail-wm0-f53.google.com with SMTP id l68so20192979wml.1
	for <yocto@yoctoproject.org>; Sat, 05 Mar 2016 03:49:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:to:subject:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=KDeFdq/8WF3SCU22trnu+QzY+tbNTWifdHEzJ1yeLWs=;
	b=LA6l1n/tINCLm1B5K0pHWM+mkybsX2Db4GoqJk9PNo6C1IHR+Cz3JwZBvgE7dxpwlc
	2DZxMb6onTR391xg0pNEjEKU3hfHolFK30cCZQ+m580os5lFZFISWz/2dQZpiUqB3iAE
	kk2ptVNG2EpvsSxLEWRYvTbn+XM3wrjIDDVa+sFobWjnzMLv3dAPsQw4So+H1FFn39XL
	ZZyqkL9npfTF2C2uzW/ajH6YNpq0YM1w5iFk8umoqUJm55nnPo1dk2eO/WvTCCwGpQNl
	A5u8Mo+V5MpDeT9FPDkdfr7AlZjl+adq2i+KQYlewtALasSUZlZ0f0Dr8TKS4nnSvT0S
	0BYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:to:subject:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=KDeFdq/8WF3SCU22trnu+QzY+tbNTWifdHEzJ1yeLWs=;
	b=Uk8rYngzvW8+cMUYcYDdlsqmW1MpUKwT1BGoy7EqHSaoeR2rncbXvAonZgeGXrn7hJ
	jrF28du7mfeO7Kd/jZUXxlDsKZPE1y+znEbRftJHb0yrugKAfX9hmajipzcl3SbYqi/P
	Xj7J8O+XIRxaZyCM0jI9lo8/6/FBMu8Dkf/HqlvT0V83vKVNAQxODrF77NIlOQtK0kwD
	G3FP3X2ORjdVmWfZW323i7u9PD6e1uvL6o6u3Oy672cpEu3YEI4mNm4zlEDyNvwKU+P/
	pDnESpZ8otORmwcM4Z3aMiyPY59wuQ4Pa34G982smda6pCcDtuJD6YipCle00LrNNLoq
	4GEw==
X-Gm-Message-State: AD7BkJL7idT+gUKsmxlOOHPRZHKeguP6d44BpoDAkM3wxaWqP2J9K8lSW1pPH0oY1449Kw==
X-Received: by 10.28.14.140 with SMTP id 134mr3311616wmo.39.1457178540227;
	Sat, 05 Mar 2016 03:49:00 -0800 (PST)
Received: from localhost (18-154-N1.p43.customer.vsm.sh. [91.106.154.18])
	by smtp.gmail.com with ESMTPSA id
	j10sm7795648wjb.46.2016.03.05.03.48.58 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Sat, 05 Mar 2016 03:48:59 -0800 (PST)
Message-ID: <56dac7ab.aa0ac20a.e7976.ffff9fdf@mx.google.com>
X-Google-Original-Message-ID: <20160305114857.GA9286@portage.(null)>
Date: Sat, 5 Mar 2016 12:48:57 +0100
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Mail-Followup-To: yocto@yoctoproject.org
References: <20160304135527.GA769@graute-opti>
	<CABcZAN=oPmp_OUor_4poPmgzpF4uNzeUdYD2HhA+QPMATseG6w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABcZAN=oPmp_OUor_4poPmgzpF4uNzeUdYD2HhA+QPMATseG6w@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: Howto change the default shell in yocto?
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
X-List-Received-Date: Sat, 05 Mar 2016 11:49:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 04/03/16, Christopher Larson wrote:
> The default *system* shell (/bin/sh) or the default shell for users, or for
> root? Folks often conflate them, but they're not the same.

first the default *system* shell (/bin/sh) is this possible? or does this affect
to much of the yoco system itself, if I change /bin/sh to /bin/dash?

the alternative for me is to just change the default shell for normal
users and the root user. I assume its done via /etc/passwd. But how I adapt
these the yocto way? 

Best regards,

Oliver

