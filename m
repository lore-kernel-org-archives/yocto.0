Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DFEBE00872; Mon,  5 Nov 2018 03:14:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.169 listed in list.dnswl.org]
Received: from mail-it1-f169.google.com (mail-it1-f169.google.com
	[209.85.166.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA3D1E00754
	for <yocto@yoctoproject.org>; Mon,  5 Nov 2018 03:14:37 -0800 (PST)
Received: by mail-it1-f169.google.com with SMTP id j79-v6so40364itb.2
	for <yocto@yoctoproject.org>; Mon, 05 Nov 2018 03:14:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=5+ORzBUd86sr0QSHm1EQ7hKh0sIMfFbGLrwr0S6yMd4=;
	b=Wbm938Kd6wE7dPwIfZSpI758Nhw+WZ280Rzu6covlWa6637n5HDZJ5kJxbCCS/4Ow+
	6T/Xvh8BeFcElCG4E3gOFRScaZk+qqgENFcpD8m3DDtISAd8wjeVoFU/rftTjfWHg8R/
	bk3dt8h4dneDEcLiDDmJrTwJQlfqID1WpHQxvJBiRmWkWv9TqTAqh2K6QuvYkhx9bzmD
	sQ5nLToEUWwjC1HTmYGocPJHjznAf1VpuaySYnuGdRzq9fXGFnF3/Qh9w1P9NFaT/Aq6
	b2mzZjPlBvL+NAL4h6yuqa6g6KTf/DmOEFsSZGR1k/f8lSk6aWWLyUZ2OnYKh37Saom2
	V+3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=5+ORzBUd86sr0QSHm1EQ7hKh0sIMfFbGLrwr0S6yMd4=;
	b=P5bGBhpg5YQgYNub86GQ3iudNPEtM6D6PZdLRmSBN37uSfAHeaPSJLdb8jI3Lg9sVp
	U1FuJ8h7zDTng4jHlgWvofdRKQFjMmudYXwyGAflTOP/0xCWxWrsfy2yEHcX5ge1aR7o
	zG6U5GGPZaMnQ89YBCXVfeFA6uobm4MDJzHtD3N7YtGGCz/69Nlus8wDrjcA4dxZg0pz
	WuQnEVtAUFknwMM+pGW0giMsFgsu7c6rXLO70Fx+0dZwuv/4UBh41YvKVgINgYVY1UY5
	THxxWe5dkLQLdQk29MLd+76vEqAhWzc2p5vyVkW32/L1PHbRrJi6e3x0xBcQenGq5DAN
	C1/Q==
X-Gm-Message-State: AGRZ1gJxFLFDidBdP3JXbvhJFV2pMzymsZeUDTntqpobmpuN+p3C8gPN
	U9uK8Kb29AX0xJ12D7YoyoUVT+bo8YwiKMHmacl9Uw==
X-Google-Smtp-Source: AJdET5fh86VMfHGMOafvgNLKi3ySldAnrPvUOrBTWP7XRQki3Q97US8/QFE7kQ/rOE4no9VS6o9++lHiVjLGidfIbJ8=
X-Received: by 2002:a24:36d2:: with SMTP id
	l201-v6mr6865140itl.130.1541416477386; 
	Mon, 05 Nov 2018 03:14:37 -0800 (PST)
MIME-Version: 1.0
References: <AM5PR0602MB2802B8C31D3325291398D156B1F00@AM5PR0602MB2802.eurprd06.prod.outlook.com>
In-Reply-To: <AM5PR0602MB2802B8C31D3325291398D156B1F00@AM5PR0602MB2802.eurprd06.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 5 Nov 2018 11:14:25 +0000
Message-ID: <CAJTo0Laq4P3CcHZhZ8TBOjSLXZB4153V8zE9-JpdT5+JDJM_Eg@mail.gmail.com>
To: radoslaw.chmielarz@leica-geosystems.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Moving to Yocto 2.3 - recipe-specific sysroots - improving the documentation
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
X-List-Received-Date: Mon, 05 Nov 2018 11:14:39 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 30 Oct 2018 at 07:05, CHMIELARZ Radoslaw
<radoslaw.chmielarz@leica-geosystems.com> wrote:
> We have a custom recipe for openssh-server which among other things had a line:
>
> EXTRA_OECONF += "--with-ssl-dir=${STAGING_DIR}/${MACHINE}/usr/local/openssl-1.0"

Note that the documentation barely mentions STAGING_DIR and mainly
refers to STAGING_DIR_(TARGET/HOST_NATIVE), if you'd used one of those
the migration to recipe-specific-sysroots wouldn't have been a
problem.

Ross

