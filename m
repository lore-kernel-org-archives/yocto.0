Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51FC3E00DAE; Mon, 19 Sep 2016 05:00:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD5E2E009D8
	for <yocto@yoctoproject.org>; Mon, 19 Sep 2016 05:00:05 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id 133so14562351wmq.2
	for <yocto@yoctoproject.org>; Mon, 19 Sep 2016 05:00:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=GaMw8D4o3XAlTpuAHHyElMPcr5aA+j4Tr61smwvSVr4=;
	b=nm50ETiMKk02SVrgOBrKYKt89nYMlQDqscEh3x2mOtw53Aqx+YQuhxQF28CSuWyiQF
	jLjYTgsX7UCL239ZlTSj5MjA72A9VpXKUlqAJSzXeQ6ZLQAA+WJotU2xm8P07jiR7OK7
	k90muKwTS2gx49o+hkViSkXP1uzc8MB2qPsyqzdWeHGmWBoc7tMkV1DJEKWo83OCxseT
	7QKLYj1nYF3gZZ3Y8v2QeTGFE51Ue9G5Isff7JCaX5Mzmi+bSxIcf+MqSRXSCsUvy3BC
	7QT+mGXUa5AH9P/+s5fHd2NeQMoHHJ45+AlGkNcMgDBSqfHfrZqHaWTX/tYaasU6N+Fw
	PkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=GaMw8D4o3XAlTpuAHHyElMPcr5aA+j4Tr61smwvSVr4=;
	b=JwxDh8KHoJsIzsKUTDfO3Md9SCMubub3AX18dzLmcHjTudIZvxdmJBCRdWiDPBrdCq
	ZB0FHARIQlLgoO6o5zifvnFwHokRGZ3InPmY2c6inPVqH3Pj9CX78TTs/BQZpKu4RNtg
	uWp4nJSPO9eEgC5cpz9V7zD+OEAV0nHbmpp8qoUcUjxs/AZ+ZU73WySgSVKlJWG0yH5a
	Gvcf76tUtH/cDiRACU4B4gyCZQLW4PhSjVDAZR2YlhPxcvaIgf4oVyeCcMfmm8KF2FQb
	F2nj3Ufh2wLe4Fj14HX2By+wSBOHnFVSagNzvlO39qAQzimrF2cRVzyReXbonoG0v4l/
	wY3w==
X-Gm-Message-State: AE9vXwMcBuyFvhm4yuYoTe+gAzKKdRUCyv4S9DfaomKRX0rKSlpbgLIc6gk9bbcJbrFzyA==
X-Received: by 10.194.87.227 with SMTP id bb3mr23059741wjb.62.1474286404313;
	Mon, 19 Sep 2016 05:00:04 -0700 (PDT)
Received: from localhost (x55b1729d.dyn.telefonica.de. [85.177.114.157])
	by smtp.gmail.com with ESMTPSA id
	ml1sm22756803wjb.46.2016.09.19.05.00.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Mon, 19 Sep 2016 05:00:03 -0700 (PDT)
Date: Mon, 19 Sep 2016 13:58:20 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160919115820.GC27958@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org
References: <20160916082406.GB27958@graute-opti>
	<CAJ86T=WaKHQFXfSuvAm4wQUfa=xr_CBmK8-ZovaystYGM=9ukA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ86T=WaKHQFXfSuvAm4wQUfa=xr_CBmK8-ZovaystYGM=9ukA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: build ntp with openssl support
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
X-List-Received-Date: Mon, 19 Sep 2016 12:00:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 16/09/16, Andre McCurdy wrote:
> On Fri, Sep 16, 2016 at 1:24 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> > Hello,
> >
> > how can I build ntp with openssl support?
> >
> > I already created a ntp_%.bbappend file to extend the recipe ntp_4.2.8p4.bb.
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> 
> You don't really need this line unless you are adding a file to
> SRC_URI or replacing a file already in SRC_URI with your own version.
> 
> > PACKAGECONFIG += "openssl"
> 
> This will enable openssl, but it will also disable all the default
> PACKAGECONFIG options (cap, debug and refclocks) which is probably not
> what you want. Try this instead:
> 
>   PACKAGECONFIG_append = " openssl"
> 
> Note the space between " and openssl. It's required.

ok now I see the right configure script options during the configuration
of the ntp build.

--with-openssl-libdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
--with-openssl-incdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
--with-crypto

But ntp is still build without openssl support. The configure scripts
can't find the relevant openssl stuff.

configure:34762: checking for openssl library directory
configure:34802: result: no
configure:34807: WARNING: libcrypto and libssl not found in any of /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
configure:34811: checking for openssl include directory
configure:34833: result: /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
configure:34877: checking if we will use crypto
configure:34879: result: no
configure:35109: checking if we want to use OpenSSL's crypto random (if available)
configure:35119: result: yes

some clue whats wrong here?

Best regards,

Oliver

