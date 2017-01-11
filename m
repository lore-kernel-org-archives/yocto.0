Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10ADDE00A08; Tue, 10 Jan 2017 18:24:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
	URI_HEX autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.1 URI_HEX URI: URI hostname has long hexadecimal sequence
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8865E00A08
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2017 18:24:19 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v0B2OGQo004795
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 10 Jan 2017 18:24:17 -0800 (PST)
Received: from [128.224.162.196] (128.224.162.196) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Tue, 10 Jan 2017 18:24:14 -0800
To: Joe MacDonald <Joe_MacDonald@mentor.com>
References: <cover.1484037945.git.wenzong.fan@windriver.com>
	<20170110142540.GA8258@mentor.com>
From: wenzong fan <wenzong.fan@windriver.com>
Message-ID: <42e8d273-7331-2771-adb8-c005184b781d@windriver.com>
Date: Wed, 11 Jan 2017 10:24:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20170110142540.GA8258@mentor.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux][PATCH 0/2] uprev refpolicy to 2.20161023
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
X-List-Received-Date: Wed, 11 Jan 2017 02:24:23 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 01/10/2017 10:25 PM, Joe MacDonald wrote:
> [[yocto] [meta-selinux][PATCH 0/2] uprev refpolicy to 2.20161023] On 17.01.10 (Tue 00:54) wenzong.fan@windriver.com wrote:
>
>> From: Wenzong Fan <wenzong.fan@windriver.com>
>>
>> Uprev refpolicy to 2.20161023 and fix build errors for refpolicy-minimum.
>>
>> The following changes since commit bae51859f0dbcdde9fd563d15128a6dbbb816801:
>>
>>   audit: upgrade 2.6.6 -> 2.7 (2017-01-09 08:59:55 -0500)
>>
>> are available in the git repository at:
>>
>>   git://git.pokylinux.org/poky-contrib wenzong/refpolicy-2.20161023
>>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=wenzong/refpolicy-2.20161023
>
> As poky-contrib is full of unrelated stuff, it's not the right place to
> be doing meta-selinux work AFAICT.  I'd rather you actually just
> fork meta-selinux somewhere like github if you plan to send pull
> requests.  Patches are fine, of course, they're even easier for me to
> work with.

Oko< I didn't notice that before, I'll fork it on github for my pull 
requests later.

Thanks
Wenzong

>
> -J.
>
>>
>> Wenzong Fan (2):
>>   refpolicy: uprev 2.20151208 -> 2.20161023
>>   refpolicy-minimum: update patch file
>>
>>  .../ftp-add-ftpd_t-to-mlsfilewrite.patch                         | 0
>>  .../poky-fc-clock.patch                                          | 0
>>  .../poky-fc-corecommands.patch                                   | 0
>>  .../poky-fc-dmesg.patch                                          | 0
>>  .../poky-fc-fix-bind.patch                                       | 0
>>  .../poky-fc-fix-real-path_login.patch                            | 0
>>  .../poky-fc-fix-real-path_resolv.conf.patch                      | 0
>>  .../poky-fc-fix-real-path_shadow.patch                           | 0
>>  .../poky-fc-fix-real-path_su.patch                               | 0
>>  .../poky-fc-fstools.patch                                        | 0
>>  .../poky-fc-ftpwho-dir.patch                                     | 0
>>  .../poky-fc-iptables.patch                                       | 0
>>  .../poky-fc-mta.patch                                            | 0
>>  .../poky-fc-netutils.patch                                       | 0
>>  .../poky-fc-nscd.patch                                           | 0
>>  .../poky-fc-rpm.patch                                            | 0
>>  .../poky-fc-screen.patch                                         | 0
>>  .../poky-fc-ssh.patch                                            | 0
>>  .../poky-fc-su.patch                                             | 0
>>  .../poky-fc-subs_dist.patch                                      | 0
>>  .../poky-fc-sysnetwork.patch                                     | 0
>>  .../poky-fc-udevd.patch                                          | 0
>>  .../poky-fc-update-alternatives_hostname.patch                   | 0
>>  .../poky-fc-update-alternatives_sysklogd.patch                   | 0
>>  .../poky-fc-update-alternatives_sysvinit.patch                   | 0
>>  .../poky-policy-add-rules-for-bsdpty_device_t.patch              | 0
>>  .../poky-policy-add-rules-for-syslogd_t-symlink.patch            | 0
>>  .../poky-policy-add-rules-for-tmp-symlink.patch                  | 0
>>  .../poky-policy-add-rules-for-var-cache-symlink.patch            | 0
>>  .../poky-policy-add-rules-for-var-log-symlink-apache.patch       | 0
>>  ...ky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch | 0
>>  .../poky-policy-add-rules-for-var-log-symlink.patch              | 0
>>  .../poky-policy-add-syslogd_t-to-trusted-object.patch            | 0
>>  .../poky-policy-allow-nfsd-to-exec-shell-commands.patch          | 0
>>  .../poky-policy-allow-setfiles_t-to-read-symlinks.patch          | 0
>>  .../poky-policy-allow-sysadm-to-run-rpcinfo.patch                | 0
>>  .../poky-policy-don-t-audit-tty_device_t.patch                   | 0
>>  .../poky-policy-fix-dmesg-to-use-dev-kmsg.patch                  | 0
>>  .../poky-policy-fix-new-SELINUXMNT-in-sys.patch                  | 0
>>  .../poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch              | 0
>>  .../poky-policy-fix-setfiles-statvfs-get-file-count.patch        | 0
>>  .../poky-policy-fix-seutils-manage-config-files.patch            | 0
>>  .../refpolicy-update-for_systemd.patch                           | 0
>>  .../{refpolicy-mcs_2.20151208.bb => refpolicy-mcs_2.20161023.bb} | 0
>>  ...07-refpolicy-minimum-systemd-fix-for-login-journal-serv.patch | 9 ++++++---
>>  ...icy-minimum_2.20151208.bb => refpolicy-minimum_2.20161023.bb} | 0
>>  .../{refpolicy-mls_2.20151208.bb => refpolicy-mls_2.20161023.bb} | 0
>>  ...y-standard_2.20151208.bb => refpolicy-standard_2.20161023.bb} | 0
>>  ...y-targeted_2.20151208.bb => refpolicy-targeted_2.20161023.bb} | 0
>>  .../{refpolicy_2.20151208.inc => refpolicy_2.20161023.inc}       | 8 ++++----
>>  50 files changed, 10 insertions(+), 7 deletions(-)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/ftp-add-ftpd_t-to-mlsfilewrite.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-clock.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-corecommands.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-dmesg.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-bind.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-real-path_login.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-real-path_resolv.conf.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-real-path_shadow.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fix-real-path_su.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-fstools.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-ftpwho-dir.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-iptables.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-mta.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-netutils.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-nscd.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-rpm.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-screen.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-ssh.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-su.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-subs_dist.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-sysnetwork.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-udevd.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-update-alternatives_hostname.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-update-alternatives_sysklogd.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-fc-update-alternatives_sysvinit.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-bsdpty_device_t.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-syslogd_t-symlink.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-tmp-symlink.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-var-cache-symlink.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-var-log-symlink-apache.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-var-log-symlink-audisp_remote_t.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-rules-for-var-log-symlink.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-add-syslogd_t-to-trusted-object.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-allow-nfsd-to-exec-shell-commands.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-allow-setfiles_t-to-read-symlinks.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-allow-sysadm-to-run-rpcinfo.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-don-t-audit-tty_device_t.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-dmesg-to-use-dev-kmsg.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-new-SELINUXMNT-in-sys.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-nfsd_t-to-mount_nfsd_fs_t.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-setfiles-statvfs-get-file-count.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/poky-policy-fix-seutils-manage-config-files.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-2.20151208 => refpolicy-2.20161023}/refpolicy-update-for_systemd.patch (100%)
>>  rename recipes-security/refpolicy/{refpolicy-mcs_2.20151208.bb => refpolicy-mcs_2.20161023.bb} (100%)
>>  rename recipes-security/refpolicy/{refpolicy-minimum_2.20151208.bb => refpolicy-minimum_2.20161023.bb} (100%)
>>  rename recipes-security/refpolicy/{refpolicy-mls_2.20151208.bb => refpolicy-mls_2.20161023.bb} (100%)
>>  rename recipes-security/refpolicy/{refpolicy-standard_2.20151208.bb => refpolicy-standard_2.20161023.bb} (100%)
>>  rename recipes-security/refpolicy/{refpolicy-targeted_2.20151208.bb => refpolicy-targeted_2.20161023.bb} (100%)
>>  rename recipes-security/refpolicy/{refpolicy_2.20151208.inc => refpolicy_2.20161023.inc} (91%)
>>
>> --
>> 2.11.0
>>

