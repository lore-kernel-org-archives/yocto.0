Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80E3BE007BA; Wed, 10 May 2017 08:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f51.google.com (mail-pg0-f51.google.com [74.125.83.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB68AE003C1
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 08:26:51 -0700 (PDT)
Received: by mail-pg0-f51.google.com with SMTP id o3so18425132pgn.2
	for <yocto@yoctoproject.org>; Wed, 10 May 2017 08:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=Xl9UcGbfhaNzMUrpZut8u782WD8/jYv/VE+vd1mhWeM=;
	b=vcawUQ6KoIVWCy57C2k9URUuMlVog6RCDqKeNEsBWhe07LJ8yZSUB/h3YglSODtYSR
	erv/Odar0KWvCYySems+9fc1E0RfnhP6AR/AgQ6eghmfs3CS+v3iXKK66h0k/4hnBFjp
	XaNL3+T/GGRe/zFinWRW2VpGcsUK9s7DgMLkgGvKQ/2PS1il/0e92mDKGFg8AXA69QYr
	Zz9RCjIwo0xzjpghMNHjX/09gJsJPtGaV7BM0+K04l6z8YSndx2lHyvisj+fXzUfk86q
	3Mt/sf/xhwLTHrbsih5rus89l6dKQCw1P8GM0Ehit49toajd821C+cnMSToFd96DoF8B
	qyJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=Xl9UcGbfhaNzMUrpZut8u782WD8/jYv/VE+vd1mhWeM=;
	b=c0hSYTykyZAeiTturUd4AEPcjGL564wNV0G5X7vmt/4x7aOahTxIUyr2KxlCZHxyWo
	zUvrZWkN/Q4/1mNhIviq1uFyh1iJhvcDnqeum7FyWvamsnowu9WOC03MVt8Gx4EYpgBZ
	3AE7uHXnZA6DCh73PR8eDf1t4NFpbQhf1BwdtqS0Uj9PZqz7v6FGeUQSJ/JMGFXvrJZP
	weuSGe2VhSwHwNjDNqQ3trZc83nTiad8ue8UNeKf3v1d6gmrLg6DBjOcbkjYrnrjUiLf
	HfbQZMB1fFb1eMvIPOgFjRYy1AdivpZByqBqev9FjFHd1nqjvvwMBSBvFnUFB4wIUm0J
	9jjg==
X-Gm-Message-State: AODbwcAe3ALruZ/928ZeDcC8/q/+ih2bBP0B3dWQLhNpS8vT73FnFzSj
	6WkuDcHF6E4utHkOuxNAYg==
X-Received: by 10.99.6.2 with SMTP id 2mr7087679pgg.122.1494430010993;
	Wed, 10 May 2017 08:26:50 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:e3df:bf0a:9f90:498e?
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	o76sm6501808pfi.119.2017.05.10.08.26.49 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 May 2017 08:26:49 -0700 (PDT)
To: yocto@yoctoproject.org
References: <1494341221-17621-1-git-send-email-akuster808@gmail.com>
	<f993b127-3076-e04b-187d-c0f6a8eda4ab@fridu.net>
From: akuster <akuster@mvista.com>
Message-ID: <8985266c-2afc-3b77-2ed0-f01c3ba28c04@mvista.com>
Date: Wed, 10 May 2017 08:26:48 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <f993b127-3076-e04b-187d-c0f6a8eda4ab@fridu.net>
Subject: Re: [meta-security][PATCH 00/10] move tpm into its own layer
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
X-List-Received-Date: Wed, 10 May 2017 15:26:54 -0000
Content-Type: multipart/alternative;
	boundary="------------3D562361DCA80D129BB56A18"

--------------3D562361DCA80D129BB56A18
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 05/10/2017 12:46 AM, Dominig ar Foll (Intel Open Source) wrote:
> Armin,
>
> very interesting move. Could you tell us where is located your git repo ?
http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/

currently the changes are in master-next

- armin
> Regards
>
> Dominig
>
> Le 09/05/2017 à 16:46, Armin Kuster a écrit :
>> tpm recipes copied as-is
>>
>> This was done to allow inclusion of TPM components independent of the rest of the layer.
>> minimizes layerdepends
>>
>> fixed incorrect use of DISTRO_FEATURES
>>
>> Updated tpm kernel configs to newer version
>>
>> added a few new packagegroups
>>
>> Armin Kuster (10):
>>    tpm: move to a sub layer
>>    change tpm from distro to machine feature
>>    meta-tpm: add base package group as was in meta-security
>>    packagegroup: remove tpm components
>>    tpm packagegroups: split into logical units
>>    tpm-i2c: some systems us i2c TPM
>>    kernel tpm rework
>>    tpm-image: used for testing for now.
>>    linux-stable: fix module selections
>>    tpm2: package groups fixes
>>
>>   meta-tpm/README                                    |  0
>>   meta-tpm/conf/layer.conf                           | 13 ++++++++++
>>   meta-tpm/recipes-core/images/security-tpm-image.bb | 19 ++++++++++++++
>>   .../packagegroup/packagegroup-security-tpm-i2c.bb  | 19 ++++++++++++++
>>   .../packagegroup/packagegroup-security-tpm.bb      | 29 ++++++++++++++++++++++
>>   .../packagegroup/packagegroup-security-tpm2.bb     | 18 ++++++++++++++
>>   .../packagegroup/packagegroup-security-vtpm.bb     | 14 +++++++++++
>>   meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg  |  8 ++++++
>>   meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc  |  3 +++
>>   meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg |  6 +++++
>>   meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc |  3 +++
>>   .../recipes-kernel/linux/linux-yocto/tpm_i2c.cfg   | 15 +++++++++++
>>   .../recipes-kernel/linux/linux-yocto/tpm_i2c.scc   |  6 +++++
>>   .../recipes-kernel/linux/linux-yocto/tpm_x86.cfg   |  4 +++
>>   meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg |  5 ++++
>>   meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc |  4 +++
>>   .../recipes-kernel/linux/linux-yocto_4.%.bbappend  | 17 +++++++++++++
>>   .../Convert-another-vdprintf-to-dprintf.patch      |  0
>>   .../files/Use-format-s-for-call-to-dprintf.patch   |  0
>>   .../libtpm/files/fix_signed_issue.patch            |  0
>>   .../recipes-tpm}/libtpm/libtpm_1.0.bb              |  0
>>   .../recipes-tpm}/swtpm/files/fix_fcntl_h.patch     |  0
>>   .../swtpm/files/fix_lib_search_path.patch          |  0
>>   .../swtpm/files/fix_signed_issue.patch             |  0
>>   .../recipes-tpm}/swtpm/files/ioctl_h.patch         |  0
>>   .../recipes-tpm}/swtpm/swtpm-wrappers-native.bb    |  0
>>   .../recipes-tpm}/swtpm/swtpm_1.0.bb                |  0
>>   .../tpm-tools/files/tpm-tools-extendpcr.patch      |  0
>>   .../recipes-tpm}/tpm-tools/tpm-tools_git.bb        |  0
>>   .../recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb  |  0
>>   .../tpm2.0-tss/tpm2.0-tss/ax_pthread.m4            |  0
>>   .../tpm2.0-tss/fix_musl_select_include.patch       |  0
>>   .../recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb      |  0
>>   .../tpm2simulator/tpm2simulator-native_116.bb      |  0
>>   ...path-use-POSIX-getpwent-instead-of-getpwe.patch |  0
>>   .../recipes-tpm}/trousers/files/tcsd.service       |  0
>>   .../trousers/files/trousers-udev.rules             |  0
>>   .../recipes-tpm}/trousers/files/trousers.init.sh   |  0
>>   .../recipes-tpm}/trousers/trousers_git.bb          |  0
>>   recipes-kernel/linux/linux-yocto_4.10.bbappend     |  3 ---
>>   .../packagegroup/packagegroup-core-security.bb     | 18 ++------------
>>   41 files changed, 185 insertions(+), 19 deletions(-)
>>   create mode 100644 meta-tpm/README
>>   create mode 100644 meta-tpm/conf/layer.conf
>>   create mode 100644 meta-tpm/recipes-core/images/security-tpm-image.bb
>>   create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
>>   create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
>>   create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
>>   create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
>>   create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/Convert-another-vdprintf-to-dprintf.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/Use-format-s-for-call-to-dprintf.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/files/fix_signed_issue.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/libtpm/libtpm_1.0.bb (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_fcntl_h.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_lib_search_path.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/fix_signed_issue.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/files/ioctl_h.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/swtpm-wrappers-native.bb (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/swtpm/swtpm_1.0.bb (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm-tools/files/tpm-tools-extendpcr.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm-tools/tpm-tools_git.bb (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/tpm2simulator/tpm2simulator-native_116.bb (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/tcsd.service (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/trousers-udev.rules (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/files/trousers.init.sh (100%)
>>   rename {recipes-tpm => meta-tpm/recipes-tpm}/trousers/trousers_git.bb (100%)
>>
>
> -- 
> Dominig ar Foll
> Senior Software Architect
> Intel Open Source Technology Centre
>
>


--------------3D562361DCA80D129BB56A18
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 05/10/2017 12:46 AM, Dominig ar Foll
      (Intel Open Source) wrote:<br>
    </div>
    <blockquote
      cite="mid:f993b127-3076-e04b-187d-c0f6a8eda4ab@fridu.net"
      type="cite">
      <meta content="text/html; charset=windows-1252"
        http-equiv="Content-Type">
      <font size="-1">Armin,<br>
        <br>
        very interesting move. Could you tell us where is located your
        git repo ?<br>
      </font></blockquote>
    <font size="-1"><a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/">http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/</a><br>
      <br>
      currently the changes are in master-next<br>
      <br>
      - armin<br>
    </font>
    <blockquote
      cite="mid:f993b127-3076-e04b-187d-c0f6a8eda4ab@fridu.net"
      type="cite"><font size="-1"> Regards<br>
        <br>
        Dominig<br>
      </font><br>
      <div class="moz-cite-prefix">Le 09/05/2017 à 16:46, Armin Kuster a
        écrit :<br>
      </div>
      <blockquote
        cite="mid:1494341221-17621-1-git-send-email-akuster808@gmail.com"
        type="cite">
        <pre wrap="">tpm recipes copied as-is

This was done to allow inclusion of TPM components independent of the rest of the layer.
minimizes layerdepends

fixed incorrect use of DISTRO_FEATURES

Updated tpm kernel configs to newer version

added a few new packagegroups

Armin Kuster (10):
  tpm: move to a sub layer
  change tpm from distro to machine feature
  meta-tpm: add base package group as was in meta-security
  packagegroup: remove tpm components
  tpm packagegroups: split into logical units
  tpm-i2c: some systems us i2c TPM
  kernel tpm rework
  tpm-image: used for testing for now.
  linux-stable: fix module selections
  tpm2: package groups fixes

 meta-tpm/README                                    |  0
 meta-tpm/conf/layer.conf                           | 13 ++++++++++
 meta-tpm/recipes-core/images/security-tpm-image.bb | 19 ++++++++++++++
 .../packagegroup/packagegroup-security-tpm-i2c.bb  | 19 ++++++++++++++
 .../packagegroup/packagegroup-security-tpm.bb      | 29 ++++++++++++++++++++++
 .../packagegroup/packagegroup-security-tpm2.bb     | 18 ++++++++++++++
 .../packagegroup/packagegroup-security-vtpm.bb     | 14 +++++++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg  |  8 ++++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc  |  3 +++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg |  6 +++++
 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc |  3 +++
 .../recipes-kernel/linux/linux-yocto/tpm_i2c.cfg   | 15 +++++++++++
 .../recipes-kernel/linux/linux-yocto/tpm_i2c.scc   |  6 +++++
 .../recipes-kernel/linux/linux-yocto/tpm_x86.cfg   |  4 +++
 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg |  5 ++++
 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc |  4 +++
 .../recipes-kernel/linux/linux-yocto_4.%.bbappend  | 17 +++++++++++++
 .../Convert-another-vdprintf-to-dprintf.patch      |  0
 .../files/Use-format-s-for-call-to-dprintf.patch   |  0
 .../libtpm/files/fix_signed_issue.patch            |  0
 .../recipes-tpm}/libtpm/libtpm_1.0.bb              |  0
 .../recipes-tpm}/swtpm/files/fix_fcntl_h.patch     |  0
 .../swtpm/files/fix_lib_search_path.patch          |  0
 .../swtpm/files/fix_signed_issue.patch             |  0
 .../recipes-tpm}/swtpm/files/ioctl_h.patch         |  0
 .../recipes-tpm}/swtpm/swtpm-wrappers-native.bb    |  0
 .../recipes-tpm}/swtpm/swtpm_1.0.bb                |  0
 .../tpm-tools/files/tpm-tools-extendpcr.patch      |  0
 .../recipes-tpm}/tpm-tools/tpm-tools_git.bb        |  0
 .../recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb  |  0
 .../tpm2.0-tss/tpm2.0-tss/ax_pthread.m4            |  0
 .../tpm2.0-tss/fix_musl_select_include.patch       |  0
 .../recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb      |  0
 .../tpm2simulator/tpm2simulator-native_116.bb      |  0
 ...path-use-POSIX-getpwent-instead-of-getpwe.patch |  0
 .../recipes-tpm}/trousers/files/tcsd.service       |  0
 .../trousers/files/trousers-udev.rules             |  0
 .../recipes-tpm}/trousers/files/trousers.init.sh   |  0
 .../recipes-tpm}/trousers/trousers_git.bb          |  0
 recipes-kernel/linux/linux-yocto_4.10.bbappend     |  3 ---
 .../packagegroup/packagegroup-core-security.bb     | 18 ++------------
 41 files changed, 185 insertions(+), 19 deletions(-)
 create mode 100644 meta-tpm/README
 create mode 100644 meta-tpm/conf/layer.conf
 create mode 100644 meta-tpm/recipes-core/images/security-tpm-image.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm-i2c.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
 create mode 100644 meta-tpm/recipes-core/packagegroup/packagegroup-security-vtpm.bb
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
 create mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_4.%.bbappend
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/libtpm/files/Convert-another-vdprintf-to-dprintf.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/libtpm/files/Use-format-s-for-call-to-dprintf.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/libtpm/files/fix_signed_issue.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/libtpm/libtpm_1.0.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/files/fix_fcntl_h.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/files/fix_lib_search_path.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/files/fix_signed_issue.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/files/ioctl_h.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/swtpm-wrappers-native.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/swtpm/swtpm_1.0.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm-tools/files/tpm-tools-extendpcr.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm-tools/tpm-tools_git.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2.0-tools/tpm2.0-tools_git.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/ax_pthread.m4 (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss/fix_musl_select_include.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2.0-tss/tpm2.0-tss_git.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/tpm2simulator/tpm2simulator-native_116.bb (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/files/tcsd.service (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/files/trousers-udev.rules (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/files/trousers.init.sh (100%)
 rename {recipes-tpm =&gt; meta-tpm/recipes-tpm}/trousers/trousers_git.bb (100%)

</pre>
      </blockquote>
      <br>
      <pre class="moz-signature" cols="72">-- 
Dominig ar Foll
Senior Software Architect
Intel Open Source Technology Centre</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------3D562361DCA80D129BB56A18--
