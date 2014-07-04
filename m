Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17154E006F3; Thu,  3 Jul 2014 17:37:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF01E0045F
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 17:37:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s640bHsX029438
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 3 Jul 2014 17:37:18 -0700 (PDT)
Received: from [128.224.162.181] (128.224.162.181) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.169.1;
	Thu, 3 Jul 2014 17:37:17 -0700
Message-ID: <53B5F73B.8040800@windriver.com>
Date: Fri, 4 Jul 2014 08:37:15 +0800
From: Robert Yang <liezhi.yang@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Sathish Kumar Balasubramaniam -ERS, HCL Tech" <b-sathishkumar@hcl.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5D833673AB94D9489A7F7F73E9E611C814ADC4C8@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
In-Reply-To: <5D833673AB94D9489A7F7F73E9E611C814ADC4C8@chn-hclt-mbs08.HCLT.CORP.HCL.IN>
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
X-List-Received-Date: Fri, 04 Jul 2014 00:37:36 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit


Hello,

I think that there are two problems:

1) You can use a abc.bb to add the abc.so rather than .bbappend, then you can
    add something like:
    IMAGE_INSTALL_append = "abc"

    to conf/local.conf.

2) Please see my comments inline.

On 07/04/2014 01:11 AM, Sathish Kumar Balasubramaniam -ERS, HCL Tech wrote:
> I tried to add the abc.so using a linux-yocto_3.4.bbappend like the following
>
> SRC_URI += “file://abc.so”
>
> do_install_append() {
>
>                  install -d ${D}${base_libdir}
>
>                  install -m 0644 ${WORKDIR}/abc.so ${D}${base_libdir}/
>
> }
>
> FILES_${PN} += "${base_libdir}/*.so"

The linux-yocto_3.4.bb doesn't generate a linux-yocto.rpm since linux-yocto
(the ${PN}) doesn't in PACKAGES, you can use bitbake -e linux-yocto to
see this, and if you really want to use linux-yocto_3.4.bbappend,
you can use (WARN: this is highly suggested NOT)

FILES_kernel-vmlinux += "${base_libdir}/abc.so"

Then maybe you would get the warning about unshipped  /lib/.debug
and /lib/.debug/abc.so, you need add them to kernel-vmlinux-dgb. Again,
this is highly suggested not, The suggested way is abc.bb.

// Robert

>
> FILES_SOLIBSDEV = ""
>
> However still I am getting the following error
>
> ERROR: QA Issue: linux-yocto: Files/directories were installed but not shipped
>
>    /lib/abc.so
>
>    /lib/.debug
>
>    /lib/.debug/abc.so
>
> ERROR: QA run found fatal errors. Please consider fixing them.
>
> ERROR: Function failed: do_package_qa
>
> Thanks,
>
> Sathish
>
> *From:*Sathish Kumar Balasubramaniam -ERS, HCL Tech
> *Sent:* Thursday, July 03, 2014 9:29 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Adding a shared object file to rootfs
> *Importance:* High
>
> Hi,
>
> I have a file abc.so
>
> How can I add just this abc.so to /lib in rootfs using a recipe ?
>
> Regards,
>
> Sathish
>
>
>
> ::DISCLAIMER::
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
> The contents of this e-mail and any attachment(s) are confidential and intended
> for the named recipient(s) only.
> E-mail transmission is not guaranteed to be secure or error-free as information
> could be intercepted, corrupted,
> lost, destroyed, arrive late or incomplete, or may contain viruses in
> transmission. The e mail and its contents
> (with or without referred errors) shall therefore not attach any liability on
> the originator or HCL or its affiliates.
> Views or opinions, if any, presented in this email are solely those of the
> author and may not necessarily reflect the
> views or opinions of HCL or its affiliates. Any form of reproduction,
> dissemination, copying, disclosure, modification,
> distribution and / or publication of this message without the prior written
> consent of authorized representative of
> HCL is strictly prohibited. If you have received this email in error please
> delete it and notify the sender immediately.
> Before opening any email and/or attachments, please check them for viruses and
> other defects.
>
> ----------------------------------------------------------------------------------------------------------------------------------------------------
>
>
>

