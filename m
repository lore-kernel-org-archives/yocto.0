Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D1E9E00B18; Fri, 16 Jun 2017 11:11:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.49 listed in list.dnswl.org]
Received: from mail-it0-f49.google.com (mail-it0-f49.google.com
	[209.85.214.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6ECAE009A0
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 11:11:09 -0700 (PDT)
Received: by mail-it0-f49.google.com with SMTP id m47so31662397iti.0
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 11:11:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:mime-version
	:content-transfer-encoding;
	bh=KFIojFrAicmGF8KfWmOSBvjyGb361H1mfXMgPMJN3mU=;
	b=bYK8h0AYcu90o4Xwhz0LjQ6ClzqqLo3dzfJf8PHWw0c5urNSCnmqLu5F2r8eRGosqb
	aM3AUx5hmosy/Of/Uwida6VY+7cL4h2FAtWEVQ82YPGCyGgKfWxwPb6tYJ/bedWZdiOy
	enik617ND4UaRBhfiLI8HGrN8jItVUQVMSWSgdoqP+cYXbjTlrnDWCFxlLSJWTW5BCi7
	gKVToQqjqGvVj9hRrHv1hoeqgrGW/MiNDl2nzPNUPci1WdWHaUYjxFGEOFcpM+rnH66x
	JPcsR8OMEpxWT0vu+5MiYHbbz4fkVBGkJeevbfIrxg+2hDhuokHaQ3u2WYD9+w26DyUI
	5k3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=KFIojFrAicmGF8KfWmOSBvjyGb361H1mfXMgPMJN3mU=;
	b=Ghd3mgMH9TRDyX9jUzEdhjvwdNWzPktXPbTj6CRx6zOyM9c+axAfKvmrmvbGZiBp5p
	XCQddluVb1n9a9ZXs5CpGBPa3mYjXFsyT5MHUVh886Tszlm6F2tyjF3V3CiZj1Nh75d9
	tus4Dhe2cgAT6ybPkkEMbapF5GuihQ/G0UD6LCXkymH1KS1bvQZNMUF6OK+XfG7onjtJ
	VWEwpqmfGi7ZWEprmL/jNXOmtleiwQuke2CJ34DxMlXdaaf40RFspo/rvdFsU/wpZ+fW
	jOzWkmETi+iSYfOT1Z4Q1WVaWK8gU42JGzMlC8MqHBQTs8CZbg4VE4sLbZ2AROJPjuDr
	wO4w==
X-Gm-Message-State: AKS2vOx4ieKi2m4v7BGQJuybq3FNICIyOa6KHyi+D+RiU+rYAB8hqIpt
	inVJNz1Fav7u2A==
X-Received: by 10.36.77.211 with SMTP id l202mr11628013itb.121.1497636668865; 
	Fri, 16 Jun 2017 11:11:08 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	b62sm2327622itd.2.2017.06.16.11.11.07
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 16 Jun 2017 11:11:07 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1497636666.2549.6.camel@gmail.com>
To: Khem Raj <raj.khem@gmail.com>, yocto@yoctoproject.org
Date: Fri, 16 Jun 2017 13:11:06 -0500
In-Reply-To: <fde71ccf-4363-2b33-56d3-6826e72d87de@gmail.com>
References: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
	<CAJTo0LZjhRyL4gzOyK4OKUpTpCarUPmv8TjVQ5485hG-6R=1qw@mail.gmail.com>
	<DB6PR0701MB1879F68989431486E48F7FF6D3C10@DB6PR0701MB1879.eurprd07.prod.outlook.com>
	<1497618884.2549.1.camel@gmail.com>
	<fde71ccf-4363-2b33-56d3-6826e72d87de@gmail.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Subject: Re: Using A Proprietary Closed License Inside A Layer & Its Recipes
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
X-List-Received-Date: Fri, 16 Jun 2017 18:11:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-06-16 at 11:00 -0700, Khem Raj wrote:
> On 6/16/17 6:14 AM, Joshua Watt wrote:
> > On Fri, 2017-06-16 at 09:12 +0000, Thomas Thorne wrote:
> > > > > Is it only possible to use the special
> > > > > LICENSE = "CLOSED"
> > > > > license for licenses not already placed in the main license
> > > 
> > > directory?
> > > > 
> > > > Yes, there's special-case logic for 'CLOSED'.  Can you not just
> > > > use
> > > 
> > > that for your internal pieces?  It's special-cased in a few
> > > places.
> > >  
> > > I can use CLOSED.  I just wanted to ensure I was following the
> > > recommended or best practice. 
> > >  
> > > As this is an internal thing it should be OK for now.  I was
> > > wondering what would happen if a closed licenses was updated, as
> > > nothing would currently note the md5 change. 
> > 
> > FWIW: We created a proprietary license file called files/common-
> > licenses/company.txt in our proprietary layer, then added the
> > following
> > to layer.conf:
> > 
> >  COMPANY_COMMON_LICENSES := '${@os.path.normpath("${LAYERDIR}/files
> > /com
> > mon-licenses")}'
> >  BB_HASHBASE_WHITELIST_append = " COMPANY_COMMON_LICENSES"
> > 
> > Then a recipe can get the "standard" proprietary license by doing:
> > 
> >  LIC_FILES_CHKSUM =
> > "file://${COMPANY_COMMON_LICENSES}/company.txt;md5=9b1139fa1fcb8690
> > 69db
> > eecca44350a5"
> > 
> > It works pretty well and also make it clear what license the recipe
> > is
> > under. I believe that the BB_HASHBASE_WHITELIST was necessary at
> > the
> > time to prevent changes in the project working path from causing a
> > full
> > rebuild of the all proprietary packages and so that the sstate
> > signatures would match regardless, but I might be wrong about it
> > being
> > necessary.
> 
> is this still the case with latest master ?

I don't actually know, and I don't think I should hazard a guess. We
made this change all the way back in 1.6 (which was embarrassingly
recent for us) and I haven't bother to check (mostly because I forgot
about it until now).

Also as an aside, I think someone would probably tell me to use
BB_HASHBASE_WHITELIST += "COMPANY_COMMON_LICENSES" these days instead
of _append. When I was younger I had trouble knowing when to use one or
the other ;)

> 


