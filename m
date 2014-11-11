Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6A0C8E00830; Tue, 11 Nov 2014 08:19:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40F3EE0072A
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 08:19:33 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 42D9CF811F3; Tue, 11 Nov 2014 09:19:33 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 2DA74F811EC;
	Tue, 11 Nov 2014 09:19:31 -0700 (MST)
Message-ID: <54623721.8000207@mlbassoc.com>
Date: Tue, 11 Nov 2014 09:19:45 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <ca96b16ed0e3c0413d554c852210f8e0eb4ffc55@webmail.adam.com.au>
In-Reply-To: <ca96b16ed0e3c0413d554c852210f8e0eb4ffc55@webmail.adam.com.au>
Subject: Re: bbappend recipe causes errors with only two lines of code
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
X-List-Received-Date: Tue, 11 Nov 2014 16:19:39 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-11-10 12:14, peterengcomau001@adam.com.au wrote:
> I am using Yocto 1.6.1 and run a build that works fine.
>
> I add a new layer and recipe ~/poky/meta-atmel-lsp/recipes-lsp/lighttpd with a recipe lighttpd_1.4.33.bbappend and this has only two lines:
>
> FILESEXTRAPATHS_prepend := "#{THISDIR}/files:"
> SRC_URI = "file://lighttpd.conf"
>
> This results in a failure: /home/lachlan/poky/meta/recipes-extended/lighttpd/lightpd_1.4.33.bb, do_install
> Not that the lighttpd.conf file is in the 'files' directory as is identical to the original
>
> If I remove the line SRC_URI= ....... , the build works OK
>
> If I now change absolutely nothing other than un-comment one line (the mod_WebDAV module) in the local lighttpd.conf file:
> This results in a failure: /home/lachlan/poky/meta/recipes-extended/lighttpd/lightpd_1.4.33.bb, do_unpack
>
> If I go back to the original lighttpd.conf file in my local 'files' directory then do the following ->
>
> If I change the second line to SCR_URI += "file://lighttpd.conf"
> I get the same do_unpack error
>
> If i change the second line to SRC_URI_append = "file://lighttpd.conf" it also get the do_unpack error.
>
> If I merge the two lines into one so ther is now only the one line SRC_URI_append = "file://${THISDIR}/files/lighttpdconf"
> I get an error: Unable to get checksum for lighttpd SRC_URI entry lighttpd.conf No such file found, and it refers to the
> original recipe locations in poky/meta/recipes-extended/lighttpd/files/lighttpd.conf
>
> I get the same error using a single line when I uses SRC_URI =, or SRC_URI += , instead of SRC_URI_append.
>
> I run $ bitabke -c cleansstate  between builds.
>
> What could be causing the error. There is only two lines in the bbappend file and the included file is identical to the original .conf file.

Try setting this line
   FILESEXTRAPATHS_prepend := "#{THISDIR}/files:"
to be
   FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

