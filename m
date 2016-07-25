Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4A71CE009EF; Mon, 25 Jul 2016 06:56:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA447E009E6
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 06:56:22 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 25 Jul 2016 06:56:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,419,1464678000"; d="scan'208";a="1028670511"
Received: from unknown (HELO [10.252.135.40]) ([10.252.135.40])
	by fmsmga002.fm.intel.com with ESMTP; 25 Jul 2016 06:56:20 -0700
To: "piotr.lewicki" <piotr.lewicki@elfin.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <b44125f5-8305-978c-2282-01e54add131d@elfin.de>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <b85c6663-e050-6729-a639-672c1d6af55f@linux.intel.com>
Date: Mon, 25 Jul 2016 08:58:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <b44125f5-8305-978c-2282-01e54add131d@elfin.de>
Subject: Re: changing ownership of a file in a package
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
X-List-Received-Date: Mon, 25 Jul 2016 13:56:24 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

As a workaround, have you tried using the other class to include users 
(useradd)? Look at the 'note' of this section

http://www.yoctoproject.org/docs/2.1/ref-manual/ref-manual.html#ref-classes-extrausers

Leo


El 07/25/2016 a las 07:22 AM, piotr.lewicki escribió:
> Hi,
>
> I have a package where I want to install some files into a home 
> directory of a user "testuser". I create a user in my image bb file 
> using "extrausers".
>
> My problem is that I'm unable to change ownership of those files from 
> root to the testuser.
>
> Simple "chown testuser:testuser -R /home/testuser" inside do_install 
> task makes those files being owned by "nobody".
>
> How can I manage ownership of those files properly?
>
>
>
> The recipe is like so:
>
> DESCRIPTION = "Files installed in testuser user home directory"
> LICENSE = "CLOSED"
>
> SRC_URI += " \
>            file://authorized_keys \
>            file://bash_profile \
>            file://bashrc \
>            "
>
> do_install(){
>     install -d ${D}/home/testuser/
>     install -m 0644 ${WORKDIR}/bash_profile 
> ${D}/home/testuser/.bash_profile
>     install -m 0644 ${WORKDIR}/bashrc ${D}/home/testuser/.bashrc
>
>     install -d ${D}/home/testuser/.ssh
>     install -m 0644 ${WORKDIR}/authorized_keys ${D}/home/testuser/.ssh/
> }
>
> FILES_${PN} = "/home/testuser"
>
>
> Thanks,
>
> Piotr
>


