Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64773E00A4F; Thu, 30 Mar 2017 23:06:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.133 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 013DCE009CE
	for <yocto@yoctoproject.org>; Thu, 30 Mar 2017 23:06:31 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue002
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MLnrn-1cu6oo3Eix-000uWQ
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 08:06:29 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Fri, 31 Mar 2017 07:06:29 +0100
Organization: LN Systems Limited
Message-ID: <061b01d2a9e4$f065d990$d1318cb0$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdKp4z3bW0GQtIFcRJSiHPRbXFCdGg==
X-Provags-ID: V03:K0:FXxv6VN2xBstiaHIYxf3KlXwv1fGPebwHSxkfQEweRBsfJBcXBj
	4PgyYHiWkQAUjHnQ343uNnBQKN+dbPNsry/DtC9t9z0Cp1QcP8BOC13igM+hUBUinjVAK3+
	zhBt4Q+wIZcTPR6C48mFd9z0QpQMJPS6i3ymMnG1ohdipvhTnaCxvMb19EYeVRPuqFhyG6Y
	fSPoilVGWX25fXbu4bJYg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:gLLdT52Xf00=:VJ8WArN1KtL7yD86gIGldr
	1r1t6MTPutmNl5A3K+2I6imjDzak2AiJcgsvpKgZGWt5byHuhc01HO8sjgy7uyQeb013NUMPL
	KYk3nS8XA2KUn1Z8sBo6izQqwGeez4MCvuvtcxmi6dKKM6PVPgyUDms+wOsVqkbaEJcXLDcTh
	6+qPc2AK1kwTJrU9Y2othE55fojw4DLrP+6yD5aHd9qXtTDEn09BK963bIzr/OeU0cSXgnwA7
	UdT2+RIiXyLO4p5Ip8Xv5lxBVtfUx1OOIAkzOpf+20RR6Uu0h+jkw4z5v2/+ba7XSye7pj96l
	StrWeBhTjVN6RI7SUuH+s2m45S856zEooEdFFuwH0u4rEbbNXGOFnND4YBOKjPrmFUNiyw1k2
	SuU3l8lpgzZsAYgEG60/93yU4LvTHYFd+xTUolkZtQvYipjsVkmwZUFGGHTjYCj4keOcW2z2b
	a0DoGo8FCuGi2TwMSdsgx84PWFyhyCGQumVuwkr9cxX3N3A7iNGsVwgWZ+d0zBQUTp2NL8sl8
	zktUmHF92VsC7pvXXIOLJ0f9N6tBcavV/T+czXC8TAApq+JPWBRoaOUBFS5YEis3HrBo3Vzxj
	0mkLCJmeEnAqKaabbbba4Z/Rilk2hhdPW2Cf3L6G0Hn4FE6Tb7jyqT/SP3huUtcqqEyjtrKoD
	g6j8YVKoD0faHFOXhtS2z7KifqiQAemqqh2LMS43ITNnd1yZitLFhvmUVnGeWz2cu0o2l0kGG
	kuYvQ4N+MnOK79Lm
Subject: gobject introspection needing pygobject (cross-compilation)
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
X-List-Received-Date: Fri, 31 Mar 2017 06:06:35 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I've got a few packages in my image which need gobject introspection.
(x86-64 host, ARM target)
One is building fine, but the other - NetworkManager - is failing to
generate the introspection data because it can't analyse the cross-compiled
library. Apparently it uses pygobject in doing this, and thus needs a
version of that for the target architecture.
Are there steps I can take to achieve this? I guess it needs some 'qemu'
technique as with other the G-I support mechanisms?

(Currently working with Krogoth release)




