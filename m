Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA1CCE006E7; Sat,  2 Aug 2014 13:20:56 -0700 (PDT)
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
	*      [209.85.220.48 listed in list.dnswl.org]
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79FF8E004F1
	for <yocto@yoctoproject.org>; Sat,  2 Aug 2014 13:20:52 -0700 (PDT)
Received: by mail-pa0-f48.google.com with SMTP id et14so7684294pad.21
	for <yocto@yoctoproject.org>; Sat, 02 Aug 2014 13:20:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=L01Wwro1DlEhN3SYmvdLpLOrNUTCqKiYnkoh+PTEH6M=;
	b=tMsgaCK9W6DpdZ6KhHNF7P9WO4YYx5EghZ+TvQGSzCUheX5q+hyyQtwh6YCqmezir3
	WmeeC1jEwht+yUsl4j29THH1RD9qla+92SA9SwifCMih061P1mV8LGmXZS/wk1Ua1m9s
	+Juy9J6eFbUgydOcuGOsn0qO2gYLG6Ro7XpdxkU7t2X0+ox2lLkjGOTIVtc9yPjC4t+r
	rQe07EEHO3WJQkySVxiVsb2/2BVPhgo6rfQpdINp8KuyEHeOD2X6Xs0/iahrCv24rlrW
	qn9QYHZ3tQqh08thKr1VWQmvjSV1COxwKGp2WEDDlFTKcnEitgXkuksvdoPxCmGjI5iI
	eh0g==
X-Received: by 10.66.236.35 with SMTP id ur3mr14569437pac.35.1407010851895;
	Sat, 02 Aug 2014 13:20:51 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id
	fb7sm19101425pdb.68.2014.08.02.13.20.50 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 02 Aug 2014 13:20:51 -0700 (PDT)
Date: Sat, 2 Aug 2014 13:24:10 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Pushpa Teja <pushpa@jtechindia.in>
Message-ID: <20140802202410.GA23556@haswell>
References: <mailman.21236.1406788558.26702.yocto@yoctoproject.org>
	<3448592.XcGlM2j8ls@peggleto-mobl5.ger.corp.intel.com>
	<BLU185-W32A6A2A4836734A928F13BC7E70@phx.gbl>
	<1624546.n1hBMRbNts@peggleto-mobl5.ger.corp.intel.com>
	<CAMKF1soCaq+40wppj951YCOOTmkHamvTQuc6Gk3E0V0+pzPfDQ@mail.gmail.com>
	<BLU185-W7913184A6D69613AFC7FAAC7E40@phx.gbl>
MIME-Version: 1.0
In-Reply-To: <BLU185-W7913184A6D69613AFC7FAAC7E40@phx.gbl>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	sadasivam <sadasivam.b@jtechindia.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 46, Issue 109
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
X-List-Received-Date: Sat, 02 Aug 2014 20:20:56 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 14-08-02 09:17:28, Pushpa Teja wrote:
> 
> 
> P
> HI,
> 
>       I ask feescale people about this but they are not responding .please i have to compleate this soon any one can help me frequently getting the same error i fallowed every this as u said but no use .please guide me to overcom this error .

From README of meta-fsl-arm

In order to accept it, you should add, in your local.conf file:

ACCEPT_FSL_EULA = "1"

