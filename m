Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA827E00A4F; Fri, 31 Mar 2017 06:42:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.133 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39785E009B9
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 06:42:20 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue005
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0LoMUn-1cEXNy1W4f-00gDbI
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 15:42:19 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Fri, 31 Mar 2017 14:42:18 +0100
Organization: LN Systems Limited
Message-ID: <07e901d2aa24$9e0ea470$da2bed50$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdKp5kazPxMqSs/vR5uw8sttNcLw9w==
X-Provags-ID: V03:K0:1+cDgLFDkuXqciAiYHsKIXO7CRjHPbr+qsw2N32ezH/HPJyIaYP
	/VjI/nARA5tddHDAjNyf/UE1w7NspJHHtfoIY6spjgPFb290xT1hyxr7E7EhcyVh6P0nInp
	cyrkcb5rzSIdkFGSsRu8xgH7NAhaWX07C7NOFnRNnwzoA0gYv2hKHBGXxnUC/AURNU5ua9m
	HjcKUO+z5zWi9wNH2RQOg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:3AgOByCE+R0=:j2eo9FkE08HhDRfZYzFtG/
	HwvHcuS9co+NfzxohrH8Xl0jSl6W3CLMVHfSdTQyE6JpUz/k4tdg1kNKxMKRYYTZn6R7UFlJX
	ekgSz6lOdRD4sJZeo+9NVDqKtadNo7YX/V0o6f34mZ3SyyuGG2Iq19zax9kazAXYzWmz0yohJ
	Tugdyd7u5mSWpI5yvyTCjUG4kWZplWyASumRNAZONNrNmKewozPgRCBMHvj3GY/5EVZAfja4b
	8FqLWlzVwL+SI7vat3euX0JSYs4JZUAIWOQaSvQgJ7Hf79gKxdMMi3TeFVDkStySXNSReYO20
	bLg8T9/rqrETNN8jWAiLPF74xRNS5OsV2LnSYte539hiMZ2ytRLRWVZXoD1IlQ1sUXLEQ0gAv
	ovo6qvatdIOGts1Keyc9K0VvgbU1p85pgDJs8a23rzzLVcAynS065x5Sqc7YWs46yg0IZWlDe
	OGaMdL/5+ms37SXeY5cQgTnFyy5edPkR348ez9kFMk8OGHz8fgm+OunmMH7+46SDf+FIFLkmZ
	4pLQRR4YCv/nT1U7Nb1j96oLUU7yvlMztJrIVeFf5lr3yJ0JSu0wVBd+Dc05YyFrHraqGM0QM
	WUCi8leXr98iNwSQaWMPmDS8H9pVcruJlAZTLKrhoHAUxTyCrQPkjEfWJXngXknidVVhCSjcA
	JpFuxQUEjaEBJbrJLEn8HuPpSwQYwpq6N5kf1yALwLdS1AR/k1cQym1FnGB3G2czLAcU2xgkP
	yORd/bRpWjZBpLYn
Subject: Missing dependencies on driver header
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Mar 2017 13:42:22 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-gb

I have a niggly problem I keep running into, especially with fresh image
builds.
I have a custom driver, and a user-space library for controlling it;
therefore the library includes one of the driver's header files (IOCTL defs
etc). 
However I can't get the dependencies correct in the library recipe so as to
get the driver's header installed and available to the library build step.
In other words 'bitbake MyDriverLib' gives a "MyDriver.h: no such file or
directory "
The lib's recipe includes
    inherit autotools lib_package binconfig-disabled pkgconfig
    DEPENDS_${PN} = "MyDriver"
    RDEPENDS_${PN} = "MyDriver"

At 'some point later', the lib *will* build ok:  I've done each MyDriver
step one by one, and it seems that once the 'install' has been done then
MyDriverLib will then compile. ('-c compile MyDriver' isn't sufficient). But
shouldn't the RDEPENDS above trigger the MyDriver install?
I'm obviously missing a dependency hook somewhere?




