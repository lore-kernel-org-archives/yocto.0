Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7EFF0E00A5B; Fri, 24 Jul 2015 16:55:09 -0700 (PDT)
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
	*      [209.85.220.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CCDAE00A3C
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 16:55:06 -0700 (PDT)
Received: by padck2 with SMTP id ck2so21321181pad.0
	for <yocto@yoctoproject.org>; Fri, 24 Jul 2015 16:55:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=6s4ugIOEO597Dl0KOld+aGFWrZ8YSZmPMJzZi1n9+WY=;
	b=ySIDVv0yVFhvZnFRZG/lDmwe3Voj6XDCW2+jkGn6rsynaAN1klA1vM37mab33U9s3G
	FHCtMI3qdIj9yg2CG6HoHqsrthsN5tG4S7H6uFZ30hpnVNG5jr0xZgDek3HYcnUf21SO
	VE46kodrWwxkB0IGAObyZJI6oejl50soKv+m30Ud7M9o/XAgjuKqc2BDm9i58w9t7+W0
	O1LYenXfhb2luM2/kIuXJeEpkuweBSmUIGHIt6wk9g2kUBdc3D2Lz2Jmj4P6Ookc4ieq
	J29m7tBrh83nmu1s9nMtQ2QerNMAsZBhFNyxSVxkscdOIuHdFIENg9K89xUCIo92ozCI
	O4tQ==
X-Received: by 10.66.174.36 with SMTP id bp4mr35934266pac.133.1437782105474;
	Fri, 24 Jul 2015 16:55:05 -0700 (PDT)
Received: from haswell ([2601:646:8601:4580:baca:3aff:fe80:aa8f])
	by smtp.gmail.com with ESMTPSA id
	bu10sm16644309pac.36.2015.07.24.16.55.04
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 24 Jul 2015 16:55:04 -0700 (PDT)
Date: Fri, 24 Jul 2015 17:02:33 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Matthew Karas <mkarascybi@gmail.com>
Message-ID: <20150725000233.GA14383@haswell>
References: <CADu_VSZCW7YegWTzRWQX+ZzQH=CygvxorwUH7KvgtkyYO-feVQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CADu_VSZCW7YegWTzRWQX+ZzQH=CygvxorwUH7KvgtkyYO-feVQ@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dropbear configuration
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
X-List-Received-Date: Fri, 24 Jul 2015 23:55:09 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 15-05-29 10:40:35, Matthew Karas wrote:
> I am trying to configure dropbear to do the following.
> 
> 1) Only listen on port 22 of the tun0 interface (made by openvpn service).
> 2) Only use public key authorization.
> 
> To do this I've overridden the dropbear.socket file with my own.
> 
> ---------------------------------------------------- start
> [Unit]
> Conflicts=dropbear.service
> After=openvpn@foo.service
> Wants=openvpn@foo.service

may be ise 'Requires' here

> 
> [Socket]
> ListenStream=22
> Accept=yes
> BindToDevice=tun0  <<<<<<< made by open vpn
> 
> [Install]
> WantedBy=sockets.target
> Also=dropbearkey.service
> 
> ----------------------------------------------------finish
> 
> I also install my public key to where I think dropbear needs the keys.
> 
> --------bb append snippet-----------------------------------
> do_install_append() {
>     install -d ${D}/root/.ssh
>     install -m 0600 ${WORKDIR}/authorized_keys ${D}/root/.ssh/authorized_keys
>     echo 'DROPBEAR_EXTRA_ARGS="-E -g"'> ${D}${sysconfdir}/default/dropbear
> }
> 
> FILES_${PN} += "/home/root/.ssh/authorized_keys"
> -------------------------------------------------------------------
> 
> Currently the system finds a system ordering loop and shuts down openvpn.
> 
> How do I get the dropbear.socket to depend on openvpn - when openvpn
> depends on the sockets being up  (and sockets.target wants
> dropbear.socket)?  Is there another way to have dropbear only look at
> the tun0 port 22 and not the eth0 port 22?
> 
> Thanks
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

