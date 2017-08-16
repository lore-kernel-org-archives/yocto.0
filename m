Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CF281E00D2E; Wed, 16 Aug 2017 07:46:59 -0700 (PDT)
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
X-Greylist: delayed 454 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Aug 2017 07:46:58 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.17.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EA07E00C1A
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 07:46:57 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue102
	[212.227.15.179]) with ESMTPSA (Nemesis) id 0MV4iD-1e5JXF0xll-00YQay
	for <yocto@yoctoproject.org>; Wed, 16 Aug 2017 16:34:20 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Wed, 16 Aug 2017 15:34:19 +0100
Organization: LN Systems Limited
Message-ID: <037a01d3169c$bf3c0f90$3db42eb0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdMWm4aAwsOl6PQASCabhMR7Beknjw==
X-Provags-ID: V03:K0:ByS7wOiJ3AV6I+NA3jOUvZyCx3X4mXO/D0ZYFhGARUmtfRj4B6e
	cV4TvZ/vJ/lC3JSCyB+HRUbAP4mz3KDi6LPfXaARfp8W2BgmZYAcHFzW3MxXMG+K1yQHSLd
	C7Yy3L6jRwNRvvqu/la//ZNquCGZwpgUmskuFEFBC1oGgQ3SgBAG2+IC5SeZU1GfpFzdAF0
	gBoscfI7PzEZrQ98t9iCQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:BCgh3T/v9DM=:ZSw0+qkbHMEzMbP9qqhfsK
	/ZasI7gYiiP79DAOVKq4hIJdvSAvbBKWiVHwjMqu7SLjdhLIjI1d5Yg5rSV/rGSC+gEM51lJ/
	yqDg6GR6bEiNfZFmU07YwWgCU7vSvHnJEJi7/F1r1fzqVLiaCx5DKAlwCI0ynLFPUIA65A9v1
	KrVtl6bvdQFFF0uA1xBYvoNKhGK9d6jpEaGDAe7fEGOu1UctJrQaX1yUz/c4SVAB9Ox09fNLX
	Tt4QxP7wxJuW0VNi3HBO0swr4Rw+Rf9xzjbPvYCRmFI0dSIoBxWbM3iTJNH3XDFSycorFAcuO
	CSwjSOU4oiHNM3JDtStF+BuQ+Ez7RqN7xkGiW9yU2l/BnE01og9HE+/42iNMXL3qUS1iuJ+Bt
	5t4AOzXeh0dgZ9plvjTT2T7OnqRtX1s8NlU6kFzNDrspvEdW0tR5FYhwLgokkw+F+e0QC6bQh
	Q8NGYYT+vANF8j9ICe71Ej4O/P3fJNbMyvs+256uHHugl1dSfEWryf/e9eUkdqTEQbKI0YDWF
	GElOt9BptrgHF3tDBaxrDowdqqI7byckvkD83AWoxK7I0ufYZ4r4r9t9Ik+i8hMMNSFIDNZYy
	DZh3wuvg/U1HRaCrgERtE3y+KejwBblsFV0IgR8X7QKzIncw6b7r1RWy8Yk8tpFCKQ42LmP8T
	/LwRt6w+R8MO+TLnOiKPm5tRIPc3BdubTIqXVSFCCPTRDtf6B63SCmCAucBj4LPCCxsAsyZeC
	Fmy9Jh/lTzstJpLwiRCdvE45VAgMksitnvFyG0FgGV36PmXulPagUaTngFU=
Subject: Building multiple U-Boot configurations
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
X-List-Received-Date: Wed, 16 Aug 2017 14:46:59 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

Just wondering if there's a clean n simple way to modify machine/recipe
configs such that I can build two versions of U-Boot - one for development,
one for production. 
Obviously I'll need to watch out for which one is 'deployed', but unsure of
a nice way to get two built - separate recipes which pull in the different
configs/patches? 
Any gotchas I'd need to be aware of when it comes to the interaction with
the rest of the image generation; or would it just be safer to take the
approach of having separate images? (That wouldn't be so usable, since it'll
only be u-boot that's different between the two - I'd prefer to get both
generated from a single bitbake)




