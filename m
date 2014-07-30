Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19334E00862; Wed, 30 Jul 2014 13:07:05 -0700 (PDT)
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
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8DF0E00781
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 13:06:55 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id h18so7997054igc.12
	for <yocto@yoctoproject.org>; Wed, 30 Jul 2014 13:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=CMJF9ERiY9loDLFkYZflYSanhmpbTwC77B8dAfO1CKg=;
	b=Tz2SRkCDb8p7/SG5x2vh1SgdT9BsbOVmFNxy7ckKaPmq5b1MJW9U8AOrE7LGycQkwb
	jmKpKoqi+t7zv4WqmbZXaTsCSYlIS1gOqtlRv3yv8Miutyhn37tys6v00ZVPxNVTnM31
	Nd18srXl0Sr9N3z+C+n/vwdln2N73OLTV7+Ww/+16o1nKBx4MZwnJDHorswyM1Dk07kW
	cd5pgwOwnR/hIDWFZd9St4MQNjsNgO3Iy4bjqTEdEfgXfHPI8lASRVhinE383weYqzSs
	q562TDq1F2wcCpDsYB3fk1NEHVLml4jJ9XizQ29E6SoXbP1SlnMGojybBAF8zYAP2WF2
	vLEA==
X-Received: by 10.42.82.6 with SMTP id b6mr8351352icl.51.1406750814848; Wed,
	30 Jul 2014 13:06:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Wed, 30 Jul 2014 13:06:24 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407301522260.30037@localhost>
References: <alpine.LFD.2.11.1407301522260.30037@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 30 Jul 2014 13:06:24 -0700
Message-ID: <CAMKF1sp6kAuF2e_j=jpSC8n6k3x8yD05iHhgrhHpNsCVUryz3Q@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: why does dev manual, "Supported Board Support Packages", mention only meta-intel?
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
X-List-Received-Date: Wed, 30 Jul 2014 20:07:05 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 30, 2014 at 12:24 PM, Robert P. J. Day
<rpjday@crashcourse.ca> wrote:
>
>   also from current dev manual, chapter 2, there is a bullet point
> entitled "Supported Board Support Packages" which mentions *only*
> meta-intel as if its the only such layer.
>
>   that seems sort of ... incomplete.

a list from something like this

http://downloads.yoctoproject.org/releases/yocto/yocto-1.6.1/machines/

would be more appropriate.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

