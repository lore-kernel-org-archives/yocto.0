Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 36173E00DD2; Mon, 22 Jan 2018 09:51:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.117.214.143 listed in list.dnswl.org]
Received: from volare.selinc.com (volare.selinc.com [74.117.214.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA0F3E00B1E
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 09:51:23 -0800 (PST)
Received: from pps.filterd (volare.selinc.com [127.0.0.1])
	by volare.selinc.com (8.16.0.22/8.16.0.22) with SMTP id w0MHpID7013985
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 09:51:23 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
	h=to : mime-version :
	subject : message-id : from : date : content-type; s=SELinc2017;
	bh=K7xNZhMDAQcGbBJT/3Yl7eEjjpDi4VPNRyjJDcWpAQY=;
	b=xjVd1LQiaBxwvnfIM82RYje8WBzmWDMF2dBBN3QeDRtgE02/6DGgA3noGEMmNaKedkjK
	ThwbjhvmtONFVeuAVv4UxDCb4YbATVJ8vebjnV2wboYvMDnBpus7/Pw3t32rI6HeGwUS
	6gl/nr5U/WqgrLIseTXftfmje1wSNI0fXn3Uj6NMX6Iy/0CGVo8kLO7+cPKUOZ81qGjk
	wADLSAAVAnmYjTfBnpP+HHZ3euZ5r8/H4VmPDqxmjQ5R0s3LrC+oaYNig7UuWfQooI+q
	/Ru+hviIRBJ4V/4w1+y5rzpU+WHnX0KYl2Cpo30l/UIgpSaywKNRXOy9qAGwJYL0cPdy
	2g== 
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by volare.selinc.com with ESMTP id 2fm26r2d77-1
	for <yocto@yoctoproject.org>; Mon, 22 Jan 2018 09:51:23 -0800
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: 8E876F7E:8921135E-8825821D:00614B7D;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OF8E876F7E.8921135E-ON8825821D.00614B7D-8825821D.00621688@selinc.com>
From: Aaron_Wright@selinc.com
Date: Mon, 22 Jan 2018 09:51:22 -0800
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 01/22/2018 09:51:23 AM,
	Serialize complete at 01/22/2018 09:51:23 AM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8782
	signatures=668655
Subject: eSDK and Multilib
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
X-List-Received-Date: Mon, 22 Jan 2018 17:51:24 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 006216888825821D_="

--=_alternative 006216888825821D_=
Content-Type: text/plain; charset="US-ASCII"

 I'm running pyro, and I'm struggling to create an eSDK for multilib 
custom image. I keep running into FileExistsError errors during the 
do_sdk_depends task.

It seems as though the lib32 and non-lib32 versions of a recipe are both 
creating a -dev package that tries to install the same headers.

Am I missing an easy solution to this?

--=_alternative 006216888825821D_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">&nbsp;I'm running pyro, and I'm struggling
to create an eSDK for multilib custom image. I keep running into FileExistsError
errors during the do_sdk_depends task.</font>
<br>
<br><font size=2 face="sans-serif">It seems as though the lib32 and non-lib32
versions of a recipe are both creating a -dev package that tries to install
the same headers.</font>
<br>
<br><font size=2 face="sans-serif">Am I missing an easy solution to this?</font>

--=_alternative 006216888825821D_=--
