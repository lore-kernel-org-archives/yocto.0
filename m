Return-Path: <systemcpp@mail.ru>
Received: from smtp53.i.mail.ru (smtp53.i.mail.ru [94.100.177.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D6AFE00C53
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 01:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mail.ru;
	s=mail2; 
	h=Content-Type:Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From;
	bh=TqGXw5ViKubiWWfdBqZJkgWB9GV/1b5nSY3utix4oP0=; 
	b=oraFWuNzjMUd6Z78st1JyhtLbmevItY+saPpTaCQm39VoEyJmvPQoT2p3Zvi+MFIw41L240PmCwhTz4ZGWEGMaVVMD+ddXgugzAf2r4tmsqLX+DdwV/Xd3l7Nr344pNRkhE7o32PMLGjyJ6ft8RVhxFTSIZLVIDu2BzO9GfYTTA=;
Received: from [213.157.36.206] (port=55443 helo=atelepin-nb.localnet)
	by smtp53.i.mail.ru with esmtpa (envelope-from <systemcpp@mail.ru>)
	id 1WUu55-0000dF-QP
	for yocto@yoctoproject.org; Tue, 01 Apr 2014 12:30:04 +0400
From: Andrey Telepin <systemcpp@mail.ru>
To: yocto@yoctoproject.org
Date: Tue, 01 Apr 2014 14:29:58 +0600
Message-ID: <2636868.FdafsGWpEz@atelepin-nb>
Organization: Home
User-Agent: KMail/4.11.5 (Linux/3.11.0-18-generic; KDE/4.11.5; i686; ; )
In-Reply-To: <2486851.ASaRMk8FDl@atelepin-nb>
References: <2486851.ASaRMk8FDl@atelepin-nb>
MIME-Version: 1.0
X-Spam: Not detected
X-Mras: Ok
Subject: Re: qt-gstreamer configure problem
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
X-List-Received-Date: Tue, 01 Apr 2014 08:30:09 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday, April 01, 2014 13:54:45 Andrey Telepin wrote:
> QT_QTGUI_INCLUDE_DIR
SOLVED adding -DQT_QTGUI_INCLUDE_DIR=${OE_QMAKE_INCDIR_QT}/QtGui to 
EXTRA_OECMAKE

