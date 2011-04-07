Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 2B77B4C80887
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2011 13:40:32 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 7791F166058C; Thu,  7 Apr 2011 12:40:31 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D181F1660556;
	Thu,  7 Apr 2011 12:40:25 -0600 (MDT)
Message-ID: <4D9E0519.4060909@mlbassoc.com>
Date: Thu, 07 Apr 2011 12:40:25 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: =?UTF-8?B?Sm/Do28gSGVucmlxdWUgRnJlaXRhcw==?= <joaohf@gmail.com>
References: <BANLkTinnBApSJtwrPKpZnnjG+UvkWGt37A@mail.gmail.com>	<BCDD8C04-D97A-4B4D-931B-00357C6C59C5@dominion.thruhere.net>
	<BANLkTimCSrbZ6EgverDQiiRscc24LqNsQg@mail.gmail.com>
In-Reply-To: <BANLkTimCSrbZ6EgverDQiiRscc24LqNsQg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: recipes for sniffer tool
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 07 Apr 2011 18:40:32 -0000
X-Groupsio-MsgNum: 1244
Content-Type: multipart/mixed; boundary="------------010101070604080609040401"

--------------010101070604080609040401
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 04/07/2011 12:11 PM, João Henrique Freitas wrote:
> Hi
>
>>
>> You can move the recipes over from oe.dev to meta-oe if you wish. Should be a matter of adding the license info and building them.
>>
>
> I get tcpdump from oe.dev and put it inside my meta-test layer. I am
> using yocto (bernard track).
>
> When I run 'bitbake tcpdump':
>
> | configure: WARNING: unrecognized options: --with-libtool-sysroot
> | NOTE: Checking autotools environment for common misconfiguration
> | ERROR: This autoconf log indicates errors, it looked at host include
> and/or library paths while determining system capabilities.
>
> I think this problem is trivial but I can't figure how to solve.

I used this recipe, along with the attached patch to build tcpdump.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

--------------010101070604080609040401
Content-Type: text/plain;
 name="tcpdump_4.1.1.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
 filename="tcpdump_4.1.1.bb"

REVTQ1JJUFRJT04gPSAiQSBzb3BoaXN0aWNhdGVkIG5ldHdvcmsgcHJvdG9jb2wgYW5hbHl6ZXIi
CkhPTUVQQUdFID0gImh0dHA6Ly93d3cudGNwZHVtcC5vcmcvIgpMSUNFTlNFID0gIkJTRCIKU0VD
VElPTiA9ICJjb25zb2xlL25ldHdvcmsiClBSSU9SSVRZID0gIm9wdGlvbmFsIgpERVBFTkRTID0g
ImxpYnBjYXAiClBSID0gInIxIgoKU1JDX1VSSSA9ICIgXAoJaHR0cDovL3d3dy50Y3BkdW1wLm9y
Zy9yZWxlYXNlL3RjcGR1bXAtJHtQVn0udGFyLmd6IFwKCWZpbGU6Ly90Y3BkdW1wX2NvbmZpZ3Vy
ZV9ub18tTzIucGF0Y2ggXAoJZmlsZTovLzAwMDEtbWluaW1hbC1JRUVFODAyLjE1LjQtYWxsb3dl
ZC5wYXRjaCBcCglmaWxlOi8vaXB2Ni1jcm9zcy5wYXRjaCBcCglmaWxlOi8vY29uZmlndXJlLnBh
dGNoIFwKCWZpbGU6Ly9ub3QtYnVpbGRpbmctZm9yLXNvbGFyaXMucGF0Y2ggXAoiCkxJQ19GSUxF
U19DSEtTVU0gPSAiIFwKCQkgZmlsZTovL0xJQ0VOU0U7bWQ1PTFkNGIwMzY2NTU3OTUxYzg0YTk0
ZmFiZTM1MjlmODY3IFwKIgoKaW5oZXJpdCBhdXRvdG9vbHMKIyBhY19jdl9saW51eF92ZXJzPSR7
YWNfY3ZfbGludXhfdmVycz0yfQoKRVhUUkFfT0VDT05GID0gIi0td2l0aG91dC1jcnlwdG8gXAoJ
CSR7QGJhc2VfY29udGFpbnMoJ0RJU1RST19GRUFUVVJFUycsICdpcHY2JywgJy0tZW5hYmxlLWlw
djYnLCAnLS1kaXNhYmxlLWlwdjYnLCBkKX0iCgpkb19jb25maWd1cmUoKSB7CglnbnUtY29uZmln
aXplCglhdXRvY29uZgoJb2VfcnVuY29uZgoJc2VkIC1pICdzOi91c3IvbGliOiR7U1RBR0lOR19M
SUJESVJ9OicgLi9NYWtlZmlsZQoJc2VkIC1pICdzOi91c3IvaW5jbHVkZToke1NUQUdJTkdfSU5D
RElSfTonIC4vTWFrZWZpbGUKfQoKZG9faW5zdGFsbF9hcHBlbmQoKSB7CgkjIHRjcGR1bXAgNC4w
LjAgaW5zdGFsbHMgYSBjb3B5IHRvIC91c3Ivc2Jpbi90Y3BkdW1wLjQuMC4wCglybSAtZiAke0R9
JHtzYmluZGlyfS90Y3BkdW1wLiR7UFZ9Cn0KClNSQ19VUklbbWQ1c3VtXSA9ICJkMGRkNThiYmQ2
Y2QzNjc5NWUwNWM2ZjFmNzQ0MjBiMCIKU1JDX1VSSVtzaGEyNTZzdW1dID0gImU2Y2Q0YmJkNjFl
YzdhZGJiNjFiYTgzNTJjNGI0NzM0ZjY3YjhjYWFhODQ1ZDg4Y2I4MjZiYzBiOWYxZTdmMGEiCgo=

--------------010101070604080609040401
Content-Type: text/x-patch;
 name="not-building-for-solaris.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="not-building-for-solaris.patch"

diff -ur tcpdump-4.1.1.ORIG/configure.in tcpdump-4.1.1/configure.in
--- tcpdump-4.1.1.ORIG/configure.in	2011-03-30 11:14:46.000000000 -0600
+++ tcpdump-4.1.1/configure.in	2011-03-31 06:00:18.187813636 -0600
@@ -715,9 +715,6 @@
 	fi
 fi
 
-# libdlpi is needed for Solaris 11 and later.
-AC_CHECK_LIB(dlpi, dlpi_walk, LIBS="$LIBS -ldlpi" LDFLAGS="-L/lib $LDFLAGS", ,-L/lib)
-
 dnl portability macros for getaddrinfo/getnameinfo
 dnl
 dnl Check for sa_len
Only in tcpdump-4.1.1: configure.in~

--------------010101070604080609040401--
