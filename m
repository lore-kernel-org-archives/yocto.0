Return-Path: <anders@chargestorm.se>
Received: from STOEXHUB02.domain01.net (STOEXHUB02.domain01.net
	[83.145.59.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F03CE01481
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 02:02:28 -0700 (PDT)
Received: from ad.chargestorm.se (193.41.119.134) by stoexhub02.domain01.net
	(10.12.10.2) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Wed, 27 Mar 2013 10:02:24 +0100
Date: Wed, 27 Mar 2013 10:03:21 +0100
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20130327090320.GA13837@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<20130307104051.GH32228@jama.dyndns-home.com>
	<96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
	<20130307182933.GS32228@jama.dyndns-home.com>
	<50BB56BA2C44400C9B6A31B0C2641BD2@PAULD>
	<20130307224223.GU32228@jama.dyndns-home.com>
	<D5340F46DF5F458D9096EA823C3A9EAE@PAULD>
MIME-Version: 1.0
In-Reply-To: <D5340F46DF5F458D9096EA823C3A9EAE@PAULD>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.21 (2010-09-15)
X-GFI-SMTP-Submission: 1
Subject: Re: Samba server?
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
X-List-Received-Date: Wed, 27 Mar 2013 09:02:28 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Paul D. DeRocco <pderocco@ix.netcom.com> [130327 09:09]:
> The log file shows that the layer.conf file for that layer is being read,
> and there is indeed some recipes for Samba. The bitbake -s option lists
> samba as one of the packages. But the logs only show a few of recipes being
> processed from this layer, none having to do with Samba. I was under the
> impression that adding a layer added the recipes in the layer, and caused
> them to be built. Apparently not. What am I missing?

Maybe a dumb question...

Have you added samba to the image that you're building?
Just adding a layer won't cause the added recipes to be built and
deployed.

If you have added samba to the image, could you share the image recipe
and build logs?
Can you build samba manually? (Calling bitbake samba, (though I don't
know if that's the correct name, as I haven't check the meta-oe-layer
for that)).

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

