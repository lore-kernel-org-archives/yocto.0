Return-Path: <kbassford@apertussolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90B4DE00953; Wed, 26 Sep 2018 06:46:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [135.84.80.216 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Wed, 26 Sep 2018 06:46:40 PDT
Received: from sender-of-o51.zoho.com (sender-of-o51.zoho.com [135.84.80.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5DCE7E006F1
	for <yocto@yoctoproject.org>; Wed, 26 Sep 2018 06:46:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1537968697; cv=none; d=zoho.com; s=zohoarc; 
	b=iEE2HDLDbe4Qz2ghTInrGsP8ZWvFIffHbTWXOaog+rGUY+bECgKg3w5HM3DY5ae80IRz63uvQVKbW0mhx94lNFod3HPdoIOh/f/8iAVe0f/Q5uf/OB/DWGUQ94DboTT/ibmEoyw8yCEXZrmZA7H3hnUxlAhUaKkMNUun0vae9WQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com;
	s=zohoarc; t=1537968697;
	h=Content-Type:Content-Transfer-Encoding:Date:From:MIME-Version:Message-ID:Subject:To:ARC-Authentication-Results;
	bh=TSBEOx5Pu3FCfCNjaa0Rnvu4c7hcZl88axLGzWxBR4A=; 
	b=gY/BRlXMrFbr8NbCL8qd4bZRicsUtgFMIgViz7SHfaxIyRgrUW4PI8T14afLRPLC4VsDqj15PZTN9fCE7M6ap1LktF5lQoTtfy14mT6GU902P6L1vNWM2TgbHDBRbh6Dnb+iqqIL7xHDnIFHoZCCAK3jnn0ptUP0Ryl8U9XpVIA=
ARC-Authentication-Results: i=1; mx.zoho.com;
	dkim=pass  header.i=apertussolutions.com;
	spf=pass  smtp.mailfrom=kbassford@apertussolutions.com;
	dmarc=pass header.from=<kbassford@apertussolutions.com>
	header.from=<kbassford@apertussolutions.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1537968697; 
	s=zoho; d=apertussolutions.com;
	i=kbassford@apertussolutions.com; 
	h=Date:From:To:Message-ID:In-Reply-To:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding;
	l=1583; bh=TSBEOx5Pu3FCfCNjaa0Rnvu4c7hcZl88axLGzWxBR4A=;
	b=XZ60dh3tVtLWvGRfGS8rHlyvUvlTkerJmc5SMvC4hWm8DC3q/SPJVU9wp4zadEA+
	NiQf9OLDpffpQ3EzZOKM3A9WGWZqIbHqOT0H7kV08XHPpb3JYm4ml8Z17D5Wq8edIg+
	qnMJXNdtfeaL8HAAA3aYTrGJ4Hfla0/ehZf1SBPQ=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1537968694718182.84174681022535;
	Wed, 26 Sep 2018 06:31:34 -0700 (PDT)
Date: Wed, 26 Sep 2018 09:31:34 -0400
From: Ken Bassford <kbassford@apertussolutions.com>
To: "yocto Mail list" <yocto@yoctoproject.org>
Message-ID: <1661613e486.f5f6798c369397.3628233815132925426@apertussolutions.com>
In-Reply-To: 
MIME-Version: 1.0
X-Priority: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
Subject: Proper convention for naming guest
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
X-List-Received-Date: Wed, 26 Sep 2018 13:46:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi Folks,

I'm rather new to Yocto so please forgive me (and please correct me) if I have some of the terminology wrong.

I am currently building a Xen dom0 with two guest domain images running under the dom0.  These directories for building each of these images are located under the meta-virtualization directory in the build environment as recipe directories (recipe-xxx).  Dom0 and each of the images work fine.

The trouble I am having is that I wanted to give each domU a unique name/hostname to make networking and management easier so I don't have to manually set them up each time one is modified.  Since each recipe only consisted of several sub-directories containing .bb files, I created a "base-files_3.0.14.bbappend" to each recipe's 'image' sub-directory (consisting of one line: hostname_pn-base-files = "<name of host>").  Now it seams that every time meta-virtualization is called bitbake "sees" the first .bbappend it comes across and tries to change the hostname regardless of which recipe I am building (i.e. If you run "bitbake -e base-files | grep ''hostname" it will always result in the same custom hostname).  Obviously this is not the proper way to set the hostname.

What is the proper way to go about this?  Can I set it on the bitbake command line for building the image?

I'd like for the hostname to be tied to the custom image recipe I am building.  If I don't specifically call one of my custom recipes, neither should automatically be changing the hostname.

Thank you in advance for your time.

Sincerely,
Ken Bassford
Apertus Solutions




