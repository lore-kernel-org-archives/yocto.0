Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0738FE00AD5; Fri,  7 Apr 2017 04:53:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.17.10 listed in list.dnswl.org]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 581D6E009FD
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 04:53:07 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue103
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0Lwnl2-1c3TBK01CC-016NDW
	for <yocto@yoctoproject.org>; Fri, 07 Apr 2017 13:53:06 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Fri, 7 Apr 2017 12:53:05 +0100
Organization: LN Systems Limited
Message-ID: <015601d2af95$84d316a0$8e7943e0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdKvlQj18HdIjjDdSdORbK+FJVwY9g==
X-Provags-ID: V03:K0:aS9TfxsKnPTY+7r6vRuQt75U811Fe+LOTKx6OyTdvEDqc1Oshsu
	hSTZDNJieOHkgm3L7xvBzjiWCUQQRB3o5S3j/XGodw/EU/Z1Vo+kL7BK6eqLgcnsLz/KWL2
	8Tb+iPmU/ZvroClcnMKVR54eUkrQWE3GYa6xSNi4HkbB/9Wpf7Ao8LoVkDZ1WMLWBwgnNC0
	N4OY4oMICBkYnRGB+xuNw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:Xt0cCf3Td24=:58QpoyhL/8GSIWWQlCSf8K
	qX7M8mcmj5q+PBi0sOuAJFqpiohpPnfEP/pf2YU91vZJmxuy14ppiREW45UHJ0yN+nyAwV3mg
	6QzXwtHTFE7d4kp0plF+Qo6+7xtJhDAoGuMPl2lYnMyrzwPnk8Zdutdx0uDM/24qR4JmKh1T9
	RnW/S0TXvJ8fIPXbg6aNxbMOyR6GdILGLbZUjGlj4zjYPvQhbmfXAfC70iXYqrAtc0oM7TrSw
	SzpYcHeeMKkRZplWqiMx/nEUKJTNR1fbL64Uiyi9ZYQgyUEa5Q/bQvH7HgciGGmukW32Ogbbs
	u5UM6mz4cqbjvXQoqrcpm/nq9WtH2hD6+eLGvHAuysmpuEzHjq2yerrd00WzYf3nY53LfHHVJ
	QL/uQmlsHyvP0bJ2ajcbaFw/yNC9UoWDTOvQzKg0v6gitHU0rt8iEFXGIROOrThC58iZugZHW
	lXNcIQLgTxxMLKiXfF6OKU/6KK0YvLbnS4HaE8i5EacLJ2tFMmlbyYuVoIwhs4Syyg9OZEfWA
	v6xC4ByOnxNwHdOkA/wXWXt+oWT2rqkCq/H/MnIe69xe7W3yCcSLTlWMLf7wYrfxuPzzJyCNm
	91FdAvo/asCg8b094Pb6hG9VLEkxJMTXWbbtq+rsR/6JL4PHPt5fDZUt0stNfP1ltcRnxtaUh
	qeiQD2K5rAZOPuVNRJYSvsfQDR0XCbeox94crXCZaMj/PFggMHvd2m6nGYC87zSQ+cqX0U0Pv
	craQNDCMcT6hbw4r
Subject: Remove/prevent a package's installed files if another package present
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Apr 2017 11:53:10 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I'd like to do a mod to my ppp recipe such that ip-up & ip-down aren't
installed if another package is in the image recipe i.e. set in
CORE_IMAGE_EXTRA_INSTALL.

I guess I could do a do_install_append() or a pkg_postinst_(), but is there
a way to detect the other package within the recipe? E.g. along the lines of
what PACKAGE_CONF can do for configuration.

Oh, and it needs to work after an update (e.g. rpm/deb) - don't want the
files (re)installed by the update. (So I don't believe
ROOTFS_POSTPROCESS_COMMAND is an option)





