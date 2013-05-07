Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71818E01439
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 11:34:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r47IYNXB021759
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 7 May 2013 11:34:23 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.235) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Tue, 7 May 2013 11:34:23 -0700
Message-ID: <5189492F.3030409@windriver.com>
Date: Tue, 7 May 2013 13:34:23 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130328 Thunderbird/17.0.5
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1B9AA52722844A4995CFFE20C2BC6B596B79C73C@ORSMSX107.amr.corp.intel.com>
In-Reply-To: <1B9AA52722844A4995CFFE20C2BC6B596B79C73C@ORSMSX107.amr.corp.intel.com>
Subject: Re: SRPMs
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
X-List-Received-Date: Tue, 07 May 2013 18:34:24 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 5/7/13 1:28 PM, Post, Travis wrote:
> Is it possible to create source RPMs from Yocto? If so, is there any
> documentation or guidance on how to do this? I’ve found a bug that was closed
> mentioning:
>
> INHERIT += "archive-patched-source"
>
> SOURCE_ARCHIVE_PACKAGE_TYPE = "SRPM"
>
> However, this results in an error referencing get_package. When I add: “inherit
> archiver”, this changes to an error referencing undefined variable ‘f’.

At one point we had the system so it would generate an SRPM.  But you have to 
remember the SRPM is just a container, this isn't going to build something you 
can bring to your favorite RPM based distribution and build.

The code would take the configure/compile/install steps and dump them into the 
spec, along with references to the source and patches.  This way everything was 
in one convenient place, but again -- it's not going to work standalone.

To build software for the YP, you really need to use the build environment -- or 
an SDK.

--Mark

> Thanks,
>
>
> Travis
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


