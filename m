Return-Path: <sds@tycho.nsa.gov>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 635E0E00863; Tue, 22 Mar 2016 12:42:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI,
	RDNS_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [63.239.67.9 listed in list.dnswl.org]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from emvm-gh1-uea08.nsa.gov (unknown [63.239.67.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C232E00509
	for <yocto@yoctoproject.org>; Tue, 22 Mar 2016 12:42:45 -0700 (PDT)
X-TM-IMSS-Message-ID: <c2f0ca7f000018fe@nsa.gov>
Received: from tarius.tycho.ncsc.mil ([144.51.242.1]) by nsa.gov
	([10.208.42.193]) with ESMTP (TREND IMSS SMTP Service 7.1) id
	c2f0ca7f000018fe ; Tue, 22 Mar 2016 15:42:12 -0400
Received: from moss-pluto.infosec.tycho.ncsc.mil (moss-pluto [192.168.25.131])
	by tarius.tycho.ncsc.mil (8.14.4/8.14.4) with ESMTP id
	u2MJggfe003736; Tue, 22 Mar 2016 15:42:43 -0400
To: Philip Tricca <flihp@twobit.us>, mark.hatle@windriver.com,
	Joe_MacDonald@mentor.com, yocto@yoctoproject.org
References: <1458534406-79852-1-git-send-email-flihp@twobit.us>
	<1458534406-79852-2-git-send-email-flihp@twobit.us>
From: Stephen Smalley <sds@tycho.nsa.gov>
Organization: National Security Agency
Message-ID: <56F1A078.1090609@tycho.nsa.gov>
Date: Tue, 22 Mar 2016 15:43:52 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1458534406-79852-2-git-send-email-flihp@twobit.us>
X-TM-AS-MML: disable
X-TM-AS-Product-Ver: IMSS-7.1.0.1571-6.5.0.1024-16972.004
X-TM-AS-Result: No--6.081-7.0-31-10
X-imss-scan-details: No--6.081-7.0-31-10
X-TMASE-MatchedRID: VPleTT1nwdSYLyCLOSg+wya1MaKuob8PC/ExpXrHizzVMpDytURQKA2K
	u+gP3kxiZClGcL9tHydB7ceQMV8EB1jTyMZNUK20syw+ZJnFumSy4iyjvVWTop0Koq3EzpuHxhH
	6LU2YFCUaDpcsVIbqIJWLHPOcpRuibJg9Rt45t7aOjIrMSa2sRwrefVId6fzVoxRgRN5Xp2nqV/
	N55b2TAXUnlA2kj4BL29G4zL5yNDBYpgZmiuURre7nBni6Jc9R1YvbpIHWk/Y3UzrGe18rO/Dlu
	qnHiUBF55ex+joDYwQvuq6CVKY8tUTzGCCYc2Bt
Subject: Re: [meta-selinux][PATCH 1/2] refpolicy: Replace 2.2014120 with release 2.20151208.
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
X-List-Received-Date: Tue, 22 Mar 2016 19:42:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/21/2016 12:26 AM, Philip Tricca wrote:
> This was mostly straight forward. Had to refresh a single patch:
> poky-policy-fix-new-SELINUXMNT-in-sys.patch

Can we drop that one?  Doesn't upstream already include rules for the
change from /selinux to /sys/fs/selinux, since that has been the default
for Linux 3.0 and later?

Also, refpolicy-update-for_systemd.patch seems suspect, given that
upstream refpolicy already includes systemd support (but you need to
build with SYSTEMD=y, which can be done now via POLICY_SYSTEMD=y in your
local.conf or elsewhere).  The only bit I see in that patch that isn't
already in refpolicy is
allow devpts device_t:filesystem associate;
which ought to be rewritten as
dev_associate(devpts_t)
and upstreamed to refpolicy terminal.te if needed.

I assume that is from creating the /dvv/pts mount point and
automatically trying to label it according to file_contexts, but the
type in file_contexts is really for the devpts mount, not the mount point.


