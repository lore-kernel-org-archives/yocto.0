Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7E5B3E006F7; Fri,  4 Jul 2014 01:52:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 32556E006F3
	for <yocto@yoctoproject.org>; Fri,  4 Jul 2014 01:52:12 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s648px2i010573
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 4 Jul 2014 01:51:59 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Fri, 4 Jul 2014 01:51:59 -0700
Message-ID: <53B66B2D.7080108@windriver.com>
Date: Fri, 4 Jul 2014 16:51:57 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5D833673AB94D9489A7F7F73E9E611C814ADC4C8@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
	<53B5F73B.8040800@windriver.com>
	<5D833673AB94D9489A7F7F73E9E611C814ADC5DF@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
In-Reply-To: <5D833673AB94D9489A7F7F73E9E611C814ADC5DF@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
Subject: Re: Adding a shared object file to rootfs
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
X-List-Received-Date: Fri, 04 Jul 2014 08:52:15 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit



On 07/04/2014 04:42 PM, Sathish Kumar Balasubramaniam -ERS, HCL Tech wrote:
> Thanks, Robert Yang.
>
> Method using abc.bb:
> ~~~~~~~~~~~~~~~~
>
> Before I tried using abc.bb, but I faced an error that says unknown package abc and something like opkg_install_cmd: cannot install .....
> Hence I thought of trying linux-kernel_3.4.bbappend.
>
> But now I added like the following to the abc.bb file (before I didn't give the -dbg line)
>
> FILES_${PN} += "${base_libdir}"
> FILES_${PN}-dbg += "${base_libdir}/.debug"
> FILES_SOLIBSDEV = ""
>
> Now it's working :)   --------> This is fine for me and as you said, this is the recommended way too.

Sounds great.

>
> Method using linux-kernel_3.4.bb just for analysis :
> ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>
> I tried to add FILES_kernel-vmlinux like the following
>
> do_install_append () {
>          install -d ${D}${base_libdir}
>          install -m 0644 ${WORKDIR}/abc.so ${D}${base_libdir}
> }
>
> FILES_kernel-vmlinux += "${base_libdir}"
> FILES_kernel-vmlinux-dbg += "${base_libdir}/.debug"
>
> I am getting the following error
>
> ERROR: QA Issue: non debug package contains .debug directory: kernel-vmlinux path /work/<machine>-poky-linux-gnueabi/linux-yocto/3.4+<version>/packages-split/kernel-vmlinux/lib/.debug/abc.so

Maybe you need something like:

PACKAGES += kernel-vmlinux-dgb

Otherwise the FILES_kernel-vmlinux-dbg has no effect.

// Robert

>
>
> Regards,
> Sathish
>
> -----Original Message-----
> From: Robert Yang [mailto:liezhi.yang@windriver.com]
> Sent: Friday, July 04, 2014 6:07 AM
> To: Sathish Kumar Balasubramaniam -ERS, HCL Tech; yocto@yoctoproject.org
> Subject: Re: [yocto] Adding a shared object file to rootfs
>
>
> Hello,
>
> I think that there are two problems:
>
> 1) You can use a abc.bb to add the abc.so rather than .bbappend, then you can
>      add something like:
>      IMAGE_INSTALL_append = "abc"
>
>      to conf/local.conf.
>
> 2) Please see my comments inline.
>
> On 07/04/2014 01:11 AM, Sathish Kumar Balasubramaniam -ERS, HCL Tech wrote:
>> I tried to add the abc.so using a linux-yocto_3.4.bbappend like the following
>>
>> SRC_URI += "file://abc.so"
>>
>> do_install_append() {
>>
>>                   install -d ${D}${base_libdir}
>>
>>                   install -m 0644 ${WORKDIR}/abc.so ${D}${base_libdir}/
>>
>> }
>>
>> FILES_${PN} += "${base_libdir}/*.so"
>
> The linux-yocto_3.4.bb doesn't generate a linux-yocto.rpm since linux-yocto
> (the ${PN}) doesn't in PACKAGES, you can use bitbake -e linux-yocto to
> see this, and if you really want to use linux-yocto_3.4.bbappend,
> you can use (WARN: this is highly suggested NOT)
>
> FILES_kernel-vmlinux += "${base_libdir}/abc.so"
>
> Then maybe you would get the warning about unshipped  /lib/.debug
> and /lib/.debug/abc.so, you need add them to kernel-vmlinux-dgb. Again,
> this is highly suggested not, The suggested way is abc.bb.
>
> // Robert
>
>>
>> FILES_SOLIBSDEV = ""
>>
>> However still I am getting the following error
>>
>> ERROR: QA Issue: linux-yocto: Files/directories were installed but not shipped
>>
>>     /lib/abc.so
>>
>>     /lib/.debug
>>
>>     /lib/.debug/abc.so
>>
>> ERROR: QA run found fatal errors. Please consider fixing them.
>>
>> ERROR: Function failed: do_package_qa
>>
>> Thanks,
>>
>> Sathish
>>
>> *From:*Sathish Kumar Balasubramaniam -ERS, HCL Tech
>> *Sent:* Thursday, July 03, 2014 9:29 PM
>> *To:* yocto@yoctoproject.org
>> *Subject:* Adding a shared object file to rootfs
>> *Importance:* High
>>
>> Hi,
>>
>> I have a file abc.so
>>
>> How can I add just this abc.so to /lib in rootfs using a recipe ?
>>
>> Regards,
>>
>> Sathish
>>
>>
>>
>> ::DISCLAIMER::
>> ----------------------------------------------------------------------------------------------------------------------------------------------------
>>
>> The contents of this e-mail and any attachment(s) are confidential and intended
>> for the named recipient(s) only.
>> E-mail transmission is not guaranteed to be secure or error-free as information
>> could be intercepted, corrupted,
>> lost, destroyed, arrive late or incomplete, or may contain viruses in
>> transmission. The e mail and its contents
>> (with or without referred errors) shall therefore not attach any liability on
>> the originator or HCL or its affiliates.
>> Views or opinions, if any, presented in this email are solely those of the
>> author and may not necessarily reflect the
>> views or opinions of HCL or its affiliates. Any form of reproduction,
>> dissemination, copying, disclosure, modification,
>> distribution and / or publication of this message without the prior written
>> consent of authorized representative of
>> HCL is strictly prohibited. If you have received this email in error please
>> delete it and notify the sender immediately.
>> Before opening any email and/or attachments, please check them for viruses and
>> other defects.
>>
>> ----------------------------------------------------------------------------------------------------------------------------------------------------
>>
>>
>>
>
>

