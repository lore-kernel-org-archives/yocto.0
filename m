Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04BAEE00BF7; Mon,  2 Apr 2018 14:12:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4D73E00873
	for <yocto@yoctoproject.org>; Mon,  2 Apr 2018 14:12:22 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id m134-v6so20515549itb.3
	for <yocto@yoctoproject.org>; Mon, 02 Apr 2018 14:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=xsiaP/l380b4fr9R5q4Ms/4kb8N4IK+baSXei7iLxjU=;
	b=pq86KEr9a8uKgZR/qP83cKjYRvSKsdaO6J47t0ggF9r751e5ivK98K8GN+tpDXP8To
	aXnK+b6TmeOEaDc7oy1iZX9FHwhVnHHi/qEl5i3UC7Pz/e/PlHrXQeOnHx1Ae90wK9SI
	x84S8IVh6jaDgiqEMyNXhAKKFlRGNANduVWa/IeY1OvaKan8hGRes0nMs6KixLUdGbap
	94Bf3odT6HlVH0wosdP+H4ih+Rtx6wedoLxy+snnZrqQ6mN257rMwrrk/LTL1BNjAyQZ
	KHBRZrqAR2Hna9MDenEwgaoo9c+5KVquyIY9CR47k9FPOKhy4n3Q7lEfyzYkPhgG9ZIG
	4UZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=xsiaP/l380b4fr9R5q4Ms/4kb8N4IK+baSXei7iLxjU=;
	b=oEn0SPQO1OnmOqJvuaKq5hWFXqjpotgzvSYqYrFCvSXlZPICIJ/0v2uQCFnG8G368T
	p8Q6Z6y1DH7QBaTP0y+BSRS6rPE0+yZfWROfZTEbO/iqXij5YOYFU9Wn1aGnGpsnc5p6
	NEOUdYug7YoQOxLF+SWuSiPaADv2q0IeAWs/rhAsWwNWEKNgQ79U2XAT/k7xF3l8pFKh
	hbEEYBQMupDR/FuiHN45RfbWcIxirNM2/oeSGK5ZcLQJ2KTtuvakiNV+lBVsQkOd9AXZ
	DlsXUqpoY8xS8paBvwIB5nAwqVYOwctoMKNz6+N+lTxkgABmfjFphH7tltZjEPsuLEmS
	QDTw==
X-Gm-Message-State: AElRT7F/lKNOylUMj969PYpytctRYNpgRIxiMLKawkJtoMKybngIXuZE
	rr4PzkrsyzR0OQwnW9gClPs=
X-Google-Smtp-Source: AIpwx48Gv7k6uLaJDPGpe6vrzpudU/sNdPcyD/qD/EWZACsUhYparnUz7YqVmDucTZ5g32qq0s2gKA==
X-Received: by 2002:a24:9987:: with SMTP id
	a129-v6mr2504743ite.124.1522703541718; 
	Mon, 02 Apr 2018 14:12:21 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id v7sm580727ioe.33.2018.04.02.14.12.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Apr 2018 14:12:20 -0700 (PDT)
Date: Mon, 2 Apr 2018 17:12:18 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@gmail.com>
Message-ID: <20180402211218.GA28631@linux-uys3>
References: <CALbNGRRaocTSP5c0SsvUgPWxV0uMw2BBHD=fv5W1nCLdDC3FQw@mail.gmail.com>
	<CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRTBhbEZNPffkPMK1AqsvU-v055mSC=GVhgZzptDc=eb1Q@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>, Daniel Stone <daniel@fooishbar.org>,
	ML mesa-dev <mesa-dev@lists.freedesktop.org>
Subject: Re: [Mesa-dev] VC4 not working for me with mesa 17.3.7 - was [meta-raspberrypi] VC4 not working for me with mesa 17.3.7
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
X-List-Received-Date: Mon, 02 Apr 2018 21:12:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Even without the patch, simply adding:

	PACKAGECONFIG_append_pn-mesa = "dri3"

to my conf/local.conf has glmark2-es2 running, and chromium-x11 is running
accelerated out-of-the-box (i.e. I don't have to install the egl/gles
libraries it builds itself).

I'm re-building my rpi3-64 image to see if things are better there too under
vc4.

I guess the patch is to address some of the other things you were seeing?

