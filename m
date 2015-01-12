Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AEF1E0086F; Mon, 12 Jan 2015 05:04:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	TO_NO_BRKTS_PCNT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.9 TO_NO_BRKTS_PCNT To: misformatted + percentage
Received: from mail-lb0-f175.google.com (mail-lb0-f175.google.com
	[209.85.217.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E48D3E0048B
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 05:03:40 -0800 (PST)
Received: by mail-lb0-f175.google.com with SMTP id z11so17451586lbi.6
	for <yocto@yoctoproject.org>; Mon, 12 Jan 2015 05:03:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-type
	:content-disposition:in-reply-to:organization:user-agent;
	bh=ChByf/+w0jXeZ5H40sS0x8mI6C+LOOeCHyjFXOEsLRI=;
	b=M4oCHM8h2TkmG+6kJNFG4po3SoRdQ4tElAMP8cfXTh4XHPLwI0VlxTaXKbxbHD4RYP
	CasjCYekR79CabrLC+7asVLzk5H/s2dqZVlpEBkNoPn/hgLLSY35mCRJOiGR4kAXBd72
	ZCj7lhEOA9ZlYRZXNab4Tm810LrkvXxsby4ejAbBo1tn7gFYQD4wqo2ubmSz1mkD09fD
	nt/3z68VDiJ88xmao90cNl0dAkNwHKGPW1ctZ0x5wi562Q2zwLpa0AZgcZ8NE0UdIILS
	sFtvYewJyyVAjzdH015AYltt9XOE2XFun0jrvT813iRl7FvD6V43Bak7vqgNVggDvT97
	/zxQ==
X-Gm-Message-State: ALoCoQnhEJjr+b0XluGFuuR8fhNXVz+Vs7xpvaxCKTAchiI71GKPCqv22iUrjKhFdDOacNcKbjUj
X-Received: by 10.112.72.168 with SMTP id e8mr36452181lbv.83.1421067819453;
	Mon, 12 Jan 2015 05:03:39 -0800 (PST)
Received: from ad.chargestorm.se (81-232-163-241-no29.business.telia.com.
	[81.232.163.241]) by mx.google.com with ESMTPSA id
	ku11sm4072544lac.32.2015.01.12.05.03.38
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 12 Jan 2015 05:03:38 -0800 (PST)
Date: Mon, 12 Jan 2015 14:03:35 +0100
From: Anders Darander <anders@chargestorm.se>
To: Matthias.Heise@atlas-elektronik.com
Message-ID: <20150112130335.GB7555@ad.chargestorm.se>
Mail-Followup-To: Matthias.Heise@atlas-elektronik.com, sgw@linux.intel.com,
	yocto@yoctoproject.org
References: <4009F04F5925CD4C95FBD9BE756381FE02929D60BA@MSSRVS5.atlas.de>
	<54AFFCF2.5020501@linux.intel.com>
	<4009F04F5925CD4C95FBD9BE756381FE02929D60BB@MSSRVS5.atlas.de>
MIME-Version: 1.0
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02929D60BB@MSSRVS5.atlas.de>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: can't pull any sources anymore
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
X-List-Received-Date: Mon, 12 Jan 2015 13:04:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline


* Matthias.Heise@atlas-elektronik.com <Matthias.Heise@atlas-elektronik.com> [150112 08:22]:
> thanks for your reply, I'm running the "repo init" command as in many tutorials, this is the line :

> repo init -u https://github.com/Freescale/fsl-community-bsp-platform -b dizzy

I've just tried to replicate your steps, and everything works OK.

> after the init I find following in the manifest.xml :

> <?xml version="1.0" encoding="UTF-8"?>
> <manifest>
>   <default sync-j="4" revision="master"/>
>   <remote fetch="git://git.yoctoproject.org" name="yocto"/>

Look here, git://git.yoctoproject.org, which should be OK.

...SNIP...
> </manifest>



> So you can see it is git.yoctoproject.org as well as others.

> When running repo sync which as I understand it actually pulls the sources I get :



> Fetching project Documentation

> Fetching project poky

> Fetching project repo

> Fetching project meta-fsl-arm-extra

> fatal: Invalid gitfile format: /home/theuser/fsl-community-bsp_NEWTEST/.repo/repo/.git/clone.bundle

> fatal: The remote end hung up unexpectedly

> Fetching projects:  12% (1/8)  Fetching project fsl-community-bsp-base

> Fetching projects:  25% (2/8)  Fetching project meta-fsl-arm

> Fetching projects:  37% (3/8)  Fetching project meta-openembedded

> Fetching projects:  50% (4/8)  Fetching project meta-fsl-demos

> error: Failed connect to git.openembedded.org:443; Connection refused while accessing https://git.openembedded.org/meta-openembedded/info/refs

> fatal: HTTP request failed

> Fetching projects:  62% (5/8)  fatal: https://git.yoctoproject.org/poky/info/refs not found: did you run git update-server-info on the server?

Look here, https://git.yoctoproject.org/poky... See that the protocol
has been changed from git to https. Do you have any rules set up that
in your git-configuration that rewrites URLs? The https:// URL should
look like https://git.yoctoproject.org/git/poky/...

When `repo sync` works for me, I'm still getting the git:// URLs.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

