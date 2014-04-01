Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89E8DE00C53
	for <yocto@yoctoproject.org>; Tue,  1 Apr 2014 02:52:41 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 01 Apr 2014 02:52:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,771,1389772800"; d="scan'208";a="504211705"
Received: from mmckenna-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.155])
	by fmsmga001.fm.intel.com with ESMTP; 01 Apr 2014 02:52:32 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Andrey Telepin <systemcpp@mail.ru>
Date: Tue, 01 Apr 2014 10:52:31 +0100
Message-ID: <2484286.PxjcV5vpH4@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.3 (Linux/3.13.6-200.fc20.x86_64; KDE/4.12.3; x86_64; ; )
In-Reply-To: <2636868.FdafsGWpEz@atelepin-nb>
References: <2486851.ASaRMk8FDl@atelepin-nb> <2636868.FdafsGWpEz@atelepin-nb>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 01 Apr 2014 09:52:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 01 April 2014 14:29:58 Andrey Telepin wrote:
> On Tuesday, April 01, 2014 13:54:45 Andrey Telepin wrote:
> > QT_QTGUI_INCLUDE_DIR
> 
> SOLVED adding -DQT_QTGUI_INCLUDE_DIR=${OE_QMAKE_INCDIR_QT}/QtGui to
> EXTRA_OECMAKE

It's a bit late, but I'm thinking maybe we ought to have a cmake_qt4 class 
that just does all of this for you (as meta-qt5 has cmake_qt5).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

