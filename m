Return-Path: <pascal.bach@siemens.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49965E00CC1; Tue,  1 Sep 2015 07:29:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.35.17.14 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 458 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Sep 2015 07:29:43 PDT
Received: from david.siemens.de (david.siemens.de [192.35.17.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF90EE006D5
	for <yocto@yoctoproject.org>; Tue,  1 Sep 2015 07:29:43 -0700 (PDT)
Received: from mail1.sbs.de (mail1.sbs.de [192.129.41.35])
	by david.siemens.de (8.15.2/8.15.2) with ESMTPS id t81EM3t2014399
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK); 
	Tue, 1 Sep 2015 16:22:03 +0200
Received: from [139.16.78.24] (MD1FZU9C.ww002.siemens.net [139.16.78.24])
	by mail1.sbs.de (8.15.1/8.15.1) with ESMTP id t81EM355031359;
	Tue, 1 Sep 2015 16:22:03 +0200
To: Caio <caiortp@gmail.com>, Yocto Project Discussion <yocto@yoctoproject.org>
References: <CAJqtCyYTZ_X-xNZTCxMJDE2QnvTxp=RW3bCUwa4uVAVQOT7huw@mail.gmail.com>
From: Pascal Bach <pascal.bach@siemens.com>
Message-ID: <55E5B48B.7030309@siemens.com>
Date: Tue, 1 Sep 2015 16:22:03 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.1.0
MIME-Version: 1.0
In-Reply-To: <CAJqtCyYTZ_X-xNZTCxMJDE2QnvTxp=RW3bCUwa4uVAVQOT7huw@mail.gmail.com>
Subject: Re: [meta-qt5] Missing qt5declarative rootfs
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
X-List-Received-Date: Tue, 01 Sep 2015 14:29:50 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

>
>
> my package group
>
> packagegroup-qt5_0.1.bb <http://packagegroup-qt5_0.1.bb>
>
> SUMMARY = "QT5  package group"
> LICENSE = "MIT"
>
> PR = "0"
>
> inherit packagegroup
>
> VIRTUAL_KEYBOARD ?= "maliit-framework-qt5 maliit-plugins-qt5"
>
I don't know if you can use IMAGE_INSTALL in a package group.
Unitl now I have only seen RDEPENDS_${PN} used. IMAGE_INSTALL is normaly only used in images.

> IMAGE_INSTALL+ = " \
>     dbus \
>     qtbase \
>     qtbase-plugins \
>     qtbase-fonts \
>     qtdeclarative \
>     qtdeclarative-plugins \
>     qtdeclarative-qmlplugins \
>     qtmultimedia \
>     qtmultimedia-plugins \
>     qtmultimedia-qmlplugins \
>     qtserialport \
>     qtscript \
>     qtgraphicaleffects-qmlplugins \
>     qtconnectivity-qmlplugins \       
>     qtxmlpatterns \
>     qtquick1 \
>     qtquickcontrols \
>     qtquickcontrols-qmlplugins \
>     qtgstreamer \
>     qtsvg \
>     qtsvg-plugins \
>     qtimageformats \
>     qtimageformats-plugin \
>     "
>
> RDEPENDS_${PN}= "qtquickcontrols-qmlplugins qtdeclarative-qmlplugins qtdeclarative-plugins"
>
>
Pascal


