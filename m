Return-Path: <f_l_k@t-online.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1E9BE00AD0; Sun,  6 Aug 2017 21:28:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [194.25.134.17 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout02.t-online.de (mailout02.t-online.de [194.25.134.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A50CAE00A38
	for <yocto@yoctoproject.org>; Sun,  6 Aug 2017 21:28:56 -0700 (PDT)
Received: from fwd06.aul.t-online.de (fwd06.aul.t-online.de [172.20.26.150])
	by mailout02.t-online.de (Postfix) with SMTP id E55B641ADD60
	for <yocto@yoctoproject.org>; Mon,  7 Aug 2017 06:28:55 +0200 (CEST)
Received: from genericx86-64.Speedport_W_724V_01011603_05_032
	(ESbBBGZE8hrO8l4viXzB690-e9-VHTwABcVejT4ZZexLg+dJoH-4D5aN4Vc2kh0g7i@[84.146.40.121])
	by fwd06.t-online.de
	with (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384 encrypted)
	esmtp id 1deZev-0hOybg0; Mon, 7 Aug 2017 06:28:53 +0200
Date: Mon, 7 Aug 2017 06:28:52 +0200
From: Markus Volk <f_l_k@t-online.de>
To: yocto@yoctoproject.org
Message-Id: <20170807062852.af0e3064f68f8598fc81d556@t-online.de>
In-Reply-To: <2a5cd87f-984e-bb64-4861-8bab69461c2c@imap.cc>
References: <2a5cd87f-984e-bb64-4861-8bab69461c2c@imap.cc>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.31; x86_64-poky-linux-gnu)
Mime-Version: 1.0
X-ID: ESbBBGZE8hrO8l4viXzB690-e9-VHTwABcVejT4ZZexLg+dJoH-4D5aN4Vc2kh0g7i
X-TOI-MSGID: 1378f090-f615-4d2c-95ed-7df878d2159c
Subject: Re: Conflicting recipes / How to set SSTATE_DUPWHITELIST?
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
X-List-Received-Date: Mon, 07 Aug 2017 04:28:59 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

hi,

if you need to build both of the packages, a quick and dirty workaround would be to add a line like this to one of the recipes

do_install_append() {
	rm -rf ${D}/foo/README
}

to delete the README before packaging

On Mon, 7 Aug 2017 00:02:59 +0200
Peter Vutov <pvutov@imap.cc> wrote:

> Performing pretty much a default build of petalinux 2016.4, Yocto gives
> me an error because two recipes are creating the same README file. The
> conflict is only in the README file, and the build goes fine if I delete
> the file after the first recipe creates it but before the second tries
> to replace it (but it is bothersome doing this every time).
> 
> Since the conflict is only in a README file, the appropriate fix to me
> seems to add it to SSTATE_DUPWHITELIST. How would I do this? I've never
> used yocto and couldn't ctrl+f information in the manual on where such
> options are set. Would it go in the main *.bb file?
> 
> Build log: https://pastebin.com/KrzQvW7d
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Markus Volk <f_l_k@t-online.de>

