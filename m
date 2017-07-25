Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E698FE00BC0; Tue, 25 Jul 2017 07:08:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.187 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.187 listed in dnsbl.sorbs.net]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CA36E00B76
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 07:08:50 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue005
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0LnWsk-1e5URr15VG-00hdeN
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 16:08:49 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Tue, 25 Jul 2017 15:08:48 +0100
Organization: LN Systems Limited
Message-ID: <097a01d3054f$89a3b940$9ceb2bc0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdMFTZWYtpb2c71ZQhGuKYnQTxTKlw==
X-Provags-ID: V03:K0:jC4Bz81oEiE9JPCB2aLWsFw5CBlUgpnZUJyxjJk0WQBtkArdzcr
	XhI6t1K2CUuCRkZc8yBz0pdW8T7A5Xcq4a1hIV3hfsxeQK8KOUSHuoihAOYUl9zohazR0dn
	HN4b1B5zj8hqCB2HOBXtdEuqSennD/OzMqdxJGOLiNj/izoVlyLn8injbmBvp4cWWyPY7qD
	7Y3gilePd7Aw0EIrkaTTw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:e/OfG2CA/Yk=:rwjSTaBvTxqrxc6AQ9i1iU
	gu3QOJ9biTlZld8L6muwJJKVNfhDmDWe64/rjj3QFHMOkWsgCvnyaCU+XyBVpR8ioOGLsJqKV
	xVq8XCZNh9s0fpjSnytUKQccptEevoa3/UPxObxKfDlW8QPD3DjWNzBf6sidl4PeusuYNskfn
	+zTHC27xRZcK/+LLNO+ZWoyZQ7ZlxY7redXeJHM4xo5SGhQtCZ0Ob8RJzaNEayEkaXYuKHtQ2
	VymLKMc++CB3GABBnSrRGFdvZ5h6nNxjSria/SubZK1vUUMQb5cuOiNQza62hmTyWmrYrQyc9
	wDc7rrtCU68B4tmc/mskHkQfc7T5NMngMde3NhjlqzIfno/zuKQ6qwRteEzaTCPa5k7qqiYj3
	drAkgNRXMcaq2IRLOCwvYlhLXUP3jhAok6Gxmt2no6F6IC5Df1iPIA4lB810mbCBfzKqPf91Q
	Tfe+9pKFp8Z2OIhG1ShkpGWY3V5FI3du8F4J/0XoETxU5k3UCCoU2NCQtLSwZCc17VnUTG2sO
	Se6x9GPMCKJLpWes9+MyxqOsjJldwizi9fFYTEfFN9muDDp1HQ9LYnRFG65nK6EfLBBgcm2df
	A6hgTZ0oAEeXTMsG+5RpvER/Cvjl94iBa7SwCBhNQ0b6G1mvhkjEiyLsbI4a4ugJAX4qSwoQ/
	N9DvPJrG9vx6SQNbBQXu22BkHf+Kkux000OU+AQNo7OiGqFmDjNhRzF9p3h5TkEly/cCvfWot
	2nNjcdah8uN8SbeAywQYHj+hJ5kqilPlJvq17mJsHwAd7P6S3lbVZSFMbUE=
Subject: Problems with 'configure' on own recipe [after moving to morty]
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
X-List-Received-Date: Tue, 25 Jul 2017 14:08:52 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

This is gonna be a bit of a hard one to describe concisely, but hoping
someone can advise me on solving it....
I have a recipe of my own for an app (NetworkManager) which fetches the
source from its git repo. This recipe works on krogoth, but is throwing up
configure errors on morty.

The recipe has a 
do_configure_prepend() {
    ( cd ${S} ; NOCONFIGURE=yes ./autogen.sh )
}
  - I seemed to need this because the git source has no ABOUT-NLS; not sure
if that's the correct fix, but 'it seemed to work' before. 

The final error is
| DEBUG: Executing shell function do_configure
| ln: failed to create symbolic link '/usr/share/doc/gtk-doc.make':
Permission denied
| cp: cannot create regular file '/usr/share/doc/gtk-doc.make': Permission
denied

I'm not sure why it's trying to make the symlink in the build machine's root
(as I say, it doesn't do this on krogoth)

I'm also getting a lot of:
| NOTE: Skipping setscene dependency
virtual:native:/home/colin/100051-trunk/fsl-community-bsp/sources/poky/meta/
recipes-devtools/pseudo/pseudo_1.8.1.bb:do_populate_sysroot for m4 macro
copying

  - not sure if this is relevant/important

Freely admit I'm no autotools expert, so any suggestions welcome! Thanks




