Return-Path: <koen@beagleboard.org>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 409C0E0070C
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2012 04:14:49 -0800 (PST)
Received: by wibhq7 with SMTP id hq7so2884145wib.35
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2012 04:14:48 -0800 (PST)
Received-SPF: pass (google.com: domain of koen@beagleboard.org designates
	10.180.101.72 as permitted sender) client-ip=10.180.101.72; 
Authentication-Results: mr.google.com;
	spf=pass (google.com: domain of koen@beagleboard.org
	designates 10.180.101.72 as permitted sender)
	smtp.mail=koen@beagleboard.org
Received: from mr.google.com ([10.180.101.72])
	by 10.180.101.72 with SMTP id fe8mr22980411wib.4.1331036088291
	(num_hops = 1); Tue, 06 Mar 2012 04:14:48 -0800 (PST)
Received: by 10.180.101.72 with SMTP id fe8mr18209627wib.4.1331036088240;
	Tue, 06 Mar 2012 04:14:48 -0800 (PST)
Received: from [172.20.0.96] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235])
	by mx.google.com with ESMTPS id p10sm28553066wic.0.2012.03.06.04.14.46
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 06 Mar 2012 04:14:47 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1257)
From: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <1331016505.2107.37.camel@elnicho>
Date: Tue, 6 Mar 2012 13:14:46 +0100
Message-Id: <65EC9795-B3B6-4823-BB94-AEBD23A82B93@beagleboard.org>
References: <CADzUK1K0WwAZ=j0u_osRnmtwf0jBosh-jkaGQnUofbgHkecp+A@mail.gmail.com>
	<CADzUK1LCU0zyddgUBbdb-Sg6iTKJoSZ390SQ3XHuRtiQ6z1UHA@mail.gmail.com>
	<CADzUK1JCDWysYpL=7JZARZ=Lmgh+4izk5k-3nwX-nnODTHmQqA@mail.gmail.com>
	<1331010578.2107.2.camel@elnicho>
	<A25F549E4D43CD42B4C02DF47A1913230FCD71B1@SHSMSX102.ccr.corp.intel.com>
	<4F55A7D7.8020100@windriver.com> <1331016505.2107.37.camel@elnicho>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Mailer: Apple Mail (2.1257)
X-Gm-Message-State: ALoCoQmjv04WvoQzlWQz4A+1gNYKL5qhmTtjF6ptdF+FGwpZTaZdWclKMppyt2B18jsphOwW50AI
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: iptables not building on master
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 Mar 2012 12:14:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit


Op 6 mrt. 2012, om 07:48 heeft Tom Zanussi het volgende geschreven:

> In the meantime, if you remove the line:
> 
> PREFERRED_PROVIDER_linux-libc-headers ?= "linux-libc-headers-yocto"

Why is a BSP layer poking at DISTRO settings?!?!?![1]

koen

[1] Yes RP, that really needed that many exclamation marks :)

