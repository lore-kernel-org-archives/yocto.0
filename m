Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 912B3E00C17; Tue, 27 Sep 2016 03:48:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from blaine.gmane.org (unknown [195.159.176.226])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 538D2E00B7A
	for <yocto@yoctoproject.org>; Tue, 27 Sep 2016 03:48:27 -0700 (PDT)
Received: from list by blaine.gmane.org with local (Exim 4.84_2)
	(envelope-from <gley-yocto@m.gmane.org>) id 1bopvl-0007Qj-Jk
	for yocto@yoctoproject.org; Tue, 27 Sep 2016 12:48:09 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: "robert.berger@gmane" <gmane@reliableembeddedsystems.com>
Date: Tue, 27 Sep 2016 13:47:40 +0300
Message-ID: <9687790f-574a-ded9-15cd-ea2c4b6b5ed1@reliableembeddedsystems.com>
References: <OF6E96DAB3.CA00D82C-ONC125803B.002B3077-C125803B.002C3D79@esa-grimma.de>
Mime-Version: 1.0
X-Complaints-To: usenet@blaine.gmane.org
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
In-Reply-To: <OF6E96DAB3.CA00D82C-ONC125803B.002B3077-C125803B.002C3D79@esa-grimma.de>
Subject: Re: "bitbake virtual/kernel -c menuconfig" seems to be broken
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
X-List-Received-Date: Tue, 27 Sep 2016 10:48:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-09-27 11:03, S.Jaritz@esa-grimma.de wrote:
> Hej
>
> Some error occurred. I give a print (sorry for that German text - but
> the error should be clear):
> ##########
>   GEN     ./Makefile
>   HOSTLD  scripts/kconfig/mconf
> scripts/kconfig/mconf.o: In Funktion `show_help':
> mconf.c:(.text+0x914): Nicht definierter Verweis auf `stdscr'
> scripts/kconfig/lxdialog/checklist.o: In Funktion `print_arrows':

Did you try something like this [1] (I know it is strange)

bitbake ncurses -c populate_sysroot -f

[1] 
http://lists.openembedded.org/pipermail/openembedded-core/2015-May/105374.html

You might want to post those kind of bugs to bugzilla[2]

[2] https://bugzilla.yoctoproject.org/show_bug.cgi?id=7609


Regards,

Robert


