Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f51.google.com (mail-vb0-f51.google.com
	[209.85.212.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53D85E014EE
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2013 12:39:16 -0700 (PDT)
Received: by mail-vb0-f51.google.com with SMTP id x19so747996vbf.10
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2013 12:39:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=adO1Wes2O+ZrhcKFF+Vh5SWwoBwVGoYStO1f73plDds=;
	b=J8R//3W+aS9CKrSQNA3uFE8uhgM/m1PZP6TfKvgGaefMPu3342AnQwlAPuvvX+JlBE
	N7GaKBkhDigyKkcaG+4lriFbojh6JV+lybFBO6PWfYhMr8mDRmV60iH7ITUSBZEchjXm
	6LZPHEimV/X0a3JKUDjJzu8QQ9cxB/aRWMaW/3Zilbththk2TPYgSrBqo280hnoqbKlr
	gLhr7V5xxo/e/AgOcVXlUaLhx9PwhEhW4rEP4h+tRf3Jnx9gyVtYYoAgMzMXiJAmealT
	L0DXUCZ2tSOpoKhlzweY7STux0L6KwcpEWAMnV2sSfesUzA1Usn87YWrLInlinvSgsOE
	mSqA==
X-Received: by 10.58.214.231 with SMTP id od7mr2384491vec.44.1365017955147;
	Wed, 03 Apr 2013 12:39:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.134.74 with HTTP; Wed, 3 Apr 2013 12:38:55 -0700 (PDT)
In-Reply-To: <20130403191633.1B258E0156B@yocto-www.yoctoproject.org>
References: <20130403191633.1B258E0156B@yocto-www.yoctoproject.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Apr 2013 20:38:55 +0100
Message-ID: <CAJTo0LYymFpkCN_rfPBWOfS1_cyZ1-WyHtZSYz2G2Mq+TfUn7A@mail.gmail.com>
To: "Saridakis, Dean (US SSA)" <dean.saridakis@baesystems.com>
X-Gm-Message-State: ALoCoQk6Bn0nqnXIIG52xxLcZZahHMTSjbTv7bku5Y5izp1bO1J4B0jj2A+wMbXIB2JRxbqpCbVZ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Easy one: fetch fails
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
X-List-Received-Date: Wed, 03 Apr 2013 19:39:16 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3 April 2013 19:52, Saridakis, Dean   (US SSA)
<dean.saridakis@baesystems.com> wrote:
> from
> "git://git.pengutronix.de/git/tools/canutils.git;protocol=3Dgit;tag=3D${T=
AG}"
>
> to
> "http://git.pengutronix.de/git/tools/canutils.git;protocol=3Dhttp;tag=3D$=
{TAG}=E2=80=9D

Don't change the leading git: to http:, as then you're not using the
git fetcher anymore.  You just need to change proto=3Dgit to proto=3Dhttp.

Ross

