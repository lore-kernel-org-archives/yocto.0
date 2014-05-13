Return-Path: <koen@dominion.thruhere.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82585E00B76; Tue, 13 May 2014 00:45:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-wg0-f49.google.com (unknown [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EB72E00B5D
	for <yocto@yoctoproject.org>; Tue, 13 May 2014 00:45:33 -0700 (PDT)
Received: by mail-wg0-f49.google.com with SMTP id m15so7824194wgh.8
	for <yocto@yoctoproject.org>; Tue, 13 May 2014 00:45:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=+7aDRPD94PU3sUR0IBQk2/3osOPoL+1tHWu7m+jH/DA=;
	b=S8kIlRh6EWON83Qm5TTbHvo9HuNaEbk3LQ+VJ3wOQ1GbClApfb5T/GxkjaLiDu+2tv
	46XYxGWElS8QTInjw8tH19/ie0dKYR5UrH2XO7dtkYlR+8oOlG4RjH0+LjcJhuBMrj8J
	0+CH3JDY3A/Vna84EjpO0GsiEkr8HDVk9hiYeIUK0sR5dc3MSS2SK9zqIxk9icXEmoYj
	1Ds4Fs/9uqDaKjHYn+AuRLeQ2XM0iNZZthwOvSEq0VuGbwT/Lq3ARK5tvQciPYwFDHJd
	43e4aAMDfvek47QrQ2YwD0oBV+EpXPWnzXAxo+kfv/zXfvYRxtgdMkZr0dCEsP0LwNo2
	yvzQ==
X-Gm-Message-State: ALoCoQnwjz8K9s8hFQUd7uewP/KD52Vg0zVMeLzfUE5IqqIa+0fGlTDtsJHq7nPjWTNCQQ4ZBX4Y
X-Received: by 10.180.107.97 with SMTP id hb1mr19735877wib.20.1399967132784;
	Tue, 13 May 2014 00:45:32 -0700 (PDT)
Received: from ?IPv6:2001:610:612::d55c:c67d:d4e:7aee?
	([2001:610:612:0:d55c:c67d:d4e:7aee])
	by mx.google.com with ESMTPSA id bj5sm20463091wib.3.2014.05.13.00.45.31
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 13 May 2014 00:45:31 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.2 \(1874\))
From: Koen Kooi <koen@dominion.thruhere.net>
In-Reply-To: <53710BDA.10306@mentor.com>
Date: Tue, 13 May 2014 09:45:30 +0200
Message-Id: <AA1395AD-4FF5-4EF8-ACB1-8DFDE52EB8BF@dominion.thruhere.net>
References: <53710BDA.10306@mentor.com>
To: Sean Hudson <sean_hudson@mentor.com>
X-Mailer: Apple Mail (2.1874)
Cc: yocto-announce@yoctoproject.org, yocto-bsp@yoctoproject.org,
	yocto@yoctoproject.org, openembedded-core@lists.openembedded.org,
	meta-amd@yoctoproject.org, poky@yoctoproject.org
Subject: Re: [OE-core] New meta-amd mailing list announcement
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
X-List-Received-Date: Tue, 13 May 2014 07:45:42 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


Op 12 mei 2014, om 19:58 heeft Sean Hudson <sean_hudson@mentor.com> het =
volgende geschreven:

> There is a new mailing list for AMD platform/board related patches and
> discussion.
> You can sign up here: https://lists.yoctoproject.org/listinfo/meta-amd
>=20
> The meta-amd layer git repository is publicly available here:
> git://git.yoctoproject.org/meta-amd
> (cgit web interface here:
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-amd/)

Your machine.conf violates good practices by setting DISTRO vars.=

