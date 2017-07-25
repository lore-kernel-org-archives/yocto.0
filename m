Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 050B1E00BFD; Tue, 25 Jul 2017 08:00:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.134 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.134])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E591CE00BBC
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 08:00:57 -0700 (PDT)
Received: from oxbsltgw13.schlund.de ([172.19.249.30]) by
	mrelayeu.kundenserver.de (mreue005 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0Luphl-1dieDB0ns9-0105xs; Tue, 25 Jul 2017 17:00:48 +0200
Date: Tue, 25 Jul 2017 16:00:47 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <754678217.203078.1500994847726@email.1and1.co.uk>
In-Reply-To: <CAJTo0LYTp4j9kGBqtPXT6X+Z1JZUWJRrYmgUe8GU8DtPKcPNkg@mail.gmail.com>
References: <097a01d3054f$89a3b940$9ceb2bc0$@ln-systems.com>
	<CAJTo0LZDPfqeZhpg1uZ+s5tis_rPj-MN6D1jFc76aUA02LmSZQ@mail.gmail.com>
	<838512139.316467.1500993599795@email.1and1.co.uk>
	<CAJTo0LYTp4j9kGBqtPXT6X+Z1JZUWJRrYmgUe8GU8DtPKcPNkg@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.2-Rev34
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:LNZj6WUG6qSSuSnmnPlHtM8jPhNz6HHHtbBKwEyxFXlDwplYPWH
	Do9atWUzBICAXseMG0Pn9BuIcSpo+TI8FdqBN1D04iN91jFFeHHDY9+XcCAkgnBJTolKEyk
	Zf7EuskuXUwPS1HWGANxZRAWUniOhG80HAOvQelfXrakhDpTvwv5Cl2Fv2DEM9mu6PFxA74
	bakxPs00VB10jAbklvbYQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:CicteygsSZw=:NTJ5EWeYpqSUH8HRYLk/f8
	JG07ASzluDxVGc/g3+0eyA4R3dQrU6nytQVyoINkGnfG0V8dZpL1JWRLU5lilKcDS88hhZj8M
	lSL8aTZKJc0WivugqV+ygrV+W2Ly/2qxu1eW5vV47UBdNMtet8QmaNrGVmbN/mdV+Wv9GkGTX
	tB4TMVbRvUVyA7PwLt0ks3cRm9TP/VPiB2p/IWOIxUZ9lyaixr6V8QrY1Y/rB5qlLOOTFh/yI
	2Xx/SRPSOM4yCf2Dl3YDBs3bPoF0oFMmTYlxX4Un433bgNAZKUWXC/jj6ylVl/u3exdTAaow/
	8AzLlXJxEazF3kHlVyoyb8lsVIhLrXr6c+wmNmlmdObauaH5JJYGEQfoMuJzHA4jkGNVY9s4E
	26p3EUVIhFX837NsrHut0ss3wmXgNQQkF013LbS3aUL91l6RBTXbe0KBzM0YCsM7jTcj5MkKW
	E1kZeNMD+CDw50s600UhKbnigWOryivvribMsmr+masA4UObyrMrxPQJlsB6ISBzjRnIQfOeT
	l5OrgmKdB2wt6wiHrS+iAw0ZCr6ji6sQQ4EgmmtMAyDb2nhlfDXNJXJrpCcbVps36XzdnAArq
	EAkNVbUf8iWNT4JdD5evc5oVLfDpbRrVKpUAbYpQA+h2PNuXZuppZoJTUoFKhegLNrdYzggFA
	068zIhvDf+39sKJfGrBnTE3n/Wa6uGtznQZnV/Tsh6hW1nT4VzL8P8u4wfdKunp6C6Qc9zVgG
	dBaoUzPBkC+meiNJAr5ZYTt/txUY0yunyLZY1l0j+kD7fBQhY0FGEbJptGM=
Cc: yocto@yoctoproject.org
Subject: Re: Problems with 'configure' on own recipe [after moving to morty]
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Jul 2017 15:00:59 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Ah yes, that's true Ross - I should be able to try that approach instead.
 
> On 25 July 2017 at 15:57 "Burton, Ross" <ross.burton@intel.com> wrote:
> 
> On 25 July 2017 at 15:39, Colin Helliwell <colin.helliwell@ln-systems.com> wrote:
> 
> > That is in fact what I blagged as the starting point for 'my' recipe, but then evolved it so as to use the github head. For my particular [embedded] platform I also need to switch off some of the configure options.
> 
> Sounds like a bbappend should be able to fiddle SRC_URI and some PACKAGECONFIGs right?
> 
> Ross

