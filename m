Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 332F9E00D0C; Tue, 18 Oct 2016 05:17:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.45 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5934E00D01
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 05:16:58 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id x79so352999601lff.0
	for <yocto@yoctoproject.org>; Tue, 18 Oct 2016 05:16:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=chargestorm-se.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:organization
	:user-agent; bh=Nn+I8UHJK5+0+kqycCbsvrgnKDjobP5RXtsn38T4jTg=;
	b=tcrfgS/lWSAOYGz+Qiy70F0U9jb5TVeg7vtPIz+xLvAFDgGM53RXrsyzjTB9Nn7Qny
	MYGdjnna/xXBFfYnnJh7SeyGjdfHWMwKLprIEegyXlsrlGDcIyM8nOCY1Yk1Qv2ibcQk
	HE8g3yn8U58yU0UM6hzW9xibAVi8PCBMjkeRGmhjc5Og667uiceJrONzXHTRiV4o3VEu
	7chxj72doSunB95C78TR/Ipj2SXZYXx5tM/Zu6Sjc6o+g6YlUkxkEA5JHdEeNul0LgXG
	rBPftHgdrr2r23ojZWGMYHo8zYNtWRwTtH/DC2gVoUV5TJpZPEse7DjgpCmyH1o+5Px3
	OxWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:subject:message-id:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to
	:organization:user-agent;
	bh=Nn+I8UHJK5+0+kqycCbsvrgnKDjobP5RXtsn38T4jTg=;
	b=mgeYjgMAh+PGPIoF0ANWa8XmRxzAbfBUcJD1599b/40tFEZweI3/+Q8w4MBpO8YWo2
	9D++EeM/ljxJVO0EHNlm+YQixfpLEvR8nvvhz67ld6+VDPHxRPKdImoBbYp0bG876LDp
	q25fXana/TeWc0S9HlQcQ7GGkH+vtojwtpQbU0LJGIR8AuS6Sd2Y26ia8jrPebsFl07T
	XyyIP1OqzyDGl4dI2vm8Pw+ZqjgvxUfIV0h4HO9Gz7FQ9riZVuXq8gNibiOFGrqVCWqn
	LtfvgMpI+DzF+fFns0JBeT0VKQjWBprV+7eVtqfSgC5arRaj5pgvX6RowbOGfBNpjruU
	rOew==
X-Gm-Message-State: AA6/9RnLg+7LOI7mOFUSsxeIA7nemg3l8cIuzlML3hNC0Wypl1maoLh+MAQdxs5faoOckg==
X-Received: by 10.25.169.146 with SMTP id s140mr197716lfe.24.1476793016315;
	Tue, 18 Oct 2016 05:16:56 -0700 (PDT)
Received: from ad.chargestorm.se (213-64-218-49-no126.business.telia.com.
	[213.64.218.49]) by smtp.gmail.com with ESMTPSA id
	u14sm5184266lja.46.2016.10.18.05.16.55 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 18 Oct 2016 05:16:55 -0700 (PDT)
Date: Tue, 18 Oct 2016 14:16:53 +0200
From: Anders Darander <anders@chargestorm.se>
To: yocto@yoctoproject.org
Message-ID: <20161018121653.ygnkvl3yhbt4hvn5@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <F38A866CD026F746A3BF0928A84397BE3E7D843C@AZ-FFEXMB01.global.avaya.com>
MIME-Version: 1.0
In-Reply-To: <F38A866CD026F746A3BF0928A84397BE3E7D843C@AZ-FFEXMB01.global.avaya.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: NeoMutt/20161014 (1.7.1)
Subject: Re: Set ${WORKDIR}/build to ${S}
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
X-List-Received-Date: Tue, 18 Oct 2016 12:17:03 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

* Bipnesh, Abhinav (Abhinav) <abhinavbipnesh@avaya.com> [161018 14:06]:

> I am trying to write a recipe for one of the library. It uses a
> somewhat modified autotools for building the complete code base. The
> issue I am facing here is that when do_configure run it put the
> generated files in build directory. Below is the layout

> S = "${WORKDIR}/xerces-c-src_2_8_0/src/xercesc"

Have you looked at:
http://cgit.openembedded.org/cgit.cgi/meta-openembedded/tree/meta-oe/recipes-devtools/xerces-c/xerces-c_3.1.4.bb?h=master

> Now as the do_configure will put data in ${WORKDIR}/build. But I want that the generated data should be in ${S}.

> Is there a way to tell do_configure to use ${S} and not ${WORKDIR}/build.

Sure set
B = "${S}"

Though, I'd rather suggest trying to get the library to build
out-of-tree. If you can get that going, it'll be better in the long run.

Cheers,
Anders

-- 
Anders Darander, Senior System Architect
ChargeStorm AB / eStorm AB

