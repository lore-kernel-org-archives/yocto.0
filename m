Return-Path: <lists@philipp-wagner.com>
Received: from turboconrad.planet-school.de (mail.planet-school.de
	[194.116.187.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5AF40E005A3
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 12:16:21 -0700 (PDT)
Received: from turboconrad.planet-school.de (srv004.service.ps-server.net
	[194.116.186.79])
	by turboconrad.planet-school.de (Postfix) with ESMTP id 00BF9B6A00D
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 21:16:17 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	srv004.service.ps-server.net
X-Spam-Level: 
X-Spam-Status: No, score=-101.0 required=5.0 tests=ALL_TRUSTED,AWL,
	LOCAL_USER_RULE autolearn=unavailable version=3.3.2
Received: from poweramy.site (ppp-188-174-75-98.dynamic.mnet-online.de
	[188.174.75.98])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: mail@philipp-wagner.com)
	by turboconrad.planet-school.de (Postfix) with ESMTPSA id C81D3B6A00A
	for <yocto@yoctoproject.org>; Tue, 10 Sep 2013 21:16:17 +0200 (CEST)
Message-ID: <522F7000.5030103@philipp-wagner.com>
Date: Tue, 10 Sep 2013 21:16:16 +0200
From: Philipp Wagner <lists@philipp-wagner.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
References: <522F013F.7070002@horus.es>
	<CAAA4K6JvKPBSUZAwYwUVFCj_n64B-L1N3xN5cwuUs4Cg6ijPNg@mail.gmail.com>
	<522F5635.3040803@horus.es>
In-Reply-To: <522F5635.3040803@horus.es>
X-Virus-Scanned: ClamAV using ClamSMTP
Subject: Re: Add new module to recipe + meta-toolchain-qt: add gdb
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
X-List-Received-Date: Tue, 10 Sep 2013 19:16:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

Hi Jose,

Am 10.09.2013 19:26, Jose Mª Ferreiro wrote:
> We expect/want to have a gdb compiled for the host machine at
> /opt/poky/1.4.2/sysroots/i686-pokysdk-linux/usr/bin/
> 
> QT Desktop mode is starting /usr/bin/gdb but using the /opt/poky...
> directory as PYTHONHOME. We think if we have our
> /opt/poky/../usr/bin/gdb and we tell QT to use it, it will avoid ths
> sys.lib conflict.

To debug your desktop application, why do you want to use any of the
tools from the SDK? You can just use the system's tools (e.g.
/usr/bin/python with no PYTHONHOME set)?

To do that, just start a new console, do *not* source the
/opt/poky/1.4.2/environment-* file. This should give you an empty
PYTHONHOME variable and an unmodified PATH, so you can just use the
regular tools on the desktop.

Philipp

