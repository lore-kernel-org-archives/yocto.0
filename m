Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36A07E01784; Thu,  7 Jun 2018 00:05:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (star[at]gmx.li)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.15.19 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Thu, 07 Jun 2018 00:05:17 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D81C2E01729
	for <yocto@yoctoproject.org>; Thu,  7 Jun 2018 00:05:17 -0700 (PDT)
Received: from [62.225.157.196] ([62.225.157.196]) by
	3c-app-gmx-bs26.server.lan (via HTTP); Thu, 7 Jun 2018 09:00:14 +0200
MIME-Version: 1.0
Message-ID: <trinity-7e4d5ef3-bb44-4975-89b5-7e79a3ab2e42-1528354814154@3c-app-gmx-bs26>
From: star@gmx.li
To: Yocto-mailing-list <yocto@yoctoproject.org>
Date: Thu, 7 Jun 2018 09:00:14 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:RIVRV+ui6UwB43R5Po3g3xZaGAVdqR0+v42tCQu3vO0
	CORoe5stMbXtc/hvQxvZ1RoKuPD1RyPcM2lQC1ItNhE5W//UoA
	vcoiT+tI7pcsF5sB4n7HHmIdDnmtNJp+h/HhJUX2fdXXA/WeEe
	daorHLZ1O0uH63tcOSXob0/bUpLol/ikISUgRvCbKPUNUYdNM0
	KqEfzcCZaxyWm3EDylXTFtvFcH87KVb9kndOx0HJ51lzvH2CdN
	Q3iYNgxy5Dfqz5hIIhgIyVjkIgUVmJ3n26b+LQ9E+2xF5PmTH7 GBU5WU=
X-UI-Out-Filterresults: notjunk:1;V01:K0:rJIZ3L4ujPY=:MKJw5p3IAvKHDMR4IGWrHa
	HUzGrVo4LdmGtMRVrxLzAD2kQgOQa2w3C7pTQ4pKViWgRWemuJyUa+PZ9ntf2h0RJXkYlDyUM
	1RCBkjCtG6jikMHbX0tfXVH3/Vp+SGMkFuNj28JBoMznbY9Gug4a+bSO3525jDw3axa2FuKnD
	/QALh44gl5wOVV7ZY3b014XErNj+Yn6GtbcxvIDoIIxY+oo+Ex2TeJmoiFA6eRBFJup4e38NL
	9YiFILc0CBo/rHRfE7POUYb0fyCKMMXhEjFK+aESICfUTI6hkpgMCD0qRWVd6l1X7EMHnSuiw
	bHaaBmhxOJKizf9EKFD7zSEEX032jGCKXu2ueycxVbT1Dc38maLOJKmfgsrn6ZzzIG2E8Env4
	20eFt+hsvjL+Jgw0RRDtuuVfk7iDwcoQjMBX2r2HvFPrPBQYJow8038CWybe8uh//CcTEaDPN
	qwLLPLwZvjkJu8/q5CRItiVB7/wLgaR28MVZWkvVV7y30HhKMvTr
Subject: link loop in /tmp (bug in volatile)
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
X-List-Received-Date: Thu, 07 Jun 2018 07:05:19 -0000
Content-Type: text/plain; charset=UTF-8

I think there is something unintended to create a 
/var/volatile/tmp/tmp

as it links back to /var/volatile/tmp

So if you are in /tmp  and do a cd tmp you keep just where you are.
Does this folder /tmp/tmp does make any sense? I doubt about.

I think this line is not required in initscript/volatile
l root root 1777 /tmp /var/tmp

I now how to append a line to a file in Yocto, but howto write an bbappend to remove a certain line?

