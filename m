Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9667E00B58; Fri, 16 Jun 2017 06:14:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jpewhacker[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.54 listed in list.dnswl.org]
Received: from mail-it0-f54.google.com (mail-it0-f54.google.com
	[209.85.214.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74C09E00A9B
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 06:14:46 -0700 (PDT)
Received: by mail-it0-f54.google.com with SMTP id m47so27408233iti.0
	for <yocto@yoctoproject.org>; Fri, 16 Jun 2017 06:14:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:cc:date:in-reply-to:references
	:mime-version:content-transfer-encoding;
	bh=kzL3q20wtZrpGf93KibudvNxDa2jSqU70GU6xWKHlqA=;
	b=ZQWazrgYXaQeotQhRxpERgNQtyEts2FWQjmCOmy2XqWzux1+0X5G7L5ea3dZFPLYCs
	h1tOZVZnuvaRJla4B07IbUyuq2y8ubDxHURAszw9BngwZB0ojj4ExQE37v4zp7QDVKbU
	X5uTgusffEeemaznyhPDQC82VggMLYXqiSEeu/j99JLpHYR8V9MWqegFMBoP5916XzSA
	BlUFo41oPsI6a1ggxFFKg48gr27zk2FJNpPCPivYRoAAcLhCGPvjasYntJtEc+L59IOF
	n0lEJnWdoUtqi+QHXuIpddH9lMEBXk25ockQZ0fukjgr+sYzcD4iRgiNWQirQVvmQxkt
	kkuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:cc:date:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=kzL3q20wtZrpGf93KibudvNxDa2jSqU70GU6xWKHlqA=;
	b=hQFzGRbKtltzDowdX1tlWFecfedugYCTPWMefRxMjh0KR7llv6krpjde+sicUi0YJc
	LB5CIPl78ckPGa7yDvl3dRexKG/qPHoeqXWlymUqU1KeBfrDmF2N/4YgeLK3tcuucO7L
	0DH07dOF6vpx8HPkbW3Mt2fg23+ZcLqUP8am4qR1D8KsOj/CoRd0sVM16UVpxvCwD5Pu
	8cJ2bBFxpZpPuPaBfW5T68t2xFqTQDxVRI4jAaaD6wtXUCGtFZeNhZamVBUPvDbHysOM
	N8yX0Hos8jy4LczPTk5cEqgGYENii4dnK2TSZIY0q8kH8T1ggNOL3RBfSWOgusO114bQ
	mxcg==
X-Gm-Message-State: AKS2vOyVNIO9aaeP6og++4vwJFXiK7tiGX55LGNZarqU0pT0IRFTDE0r
	4E1L6ZlQHNfFMQ==
X-Received: by 10.36.29.6 with SMTP id 6mr10376942itj.59.1497618886551;
	Fri, 16 Jun 2017 06:14:46 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	d185sm1388690ioe.38.2017.06.16.06.14.44
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Fri, 16 Jun 2017 06:14:45 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <1497618884.2549.1.camel@gmail.com>
To: Thomas Thorne <Thomas.Thorne@net2edge.com>, "Burton, Ross"
	<ross.burton@intel.com>
Date: Fri, 16 Jun 2017 08:14:44 -0500
In-Reply-To: <DB6PR0701MB1879F68989431486E48F7FF6D3C10@DB6PR0701MB1879.eurprd07.prod.outlook.com>
References: <75eaa4ef-ddd4-198e-4299-a5cad9ed570c@Net2Edge.com>
	<CAJTo0LZjhRyL4gzOyK4OKUpTpCarUPmv8TjVQ5485hG-6R=1qw@mail.gmail.com>
	<DB6PR0701MB1879F68989431486E48F7FF6D3C10@DB6PR0701MB1879.eurprd07.prod.outlook.com>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 16 Jun 2017 13:14:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-06-16 at 09:12 +0000, Thomas Thorne wrote:
> >> Is it only possible to use the special
> >> LICENSE = "CLOSED"
> >> license for licenses not already placed in the main license
> directory?
> >
> > Yes, there's special-case logic for 'CLOSED'.  Can you not just use
> that for your internal pieces?  It's special-cased in a few places.
>  
> I can use CLOSED.  I just wanted to ensure I was following the
> recommended or best practice. 
>  
> As this is an internal thing it should be OK for now.  I was
> wondering what would happen if a closed licenses was updated, as
> nothing would currently note the md5 change. 

FWIW: We created a proprietary license file called files/common-
licenses/company.txt in our proprietary layer, then added the following
to layer.conf:

 COMPANY_COMMON_LICENSES := '${@os.path.normpath("${LAYERDIR}/files/com
mon-licenses")}'
 BB_HASHBASE_WHITELIST_append = " COMPANY_COMMON_LICENSES"

Then a recipe can get the "standard" proprietary license by doing:

 LIC_FILES_CHKSUM =
"file://${COMPANY_COMMON_LICENSES}/company.txt;md5=9b1139fa1fcb869069db
eecca44350a5"

It works pretty well and also make it clear what license the recipe is
under. I believe that the BB_HASHBASE_WHITELIST was necessary at the
time to prevent changes in the project working path from causing a full
rebuild of the all proprietary packages and so that the sstate
signatures would match regardless, but I might be wrong about it being
necessary.

>  
>  
> The mega manual mentions CLOSED in 7 places.  One of those places
> also lists "Proprietary" as a value so I could used either in some
> cases.  Based on my reading of the manual "Proprietary" would not be
> exempt from setting up the LIC_FILES_CHKSUM, but CLOSED would be. 


