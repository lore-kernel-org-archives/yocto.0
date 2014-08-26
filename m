Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0B57E006DB; Tue, 26 Aug 2014 13:03:21 -0700 (PDT)
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
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pd0-f174.google.com (mail-pd0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F458E00566
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 13:03:16 -0700 (PDT)
Received: by mail-pd0-f174.google.com with SMTP id fp1so23201841pdb.19
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 13:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=BVpQ0OVMKNOcuKr3lTJsrcdBe/KpInuSRNpyNCy6Gi0=;
	b=f34S0Yf/J5u2jX/oueNYNh9QbBlCue5rHjBTLFk7F83qditjXmkO5S35GcTfQxr2sk
	yvoTE1fgjVgDHzgoTaxFX02RdrrVOWqSsb1mK7qaPLjanFfAfJpfBapn4GEKh6yyb+dQ
	UKQJ0OyDQQyBThVtbtcKzakQAlxzvzOgjPlaPzXLjYN/utb3GfJTsuxaVmHIw6KIgp+Q
	BmEiyHOMXGXgDPLKcwwJnNHWeydNdM9t2cgTHBHa4S8OaJD+L3dLabgj70/yaop9bBS/
	T45FQsVxDP0ixAdVWOx8NjiC3Mkuo41RDwfP/oGmIXv1mh372oY1J9kuM9uYl4rqw0s3
	5+bg==
X-Received: by 10.70.5.33 with SMTP id p1mr23663618pdp.134.1409083396605;
	Tue, 26 Aug 2014 13:03:16 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id x1sm5370586pdm.13.2014.08.26.13.03.15
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Aug 2014 13:03:15 -0700 (PDT)
Date: Tue, 26 Aug 2014 13:07:00 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <20140826200700.GH18989@haswell>
References: <5390133D-A7A4-4E21-A2D9-D9BBAF6F849F@keylevel.com>
MIME-Version: 1.0
In-Reply-To: <5390133D-A7A4-4E21-A2D9-D9BBAF6F849F@keylevel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: systemd - how do I wait for a driver to load?
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
X-List-Received-Date: Tue, 26 Aug 2014 20:03:21 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-26 20:52:58, Chris Tapp wrote:
> I've got a service running under systemd that will only start once a kernel module has loaded and created its /dev/dvb/adaptor nodes.
> 
> Unfortunately, it doesn't load until after the service has failed and gone into an error state due to too many restarts.
> 
> I could "fix" this by increasing the restart interval, but is there a way of adding a dependancy on the kernel module?

if you module is loaded automatically on boot then dependent service
could use below dependency

After=systemd-modules-load.service

> 
> --
> 
> Chris Tapp
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

